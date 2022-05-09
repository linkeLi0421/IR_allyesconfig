; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/brcmnand/brcmnand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/brcmnand/brcmnand.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+brcmnand_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_brcmnand_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_brcmnand_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_brcmnand_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22brcmnand_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_brcmnand_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+brcmnand_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_brcmnand_probe\09\09\09\09"
module asm "\09.long\09__crc_brcmnand_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_brcmnand_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22brcmnand_probe\22\09\09\09\09\09"
module asm "__kstrtabns_brcmnand_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+brcmnand_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_brcmnand_remove\09\09\09\09"
module asm "\09.long\09__crc_brcmnand_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_brcmnand_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22brcmnand_remove\22\09\09\09\09\09"
module asm "__kstrtabns_brcmnand_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.brcmnand_controller = type { ptr, %struct.nand_controller, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.completion, %struct.completion, %struct.completion, %struct.list_head, ptr, ptr, i32, i32, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, [512 x i8], ptr, i32, ptr, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.brcmnand_soc = type { ptr, ptr, ptr }
%struct.brcmnand_host = type { %struct.list_head, %struct.nand_chip, ptr, i32, i32, i32, i64, %struct.brcmnand_cfg, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.80, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
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
%struct.anon.80 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmnand_cfg = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.brcm_nand_dma_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32 }
%struct.mtd_oob_region = type { i32, i32 }

@__param_str_wp_on = internal constant [15 x i8] c"brcmnand.wp_on\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@wp_on = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_wp_on = internal constant %struct.kernel_param { ptr @__param_str_wp_on, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @wp_on } }, section "__param", align 4
@__UNIQUE_ID_wp_ontype249 = internal constant [28 x i8] c"brcmnand.parmtype=wp_on:int\00", section ".modinfo", align 1
@brcmnand_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @brcmnand_suspend, ptr @brcmnand_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_brcmnand_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_brcmnand_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_brcmnand_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @brcmnand_pm_ops to i32), ptr @__kstrtab_brcmnand_pm_ops, ptr @__kstrtabns_brcmnand_pm_ops }, section "___ksymtab_gpl+brcmnand_pm_ops", align 4
@brcmnand_of_match = internal constant { [12 x %struct.of_device_id], [592 x i8] } { [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v2.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v2.2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v4.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v5.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v6.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v6.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v6.2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v7.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v7.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v7.2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmnand-v7.3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [592 x i8] zeroinitializer }, align 32
@brcmnand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @brcmnand_attach_chip, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nand-cache\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flash-dma\00", [22 x i8] zeroinitializer }, align 32
@brcmnand_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 3087, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing FLASH_DMA IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"brcmnand_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/mtd/nand/raw/brcmnand/brcmnand.c\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmnand_probe._entry_ptr = internal global ptr @brcmnand_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"brcmnand\00", [23 x i8] zeroinitializer }, align 32
@brcmnand_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 3097, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't allocate IRQ %d: error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@brcmnand_probe._entry_ptr.11 = internal global ptr @brcmnand_probe._entry.9, section ".printk_index", align 4
@brcmnand_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 3101, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"enabling FLASH_DMA\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@brcmnand_probe._entry_ptr.15 = internal global ptr @brcmnand_probe._entry.12, section ".printk_index", align 4
@brcmnand_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 3131, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no IRQ defined\0A\00", [16 x i8] zeroinitializer }, align 32
@brcmnand_probe._entry_ptr.18 = internal global ptr @brcmnand_probe._entry.16, section ".printk_index", align 4
@brcmnand_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 3156, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@brcmnand_probe._entry_ptr.20 = internal global ptr @brcmnand_probe._entry.19, section ".printk_index", align 4
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"brcm,nandcs\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_brcmnand_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_brcmnand_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_brcmnand_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @brcmnand_probe to i32), ptr @__kstrtab_brcmnand_probe, ptr @__kstrtabns_brcmnand_probe }, section "___ksymtab_gpl+brcmnand_probe", align 4
@__kstrtab_brcmnand_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_brcmnand_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_brcmnand_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @brcmnand_remove to i32), ptr @__kstrtab_brcmnand_remove, ptr @__kstrtabns_brcmnand_remove }, section "___ksymtab_gpl+brcmnand_remove", align 4
@__UNIQUE_ID_file273 = internal constant [53 x i8] c"brcmnand.file=drivers/mtd/nand/raw/brcmnand/brcmnand\00", section ".modinfo", align 1
@__UNIQUE_ID_license274 = internal constant [24 x i8] c"brcmnand.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author275 = internal constant [31 x i8] c"brcmnand.author=Kevin Cernekee\00", section ".modinfo", align 1
@__UNIQUE_ID_author276 = internal constant [29 x i8] c"brcmnand.author=Brian Norris\00", section ".modinfo", align 1
@__UNIQUE_ID_description277 = internal constant [52 x i8] c"brcmnand.description=NAND driver for Broadcom chips\00", section ".modinfo", align 1
@__UNIQUE_ID_alias278 = internal constant [33 x i8] c"brcmnand.alias=platform:brcmnand\00", section ".modinfo", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"brcm,nand-oob-sector-size\00", [38 x i8] zeroinitializer }, align 32
@brcmnand_setup_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 2621, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"only HW ECC supported; selected: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcmnand_setup_dev\00", [45 x i8] zeroinitializer }, align 32
@brcmnand_setup_dev._entry_ptr = internal global ptr @brcmnand_setup_dev._entry, section ".printk_index", align 4
@brcmnand_setup_dev._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.5, i32 2637, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid Hamming params: %d bits per %d bytes\0A\00", [50 x i8] zeroinitializer }, align 32
@brcmnand_setup_dev._entry_ptr.29 = internal global ptr @brcmnand_setup_dev._entry.27, section ".printk_index", align 4
@brcmnand_setup_dev._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.5, i32 2648, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Using ECC step-size %d, strength %d\0A\00", [59 x i8] zeroinitializer }, align 32
@brcmnand_setup_dev._entry_ptr.32 = internal global ptr @brcmnand_setup_dev._entry.30, section ".printk_index", align 4
@brcmnand_setup_dev._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.5, i32 2662, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"1KB sectors not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@brcmnand_setup_dev._entry_ptr.35 = internal global ptr @brcmnand_setup_dev._entry.33, section ".printk_index", align 4
@brcmnand_setup_dev._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.26, ptr @.str.5, i32 2667, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"odd ECC not supported with 1KB sectors\0A\00", [56 x i8] zeroinitializer }, align 32
@brcmnand_setup_dev._entry_ptr.38 = internal global ptr @brcmnand_setup_dev._entry.36, section ".printk_index", align 4
@brcmnand_setup_dev._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.26, ptr @.str.5, i32 2676, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported ECC size: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@brcmnand_setup_dev._entry_ptr.41 = internal global ptr @brcmnand_setup_dev._entry.39, section ".printk_index", align 4
@brcmnand_setup_dev._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.26, ptr @.str.5, i32 2693, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"detected %s\0A\00", [19 x i8] zeroinitializer }, align 32
@brcmnand_setup_dev._entry_ptr.44 = internal global ptr @brcmnand_setup_dev._entry.42, section ".printk_index", align 4
@brcmnand_set_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 2471, ptr @.str.47, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid block size %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcmnand_set_cfg\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@brcmnand_set_cfg._entry_ptr = internal global ptr @brcmnand_set_cfg._entry, section ".printk_index", align 4
@brcmnand_set_cfg._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 2481, ptr @.str.47, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@brcmnand_set_cfg._entry_ptr.49 = internal global ptr @brcmnand_set_cfg._entry.48, section ".printk_index", align 4
@brcmnand_set_cfg._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.5, i32 2495, ptr @.str.47, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid page size %u\0A\00", [42 x i8] zeroinitializer }, align 32
@brcmnand_set_cfg._entry_ptr.52 = internal global ptr @brcmnand_set_cfg._entry.50, section ".printk_index", align 4
@brcmnand_set_cfg._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.5, i32 2504, ptr @.str.47, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@brcmnand_set_cfg._entry_ptr.54 = internal global ptr @brcmnand_set_cfg._entry.53, section ".printk_index", align 4
@brcmnand_set_cfg._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.46, ptr @.str.5, i32 2510, ptr @.str.47, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid device size 0x%llx\0A\00", [36 x i8] zeroinitializer }, align 32
@brcmnand_set_cfg._entry_ptr.57 = internal global ptr @brcmnand_set_cfg._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%lluMiB total, %uKiB blocks, %u%s pages, %uB OOB, %u-bit\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KiB\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c", Hamming ECC\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c", BCH-%u (1KiB sector)\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c", BCH-%u\00", [23 x i8] zeroinitializer }, align 32
@brcmnand_hamming_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @brcmnand_hamming_ooblayout_ecc, ptr @brcmnand_hamming_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@brcmnand_bch_sp_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @brcmnand_bch_ooblayout_ecc, ptr @brcmnand_bch_ooblayout_free_sp }, [24 x i8] zeroinitializer }, align 32
@brcmnand_bch_lp_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @brcmnand_bch_ooblayout_ecc, ptr @brcmnand_bch_ooblayout_free_lp }, [24 x i8] zeroinitializer }, align 32
@brcmstb_choose_ecc_layout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.5, i32 1311, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"error: ECC too large for OOB (ECC bytes %d, spare sector %d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"brcmstb_choose_ecc_layout\00", [38 x i8] zeroinitializer }, align 32
@brcmstb_choose_ecc_layout._entry_ptr = internal global ptr @brcmstb_choose_ecc_layout._entry, section ".printk_index", align 4
@brcmnand_write.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.66, ptr @.str.5, ptr @.str.67, i8 2, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"brcmnand_write\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"write %llx <- %p\0A\00", [46 x i8] zeroinitializer }, align 32
@brcmnand_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.5, i32 2335, ptr @.str.47, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unaligned buffer: %p\0A\00", [42 x i8] zeroinitializer }, align 32
@brcmnand_write._entry_ptr = internal global ptr @brcmnand_write._entry, section ".printk_index", align 4
@brcmnand_write._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.66, ptr @.str.5, i32 2385, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"program failed at %llx\0A\00", [40 x i8] zeroinitializer }, align 32
@brcmnand_write._entry_ptr.71 = internal global ptr @brcmnand_write._entry.69, section ".printk_index", align 4
@brcmnand_wp.old_wp = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@brcmnand_wp.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.72, ptr @.str.5, ptr @.str.73, i8 1, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"brcmnand_wp\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WP %s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@brcmnand_wp._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.76, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@brcmnand_wp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.5, i32 1358, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nand #WP expected %s\0A\00", [42 x i8] zeroinitializer }, align 32
@brcmnand_wp._entry_ptr = internal global ptr @brcmnand_wp._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bcmnand_ctrl_poll_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.5, i32 1047, ptr @.str.47, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"timeout on status poll (expected %x got %x)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcmnand_ctrl_poll_status\00", [39 x i8] zeroinitializer }, align 32
@bcmnand_ctrl_poll_status._entry_ptr = internal global ptr @bcmnand_ctrl_poll_status._entry, section ".printk_index", align 4
@brcmnand_send_cmd.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.80, ptr @.str.5, ptr @.str.81, i8 1, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcmnand_send_cmd\00", [46 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"send native cmd %d addr 0x%llx\0A\00", [32 x i8] zeroinitializer }, align 32
@brcmnand_waitfunc.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.82, ptr @.str.5, ptr @.str.83, i8 1, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcmnand_waitfunc\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wait on native cmd %d\0A\00", [41 x i8] zeroinitializer }, align 32
@brcmnand_waitfunc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.76, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@brcmnand_waitfunc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.5, i32 1627, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"timeout waiting for command %#02x\0A\00", [61 x i8] zeroinitializer }, align 32
@brcmnand_waitfunc._entry_ptr = internal global ptr @brcmnand_waitfunc._entry, section ".printk_index", align 4
@brcmnand_waitfunc._rs.85 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.76, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@brcmnand_waitfunc._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.5, i32 1629, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intfc status %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@brcmnand_waitfunc._entry_ptr.88 = internal global ptr @brcmnand_waitfunc._entry.86, section ".printk_index", align 4
@brcmnand_read.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.89, ptr @.str.5, ptr @.str.90, i8 2, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"brcmnand_read\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"read %llx -> %p\0A\00", [47 x i8] zeroinitializer }, align 32
@brcmnand_read.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.89, ptr @.str.5, ptr @.str.91, i8 2, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"uncorrectable error at 0x%llx\0A\00", [33 x i8] zeroinitializer }, align 32
@brcmnand_read.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.89, ptr @.str.5, ptr @.str.92, i8 2, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"corrected error at 0x%llx\0A\00", [37 x i8] zeroinitializer }, align 32
@brcmnand_revision_init.block_sizes_v6 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 16, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 0], [32 x i8] zeroinitializer }, align 32
@brcmnand_revision_init.block_sizes_v4 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 16, i32 128, i32 8, i32 512, i32 256, i32 1024, i32 2048, i32 0], [32 x i8] zeroinitializer }, align 32
@brcmnand_revision_init.block_sizes_v2_2 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 16, i32 128, i32 8, i32 512, i32 256, i32 0], [40 x i8] zeroinitializer }, align 32
@brcmnand_revision_init.block_sizes_v2_1 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 16, i32 128, i32 8, i32 512, i32 0], [44 x i8] zeroinitializer }, align 32
@brcmnand_revision_init.page_sizes_v3_4 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 512, i32 2048, i32 4096, i32 8192, i32 0], [44 x i8] zeroinitializer }, align 32
@brcmnand_revision_init.page_sizes_v2_2 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 512, i32 2048, i32 4096, i32 0], [16 x i8] zeroinitializer }, align 32
@brcmnand_revision_init.page_sizes_v2_1 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 512, i32 2048, i32 0], [20 x i8] zeroinitializer }, align 32
@brcmnand_revision_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.5, i32 621, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"version %#x not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcmnand_revision_init\00", [41 x i8] zeroinitializer }, align 32
@brcmnand_revision_init._entry_ptr = internal global ptr @brcmnand_revision_init._entry, section ".printk_index", align 4
@brcmnand_regs_v72 = internal constant { [26 x i16], [44 x i8] } { [26 x i16] [i16 4, i16 8, i16 12, i16 20, i16 24, i16 28, i16 32, i16 80, i16 0, i16 220, i16 224, i16 252, i16 256, i16 268, i16 272, i16 276, i16 280, i16 336, i16 404, i16 408, i16 412, i16 512, i16 0, i16 1024, i16 0, i16 1536], [44 x i8] zeroinitializer }, align 32
@brcmnand_regs_v71 = internal constant { [26 x i16], [44 x i8] } { [26 x i16] [i16 4, i16 8, i16 12, i16 20, i16 24, i16 28, i16 32, i16 80, i16 0, i16 220, i16 224, i16 252, i16 256, i16 268, i16 272, i16 276, i16 280, i16 336, i16 404, i16 408, i16 412, i16 512, i16 0, i16 640, i16 0, i16 1024], [44 x i8] zeroinitializer }, align 32
@brcmnand_regs_v60 = internal constant { [26 x i16], [44 x i8] } { [26 x i16] [i16 4, i16 8, i16 12, i16 20, i16 24, i16 28, i16 32, i16 80, i16 0, i16 192, i16 196, i16 252, i16 256, i16 268, i16 272, i16 276, i16 280, i16 336, i16 404, i16 408, i16 412, i16 512, i16 0, i16 640, i16 0, i16 1024], [44 x i8] zeroinitializer }, align 32
@brcmnand_regs_v50 = internal constant { [26 x i16], [44 x i8] } { [26 x i16] [i16 4, i16 8, i16 12, i16 108, i16 20, i16 24, i16 376, i16 64, i16 208, i16 132, i16 0, i16 0, i16 0, i16 112, i16 116, i16 120, i16 124, i16 88, i16 96, i16 100, i16 380, i16 32, i16 304, i16 48, i16 320, i16 512], [44 x i8] zeroinitializer }, align 32
@brcmnand_regs_v33 = internal constant { [26 x i16], [44 x i8] } { [26 x i16] [i16 4, i16 8, i16 12, i16 108, i16 20, i16 24, i16 376, i16 64, i16 208, i16 132, i16 0, i16 0, i16 0, i16 112, i16 116, i16 120, i16 124, i16 88, i16 96, i16 100, i16 380, i16 32, i16 304, i16 48, i16 0, i16 512], [44 x i8] zeroinitializer }, align 32
@brcmnand_regs_v21 = internal constant { [26 x i16], [44 x i8] } { [26 x i16] [i16 4, i16 8, i16 12, i16 92, i16 20, i16 24, i16 0, i16 64, i16 0, i16 0, i16 0, i16 0, i16 0, i16 96, i16 100, i16 104, i16 108, i16 80, i16 84, i16 0, i16 0, i16 32, i16 0, i16 48, i16 0, i16 512], [44 x i8] zeroinitializer }, align 32
@brcmnand_cs_offsets_v71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\04\08\00\0C\10", [27 x i8] zeroinitializer }, align 32
@brcmnand_cs_offsets = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\04\04\00\08\0C", [27 x i8] zeroinitializer }, align 32
@brcmnand_cs_offsets_cs0 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\08\08\00\10\14", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcm,nand-has-wp\00", [47 x i8] zeroinitializer }, align 32
@flash_dma_regs_v4 = internal constant { [11 x i16], [42 x i8] } { [11 x i16] [i16 0, i16 8, i16 12, i16 16, i16 20, i16 24, i16 32, i16 36, i16 40, i16 48, i16 52], [42 x i8] zeroinitializer }, align 32
@flash_dma_regs_v0 = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 0, i16 4, i16 0, i16 8, i16 12, i16 16, i16 20, i16 0, i16 24, i16 28], [44 x i8] zeroinitializer }, align 32
@flash_dma_regs_v1 = internal constant { [11 x i16], [42 x i8] } { [11 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32, i16 36, i16 40], [42 x i8] zeroinitializer }, align 32
@brcmnand_dma_trans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.5, i32 2057, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to map buffer for DMA\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcmnand_dma_trans\00", [45 x i8] zeroinitializer }, align 32
@brcmnand_dma_trans._entry_ptr = internal global ptr @brcmnand_dma_trans._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.98 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@brcmnand_dma_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.5, i32 2042, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"timeout waiting for DMA; status %#x, error status %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcmnand_dma_run\00", [47 x i8] zeroinitializer }, align 32
@brcmnand_dma_run._entry_ptr = internal global ptr @brcmnand_dma_run._entry, section ".printk_index", align 4
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flash-edu\00", [22 x i8] zeroinitializer }, align 32
@edu_regs = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32], [46 x i8] zeroinitializer }, align 32
@brcmnand_edu_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.5, i32 2961, ptr @.str.47, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"FLASH EDU enabled, using ctlrdy irq\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcmnand_edu_setup\00", [45 x i8] zeroinitializer }, align 32
@brcmnand_edu_setup._entry_ptr = internal global ptr @brcmnand_edu_setup._entry, section ".printk_index", align 4
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"brcmnand-edu\00", [19 x i8] zeroinitializer }, align 32
@brcmnand_edu_setup._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.104, ptr @.str.5, i32 2968, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@brcmnand_edu_setup._entry_ptr.107 = internal global ptr @brcmnand_edu_setup._entry.106, section ".printk_index", align 4
@brcmnand_edu_setup._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.104, ptr @.str.5, i32 2973, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"FLASH EDU enabled using irq %u\0A\00", [32 x i8] zeroinitializer }, align 32
@brcmnand_edu_setup._entry_ptr.110 = internal global ptr @brcmnand_edu_setup._entry.108, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@brcmnand_edu_trans.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.111, ptr @.str.5, ptr @.str.112, i8 1, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcmnand_edu_trans\00", [45 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EDU %s %p:%p\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@brcmnand_edu_trans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.111, ptr @.str.5, i32 1889, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to map buffer for EDU DMA\0A\00", [62 x i8] zeroinitializer }, align 32
@brcmnand_edu_trans._entry_ptr = internal global ptr @brcmnand_edu_trans._entry, section ".printk_index", align 4
@brcmnand_edu_trans._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.111, ptr @.str.5, i32 1927, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"timeout waiting for EDU; status %#x, error status %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@brcmnand_edu_trans._entry_ptr.118 = internal global ptr @brcmnand_edu_trans._entry.116, section ".printk_index", align 4
@brcmnand_edu_trans._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.111, ptr @.str.5, i32 1945, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@brcmnand_edu_trans._entry_ptr.120 = internal global ptr @brcmnand_edu_trans._entry.119, section ".printk_index", align 4
@brcmnand_edu_trans._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.111, ptr @.str.5, i32 1952, ptr @.str.47, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EDU still active: %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@brcmnand_edu_trans._entry_ptr.123 = internal global ptr @brcmnand_edu_trans._entry.121, section ".printk_index", align 4
@brcmnand_edu_trans._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.111, ptr @.str.5, i32 1956, ptr @.str.47, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EDU RBUS error at addr %llx\0A\00", [35 x i8] zeroinitializer }, align 32
@brcmnand_edu_trans._entry_ptr.126 = internal global ptr @brcmnand_edu_trans._entry.124, section ".printk_index", align 4
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@brcmnand_init_cs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.5, i32 2764, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't get chip-select\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcmnand_init_cs\00", [47 x i8] zeroinitializer }, align 32
@brcmnand_init_cs._entry_ptr = internal global ptr @brcmnand_init_cs._entry, section ".printk_index", align 4
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"brcmnand.%d\00", [20 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@brcmnand_cmdfunc.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.132, ptr @.str.5, ptr @.str.133, i8 1, i8 -87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcmnand_cmdfunc\00", [47 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cmd 0x%x addr 0x%llx\0A\00", [42 x i8] zeroinitializer }, align 32
@brcmnand_low_level_op.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.134, ptr @.str.5, ptr @.str.135, i8 1, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"brcmnand_low_level_op\00", [42 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ll_op cmd %#x\0A\00", [17 x i8] zeroinitializer }, align 32
@brcmnand_read_byte.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.136, ptr @.str.5, ptr @.str.137, i8 1, i8 -53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcmnand_read_byte\00", [45 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"read byte = 0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 28]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 28]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 28]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967179, i64 4294967222]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 4294967179, i64 4294967222]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 144, i64 236]
@__sancov_gen_cov_switch_values.145 = internal global [11 x i64] [i64 9, i64 32, i64 5, i64 80, i64 96, i64 112, i64 144, i64 236, i64 238, i64 239, i64 255]
@__sancov_gen_cov_switch_values.146 = internal global [8 x i64] [i64 6, i64 32, i64 5, i64 80, i64 112, i64 144, i64 236, i64 238]
@___asan_gen_.147 = private unnamed_addr constant [6 x i8] c"wp_on\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 40, i32 12 }
@___asan_gen_.150 = private unnamed_addr constant [16 x i8] c"brcmnand_pm_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2911, i32 25 }
@___asan_gen_.153 = private unnamed_addr constant [18 x i8] c"brcmnand_of_match\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2917, i32 34 }
@___asan_gen_.156 = private unnamed_addr constant [24 x i8] c"brcmnand_controller_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2749, i32 41 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 3016, i32 32 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 3038, i32 59 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 3051, i32 59 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 3087, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 3093, i32 26 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 3096, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 3101, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 3131, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 3155, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 3161, i32 38 }
@___asan_gen_.220 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 87, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1105, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2595, i32 8 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2620, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2636, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2647, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2662, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2666, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2675, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2693, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2470, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2480, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2494, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2504, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2509, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2552, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2556, i32 28 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2556, i32 36 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2561, i32 16 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2563, i32 16 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2565, i32 16 }
@___asan_gen_.324 = private unnamed_addr constant [31 x i8] c"brcmnand_hamming_ooblayout_ops\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1196, i32 39 }
@___asan_gen_.327 = private unnamed_addr constant [30 x i8] c"brcmnand_bch_sp_ooblayout_ops\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1273, i32 39 }
@___asan_gen_.330 = private unnamed_addr constant [30 x i8] c"brcmnand_bch_lp_ooblayout_ops\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1268, i32 39 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1309, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2332, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2335, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2384, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant [7 x i8] c"old_wp\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1325, i32 14 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1329, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1356, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1046, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1564, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1618, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1626, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1628, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2189, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2247, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2262, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant [15 x i8] c"block_sizes_v6\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 608, i32 28 }
@___asan_gen_.441 = private unnamed_addr constant [15 x i8] c"block_sizes_v4\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 609, i32 28 }
@___asan_gen_.444 = private unnamed_addr constant [17 x i8] c"block_sizes_v2_2\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 610, i32 28 }
@___asan_gen_.447 = private unnamed_addr constant [17 x i8] c"block_sizes_v2_1\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 611, i32 28 }
@___asan_gen_.450 = private unnamed_addr constant [16 x i8] c"page_sizes_v3_4\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 612, i32 28 }
@___asan_gen_.453 = private unnamed_addr constant [16 x i8] c"page_sizes_v2_2\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 613, i32 28 }
@___asan_gen_.456 = private unnamed_addr constant [16 x i8] c"page_sizes_v2_1\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 614, i32 28 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 620, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant [18 x i8] c"brcmnand_regs_v72\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 495, i32 18 }
@___asan_gen_.471 = private unnamed_addr constant [18 x i8] c"brcmnand_regs_v71\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 465, i32 18 }
@___asan_gen_.474 = private unnamed_addr constant [18 x i8] c"brcmnand_regs_v60\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 435, i32 18 }
@___asan_gen_.477 = private unnamed_addr constant [18 x i8] c"brcmnand_regs_v50\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 405, i32 18 }
@___asan_gen_.480 = private unnamed_addr constant [18 x i8] c"brcmnand_regs_v33\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 375, i32 18 }
@___asan_gen_.483 = private unnamed_addr constant [18 x i8] c"brcmnand_regs_v21\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 345, i32 18 }
@___asan_gen_.486 = private unnamed_addr constant [24 x i8] c"brcmnand_cs_offsets_v71\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 533, i32 17 }
@___asan_gen_.489 = private unnamed_addr constant [20 x i8] c"brcmnand_cs_offsets\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 542, i32 17 }
@___asan_gen_.492 = private unnamed_addr constant [24 x i8] c"brcmnand_cs_offsets_cs0\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 551, i32 17 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 719, i32 53 }
@___asan_gen_.498 = private unnamed_addr constant [18 x i8] c"flash_dma_regs_v4\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 186, i32 18 }
@___asan_gen_.501 = private unnamed_addr constant [18 x i8] c"flash_dma_regs_v0\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 159, i32 18 }
@___asan_gen_.504 = private unnamed_addr constant [18 x i8] c"flash_dma_regs_v1\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 171, i32 18 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2057, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 326, i32 6 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2039, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2943, i32 59 }
@___asan_gen_.534 = private unnamed_addr constant [9 x i8] c"edu_regs\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 131, i32 19 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2960, i32 4 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2965, i32 13 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2967, i32 5 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2972, i32 4 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1884, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1889, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1924, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1944, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1951, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1955, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2762, i32 33 }
@___asan_gen_.600 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2764, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 2773, i32 53 }
@___asan_gen_.613 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 464, i32 31 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1701, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1676, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.631 = private constant [44 x i8] c"../drivers/mtd/nand/raw/brcmnand/brcmnand.c\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.631, i32 1837, i32 2 }
@llvm.compiler.used = appending global [209 x ptr] [ptr @__UNIQUE_ID_alias278, ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_description277, ptr @__UNIQUE_ID_file273, ptr @__UNIQUE_ID_license274, ptr @__UNIQUE_ID_wp_ontype249, ptr @__ksymtab_brcmnand_pm_ops, ptr @__ksymtab_brcmnand_probe, ptr @__ksymtab_brcmnand_remove, ptr @__param_wp_on, ptr @bcmnand_ctrl_poll_status._entry, ptr @bcmnand_ctrl_poll_status._entry_ptr, ptr @brcmnand_dma_run._entry, ptr @brcmnand_dma_run._entry_ptr, ptr @brcmnand_dma_trans._entry, ptr @brcmnand_dma_trans._entry_ptr, ptr @brcmnand_edu_setup._entry, ptr @brcmnand_edu_setup._entry.106, ptr @brcmnand_edu_setup._entry.108, ptr @brcmnand_edu_setup._entry_ptr, ptr @brcmnand_edu_setup._entry_ptr.107, ptr @brcmnand_edu_setup._entry_ptr.110, ptr @brcmnand_edu_trans._entry, ptr @brcmnand_edu_trans._entry.116, ptr @brcmnand_edu_trans._entry.119, ptr @brcmnand_edu_trans._entry.121, ptr @brcmnand_edu_trans._entry.124, ptr @brcmnand_edu_trans._entry_ptr, ptr @brcmnand_edu_trans._entry_ptr.118, ptr @brcmnand_edu_trans._entry_ptr.120, ptr @brcmnand_edu_trans._entry_ptr.123, ptr @brcmnand_edu_trans._entry_ptr.126, ptr @brcmnand_init_cs._entry, ptr @brcmnand_init_cs._entry_ptr, ptr @brcmnand_probe._entry, ptr @brcmnand_probe._entry.12, ptr @brcmnand_probe._entry.16, ptr @brcmnand_probe._entry.19, ptr @brcmnand_probe._entry.9, ptr @brcmnand_probe._entry_ptr, ptr @brcmnand_probe._entry_ptr.11, ptr @brcmnand_probe._entry_ptr.15, ptr @brcmnand_probe._entry_ptr.18, ptr @brcmnand_probe._entry_ptr.20, ptr @brcmnand_revision_init._entry, ptr @brcmnand_revision_init._entry_ptr, ptr @brcmnand_set_cfg._entry, ptr @brcmnand_set_cfg._entry.48, ptr @brcmnand_set_cfg._entry.50, ptr @brcmnand_set_cfg._entry.53, ptr @brcmnand_set_cfg._entry.55, ptr @brcmnand_set_cfg._entry_ptr, ptr @brcmnand_set_cfg._entry_ptr.49, ptr @brcmnand_set_cfg._entry_ptr.52, ptr @brcmnand_set_cfg._entry_ptr.54, ptr @brcmnand_set_cfg._entry_ptr.57, ptr @brcmnand_setup_dev._entry, ptr @brcmnand_setup_dev._entry.27, ptr @brcmnand_setup_dev._entry.30, ptr @brcmnand_setup_dev._entry.33, ptr @brcmnand_setup_dev._entry.36, ptr @brcmnand_setup_dev._entry.39, ptr @brcmnand_setup_dev._entry.42, ptr @brcmnand_setup_dev._entry_ptr, ptr @brcmnand_setup_dev._entry_ptr.29, ptr @brcmnand_setup_dev._entry_ptr.32, ptr @brcmnand_setup_dev._entry_ptr.35, ptr @brcmnand_setup_dev._entry_ptr.38, ptr @brcmnand_setup_dev._entry_ptr.41, ptr @brcmnand_setup_dev._entry_ptr.44, ptr @brcmnand_waitfunc._entry, ptr @brcmnand_waitfunc._entry.86, ptr @brcmnand_waitfunc._entry_ptr, ptr @brcmnand_waitfunc._entry_ptr.88, ptr @brcmnand_wp._entry, ptr @brcmnand_wp._entry_ptr, ptr @brcmnand_write._entry, ptr @brcmnand_write._entry.69, ptr @brcmnand_write._entry_ptr, ptr @brcmnand_write._entry_ptr.71, ptr @brcmstb_choose_ecc_layout._entry, ptr @brcmstb_choose_ecc_layout._entry_ptr, ptr @wp_on, ptr @brcmnand_pm_ops, ptr @brcmnand_of_match, ptr @brcmnand_controller_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.21, ptr @init_completion.__key, ptr @.str.22, ptr @nand_controller_init.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.51, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @brcmnand_hamming_ooblayout_ops, ptr @brcmnand_bch_sp_ooblayout_ops, ptr @brcmnand_bch_lp_ooblayout_ops, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @brcmnand_wp.old_wp, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @brcmnand_wp._rs, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @brcmnand_waitfunc._rs, ptr @.str.84, ptr @brcmnand_waitfunc._rs.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @brcmnand_revision_init.block_sizes_v6, ptr @brcmnand_revision_init.block_sizes_v4, ptr @brcmnand_revision_init.block_sizes_v2_2, ptr @brcmnand_revision_init.block_sizes_v2_1, ptr @brcmnand_revision_init.page_sizes_v3_4, ptr @brcmnand_revision_init.page_sizes_v2_2, ptr @brcmnand_revision_init.page_sizes_v2_1, ptr @.str.93, ptr @.str.94, ptr @brcmnand_regs_v72, ptr @brcmnand_regs_v71, ptr @brcmnand_regs_v60, ptr @brcmnand_regs_v50, ptr @brcmnand_regs_v33, ptr @brcmnand_regs_v21, ptr @brcmnand_cs_offsets_v71, ptr @brcmnand_cs_offsets, ptr @brcmnand_cs_offsets_cs0, ptr @.str.95, ptr @flash_dma_regs_v4, ptr @flash_dma_regs_v0, ptr @flash_dma_regs_v1, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @edu_regs, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.122, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137], section "llvm.metadata"
@0 = internal global [162 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wp_on to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_of_match to i32), i32 2352, i32 2944, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_setup_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_setup_dev._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_setup_dev._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_setup_dev._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_setup_dev._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_setup_dev._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_setup_dev._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_set_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_set_cfg._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_set_cfg._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_set_cfg._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_set_cfg._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_hamming_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_bch_sp_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_bch_lp_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_choose_ecc_layout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_write._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_wp.old_wp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_wp._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_wp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcmnand_ctrl_poll_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_waitfunc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_waitfunc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_waitfunc._rs.85 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_waitfunc._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_revision_init.block_sizes_v6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_revision_init.block_sizes_v4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_revision_init.block_sizes_v2_2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_revision_init.block_sizes_v2_1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_revision_init.page_sizes_v3_4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_revision_init.page_sizes_v2_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_revision_init.page_sizes_v2_1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_revision_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_regs_v72 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_regs_v71 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_regs_v60 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_regs_v50 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_regs_v33 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_regs_v21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_cs_offsets_v71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_cs_offsets to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_cs_offsets_cs0 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_dma_regs_v4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_dma_regs_v0 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_dma_regs_v1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_dma_trans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_dma_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edu_regs to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_edu_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_edu_setup._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_edu_setup._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_edu_trans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_edu_trans._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_edu_trans._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_edu_trans._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_edu_trans._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmnand_init_cs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmnand_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %host_list = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %host_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %host.056 = load ptr, ptr %host_list, align 4
  %cmp.not57 = icmp eq ptr %host.056, %host_list
  br i1 %cmp.not57, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %host.058 = phi ptr [ %host.0, %for.body.for.body_crit_edge ], [ %host.056, %entry.for.body_crit_edge ]
  tail call fastcc void @brcmnand_save_restore_cs_config(ptr noundef %host.058, i32 noundef 0)
  %3 = ptrtoint ptr %host.058 to i32
  call void @__asan_load4_noabort(i32 %3)
  %host.0 = load ptr, ptr %host.058, align 4
  %cmp.not = icmp eq ptr %host.0, %host_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %reg_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_offsets.i, align 8
  %arrayidx.i = getelementptr i16, ptr %5, i32 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %for.end.brcmnand_read_reg.exit_crit_edge, label %if.then.i

for.end.brcmnand_read_reg.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %7 to i32
  %nand_base.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %conv.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !336
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  br label %brcmnand_read_reg.exit

brcmnand_read_reg.exit:                           ; preds = %if.then.i, %for.end.brcmnand_read_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %11, %if.then.i ], [ 0, %for.end.brcmnand_read_reg.exit_crit_edge ]
  %nand_cs_nand_select = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 44
  %12 = ptrtoint ptr %nand_cs_nand_select to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i, ptr %nand_cs_nand_select, align 4
  %13 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_offsets.i, align 8
  %arrayidx.i32 = getelementptr i16, ptr %14, i32 5
  %15 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i32, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i33 = icmp eq i16 %16, 0
  br i1 %tobool.not.i33, label %brcmnand_read_reg.exit.brcmnand_read_reg.exit39_crit_edge, label %if.then.i37

brcmnand_read_reg.exit.brcmnand_read_reg.exit39_crit_edge: ; preds = %brcmnand_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit39

if.then.i37:                                      ; preds = %brcmnand_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i34 = zext i16 %16 to i32
  %nand_base.i.i35 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %nand_base.i.i35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nand_base.i.i35, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %18, i32 %conv.i34
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36) #9, !srcloc !336
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  br label %brcmnand_read_reg.exit39

brcmnand_read_reg.exit39:                         ; preds = %if.then.i37, %brcmnand_read_reg.exit.brcmnand_read_reg.exit39_crit_edge
  %retval.0.i38 = phi i32 [ %20, %if.then.i37 ], [ 0, %brcmnand_read_reg.exit.brcmnand_read_reg.exit39_crit_edge ]
  %nand_cs_nand_xor = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 45
  %21 = ptrtoint ptr %nand_cs_nand_xor to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i38, ptr %nand_cs_nand_xor, align 8
  %22 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_offsets.i, align 8
  %arrayidx.i41 = getelementptr i16, ptr %23, i32 9
  %24 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.i41, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i42 = icmp eq i16 %25, 0
  br i1 %tobool.not.i42, label %brcmnand_read_reg.exit39.brcmnand_read_reg.exit48_crit_edge, label %if.then.i46

brcmnand_read_reg.exit39.brcmnand_read_reg.exit48_crit_edge: ; preds = %brcmnand_read_reg.exit39
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit48

if.then.i46:                                      ; preds = %brcmnand_read_reg.exit39
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i43 = zext i16 %25 to i32
  %nand_base.i.i44 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %nand_base.i.i44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nand_base.i.i44, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %27, i32 %conv.i43
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45) #9, !srcloc !336
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  br label %brcmnand_read_reg.exit48

brcmnand_read_reg.exit48:                         ; preds = %if.then.i46, %brcmnand_read_reg.exit39.brcmnand_read_reg.exit48_crit_edge
  %retval.0.i47 = phi i32 [ %29, %if.then.i46 ], [ 0, %brcmnand_read_reg.exit39.brcmnand_read_reg.exit48_crit_edge ]
  %corr_stat_threshold = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 46
  %30 = ptrtoint ptr %corr_stat_threshold to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i47, ptr %corr_stat_threshold, align 4
  %flash_dma_base.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %flash_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %flash_dma_base.i, align 4
  %tobool.i.not = icmp eq ptr %32, null
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %brcmnand_read_reg.exit48
  call void @__sanitizer_cov_trace_pc() #11
  %flash_dma_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 28
  %33 = ptrtoint ptr %flash_dma_offsets.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %flash_dma_offsets.i, align 8
  %arrayidx.i49 = getelementptr i16, ptr %34, i32 4
  %35 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i49, align 2
  %conv.i51 = zext i16 %36 to i32
  %add.ptr.i = getelementptr i8, ptr %32, i32 %conv.i51
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !336
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  %flash_dma_mode = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 47
  %39 = ptrtoint ptr %flash_dma_mode to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %flash_dma_mode, align 8
  br label %if.end15

if.else:                                          ; preds = %brcmnand_read_reg.exit48
  %edu_base.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 18
  %40 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %edu_base.i, align 8
  %tobool.i52.not = icmp eq ptr %41, null
  br i1 %tobool.i52.not, label %if.else.if.end15_crit_edge, label %if.then13

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %edu_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 17
  %42 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %edu_offsets.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %43, align 2
  %conv.i54 = zext i16 %45 to i32
  %add.ptr.i55 = getelementptr i8, ptr %41, i32 %conv.i54
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #9, !srcloc !336
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  %edu_config = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 24
  %48 = ptrtoint ptr %edu_config to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %edu_config, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.else.if.end15_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmnand_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flash_dma_base.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flash_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flash_dma_base.i, align 4
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flash_dma_mode = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 47
  %4 = ptrtoint ptr %flash_dma_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flash_dma_mode, align 8
  %flash_dma_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %flash_dma_offsets.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flash_dma_offsets.i, align 8
  %arrayidx.i = getelementptr i16, ptr %7, i32 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %10 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #9, !srcloc !337
  %11 = ptrtoint ptr %flash_dma_offsets.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %flash_dma_offsets.i, align 8
  %arrayidx.i51 = getelementptr i16, ptr %12, i32 8
  %13 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i51, align 2
  %15 = ptrtoint ptr %flash_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %flash_dma_base.i, align 4
  %conv.i53 = zext i16 %14 to i32
  %add.ptr.i54 = getelementptr i8, ptr %16, i32 %conv.i53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 0) #9, !srcloc !337
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %edu_base.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 18
  %17 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %edu_base.i, align 8
  %tobool.i55.not = icmp eq ptr %18, null
  br i1 %tobool.i55.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %edu_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %edu_offsets.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 2
  %conv.i57 = zext i16 %22 to i32
  %add.ptr.i58 = getelementptr i8, ptr %18, i32 %conv.i57
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #9, !srcloc !336
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  %edu_config = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 24
  %25 = ptrtoint ptr %edu_config to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %edu_config, align 8
  %26 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %edu_offsets.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %27, align 2
  %30 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %edu_base.i, align 8
  %conv.i61 = zext i16 %29 to i32
  %add.ptr.i62 = getelementptr i8, ptr %31, i32 %conv.i61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %23) #9, !srcloc !337
  %32 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %edu_offsets.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 2
  %36 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %edu_base.i, align 8
  %conv.i65 = zext i16 %35 to i32
  %add.ptr.i66 = getelementptr i8, ptr %37, i32 %conv.i65
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #9, !srcloc !336
  %39 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i.i = getelementptr i16, ptr %40, i32 8
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.i.i, align 2
  %43 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %edu_base.i, align 8
  %conv.i.i = zext i16 %42 to i32
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !337
  %45 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i9.i = getelementptr i16, ptr %46, i32 8
  %47 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i9.i, align 2
  %49 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %edu_base.i, align 8
  %conv.i11.i = zext i16 %48 to i32
  %add.ptr.i12.i = getelementptr i8, ptr %50, i32 %conv.i11.i
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #9, !srcloc !336
  %52 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i14.i = getelementptr i16, ptr %53, i32 7
  %54 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.i14.i, align 2
  %56 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %edu_base.i, align 8
  %conv.i16.i = zext i16 %55 to i32
  %add.ptr.i17.i = getelementptr i8, ptr %57, i32 %conv.i16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 0) #9, !srcloc !337
  %58 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i19.i = getelementptr i16, ptr %59, i32 7
  %60 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.i19.i, align 2
  %62 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %edu_base.i, align 8
  %conv.i21.i = zext i16 %61 to i32
  %add.ptr.i22.i = getelementptr i8, ptr %63, i32 %conv.i21.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 0) #9, !srcloc !337
  %64 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i24.i = getelementptr i16, ptr %65, i32 7
  %66 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.i24.i, align 2
  %68 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %edu_base.i, align 8
  %conv.i26.i = zext i16 %67 to i32
  %add.ptr.i27.i = getelementptr i8, ptr %69, i32 %conv.i26.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #9, !srcloc !337
  %70 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i29.i = getelementptr i16, ptr %71, i32 7
  %72 = ptrtoint ptr %arrayidx.i29.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx.i29.i, align 2
  %74 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %edu_base.i, align 8
  %conv.i31.i = zext i16 %73 to i32
  %add.ptr.i32.i = getelementptr i8, ptr %75, i32 %conv.i31.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 0) #9, !srcloc !337
  %76 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i34.i = getelementptr i16, ptr %77, i32 7
  %78 = ptrtoint ptr %arrayidx.i34.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx.i34.i, align 2
  %80 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %edu_base.i, align 8
  %conv.i36.i = zext i16 %79 to i32
  %add.ptr.i37.i = getelementptr i8, ptr %81, i32 %conv.i36.i
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i) #9, !srcloc !336
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %reg_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 33
  %83 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg_offsets.i, align 8
  %arrayidx.i67 = getelementptr i16, ptr %84, i32 4
  %85 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx.i67, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool.not.i = icmp eq i16 %86, 0
  br i1 %tobool.not.i, label %if.end7.brcmnand_write_reg.exit_crit_edge, label %if.then.i

if.end7.brcmnand_write_reg.exit_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %nand_cs_nand_select = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 44
  %87 = ptrtoint ptr %nand_cs_nand_select to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nand_cs_nand_select, align 4
  %conv.i68 = zext i16 %86 to i32
  %nand_base.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %89 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i.i69 = getelementptr i8, ptr %90, i32 %conv.i68
  %91 = tail call i32 @llvm.bswap.i32(i32 %88) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i69, i32 %91) #9, !srcloc !337
  br label %brcmnand_write_reg.exit

brcmnand_write_reg.exit:                          ; preds = %if.then.i, %if.end7.brcmnand_write_reg.exit_crit_edge
  %92 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %reg_offsets.i, align 8
  %arrayidx.i71 = getelementptr i16, ptr %93, i32 5
  %94 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx.i71, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool.not.i72 = icmp eq i16 %95, 0
  br i1 %tobool.not.i72, label %brcmnand_write_reg.exit.brcmnand_write_reg.exit77_crit_edge, label %if.then.i76

brcmnand_write_reg.exit.brcmnand_write_reg.exit77_crit_edge: ; preds = %brcmnand_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit77

if.then.i76:                                      ; preds = %brcmnand_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %nand_cs_nand_xor = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 45
  %96 = ptrtoint ptr %nand_cs_nand_xor to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nand_cs_nand_xor, align 8
  %conv.i73 = zext i16 %95 to i32
  %nand_base.i.i74 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %98 = ptrtoint ptr %nand_base.i.i74 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %nand_base.i.i74, align 4
  %add.ptr.i.i75 = getelementptr i8, ptr %99, i32 %conv.i73
  %100 = tail call i32 @llvm.bswap.i32(i32 %97) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i75, i32 %100) #9, !srcloc !337
  br label %brcmnand_write_reg.exit77

brcmnand_write_reg.exit77:                        ; preds = %if.then.i76, %brcmnand_write_reg.exit.brcmnand_write_reg.exit77_crit_edge
  %101 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reg_offsets.i, align 8
  %arrayidx.i79 = getelementptr i16, ptr %102, i32 9
  %103 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx.i79, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool.not.i80 = icmp eq i16 %104, 0
  br i1 %tobool.not.i80, label %brcmnand_write_reg.exit77.brcmnand_write_reg.exit85_crit_edge, label %if.then.i84

brcmnand_write_reg.exit77.brcmnand_write_reg.exit85_crit_edge: ; preds = %brcmnand_write_reg.exit77
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit85

if.then.i84:                                      ; preds = %brcmnand_write_reg.exit77
  call void @__sanitizer_cov_trace_pc() #11
  %corr_stat_threshold = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 46
  %105 = ptrtoint ptr %corr_stat_threshold to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %corr_stat_threshold, align 4
  %conv.i81 = zext i16 %104 to i32
  %nand_base.i.i82 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %107 = ptrtoint ptr %nand_base.i.i82 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %nand_base.i.i82, align 4
  %add.ptr.i.i83 = getelementptr i8, ptr %108, i32 %conv.i81
  %109 = tail call i32 @llvm.bswap.i32(i32 %106) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i83, i32 %109) #9, !srcloc !337
  br label %brcmnand_write_reg.exit85

brcmnand_write_reg.exit85:                        ; preds = %if.then.i84, %brcmnand_write_reg.exit77.brcmnand_write_reg.exit85_crit_edge
  %soc = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 8
  %110 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %soc, align 4
  %tobool.not = icmp eq ptr %111, null
  br i1 %tobool.not, label %brcmnand_write_reg.exit85.if.end14_crit_edge, label %if.then8

brcmnand_write_reg.exit85.if.end14_crit_edge:     ; preds = %brcmnand_write_reg.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then8:                                         ; preds = %brcmnand_write_reg.exit85
  call void @__sanitizer_cov_trace_pc() #11
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %call11 = tail call zeroext i1 %113(ptr noundef nonnull %111) #9
  %114 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %soc, align 4
  %ctlrdy_set_enabled = getelementptr inbounds %struct.brcmnand_soc, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %ctlrdy_set_enabled to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ctlrdy_set_enabled, align 4
  tail call void %117(ptr noundef %115, i1 noundef zeroext true) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %brcmnand_write_reg.exit85.if.end14_crit_edge
  %host_list = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 16
  %118 = ptrtoint ptr %host_list to i32
  call void @__asan_load4_noabort(i32 %118)
  %host.086 = load ptr, ptr %host_list, align 4
  %cmp.not87 = icmp eq ptr %host.086, %host_list
  br i1 %cmp.not87, label %if.end14.for.end_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end14.for.body_crit_edge
  %host.088 = phi ptr [ %host.0, %for.body.for.body_crit_edge ], [ %host.086, %if.end14.for.body_crit_edge ]
  %chip16 = getelementptr inbounds %struct.brcmnand_host, ptr %host.088, i32 0, i32 1
  tail call fastcc void @brcmnand_save_restore_cs_config(ptr noundef %host.088, i32 noundef 1)
  %call17 = tail call i32 @nand_reset_op(ptr noundef %chip16) #9
  %119 = ptrtoint ptr %host.088 to i32
  call void @__asan_load4_noabort(i32 %119)
  %host.0 = load ptr, ptr %host.088, align 4
  %cmp.not = icmp eq ptr %host.0, %host_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end14.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmnand_probe(ptr noundef %pdev, ptr noundef %soc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup175_crit_edge, label %if.end

entry.cleanup175_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup175

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_match_node(ptr noundef nonnull @brcmnand_of_match, ptr noundef nonnull %1) #9
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup175_crit_edge, label %if.end4

if.end.cleanup175_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup175

if.end4:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 968, i32 noundef 3520) #9
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end4.cleanup175_crit_edge, label %if.end8

if.end4.cleanup175_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup175

if.end8:                                          ; preds = %if.end4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 8
  %done = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 13
  %4 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #9
  %dma_done = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 14
  %5 = ptrtoint ptr %dma_done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %dma_done, align 4
  %wait.i299 = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i299, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #9
  %edu_done = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 15
  %6 = ptrtoint ptr %edu_done to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %edu_done, align 4
  %wait.i300 = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i300, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #9
  %controller = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %controller, ptr noundef nonnull @.str.23, ptr noundef nonnull @nand_controller_init.__key) #9
  %ops = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @brcmnand_controller_ops, ptr %ops, align 4
  %host_list = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %host_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %host_list, ptr %host_list, align 4
  %prev.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %host_list, ptr %prev.i, align 4
  %call11 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call12 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call11) #9
  %nand_base = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %nand_base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12, ptr %nand_base, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call12 to i32
  br label %cleanup175

if.end18:                                         ; preds = %if.end8
  %call19 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str) #9
  %clk = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call19, ptr %clk, align 8
  %cmp.i301 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i301, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end18
  %call.i302 = tail call i32 @clk_prepare(ptr noundef %call19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i302)
  %tobool.not.i = icmp eq i32 %call.i302, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then22.cleanup175_crit_edge

if.then22.cleanup175_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup175

if.end.i:                                         ; preds = %if.then22
  %call1.i = tail call i32 @clk_enable(ptr noundef %call19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end33_crit_edge, label %if.then3.i

if.end.i.if.end33_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %call19) #9
  br label %cleanup175

if.else:                                          ; preds = %if.end18
  %cmp = icmp eq ptr %call19, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.else.cleanup175_crit_edge, label %if.end31

if.else.cleanup175_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup175

if.end31:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %clk, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.end.i.if.end33_crit_edge
  %14 = ptrtoint ptr %nand_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nand_base, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !336
  %17 = and i32 %16, -65536
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  %nand_version.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %nand_version.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %nand_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %18)
  %cmp.i303 = icmp ult i32 %18, 513
  br i1 %cmp.i303, label %brcmnand_revision_init.exit, label %if.end.i304

if.end.i304:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1793, i32 %18)
  %cmp4.i = icmp ugt i32 %18, 1793
  br i1 %cmp4.i, label %if.end106.i, label %if.else.i

if.else.i:                                        ; preds = %if.end.i304
  call void @__sanitizer_cov_trace_const_cmp4(i32 17235968, i32 %17)
  %cmp7.i = icmp eq i32 %17, 17235968
  br i1 %cmp7.i, label %if.end124.thread313.i, label %if.else10.i

if.end124.thread313.i:                            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %reg_offsets9.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 33
  %20 = ptrtoint ptr %reg_offsets9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @brcmnand_regs_v71, ptr %reg_offsets9.i, align 8
  %reg_spacing266.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 34
  %21 = ptrtoint ptr %reg_spacing266.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 20, ptr %reg_spacing266.i, align 4
  %cs_offsets267.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 35
  %22 = ptrtoint ptr %cs_offsets267.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @brcmnand_cs_offsets_v71, ptr %cs_offsets267.i, align 8
  %max_page_size268.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 39
  %23 = ptrtoint ptr %max_page_size268.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16384, ptr %max_page_size268.i, align 8
  %max_block_size269.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 37
  %24 = ptrtoint ptr %max_block_size269.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2097152, ptr %max_block_size269.i, align 8
  %max_oob114314.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 42
  %25 = ptrtoint ptr %max_oob114314.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 64, ptr %max_oob114314.i, align 4
  br label %if.end131.i

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %18)
  %cmp12.i = icmp ugt i32 %18, 1535
  br i1 %cmp12.i, label %if.else110.i, label %if.else15.i

if.else15.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %18)
  %cmp17.i = icmp ugt i32 %18, 1279
  br i1 %cmp17.i, label %if.else45.i, label %if.else20.i

if.else20.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 770, i32 %18)
  %cmp22.i = icmp ugt i32 %18, 770
  %reg_offsets24.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 33
  br i1 %cmp22.i, label %if.else57.thread.i, label %if.else61.i

if.else45.i:                                      ; preds = %if.else15.i
  %reg_offsets19.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 33
  %26 = ptrtoint ptr %reg_offsets19.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @brcmnand_regs_v50, ptr %reg_offsets19.i, align 8
  %reg_spacing40.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 34
  %27 = ptrtoint ptr %reg_spacing40.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %reg_spacing40.i, align 4
  %cs_offsets46.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 35
  %28 = ptrtoint ptr %cs_offsets46.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @brcmnand_cs_offsets, ptr %cs_offsets46.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 327680, i32 %17)
  %cmp50.i = icmp eq i32 %17, 327680
  br i1 %cmp50.i, label %if.else115.thread331.i, label %if.else45.i.if.then140.i_crit_edge

if.else45.i.if.then140.i_crit_edge:               ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then140.i

if.else115.thread331.i:                           ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #11
  %cs0_offsets324.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 36
  %29 = ptrtoint ptr %cs0_offsets324.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @brcmnand_cs_offsets_cs0, ptr %cs0_offsets324.i, align 4
  br label %if.then140.i

if.else57.thread.i:                               ; preds = %if.else20.i
  %30 = ptrtoint ptr %reg_offsets24.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @brcmnand_regs_v33, ptr %reg_offsets24.i, align 8
  %reg_spacing40305.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 34
  %31 = ptrtoint ptr %reg_spacing40305.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16, ptr %reg_spacing40305.i, align 4
  %cs_offsets46306.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 35
  %32 = ptrtoint ptr %cs_offsets46306.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @brcmnand_cs_offsets, ptr %cs_offsets46306.i, align 8
  %cs0_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 36
  %33 = ptrtoint ptr %cs0_offsets.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @brcmnand_cs_offsets_cs0, ptr %cs0_offsets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50528256, i32 %17)
  %cmp59308.not.i = icmp eq i32 %17, 50528256
  br i1 %cmp59308.not.i, label %if.else57.thread.i.if.else115.thread.sink.split.i_crit_edge, label %if.else79.i

if.else57.thread.i.if.else115.thread.sink.split.i_crit_edge: ; preds = %if.else57.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else115.thread.sink.split.i

if.else61.i:                                      ; preds = %if.else20.i
  %34 = ptrtoint ptr %reg_offsets24.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @brcmnand_regs_v21, ptr %reg_offsets24.i, align 8
  %reg_spacing40235.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 34
  %35 = ptrtoint ptr %reg_spacing40235.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16, ptr %reg_spacing40235.i, align 4
  %cs_offsets46236.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 35
  %36 = ptrtoint ptr %cs_offsets46236.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @brcmnand_cs_offsets, ptr %cs_offsets46236.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %18)
  %cmp63.i = icmp ugt i32 %18, 513
  br i1 %cmp63.i, label %if.else61.i.if.else115.thread.sink.split.i_crit_edge, label %if.then99.i

if.else61.i.if.else115.thread.sink.split.i_crit_edge: ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else115.thread.sink.split.i

if.else79.i:                                      ; preds = %if.else57.thread.i
  %page_sizes309.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 40
  %37 = ptrtoint ptr %page_sizes309.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @brcmnand_revision_init.page_sizes_v3_4, ptr %page_sizes309.i, align 4
  %page_size_shift310.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 41
  %38 = ptrtoint ptr %page_size_shift310.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 20, ptr %page_size_shift310.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %18)
  %cmp81.i = icmp ugt i32 %18, 1023
  br i1 %cmp81.i, label %if.else115.i, label %if.else79.i.if.else115.thread.i_crit_edge

if.else79.i.if.else115.thread.i_crit_edge:        ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else115.thread.i

if.then99.i:                                      ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else115.thread.sink.split.i

if.else115.thread.sink.split.i:                   ; preds = %if.then99.i, %if.else61.i.if.else115.thread.sink.split.i_crit_edge, %if.else57.thread.i.if.else115.thread.sink.split.i_crit_edge
  %brcmnand_revision_init.page_sizes_v2_2.sink.i = phi ptr [ @brcmnand_revision_init.page_sizes_v2_1, %if.then99.i ], [ @brcmnand_revision_init.page_sizes_v2_2, %if.else57.thread.i.if.else115.thread.sink.split.i_crit_edge ], [ @brcmnand_revision_init.page_sizes_v2_2, %if.else61.i.if.else115.thread.sink.split.i_crit_edge ]
  %.sink334.i = phi i32 [ 30, %if.then99.i ], [ 20, %if.else57.thread.i.if.else115.thread.sink.split.i_crit_edge ], [ 20, %if.else61.i.if.else115.thread.sink.split.i_crit_edge ]
  %brcmnand_revision_init.block_sizes_v2_1.sink.ph.i = phi ptr [ @brcmnand_revision_init.block_sizes_v2_1, %if.then99.i ], [ @brcmnand_revision_init.block_sizes_v2_2, %if.else57.thread.i.if.else115.thread.sink.split.i_crit_edge ], [ @brcmnand_revision_init.block_sizes_v2_2, %if.else61.i.if.else115.thread.sink.split.i_crit_edge ]
  %.sink.ph.i = phi i32 [ 2048, %if.then99.i ], [ 4096, %if.else57.thread.i.if.else115.thread.sink.split.i_crit_edge ], [ 4096, %if.else61.i.if.else115.thread.sink.split.i_crit_edge ]
  %page_sizes65.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 40
  %39 = ptrtoint ptr %page_sizes65.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %brcmnand_revision_init.page_sizes_v2_2.sink.i, ptr %page_sizes65.i, align 4
  %page_size_shift250.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 41
  %40 = ptrtoint ptr %page_size_shift250.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink334.i, ptr %page_size_shift250.i, align 8
  br label %if.else115.thread.i

if.else115.thread.i:                              ; preds = %if.else115.thread.sink.split.i, %if.else79.i.if.else115.thread.i_crit_edge
  %brcmnand_revision_init.block_sizes_v2_1.sink.i = phi ptr [ @brcmnand_revision_init.block_sizes_v2_2, %if.else79.i.if.else115.thread.i_crit_edge ], [ %brcmnand_revision_init.block_sizes_v2_1.sink.ph.i, %if.else115.thread.sink.split.i ]
  %.sink.i = phi i32 [ 4096, %if.else79.i.if.else115.thread.i_crit_edge ], [ %.sink.ph.i, %if.else115.thread.sink.split.i ]
  %block_sizes90.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 38
  %41 = ptrtoint ptr %block_sizes90.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %brcmnand_revision_init.block_sizes_v2_1.sink.i, ptr %block_sizes90.i, align 4
  %42 = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 39
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink.i, ptr %42, align 8
  %max_block_size104.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 37
  %44 = ptrtoint ptr %max_block_size104.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 524288, ptr %max_block_size104.i, align 8
  br label %if.end143.i

if.end106.i:                                      ; preds = %if.end.i304
  %reg_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 33
  %45 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @brcmnand_regs_v72, ptr %reg_offsets.i, align 8
  %reg_spacing.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 34
  %46 = ptrtoint ptr %reg_spacing.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 20, ptr %reg_spacing.i, align 4
  %cs_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 35
  %47 = ptrtoint ptr %cs_offsets.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @brcmnand_cs_offsets_v71, ptr %cs_offsets.i, align 8
  %max_page_size.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 39
  %48 = ptrtoint ptr %max_page_size.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 16384, ptr %max_page_size.i, align 8
  %max_block_size.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 37
  %49 = ptrtoint ptr %max_block_size.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2097152, ptr %max_block_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 34013184, i32 %17)
  %cmp108.i = icmp eq i32 %17, 34013184
  br i1 %cmp108.i, label %if.end131.thread.i, label %if.end106.i.if.end124.i_crit_edge

if.end106.i.if.end124.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124.i

if.end131.thread.i:                               ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #11
  %max_oob.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 42
  %50 = ptrtoint ptr %max_oob.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 128, ptr %max_oob.i, align 4
  %features316.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 43
  %51 = ptrtoint ptr %features316.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %features316.i, align 8
  %or317.i = or i32 %52, 2
  store i32 %or317.i, ptr %features316.i, align 8
  br label %if.end37.sink.split

if.else110.i:                                     ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #11
  %reg_offsets14.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 33
  %53 = ptrtoint ptr %reg_offsets14.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @brcmnand_regs_v60, ptr %reg_offsets14.i, align 8
  %reg_spacing40235321.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 34
  %54 = ptrtoint ptr %reg_spacing40235321.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16, ptr %reg_spacing40235321.i, align 4
  %cs_offsets46236322.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 35
  %55 = ptrtoint ptr %cs_offsets46236322.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @brcmnand_cs_offsets, ptr %cs_offsets46236322.i, align 8
  %page_sizes.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 40
  %56 = ptrtoint ptr %page_sizes.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @brcmnand_revision_init.page_sizes_v3_4, ptr %page_sizes.i, align 4
  %page_size_shift.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 41
  %57 = ptrtoint ptr %page_size_shift.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 20, ptr %page_size_shift.i, align 8
  %block_sizes.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 38
  %58 = ptrtoint ptr %block_sizes.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @brcmnand_revision_init.block_sizes_v6, ptr %block_sizes.i, align 4
  br label %if.end124.i

if.else115.i:                                     ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #11
  %block_sizes83.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 38
  %59 = ptrtoint ptr %block_sizes83.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @brcmnand_revision_init.block_sizes_v4, ptr %block_sizes83.i, align 4
  br label %if.end143.i

if.end124.i:                                      ; preds = %if.else110.i, %if.end106.i.if.end124.i_crit_edge
  %max_oob114.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 42
  %60 = ptrtoint ptr %max_oob114.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 64, ptr %max_oob114.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17170432, i32 %17)
  %cmp129.not.i = icmp eq i32 %17, 17170432
  br i1 %cmp129.not.i, label %if.end137.thread288.i, label %if.end124.i.if.end131.i_crit_edge

if.end124.i.if.end131.i_crit_edge:                ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131.i

if.end137.thread288.i:                            ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #11
  %features141302.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 43
  %61 = ptrtoint ptr %features141302.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %features141302.i, align 8
  %or142303.i = or i32 %62, 1
  store i32 %or142303.i, ptr %features141302.i, align 8
  br label %if.else149.i

if.end131.i:                                      ; preds = %if.end124.i.if.end131.i_crit_edge, %if.end124.thread313.i
  %features.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 43
  %63 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %features.i, align 8
  %or.i = or i32 %64, 2
  store i32 %or.i, ptr %features.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1791, i32 %18)
  %cmp133.i = icmp ugt i32 %18, 1791
  br i1 %cmp133.i, label %if.end131.i.if.end37.sink.split_crit_edge, label %if.then140.thread298.i

if.end131.i.if.end37.sink.split_crit_edge:        ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.sink.split

if.then140.thread298.i:                           ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #11
  %or142301.i = or i32 %64, 3
  %65 = ptrtoint ptr %features.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or142301.i, ptr %features.i, align 8
  br label %if.else149.i

if.then140.i:                                     ; preds = %if.else115.thread331.i, %if.else45.i.if.then140.i_crit_edge
  %page_sizes309328.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 40
  %66 = ptrtoint ptr %page_sizes309328.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @brcmnand_revision_init.page_sizes_v3_4, ptr %page_sizes309328.i, align 4
  %page_size_shift310329.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 41
  %67 = ptrtoint ptr %page_size_shift310329.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 20, ptr %page_size_shift310329.i, align 8
  %block_sizes83332.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 38
  %68 = ptrtoint ptr %block_sizes83332.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @brcmnand_revision_init.block_sizes_v4, ptr %block_sizes83332.i, align 4
  %max_oob119.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 42
  %69 = ptrtoint ptr %max_oob119.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 32, ptr %max_oob119.i, align 4
  %features141.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 43
  %70 = ptrtoint ptr %features141.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %features141.i, align 8
  %or142.i = or i32 %71, 1
  store i32 %or142.i, ptr %features141.i, align 8
  br label %if.else149.i

if.end143.i:                                      ; preds = %if.else115.i, %if.else115.thread.i
  %max_oob121.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 42
  %72 = ptrtoint ptr %max_oob121.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 16, ptr %max_oob121.i, align 4
  br label %if.else149.i

if.else149.i:                                     ; preds = %if.end143.i, %if.then140.i, %if.then140.thread298.i, %if.end137.thread288.i
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 27
  %75 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %76, ptr noundef nonnull @.str.95, ptr noundef null) #9
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.else149.i.if.end37_crit_edge, label %if.then152.i

if.else149.i.if.end37_crit_edge:                  ; preds = %if.else149.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then152.i:                                     ; preds = %if.else149.i
  call void @__sanitizer_cov_trace_pc() #11
  %features153.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 43
  br label %if.end37.sink.split

brcmnand_revision_init.exit:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.93, i32 noundef %18) #12
  br label %err

if.end37.sink.split:                              ; preds = %if.then152.i, %if.end131.i.if.end37.sink.split_crit_edge, %if.end131.thread.i
  %features153.i.sink378 = phi ptr [ %features153.i, %if.then152.i ], [ %features316.i, %if.end131.thread.i ], [ %features.i, %if.end131.i.if.end37.sink.split_crit_edge ]
  %.sink377 = phi i32 [ 8, %if.then152.i ], [ 13, %if.end131.thread.i ], [ 13, %if.end131.i.if.end37.sink.split_crit_edge ]
  %79 = ptrtoint ptr %features153.i.sink378 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %features153.i.sink378, align 8
  %or154.i = or i32 %80, %.sink377
  store i32 %or154.i, ptr %features153.i.sink378, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.else149.i.if.end37_crit_edge
  %call38 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #9
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.else48, label %if.then40

if.then40:                                        ; preds = %if.end37
  %call41 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call38) #9
  %nand_fc = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 3
  %81 = ptrtoint ptr %nand_fc to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call41, ptr %nand_fc, align 8
  %cmp.i306 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i306, label %if.then44, label %if.then40.if.end51_crit_edge

if.then40.if.end51_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then44:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %call41 to i32
  br label %err

if.else48:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %nand_base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %nand_base, align 4
  %reg_offsets = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 33
  %85 = ptrtoint ptr %reg_offsets to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg_offsets, align 8
  %arrayidx = getelementptr i16, ptr %86, i32 25
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %88 to i32
  %add.ptr = getelementptr i8, ptr %84, i32 %conv
  %nand_fc50 = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 3
  %89 = ptrtoint ptr %nand_fc50 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %add.ptr, ptr %nand_fc50, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %if.then40.if.end51_crit_edge
  %call52 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.2) #9
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.else100, label %if.then54

if.then54:                                        ; preds = %if.end51
  %call55 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call52) #9
  %flash_dma_base = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 4
  %90 = ptrtoint ptr %flash_dma_base to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call55, ptr %flash_dma_base, align 4
  %cmp.i307 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i307, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %call55 to i32
  br label %err

if.end61:                                         ; preds = %if.then54
  %92 = ptrtoint ptr %nand_version.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nand_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1794, i32 %93)
  %cmp.i309 = icmp sgt i32 %93, 1794
  br i1 %cmp.i309, label %brcmnand_flash_dma_revision_init.exit.thread, label %if.else.i310

brcmnand_flash_dma_revision_init.exit.thread:     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %flash_dma_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 28
  %94 = ptrtoint ptr %flash_dma_offsets.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @flash_dma_regs_v4, ptr %flash_dma_offsets.i, align 8
  br label %if.end67

if.else.i310:                                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 1538, i32 %93)
  %cmp2.i = icmp eq i32 %93, 1538
  %flash_dma_offsets4.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 28
  %flash_dma_regs_v0.flash_dma_regs_v1 = select i1 %cmp2.i, ptr @flash_dma_regs_v0, ptr @flash_dma_regs_v1
  %95 = ptrtoint ptr %flash_dma_offsets4.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %flash_dma_regs_v0.flash_dma_regs_v1, ptr %flash_dma_offsets4.i, align 8
  %96 = ptrtoint ptr %nand_version.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pr = load i32, ptr %nand_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1791, i32 %.pr)
  %cmp62 = icmp sgt i32 %.pr, 1791
  br i1 %cmp62, label %if.else.i310.if.end67_crit_edge, label %if.else.i310.if.end72_crit_edge

if.else.i310.if.end72_crit_edge:                  ; preds = %if.else.i310
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.else.i310.if.end67_crit_edge:                  ; preds = %if.else.i310
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.end67:                                         ; preds = %if.else.i310.if.end67_crit_edge, %brcmnand_flash_dma_revision_init.exit.thread
  %call66 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev1, i64 noundef 1099511627775)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool68.not = icmp eq i32 %call66, 0
  br i1 %tobool68.not, label %if.end67.if.end75_crit_edge, label %if.end67.if.end72_crit_edge

if.end67.if.end72_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.end67.if.end75_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.end72:                                         ; preds = %if.end67.if.end72_crit_edge, %if.else.i310.if.end72_crit_edge
  %call71 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev1, i64 noundef 4294967295)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool73.not = icmp eq i32 %call71, 0
  br i1 %tobool73.not, label %if.end72.if.end75_crit_edge, label %if.end72.err_crit_edge

if.end72.err_crit_edge:                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end72.if.end75_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.end75:                                         ; preds = %if.end72.if.end75_crit_edge, %if.end67.if.end75_crit_edge
  %flash_dma_offsets.i312 = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 28
  %97 = ptrtoint ptr %flash_dma_offsets.i312 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %flash_dma_offsets.i312, align 8
  %arrayidx.i = getelementptr i16, ptr %98, i32 4
  %99 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx.i, align 2
  %101 = ptrtoint ptr %flash_dma_base to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %flash_dma_base, align 4
  %conv.i = zext i16 %100 to i32
  %add.ptr.i = getelementptr i8, ptr %102, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #9, !srcloc !337
  %103 = ptrtoint ptr %flash_dma_offsets.i312 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %flash_dma_offsets.i312, align 8
  %arrayidx.i314 = getelementptr i16, ptr %104, i32 8
  %105 = ptrtoint ptr %arrayidx.i314 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx.i314, align 2
  %107 = ptrtoint ptr %flash_dma_base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %flash_dma_base, align 4
  %conv.i316 = zext i16 %106 to i32
  %add.ptr.i317 = getelementptr i8, ptr %108, i32 %conv.i316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i317, i32 0) #9, !srcloc !337
  %dma_pa = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 30
  %call.i318 = tail call ptr @dmam_alloc_attrs(ptr noundef %dev1, i32 noundef 64, ptr noundef %dma_pa, i32 noundef 3264, i32 noundef 0) #9
  %dma_desc = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 29
  %109 = ptrtoint ptr %dma_desc to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call.i318, ptr %dma_desc, align 4
  %tobool78.not = icmp eq ptr %call.i318, null
  br i1 %tobool78.not, label %if.end75.err_crit_edge, label %if.end80

if.end75.err_crit_edge:                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end80:                                         ; preds = %if.end75
  %call81 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #9
  %dma_irq = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 6
  %110 = ptrtoint ptr %dma_irq to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %call81, ptr %dma_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp83 = icmp slt i32 %call81, 0
  br i1 %cmp83, label %do.end, label %if.end86

do.end:                                           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #12
  br label %err

if.end86:                                         ; preds = %if.end80
  %call.i319 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call81, ptr noundef nonnull @brcmnand_dma_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i319)
  %cmp89 = icmp slt i32 %call.i319, 0
  br i1 %cmp89, label %do.end94, label %do.end99

do.end94:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %dma_irq to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dma_irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %112, i32 noundef %call.i319) #12
  br label %err

do.end99:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13) #12
  br label %if.end110.sink.split

if.else100:                                       ; preds = %if.end51
  %call101 = tail call fastcc i32 @brcmnand_edu_setup(ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.else100.err_crit_edge, label %if.end105

if.else100.err_crit_edge:                         ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end105:                                        ; preds = %if.else100
  %edu_base.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 18
  %113 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %edu_base.i, align 8
  %tobool.i.not = icmp eq ptr %114, null
  br i1 %tobool.i.not, label %if.end105.if.end110_crit_edge, label %if.end105.if.end110.sink.split_crit_edge

if.end105.if.end110.sink.split_crit_edge:         ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110.sink.split

if.end105.if.end110_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.end110.sink.split:                             ; preds = %if.end105.if.end110.sink.split_crit_edge, %do.end99
  %brcmnand_edu_trans.sink = phi ptr [ @brcmnand_dma_trans, %do.end99 ], [ @brcmnand_edu_trans, %if.end105.if.end110.sink.split_crit_edge ]
  %dma_trans108 = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 31
  %115 = ptrtoint ptr %dma_trans108 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %brcmnand_edu_trans.sink, ptr %dma_trans108, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.end110.sink.split, %if.end105.if.end110_crit_edge
  %reg_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 33
  %116 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %117, i32 4
  %118 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %119)
  %tobool.not.i.i = icmp eq i16 %119, 0
  br i1 %tobool.not.i.i, label %if.end110.brcmnand_read_reg.exit.i_crit_edge, label %if.then.i.i

if.end110.brcmnand_read_reg.exit.i_crit_edge:     ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit.i

if.then.i.i:                                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i16 %119 to i32
  %120 = ptrtoint ptr %nand_base to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %nand_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %121, i32 %conv.i.i
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !336
  %123 = and i32 %122, 16777151
  %124 = call i32 @llvm.bswap.i32(i32 %123)
  br label %brcmnand_read_reg.exit.i

brcmnand_read_reg.exit.i:                         ; preds = %if.then.i.i, %if.end110.brcmnand_read_reg.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %124, %if.then.i.i ], [ 0, %if.end110.brcmnand_read_reg.exit.i_crit_edge ]
  %125 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i6.i = getelementptr i16, ptr %126, i32 4
  %127 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx.i6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %tobool.not.i7.i = icmp eq i16 %128, 0
  br i1 %tobool.not.i7.i, label %brcmnand_read_reg.exit.i.brcmnand_rmw_reg.exit_crit_edge, label %if.then.i11.i

brcmnand_read_reg.exit.i.brcmnand_rmw_reg.exit_crit_edge: ; preds = %brcmnand_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_rmw_reg.exit

if.then.i11.i:                                    ; preds = %brcmnand_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i8.i = zext i16 %128 to i32
  %129 = ptrtoint ptr %nand_base to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %nand_base, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %130, i32 %conv.i8.i
  %131 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i, i32 %131) #9, !srcloc !337
  br label %brcmnand_rmw_reg.exit

brcmnand_rmw_reg.exit:                            ; preds = %if.then.i11.i, %brcmnand_read_reg.exit.i.brcmnand_rmw_reg.exit_crit_edge
  %132 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i321 = getelementptr i16, ptr %133, i32 5
  %134 = ptrtoint ptr %arrayidx.i.i321 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %arrayidx.i.i321, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %tobool.not.i.i322 = icmp eq i16 %135, 0
  br i1 %tobool.not.i.i322, label %brcmnand_rmw_reg.exit.brcmnand_read_reg.exit.i330_crit_edge, label %if.then.i.i326

brcmnand_rmw_reg.exit.brcmnand_read_reg.exit.i330_crit_edge: ; preds = %brcmnand_rmw_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit.i330

if.then.i.i326:                                   ; preds = %brcmnand_rmw_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i323 = zext i16 %135 to i32
  %136 = ptrtoint ptr %nand_base to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %nand_base, align 4
  %add.ptr.i.i.i325 = getelementptr i8, ptr %137, i32 %conv.i.i323
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i325) #9, !srcloc !336
  %139 = and i32 %138, 16777215
  %140 = call i32 @llvm.bswap.i32(i32 %139)
  br label %brcmnand_read_reg.exit.i330

brcmnand_read_reg.exit.i330:                      ; preds = %if.then.i.i326, %brcmnand_rmw_reg.exit.brcmnand_read_reg.exit.i330_crit_edge
  %retval.0.i.i327 = phi i32 [ %140, %if.then.i.i326 ], [ 0, %brcmnand_rmw_reg.exit.brcmnand_read_reg.exit.i330_crit_edge ]
  %141 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i6.i328 = getelementptr i16, ptr %142, i32 5
  %143 = ptrtoint ptr %arrayidx.i6.i328 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %arrayidx.i6.i328, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %144)
  %tobool.not.i7.i329 = icmp eq i16 %144, 0
  br i1 %tobool.not.i7.i329, label %brcmnand_read_reg.exit.i330.brcmnand_rmw_reg.exit336_crit_edge, label %if.then.i11.i335

brcmnand_read_reg.exit.i330.brcmnand_rmw_reg.exit336_crit_edge: ; preds = %brcmnand_read_reg.exit.i330
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_rmw_reg.exit336

if.then.i11.i335:                                 ; preds = %brcmnand_read_reg.exit.i330
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i8.i332 = zext i16 %144 to i32
  %145 = ptrtoint ptr %nand_base to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %nand_base, align 4
  %add.ptr.i.i10.i334 = getelementptr i8, ptr %146, i32 %conv.i8.i332
  %147 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i327) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i334, i32 %147) #9, !srcloc !337
  br label %brcmnand_rmw_reg.exit336

brcmnand_rmw_reg.exit336:                         ; preds = %if.then.i11.i335, %brcmnand_read_reg.exit.i330.brcmnand_rmw_reg.exit336_crit_edge
  %features = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 43
  %148 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %features, align 8
  %and = and i32 %149, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool111.not = icmp eq i32 %and, 0
  br i1 %tobool111.not, label %if.else117, label %if.then112

if.then112:                                       ; preds = %brcmnand_rmw_reg.exit336
  %150 = load i32, ptr @wp_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %150)
  %cmp113 = icmp eq i32 %150, 2
  br i1 %cmp113, label %if.then115, label %if.then112.if.end118_crit_edge

if.then112.if.end118_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then115:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @brcmnand_set_wp(ptr noundef nonnull %call.i, i1 noundef zeroext false)
  br label %if.end118

if.else117:                                       ; preds = %brcmnand_rmw_reg.exit336
  call void @__sanitizer_cov_trace_pc() #11
  store i32 0, ptr @wp_on, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.else117, %if.then115, %if.then112.if.end118_crit_edge
  %call119 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 5
  %151 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %call119, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp121 = icmp slt i32 %call119, 0
  br i1 %cmp121, label %do.end126, label %if.end127

do.end126:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #12
  br label %err

if.end127:                                        ; preds = %if.end118
  %tobool128.not = icmp eq ptr %soc, null
  br i1 %tobool128.not, label %if.else138, label %if.then129

if.then129:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  %soc130 = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 8
  %152 = ptrtoint ptr %soc130 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %soc, ptr %soc130, align 4
  %call.i337 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call119, ptr noundef nonnull @brcmnand_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull %call.i) #9
  %153 = ptrtoint ptr %soc130 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %soc130, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 4
  %call135 = tail call zeroext i1 %156(ptr noundef %154) #9
  %157 = ptrtoint ptr %soc130 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %soc130, align 4
  %ctlrdy_set_enabled = getelementptr inbounds %struct.brcmnand_soc, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %ctlrdy_set_enabled to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ctlrdy_set_enabled, align 4
  tail call void %160(ptr noundef %158, i1 noundef zeroext true) #9
  br label %if.end141

if.else138:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  %call.i338 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call119, ptr noundef nonnull @brcmnand_ctlrdy_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull %call.i) #9
  br label %if.end141

if.end141:                                        ; preds = %if.else138, %if.then129
  %ret.2 = phi i32 [ %call.i337, %if.then129 ], [ %call.i338, %if.else138 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %cmp142 = icmp slt i32 %ret.2, 0
  br i1 %cmp142, label %do.end147, label %if.end149

do.end147:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  %161 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %162, i32 noundef %ret.2) #12
  br label %err

if.end149:                                        ; preds = %if.end141
  %call150 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #9
  %cmp151.not370 = icmp eq ptr %call150, null
  br i1 %cmp151.not370, label %if.end149.for.end_crit_edge, label %for.body.lr.ph

if.end149.for.end_crit_edge:                      ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end149
  %cs_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 35
  %cs0_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 36
  %reg_spacing16.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %call.i, i32 0, i32 34
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %child.0371 = phi ptr [ %call150, %for.body.lr.ph ], [ %call168, %for.inc.for.body_crit_edge ]
  %call153 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %child.0371, ptr noundef nonnull @.str.21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %for.body.for.inc_crit_edge, label %if.then155

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then155:                                       ; preds = %for.body
  %call.i339 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2272, i32 noundef 3520) #9
  %tobool157.not = icmp eq ptr %call.i339, null
  br i1 %tobool157.not, label %cleanup, label %if.end159

if.end159:                                        ; preds = %if.then155
  %pdev160 = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 2
  %163 = ptrtoint ptr %pdev160 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %pdev, ptr %pdev160, align 8
  %ctrl161 = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 8
  %164 = ptrtoint ptr %ctrl161 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call.i, ptr %ctrl161, align 8
  %cs.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 3
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0371, ptr noundef nonnull @.str.127, ptr noundef %cs.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i340 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i340, label %if.end.i342, label %do.end.i341

do.end.i341:                                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.128) #12
  br label %if.then164

if.end.i342:                                      ; preds = %if.end159
  %chip3.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1
  %of_node.i.i.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 0, i32 0, i32 56, i32 27
  %165 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %child.0371, ptr %of_node.i.i.i, align 8
  %name.i.i.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 0, i32 0, i32 13
  %166 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %167, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i342.nand_set_flash_node.exit.i_crit_edge

if.end.i342.nand_set_flash_node.exit.i_crit_edge: ; preds = %if.end.i342
  call void @__sanitizer_cov_trace_pc() #11
  br label %nand_set_flash_node.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i342
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i87.i = tail call i32 @of_property_read_string(ptr noundef nonnull %child.0371, ptr noundef nonnull @.str.131, ptr noundef %name.i.i.i) #9
  br label %nand_set_flash_node.exit.i

nand_set_flash_node.exit.i:                       ; preds = %if.then.i.i.i, %if.end.i342.nand_set_flash_node.exit.i_crit_edge
  %priv1.i.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 34
  %168 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call.i339, ptr %priv1.i.i, align 8
  %169 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %cs.i, align 4
  %call8.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.130, i32 noundef %170) #9
  %171 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call8.i, ptr %name.i.i.i, align 8
  %tobool10.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool10.not.i, label %nand_set_flash_node.exit.i.if.then164_crit_edge, label %if.end12.i

nand_set_flash_node.exit.i.if.then164_crit_edge:  ; preds = %nand_set_flash_node.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then164

if.end12.i:                                       ; preds = %nand_set_flash_node.exit.i
  %owner.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 0, i32 0, i32 55
  %172 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr null, ptr %owner.i, align 4
  %parent.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  %173 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %dev1, ptr %parent.i, align 8
  %cmd_ctrl.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 5, i32 7
  %174 = ptrtoint ptr %cmd_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @brcmnand_cmd_ctrl, ptr %cmd_ctrl.i, align 4
  %cmdfunc.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 5, i32 8
  %175 = ptrtoint ptr %cmdfunc.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr @brcmnand_cmdfunc, ptr %cmdfunc.i, align 8
  %waitfunc.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 5, i32 10
  %176 = ptrtoint ptr %waitfunc.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @brcmnand_waitfunc, ptr %waitfunc.i, align 8
  %read_byte.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 5, i32 3
  %177 = ptrtoint ptr %read_byte.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @brcmnand_read_byte, ptr %read_byte.i, align 4
  %read_buf.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 5, i32 6
  %178 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @brcmnand_read_buf, ptr %read_buf.i, align 8
  %write_buf.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 5, i32 5
  %179 = ptrtoint ptr %write_buf.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr @brcmnand_write_buf, ptr %write_buf.i, align 4
  %ecc.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 33
  %180 = ptrtoint ptr %ecc.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 3, ptr %ecc.i, align 8
  %read_page.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 33, i32 18
  %181 = ptrtoint ptr %read_page.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @brcmnand_read_page, ptr %read_page.i, align 8
  %write_page.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 33, i32 21
  %182 = ptrtoint ptr %write_page.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr @brcmnand_write_page, ptr %write_page.i, align 4
  %read_page_raw.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 33, i32 16
  %183 = ptrtoint ptr %read_page_raw.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr @brcmnand_read_page_raw, ptr %read_page_raw.i, align 8
  %write_page_raw.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 33, i32 17
  %184 = ptrtoint ptr %write_page_raw.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr @brcmnand_write_page_raw, ptr %write_page_raw.i, align 4
  %write_oob_raw.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 33, i32 22
  %185 = ptrtoint ptr %write_oob_raw.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @brcmnand_write_oob_raw, ptr %write_oob_raw.i, align 8
  %read_oob_raw.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 33, i32 23
  %186 = ptrtoint ptr %read_oob_raw.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr @brcmnand_read_oob_raw, ptr %read_oob_raw.i, align 4
  %read_oob.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 33, i32 24
  %187 = ptrtoint ptr %read_oob.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @brcmnand_read_oob, ptr %read_oob.i, align 8
  %write_oob.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 33, i32 25
  %188 = ptrtoint ptr %write_oob.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr @brcmnand_write_oob, ptr %write_oob.i, align 4
  %controller28.i = getelementptr inbounds %struct.brcmnand_host, ptr %call.i339, i32 0, i32 1, i32 32
  %189 = ptrtoint ptr %controller28.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %controller, ptr %controller28.i, align 4
  %190 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %cs.i, align 4
  %192 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i344 = getelementptr i16, ptr %193, i32 7
  %194 = ptrtoint ptr %arrayidx.i.i344 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %arrayidx.i.i344, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %cmp.i.i = icmp eq i32 %191, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end12.i
  %196 = ptrtoint ptr %cs0_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %cs0_offsets.i.i, align 4
  %tobool.not.i.i345 = icmp eq ptr %197, null
  br i1 %tobool.not.i.i345, label %if.end.thread42.i.i, label %land.lhs.true.i.i.brcmnand_cs_offset.exit.i_crit_edge

land.lhs.true.i.i.brcmnand_cs_offset.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_cs_offset.exit.i

if.end.thread42.i.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %198 = ptrtoint ptr %cs_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cs_offsets.i.i, align 8
  br label %brcmnand_cs_offset.exit.i

if.end.i.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i.i = getelementptr i16, ptr %193, i32 8
  %200 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %arrayidx2.i.i, align 2
  %202 = ptrtoint ptr %cs_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %cs_offsets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %201)
  %tobool8.not.i.i = icmp eq i16 %201, 0
  %not.tobool8.not.i.i = xor i1 %tobool8.not.i.i, true
  %sub.i.i = sext i1 %not.tobool8.not.i.i to i32
  %spec.select.i = add i32 %191, %sub.i.i
  %spec.select90.i = select i1 %tobool8.not.i.i, i16 %195, i16 %201
  br label %brcmnand_cs_offset.exit.i

brcmnand_cs_offset.exit.i:                        ; preds = %if.end.i.i, %if.end.thread42.i.i, %land.lhs.true.i.i.brcmnand_cs_offset.exit.i_crit_edge
  %cs.sink.i.i = phi i32 [ %spec.select.i, %if.end.i.i ], [ 0, %if.end.thread42.i.i ], [ 0, %land.lhs.true.i.i.brcmnand_cs_offset.exit.i_crit_edge ]
  %.sink.i.pn.i = phi ptr [ %203, %if.end.i.i ], [ %199, %if.end.thread42.i.i ], [ %197, %land.lhs.true.i.i.brcmnand_cs_offset.exit.i_crit_edge ]
  %conv15.sink.in.i.i = phi i16 [ %spec.select90.i, %if.end.i.i ], [ %195, %if.end.thread42.i.i ], [ %195, %land.lhs.true.i.i.brcmnand_cs_offset.exit.i_crit_edge ]
  %cs_offs.041.sink.i.in.i = getelementptr i8, ptr %.sink.i.pn.i, i32 1
  %204 = ptrtoint ptr %cs_offs.041.sink.i.in.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %cs_offs.041.sink.i.i = load i8, ptr %cs_offs.041.sink.i.in.i, align 1
  %conv15.sink.i.i = zext i16 %conv15.sink.in.i.i to i32
  %205 = ptrtoint ptr %reg_spacing16.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %reg_spacing16.i.i, align 4
  %mul17.i.i = mul i32 %206, %cs.sink.i.i
  %conv19.i.i = zext i8 %cs_offs.041.sink.i.i to i32
  %add18.i.i = add nuw nsw i32 %conv19.i.i, %conv15.sink.i.i
  %add20.i.i = add i32 %add18.i.i, %mul17.i.i
  %conv.i346 = and i32 %add20.i.i, 65535
  %207 = ptrtoint ptr %nand_base to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %nand_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %208, i32 %conv.i346
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !336
  %210 = and i32 %209, -32769
  %211 = ptrtoint ptr %nand_base to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %nand_base, align 4
  %add.ptr.i89.i = getelementptr i8, ptr %212, i32 %conv.i346
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 %210) #9, !srcloc !337
  %call.i.i348 = tail call i32 @nand_scan_with_ids(ptr noundef %chip3.i, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i348)
  %tobool34.not.i = icmp eq i32 %call.i.i348, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %brcmnand_cs_offset.exit.i.if.then164_crit_edge

brcmnand_cs_offset.exit.i.if.then164_crit_edge:   ; preds = %brcmnand_cs_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then164

if.end36.i:                                       ; preds = %brcmnand_cs_offset.exit.i
  %call37.i = tail call i32 @mtd_device_parse_register(ptr noundef %chip3.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end165, label %if.then39.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nand_cleanup(ptr noundef %chip3.i) #9
  br label %if.then164

if.then164:                                       ; preds = %if.then39.i, %brcmnand_cs_offset.exit.i.if.then164_crit_edge, %nand_set_flash_node.exit.i.if.then164_crit_edge, %do.end.i341
  tail call void @devm_kfree(ptr noundef %dev1, ptr noundef nonnull %call.i339) #9
  br label %for.inc

if.end165:                                        ; preds = %if.end36.i
  %213 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %prev.i, align 4
  %call.i.i351 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i339, ptr noundef %214, ptr noundef %host_list) #9
  br i1 %call.i.i351, label %if.end.i.i352, label %if.end165.for.inc_crit_edge

if.end165.for.inc_crit_edge:                      ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.i352:                                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #11
  %215 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %call.i339, ptr %prev.i, align 4
  %216 = ptrtoint ptr %call.i339 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %host_list, ptr %call.i339, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i339, i32 0, i32 1
  %217 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %214, ptr %prev3.i.i, align 4
  %218 = ptrtoint ptr %214 to i32
  call void @__asan_store4_noabort(i32 %218)
  store volatile ptr %call.i339, ptr %214, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @of_node_put(ptr noundef nonnull %child.0371) #9
  br label %err

for.inc:                                          ; preds = %if.end.i.i352, %if.end165.for.inc_crit_edge, %if.then164, %for.body.for.inc_crit_edge
  %call168 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %child.0371) #9
  %cmp151.not = icmp eq ptr %call168, null
  br i1 %cmp151.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end149.for.end_crit_edge
  %219 = ptrtoint ptr %host_list to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load volatile ptr, ptr %host_list, align 4
  %cmp.i353.not = icmp eq ptr %220, %host_list
  br i1 %cmp.i353.not, label %for.end.err_crit_edge, label %for.end.cleanup175_crit_edge

for.end.cleanup175_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup175

for.end.err_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

err:                                              ; preds = %for.end.err_crit_edge, %cleanup, %do.end147, %do.end126, %if.else100.err_crit_edge, %do.end94, %do.end, %if.end75.err_crit_edge, %if.end72.err_crit_edge, %if.then58, %if.then44, %brcmnand_revision_init.exit
  %ret.4 = phi i32 [ -19, %brcmnand_revision_init.exit ], [ %82, %if.then44 ], [ %91, %if.then58 ], [ %call71, %if.end72.err_crit_edge ], [ -19, %do.end ], [ %call.i319, %do.end94 ], [ -19, %do.end126 ], [ %ret.2, %do.end147 ], [ -12, %cleanup ], [ %call101, %if.else100.err_crit_edge ], [ -12, %if.end75.err_crit_edge ], [ -19, %for.end.err_crit_edge ]
  %221 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %222) #9
  tail call void @clk_unprepare(ptr noundef %222) #9
  br label %cleanup175

cleanup175:                                       ; preds = %err, %for.end.cleanup175_crit_edge, %if.else.cleanup175_crit_edge, %if.then3.i, %if.then22.cleanup175_crit_edge, %if.then15, %if.end4.cleanup175_crit_edge, %if.end.cleanup175_crit_edge, %entry.cleanup175_crit_edge
  %retval.0 = phi i32 [ %11, %if.then15 ], [ %ret.4, %err ], [ -19, %entry.cleanup175_crit_edge ], [ -19, %if.end.cleanup175_crit_edge ], [ -12, %if.end4.cleanup175_crit_edge ], [ -517, %if.else.cleanup175_crit_edge ], [ 0, %for.end.cleanup175_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i302, %if.then22.cleanup175_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev, i64 noundef %mask) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %mask) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %mask) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmnand_dma_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_done = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 14
  tail call void @complete(ptr noundef %dma_done) #9
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmnand_dma_trans(ptr nocapture noundef readonly %host, i64 noundef %addr, ptr noundef %buf, ptr nocapture noundef readnone %oob, i32 noundef %len, i8 noundef zeroext %dma_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.brcmnand_host, ptr %host, i32 0, i32 8
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %dma_cmd)
  %cmp = icmp eq i8 %dma_cmd, 1
  %cond = select i1 %cmp, i32 2, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buf) #9
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !338

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.98, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.99, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %9, i32 noundef -1) #9
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %buf, i32 noundef %len) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %buf to i32
  %sub.i = add i32 %11, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %10, i32 %shr.i
  %and.i = and i32 %11, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %len, i32 noundef %cond, i32 noundef 0) #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %13, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.96) #12
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %dma_desc = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 29
  %16 = ptrtoint ptr %dma_desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_desc, align 4
  %conv.i = zext i8 %dma_cmd to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %cmd_irq.i = getelementptr inbounds %struct.brcm_nand_dma_desc, ptr %17, i32 0, i32 2
  %or16.i = or i32 %shl.i, 4867
  %18 = call ptr @memset(ptr %17, i32 0, i32 64)
  %19 = ptrtoint ptr %cmd_irq.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %or16.i, ptr %cmd_irq.i, align 1
  %dram_addr.i = getelementptr inbounds %struct.brcm_nand_dma_desc, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %dram_addr.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %call41.i, ptr %dram_addr.i, align 1
  %tfr_len.i = getelementptr inbounds %struct.brcm_nand_dma_desc, ptr %17, i32 0, i32 5
  %21 = ptrtoint ptr %tfr_len.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %len, ptr %tfr_len.i, align 1
  %total_len.i = getelementptr inbounds %struct.brcm_nand_dma_desc, ptr %17, i32 0, i32 6
  %22 = ptrtoint ptr %total_len.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %len, ptr %total_len.i, align 1
  %conv21.i = trunc i64 %addr to i32
  %flash_addr.i = getelementptr inbounds %struct.brcm_nand_dma_desc, ptr %17, i32 0, i32 7
  %23 = ptrtoint ptr %flash_addr.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %conv21.i, ptr %flash_addr.i, align 1
  %shr22.i = lshr i64 %addr, 32
  %conv24.i = trunc i64 %shr22.i to i32
  %flash_addr_ext.i = getelementptr inbounds %struct.brcm_nand_dma_desc, ptr %17, i32 0, i32 8
  %24 = ptrtoint ptr %flash_addr_ext.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %conv24.i, ptr %flash_addr_ext.i, align 1
  %cs.i = getelementptr inbounds %struct.brcmnand_host, ptr %host, i32 0, i32 3
  %25 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cs.i, align 4
  %cs25.i = getelementptr inbounds %struct.brcm_nand_dma_desc, ptr %17, i32 0, i32 9
  %27 = ptrtoint ptr %cs25.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %cs25.i, align 1
  %status_valid.i = getelementptr inbounds %struct.brcm_nand_dma_desc, ptr %17, i32 0, i32 11
  %28 = ptrtoint ptr %status_valid.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 1, ptr %status_valid.i, align 1
  %dma_pa = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 30
  %29 = ptrtoint ptr %dma_pa to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_pa, align 8
  %31 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctrl1, align 8
  %flash_dma_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %32, i32 0, i32 28
  %33 = ptrtoint ptr %flash_dma_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %flash_dma_offsets.i.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %34, i32 1
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i.i, align 2
  %flash_dma_base.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %32, i32 0, i32 4
  %37 = ptrtoint ptr %flash_dma_base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %flash_dma_base.i.i, align 4
  %conv.i.i = zext i16 %36 to i32
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 %conv.i.i
  %39 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %39) #9, !srcloc !337
  %40 = ptrtoint ptr %flash_dma_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %flash_dma_offsets.i.i, align 8
  %arrayidx.i29.i = getelementptr i16, ptr %41, i32 1
  %42 = ptrtoint ptr %arrayidx.i29.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.i29.i, align 2
  %44 = ptrtoint ptr %flash_dma_base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %flash_dma_base.i.i, align 4
  %conv.i31.i = zext i16 %43 to i32
  %add.ptr.i32.i = getelementptr i8, ptr %45, i32 %conv.i31.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i) #9, !srcloc !336
  %nand_version.i = getelementptr inbounds %struct.brcmnand_controller, ptr %32, i32 0, i32 7
  %47 = ptrtoint ptr %nand_version.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nand_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1538, i32 %48)
  %cmp.i35 = icmp sgt i32 %48, 1538
  br i1 %cmp.i35, label %if.then.i36, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i36:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %flash_dma_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %flash_dma_offsets.i.i, align 8
  %arrayidx.i34.i = getelementptr i16, ptr %50, i32 2
  %51 = ptrtoint ptr %arrayidx.i34.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx.i34.i, align 2
  %53 = ptrtoint ptr %flash_dma_base.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %flash_dma_base.i.i, align 4
  %conv.i36.i = zext i16 %52 to i32
  %add.ptr.i37.i = getelementptr i8, ptr %54, i32 %conv.i36.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 0) #9, !srcloc !337
  %55 = ptrtoint ptr %flash_dma_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %flash_dma_offsets.i.i, align 8
  %arrayidx.i39.i = getelementptr i16, ptr %56, i32 2
  %57 = ptrtoint ptr %arrayidx.i39.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx.i39.i, align 2
  %59 = ptrtoint ptr %flash_dma_base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %flash_dma_base.i.i, align 4
  %conv.i41.i = zext i16 %58 to i32
  %add.ptr.i42.i = getelementptr i8, ptr %60, i32 %conv.i41.i
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i) #9, !srcloc !336
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i36, %if.end.if.end.i_crit_edge
  %dma_pending.i = getelementptr inbounds %struct.brcmnand_controller, ptr %32, i32 0, i32 11
  %62 = ptrtoint ptr %dma_pending.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %dma_pending.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  tail call void @arm_heavy_mb() #9
  %63 = ptrtoint ptr %flash_dma_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %flash_dma_offsets.i.i, align 8
  %arrayidx.i44.i = getelementptr i16, ptr %64, i32 3
  %65 = ptrtoint ptr %arrayidx.i44.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx.i44.i, align 2
  %67 = ptrtoint ptr %flash_dma_base.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %flash_dma_base.i.i, align 4
  %conv.i46.i = zext i16 %66 to i32
  %add.ptr.i47.i = getelementptr i8, ptr %68, i32 %conv.i46.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i, i32 50331648) #9, !srcloc !337
  %dma_done.i = getelementptr inbounds %struct.brcmnand_controller, ptr %32, i32 0, i32 14
  %call5.i = tail call i32 @wait_for_completion_timeout(ptr noundef %dma_done.i, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.i, label %do.end10.i, label %if.end.i.brcmnand_dma_run.exit_crit_edge

if.end.i.brcmnand_dma_run.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_dma_run.exit

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %32, align 8
  %71 = ptrtoint ptr %flash_dma_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %flash_dma_offsets.i.i, align 8
  %arrayidx.i49.i = getelementptr i16, ptr %72, i32 5
  %73 = ptrtoint ptr %arrayidx.i49.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx.i49.i, align 2
  %75 = ptrtoint ptr %flash_dma_base.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %flash_dma_base.i.i, align 4
  %conv.i51.i = zext i16 %74 to i32
  %add.ptr.i52.i = getelementptr i8, ptr %76, i32 %conv.i51.i
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52.i) #9, !srcloc !336
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #9
  %79 = ptrtoint ptr %flash_dma_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %flash_dma_offsets.i.i, align 8
  %arrayidx.i54.i = getelementptr i16, ptr %80, i32 8
  %81 = ptrtoint ptr %arrayidx.i54.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx.i54.i, align 2
  %83 = ptrtoint ptr %flash_dma_base.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %flash_dma_base.i.i, align 4
  %conv.i56.i = zext i16 %82 to i32
  %add.ptr.i57.i = getelementptr i8, ptr %84, i32 %conv.i56.i
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57.i) #9, !srcloc !336
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.100, i32 noundef %78, i32 noundef %86) #12
  br label %brcmnand_dma_run.exit

brcmnand_dma_run.exit:                            ; preds = %do.end10.i, %if.end.i.brcmnand_dma_run.exit_crit_edge
  %87 = ptrtoint ptr %dma_pending.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %dma_pending.i, align 8
  %88 = ptrtoint ptr %flash_dma_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %flash_dma_offsets.i.i, align 8
  %arrayidx.i59.i = getelementptr i16, ptr %89, i32 3
  %90 = ptrtoint ptr %arrayidx.i59.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx.i59.i, align 2
  %92 = ptrtoint ptr %flash_dma_base.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %flash_dma_base.i.i, align 4
  %conv.i61.i = zext i16 %91 to i32
  %add.ptr.i62.i = getelementptr i8, ptr %93, i32 %conv.i61.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 0) #9, !srcloc !337
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %95, i32 noundef %call41.i, i32 noundef %len, i32 noundef %cond, i32 noundef 0) #9
  %96 = ptrtoint ptr %dma_desc to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dma_desc, align 4
  %status_valid = getelementptr inbounds %struct.brcm_nand_dma_desc, ptr %97, i32 0, i32 11
  %98 = ptrtoint ptr %status_valid to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %status_valid, align 1
  %and = and i32 %99, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.else, label %brcmnand_dma_run.exit.cleanup_crit_edge

brcmnand_dma_run.exit.cleanup_crit_edge:          ; preds = %brcmnand_dma_run.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %brcmnand_dma_run.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and13 = and i32 %99, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %. = select i1 %tobool14.not, i32 0, i32 -117
  br label %cleanup

cleanup:                                          ; preds = %if.else, %brcmnand_dma_run.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ -74, %brcmnand_dma_run.exit.cleanup_crit_edge ], [ %., %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmnand_edu_setup(ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call3 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.102) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call3) #9
  %edu_base = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %edu_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %edu_base, align 8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end:                                           ; preds = %if.then
  %edu_offsets = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %edu_offsets to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @edu_regs, ptr %edu_offsets, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call4, i32 50331648) #9, !srcloc !337
  %5 = ptrtoint ptr %edu_offsets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %edu_offsets, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 2
  %9 = ptrtoint ptr %edu_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %edu_base, align 8
  %conv.i57 = zext i16 %8 to i32
  %add.ptr.i58 = getelementptr i8, ptr %10, i32 %conv.i57
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #9, !srcloc !336
  %12 = ptrtoint ptr %edu_offsets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edu_offsets, align 4
  %arrayidx.i.i = getelementptr i16, ptr %13, i32 8
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i.i, align 2
  %16 = ptrtoint ptr %edu_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %edu_base, align 8
  %conv.i.i = zext i16 %15 to i32
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !337
  %18 = ptrtoint ptr %edu_offsets to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %edu_offsets, align 4
  %arrayidx.i9.i = getelementptr i16, ptr %19, i32 8
  %20 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i9.i, align 2
  %22 = ptrtoint ptr %edu_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %edu_base, align 8
  %conv.i11.i = zext i16 %21 to i32
  %add.ptr.i12.i = getelementptr i8, ptr %23, i32 %conv.i11.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #9, !srcloc !336
  %25 = ptrtoint ptr %edu_offsets to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %edu_offsets, align 4
  %arrayidx.i14.i = getelementptr i16, ptr %26, i32 7
  %27 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.i14.i, align 2
  %29 = ptrtoint ptr %edu_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %edu_base, align 8
  %conv.i16.i = zext i16 %28 to i32
  %add.ptr.i17.i = getelementptr i8, ptr %30, i32 %conv.i16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 0) #9, !srcloc !337
  %31 = ptrtoint ptr %edu_offsets to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %edu_offsets, align 4
  %arrayidx.i19.i = getelementptr i16, ptr %32, i32 7
  %33 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.i19.i, align 2
  %35 = ptrtoint ptr %edu_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %edu_base, align 8
  %conv.i21.i = zext i16 %34 to i32
  %add.ptr.i22.i = getelementptr i8, ptr %36, i32 %conv.i21.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 0) #9, !srcloc !337
  %37 = ptrtoint ptr %edu_offsets to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %edu_offsets, align 4
  %arrayidx.i24.i = getelementptr i16, ptr %38, i32 7
  %39 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.i24.i, align 2
  %41 = ptrtoint ptr %edu_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %edu_base, align 8
  %conv.i26.i = zext i16 %40 to i32
  %add.ptr.i27.i = getelementptr i8, ptr %42, i32 %conv.i26.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #9, !srcloc !337
  %43 = ptrtoint ptr %edu_offsets to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %edu_offsets, align 4
  %arrayidx.i29.i = getelementptr i16, ptr %44, i32 7
  %45 = ptrtoint ptr %arrayidx.i29.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.i29.i, align 2
  %47 = ptrtoint ptr %edu_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %edu_base, align 8
  %conv.i31.i = zext i16 %46 to i32
  %add.ptr.i32.i = getelementptr i8, ptr %48, i32 %conv.i31.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 0) #9, !srcloc !337
  %49 = ptrtoint ptr %edu_offsets to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %edu_offsets, align 4
  %arrayidx.i34.i = getelementptr i16, ptr %50, i32 7
  %51 = ptrtoint ptr %arrayidx.i34.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx.i34.i, align 2
  %53 = ptrtoint ptr %edu_base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %edu_base, align 8
  %conv.i36.i = zext i16 %52 to i32
  %add.ptr.i37.i = getelementptr i8, ptr %54, i32 %conv.i36.i
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i) #9, !srcloc !336
  %call11 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 1) #9
  %edu_irq = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 19
  %56 = ptrtoint ptr %edu_irq to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call11, ptr %edu_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.103) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call11, ptr noundef nonnull @brcmnand_edu_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.105, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp slt i32 %call.i, 0
  br i1 %cmp16, label %do.end20, label %do.end26

do.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 8
  %59 = ptrtoint ptr %edu_irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %edu_irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.10, i32 noundef %60, i32 noundef %call.i) #12
  br label %cleanup

do.end26:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %edu_irq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %edu_irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.109, i32 noundef %62) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %do.end20, %do.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ %call.i, %do.end20 ], [ 0, %do.end ], [ 0, %do.end26 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmnand_edu_trans(ptr nocapture noundef readonly %host, i64 noundef %addr, ptr noundef %buf, ptr noundef %oob, i32 noundef %len, i8 noundef zeroext %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.brcmnand_host, ptr %host, i32 0, i32 8
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %cmd)
  %cmp = icmp eq i8 %cmd, 1
  %cond = select i1 %cmp, i32 2, i32 1
  %shr = lshr i32 %len, 9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmnand_edu_trans.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmnand_edu_trans, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !340

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %cond14 = select i1 %cmp, ptr @.str.113, ptr @.str.114
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmnand_edu_trans.__UNIQUE_ID_ddebug264, ptr noundef %3, ptr noundef nonnull @.str.112, ptr noundef nonnull %cond14, ptr noundef %buf, ptr noundef %oob) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buf) #9
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %do.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !338

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %5) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.98, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.99, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %11, i32 noundef -1) #9
  br label %do.end23

dma_map_single_attrs.exit:                        ; preds = %do.end
  tail call void @debug_dma_map_single(ptr noundef %5, ptr noundef %buf, i32 noundef %len) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %buf to i32
  %sub.i = add i32 %13, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %12, i32 %shr.i
  %and.i = and i32 %13, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %len, i32 noundef %cond, i32 noundef 0) #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %15, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end23_crit_edge, label %if.end25

dma_map_single_attrs.exit.do.end23_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

do.end23:                                         ; preds = %dma_map_single_attrs.exit.do.end23_crit_edge, %dma_map_single_attrs.exit.thread
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.115) #12
  br label %cleanup

if.end25:                                         ; preds = %dma_map_single_attrs.exit
  %edu_pending = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %edu_pending to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %edu_pending, align 1
  %conv26 = zext i32 %call41.i to i64
  %edu_dram_addr = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 21
  %19 = ptrtoint ptr %edu_dram_addr to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv26, ptr %edu_dram_addr, align 8
  %conv27 = trunc i64 %addr to i32
  %edu_ext_addr = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 22
  %20 = ptrtoint ptr %edu_ext_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv27, ptr %edu_ext_addr, align 8
  %conv28 = zext i1 %cmp to i32
  %edu_cmd29 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 23
  %21 = ptrtoint ptr %edu_cmd29 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv28, ptr %edu_cmd29, align 4
  %edu_count = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 20
  %22 = ptrtoint ptr %edu_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr, ptr %edu_count, align 8
  %spare_area_size = getelementptr inbounds %struct.brcmnand_host, ptr %host, i32 0, i32 7, i32 3
  %23 = ptrtoint ptr %spare_area_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %spare_area_size, align 8
  %sas = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 25
  %25 = ptrtoint ptr %sas to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %sas, align 4
  %oob30 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 27
  %26 = ptrtoint ptr %oob30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %oob, ptr %oob30, align 4
  %edu_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 17
  %27 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i = getelementptr i16, ptr %28, i32 1
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i, align 2
  %edu_base.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 18
  %31 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %edu_base.i, align 8
  %conv.i = zext i16 %30 to i32
  %add.ptr.i217 = getelementptr i8, ptr %32, i32 %conv.i
  %33 = tail call i32 @llvm.bswap.i32(i32 %call41.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i217, i32 %33) #9, !srcloc !337
  %34 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i219 = getelementptr i16, ptr %35, i32 1
  %36 = ptrtoint ptr %arrayidx.i219 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i219, align 2
  %38 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %edu_base.i, align 8
  %conv.i221 = zext i16 %37 to i32
  %add.ptr.i222 = getelementptr i8, ptr %39, i32 %conv.i221
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i222) #9, !srcloc !336
  %41 = ptrtoint ptr %edu_ext_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %edu_ext_addr, align 8
  %43 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i224 = getelementptr i16, ptr %44, i32 2
  %45 = ptrtoint ptr %arrayidx.i224 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.i224, align 2
  %47 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %edu_base.i, align 8
  %conv.i226 = zext i16 %46 to i32
  %add.ptr.i227 = getelementptr i8, ptr %48, i32 %conv.i226
  %49 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i227, i32 %49) #9, !srcloc !337
  %50 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i229 = getelementptr i16, ptr %51, i32 2
  %52 = ptrtoint ptr %arrayidx.i229 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.i229, align 2
  %54 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %edu_base.i, align 8
  %conv.i231 = zext i16 %53 to i32
  %add.ptr.i232 = getelementptr i8, ptr %55, i32 %conv.i231
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i232) #9, !srcloc !336
  %57 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i234 = getelementptr i16, ptr %58, i32 3
  %59 = ptrtoint ptr %arrayidx.i234 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx.i234, align 2
  %61 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %edu_base.i, align 8
  %conv.i236 = zext i16 %60 to i32
  %add.ptr.i237 = getelementptr i8, ptr %62, i32 %conv.i236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i237, i32 131072) #9, !srcloc !337
  %63 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i239 = getelementptr i16, ptr %64, i32 3
  %65 = ptrtoint ptr %arrayidx.i239 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx.i239, align 2
  %67 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %edu_base.i, align 8
  %conv.i241 = zext i16 %66 to i32
  %add.ptr.i242 = getelementptr i8, ptr %68, i32 %conv.i241
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i242) #9, !srcloc !336
  %70 = ptrtoint ptr %oob30 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %oob30, align 4
  %tobool38.not = icmp eq ptr %71, null
  br i1 %tobool38.not, label %if.end25.do.body50_crit_edge, label %land.lhs.true

if.end25.do.body50_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body50

land.lhs.true:                                    ; preds = %if.end25
  %72 = ptrtoint ptr %edu_cmd29 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %edu_cmd29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp40 = icmp eq i32 %73, 0
  br i1 %cmp40, label %if.then42, label %land.lhs.true.do.body50_crit_edge

land.lhs.true.do.body50_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body50

if.then42:                                        ; preds = %land.lhs.true
  %reg_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 33
  %74 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg_offsets.i, align 8
  %arrayidx.i243 = getelementptr i16, ptr %75, i32 2
  %76 = ptrtoint ptr %arrayidx.i243 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx.i243, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool.not.i = icmp eq i16 %77, 0
  br i1 %tobool.not.i, label %if.then42.brcmnand_write_reg.exit_crit_edge, label %if.then.i245

if.then42.brcmnand_write_reg.exit_crit_edge:      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit

if.then.i245:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %edu_ext_addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %edu_ext_addr, align 8
  %conv.i244 = zext i16 %77 to i32
  %nand_base.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %80 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %81, i32 %conv.i244
  %82 = tail call i32 @llvm.bswap.i32(i32 %79) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %82) #9, !srcloc !337
  br label %brcmnand_write_reg.exit

brcmnand_write_reg.exit:                          ; preds = %if.then.i245, %if.then42.brcmnand_write_reg.exit_crit_edge
  %83 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg_offsets.i, align 8
  %arrayidx.i247 = getelementptr i16, ptr %84, i32 2
  %85 = ptrtoint ptr %arrayidx.i247 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx.i247, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool.not.i248 = icmp eq i16 %86, 0
  br i1 %tobool.not.i248, label %brcmnand_write_reg.exit.brcmnand_read_reg.exit_crit_edge, label %if.then.i252

brcmnand_write_reg.exit.brcmnand_read_reg.exit_crit_edge: ; preds = %brcmnand_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit

if.then.i252:                                     ; preds = %brcmnand_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i249 = zext i16 %86 to i32
  %nand_base.i.i250 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %87 = ptrtoint ptr %nand_base.i.i250 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %nand_base.i.i250, align 4
  %add.ptr.i.i251 = getelementptr i8, ptr %88, i32 %conv.i249
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i251) #9, !srcloc !336
  br label %brcmnand_read_reg.exit

brcmnand_read_reg.exit:                           ; preds = %if.then.i252, %brcmnand_write_reg.exit.brcmnand_read_reg.exit_crit_edge
  %90 = ptrtoint ptr %oob30 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %oob30, align 4
  %92 = ptrtoint ptr %sas to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sas, align 4
  %sector_size_1k = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 26
  %94 = ptrtoint ptr %sector_size_1k to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sector_size_1k, align 8
  %shl.i = shl i32 %93, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i254 = icmp eq i32 %95, 0
  br i1 %tobool.not.i254, label %brcmnand_read_reg.exit.if.end.i_crit_edge, label %if.then.i256

brcmnand_read_reg.exit.if.end.i_crit_edge:        ; preds = %brcmnand_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i256:                                     ; preds = %brcmnand_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %max_oob.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 42
  %96 = ptrtoint ptr %max_oob.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_oob.i, align 4
  %sub.i255 = sub i32 %shl.i, %97
  %98 = tail call i32 @llvm.smax.i32(i32 %sub.i255, i32 0) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i256, %brcmnand_read_reg.exit.if.end.i_crit_edge
  %tbytes.0.i = phi i32 [ %98, %if.then.i256 ], [ %shl.i, %brcmnand_read_reg.exit.if.end.i_crit_edge ]
  %max_oob2.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 42
  %99 = ptrtoint ptr %max_oob2.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %max_oob2.i, align 4
  %101 = tail call i32 @llvm.smin.i32(i32 %tbytes.0.i, i32 %100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp945.i = icmp sgt i32 %101, 0
  br i1 %cmp945.i, label %for.body.lr.ph.i, label %if.end.i.write_oob_to_regs.exit_crit_edge

if.end.i.write_oob_to_regs.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_oob_to_regs.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %nand_base.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %oob_reg_write.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.046.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add25.i, %oob_reg_write.exit.i.for.body.i_crit_edge ]
  %102 = ptrtoint ptr %max_oob2.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %max_oob2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %j.046.i)
  %cmp.not.i.i = icmp ugt i32 %103, %j.046.i
  br i1 %cmp.not.i.i, label %if.end.i.i260, label %for.body.i.oob_reg_write.exit.i_crit_edge

for.body.i.oob_reg_write.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %oob_reg_write.exit.i

if.end.i.i260:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i257 = getelementptr i8, ptr %91, i32 %j.046.i
  %104 = ptrtoint ptr %arrayidx.i257 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.i257, align 1
  %conv.i258 = zext i8 %105 to i32
  %shl10.i = shl nuw i32 %conv.i258, 24
  %add11.i = or i32 %j.046.i, 1
  %arrayidx12.i = getelementptr i8, ptr %91, i32 %add11.i
  %106 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %107 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 16
  %or.i = or i32 %shl14.i, %shl10.i
  %add15.i = or i32 %j.046.i, 2
  %arrayidx16.i = getelementptr i8, ptr %91, i32 %add15.i
  %108 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %109 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 8
  %or19.i = or i32 %or.i, %shl18.i
  %add20.i = or i32 %j.046.i, 3
  %arrayidx21.i = getelementptr i8, ptr %91, i32 %add20.i
  %110 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %111 to i32
  %or24.i = or i32 %or19.i, %conv22.i
  %112 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %reg_offsets.i, align 8
  %arrayidx2.i.i = getelementptr i16, ptr %113, i32 24
  %114 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx2.i.i, align 2
  %arrayidx.i.i = getelementptr i16, ptr %113, i32 23
  %116 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %j.046.i)
  %cmp3.i.i = icmp ult i32 %j.046.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool.not.i.i259 = icmp eq i16 %115, 0
  %or.cond.i.i = select i1 %cmp3.i.i, i1 true, i1 %tobool.not.i.i259
  %118 = trunc i32 %j.046.i to i16
  %119 = add i16 %118, -16
  %.sink23.i.i = select i1 %or.cond.i.i, i16 %118, i16 %119
  %.sink.i.i = select i1 %or.cond.i.i, i16 %117, i16 %115
  %conv10.i.i = add i16 %.sink.i.i, %.sink23.i.i
  %conv12.i.i = zext i16 %conv10.i.i to i32
  %120 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %121, i32 %conv12.i.i
  %122 = tail call i32 @llvm.bswap.i32(i32 %or24.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %122) #9, !srcloc !337
  br label %oob_reg_write.exit.i

oob_reg_write.exit.i:                             ; preds = %if.end.i.i260, %for.body.i.oob_reg_write.exit.i_crit_edge
  %add25.i = add i32 %j.046.i, 4
  %cmp9.i = icmp slt i32 %add25.i, %101
  br i1 %cmp9.i, label %oob_reg_write.exit.i.for.body.i_crit_edge, label %oob_reg_write.exit.i.write_oob_to_regs.exit_crit_edge

oob_reg_write.exit.i.write_oob_to_regs.exit_crit_edge: ; preds = %oob_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_oob_to_regs.exit

oob_reg_write.exit.i.for.body.i_crit_edge:        ; preds = %oob_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

write_oob_to_regs.exit:                           ; preds = %oob_reg_write.exit.i.write_oob_to_regs.exit_crit_edge, %if.end.i.write_oob_to_regs.exit_crit_edge
  %123 = ptrtoint ptr %oob30 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %oob30, align 4
  %add.ptr = getelementptr i8, ptr %124, i32 %101
  store ptr %add.ptr, ptr %oob30, align 4
  br label %do.body50

do.body50:                                        ; preds = %write_oob_to_regs.exit, %land.lhs.true.do.body50_crit_edge, %if.end25.do.body50_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !341
  tail call void @arm_heavy_mb() #9
  %125 = ptrtoint ptr %edu_cmd29 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %edu_cmd29, align 4
  %127 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i262 = getelementptr i16, ptr %128, i32 4
  %129 = ptrtoint ptr %arrayidx.i262 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx.i262, align 2
  %131 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %edu_base.i, align 8
  %conv.i264 = zext i16 %130 to i32
  %add.ptr.i265 = getelementptr i8, ptr %132, i32 %conv.i264
  %133 = tail call i32 @llvm.bswap.i32(i32 %126) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i265, i32 %133) #9, !srcloc !337
  %134 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i267 = getelementptr i16, ptr %135, i32 4
  %136 = ptrtoint ptr %arrayidx.i267 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %arrayidx.i267, align 2
  %138 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %edu_base.i, align 8
  %conv.i269 = zext i16 %137 to i32
  %add.ptr.i270 = getelementptr i8, ptr %139, i32 %conv.i269
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i270) #9, !srcloc !336
  %edu_done = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 15
  %call55 = tail call i32 @wait_for_completion_timeout(ptr noundef %edu_done, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %do.end61, label %do.body50.if.end65_crit_edge

do.body50.if.end65_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

do.end61:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 8
  %143 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i272 = getelementptr i16, ptr %144, i32 6
  %145 = ptrtoint ptr %arrayidx.i272 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %arrayidx.i272, align 2
  %147 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %edu_base.i, align 8
  %conv.i274 = zext i16 %146 to i32
  %add.ptr.i275 = getelementptr i8, ptr %148, i32 %conv.i274
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i275) #9, !srcloc !336
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #9
  %151 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i277 = getelementptr i16, ptr %152, i32 8
  %153 = ptrtoint ptr %arrayidx.i277 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %arrayidx.i277, align 2
  %155 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %edu_base.i, align 8
  %conv.i279 = zext i16 %154 to i32
  %add.ptr.i280 = getelementptr i8, ptr %156, i32 %conv.i279
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i280) #9, !srcloc !336
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.117, i32 noundef %150, i32 noundef %158) #12
  br label %if.end65

if.end65:                                         ; preds = %do.end61, %do.body50.if.end65_crit_edge
  %159 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %1, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %160, i32 noundef %call41.i, i32 noundef %len, i32 noundef %cond, i32 noundef 0) #9
  %161 = ptrtoint ptr %oob30 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %oob30, align 4
  %tobool68.not = icmp eq ptr %162, null
  br i1 %tobool68.not, label %if.end65.if.end80_crit_edge, label %land.lhs.true69

if.end65.if.end80_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

land.lhs.true69:                                  ; preds = %if.end65
  %163 = ptrtoint ptr %edu_cmd29 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %edu_cmd29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %164)
  %cmp71 = icmp eq i32 %164, 1
  br i1 %cmp71, label %if.then73, label %land.lhs.true69.if.end80_crit_edge

land.lhs.true69.if.end80_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then73:                                        ; preds = %land.lhs.true69
  %165 = ptrtoint ptr %sas to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %sas, align 4
  %sector_size_1k76 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 26
  %167 = ptrtoint ptr %sector_size_1k76 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %sector_size_1k76, align 8
  %shl.i281 = shl i32 %166, %168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool.not.i282 = icmp eq i32 %168, 0
  br i1 %tobool.not.i282, label %if.then73.if.end.i288_crit_edge, label %if.then.i285

if.then73.if.end.i288_crit_edge:                  ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i288

if.then.i285:                                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  %max_oob.i283 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 42
  %169 = ptrtoint ptr %max_oob.i283 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %max_oob.i283, align 4
  %sub.i284 = sub i32 %shl.i281, %170
  %171 = tail call i32 @llvm.smax.i32(i32 %sub.i284, i32 0) #9
  br label %if.end.i288

if.end.i288:                                      ; preds = %if.then.i285, %if.then73.if.end.i288_crit_edge
  %tbytes.0.i286 = phi i32 [ %171, %if.then.i285 ], [ %shl.i281, %if.then73.if.end.i288_crit_edge ]
  %max_oob2.i287 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 42
  %172 = ptrtoint ptr %max_oob2.i287 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %max_oob2.i287, align 4
  %174 = tail call i32 @llvm.smin.i32(i32 %tbytes.0.i286, i32 %173) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp923.i = icmp sgt i32 %174, 0
  br i1 %cmp923.i, label %for.body.lr.ph.i291, label %if.end.i288.read_oob_from_regs.exit_crit_edge

if.end.i288.read_oob_from_regs.exit_crit_edge:    ; preds = %if.end.i288
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_oob_from_regs.exit

for.body.lr.ph.i291:                              ; preds = %if.end.i288
  %reg_offsets.i.i289 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 33
  %nand_base.i.i.i290 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  br label %for.body.i293

for.body.i293:                                    ; preds = %oob_reg_read.exit.i.for.body.i293_crit_edge, %for.body.lr.ph.i291
  %j.024.i = phi i32 [ 0, %for.body.lr.ph.i291 ], [ %inc.i, %oob_reg_read.exit.i.for.body.i293_crit_edge ]
  %175 = ptrtoint ptr %max_oob2.i287 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %max_oob2.i287, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %176, i32 %j.024.i)
  %cmp.not.i.i292 = icmp ugt i32 %176, %j.024.i
  br i1 %cmp.not.i.i292, label %if.end.i.i303, label %for.body.i293.oob_reg_read.exit.i_crit_edge

for.body.i293.oob_reg_read.exit.i_crit_edge:      ; preds = %for.body.i293
  call void @__sanitizer_cov_trace_pc() #11
  br label %oob_reg_read.exit.i

if.end.i.i303:                                    ; preds = %for.body.i293
  call void @__sanitizer_cov_trace_pc() #11
  %177 = ptrtoint ptr %reg_offsets.i.i289 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %reg_offsets.i.i289, align 8
  %arrayidx2.i.i294 = getelementptr i16, ptr %178, i32 22
  %179 = ptrtoint ptr %arrayidx2.i.i294 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %arrayidx2.i.i294, align 2
  %arrayidx.i.i295 = getelementptr i16, ptr %178, i32 21
  %181 = ptrtoint ptr %arrayidx.i.i295 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %arrayidx.i.i295, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %j.024.i)
  %cmp3.i.i296 = icmp ult i32 %j.024.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %180)
  %tobool.not.i.i297 = icmp eq i16 %180, 0
  %or.cond.i.i298 = select i1 %cmp3.i.i296, i1 true, i1 %tobool.not.i.i297
  %183 = trunc i32 %j.024.i to i16
  %184 = add i16 %183, -16
  %.sink27.i.i = select i1 %or.cond.i.i298, i16 %183, i16 %184
  %.sink.i.i299 = select i1 %or.cond.i.i298, i16 %182, i16 %180
  %185 = and i16 %.sink27.i.i, -4
  %conv10.i.i300 = add i16 %185, %.sink.i.i299
  %conv12.i.i301 = zext i16 %conv10.i.i300 to i32
  %186 = ptrtoint ptr %nand_base.i.i.i290 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %nand_base.i.i.i290, align 4
  %add.ptr.i.i.i302 = getelementptr i8, ptr %187, i32 %conv12.i.i301
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i302) #9, !srcloc !336
  %189 = tail call i32 @llvm.bswap.i32(i32 %188) #9
  %and13.i.i = shl i32 %j.024.i, 3
  %and13.not.i.i = and i32 %and13.i.i, 24
  %sub14.i.i = xor i32 %and13.not.i.i, 24
  %shr.i.i = lshr i32 %189, %sub14.i.i
  %conv15.i.i = trunc i32 %shr.i.i to i8
  br label %oob_reg_read.exit.i

oob_reg_read.exit.i:                              ; preds = %if.end.i.i303, %for.body.i293.oob_reg_read.exit.i_crit_edge
  %retval.0.i.i304 = phi i8 [ %conv15.i.i, %if.end.i.i303 ], [ 119, %for.body.i293.oob_reg_read.exit.i_crit_edge ]
  %arrayidx.i305 = getelementptr i8, ptr %162, i32 %j.024.i
  %190 = ptrtoint ptr %arrayidx.i305 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %retval.0.i.i304, ptr %arrayidx.i305, align 1
  %inc.i = add nuw nsw i32 %j.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %174
  br i1 %exitcond.not.i, label %oob_reg_read.exit.i.read_oob_from_regs.exit_crit_edge, label %oob_reg_read.exit.i.for.body.i293_crit_edge

oob_reg_read.exit.i.for.body.i293_crit_edge:      ; preds = %oob_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i293

oob_reg_read.exit.i.read_oob_from_regs.exit_crit_edge: ; preds = %oob_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_oob_from_regs.exit

read_oob_from_regs.exit:                          ; preds = %oob_reg_read.exit.i.read_oob_from_regs.exit_crit_edge, %if.end.i288.read_oob_from_regs.exit_crit_edge
  %191 = ptrtoint ptr %oob30 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %oob30, align 4
  %add.ptr79 = getelementptr i8, ptr %192, i32 %174
  store ptr %add.ptr79, ptr %oob30, align 4
  br label %if.end80

if.end80:                                         ; preds = %read_oob_from_regs.exit, %land.lhs.true69.if.end80_crit_edge, %if.end65.if.end80_crit_edge
  %reg_offsets.i306 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 33
  %193 = ptrtoint ptr %reg_offsets.i306 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %reg_offsets.i306, align 8
  %arrayidx.i307 = getelementptr i16, ptr %194, i32 3
  %195 = ptrtoint ptr %arrayidx.i307 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %arrayidx.i307, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %196)
  %tobool.not.i308 = icmp eq i16 %196, 0
  br i1 %tobool.not.i308, label %if.end80.if.end93_crit_edge, label %brcmnand_read_reg.exit314

if.end80.if.end93_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

brcmnand_read_reg.exit314:                        ; preds = %if.end80
  %conv.i309 = zext i16 %196 to i32
  %nand_base.i.i310 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %197 = ptrtoint ptr %nand_base.i.i310 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %nand_base.i.i310, align 4
  %add.ptr.i.i311 = getelementptr i8, ptr %198, i32 %conv.i309
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i311) #9, !srcloc !336
  %200 = and i32 %199, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool83.not = icmp eq i32 %200, 0
  %brmerge = or i1 %cmp, %tobool83.not
  br i1 %brmerge, label %brcmnand_read_reg.exit314.if.end93_crit_edge, label %do.end91

brcmnand_read_reg.exit314.if.end93_crit_edge:     ; preds = %brcmnand_read_reg.exit314
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

do.end91:                                         ; preds = %brcmnand_read_reg.exit314
  call void @__sanitizer_cov_trace_pc() #11
  %201 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %202, ptr noundef nonnull @.str.70, i64 noundef %addr) #12
  br label %if.end93

if.end93:                                         ; preds = %do.end91, %brcmnand_read_reg.exit314.if.end93_crit_edge, %if.end80.if.end93_crit_edge
  %ret.0 = phi i32 [ -5, %do.end91 ], [ 0, %brcmnand_read_reg.exit314.if.end93_crit_edge ], [ 0, %if.end80.if.end93_crit_edge ]
  %203 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i316 = getelementptr i16, ptr %204, i32 6
  %205 = ptrtoint ptr %arrayidx.i316 to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %arrayidx.i316, align 2
  %207 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %edu_base.i, align 8
  %conv.i318 = zext i16 %206 to i32
  %add.ptr.i319 = getelementptr i8, ptr %208, i32 %conv.i318
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i319) #9, !srcloc !336
  %210 = and i32 %209, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool96.not = icmp eq i32 %210, 0
  br i1 %tobool96.not, label %if.end93.if.end103_crit_edge, label %do.end100

if.end93.if.end103_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

do.end100:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %211 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %1, align 8
  %213 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i321 = getelementptr i16, ptr %214, i32 6
  %215 = ptrtoint ptr %arrayidx.i321 to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %arrayidx.i321, align 2
  %217 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %edu_base.i, align 8
  %conv.i323 = zext i16 %216 to i32
  %add.ptr.i324 = getelementptr i8, ptr %218, i32 %conv.i323
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i324) #9, !srcloc !336
  %220 = tail call i32 @llvm.bswap.i32(i32 %219) #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %212, ptr noundef nonnull @.str.122, i32 noundef %220) #12
  br label %if.end103

if.end103:                                        ; preds = %do.end100, %if.end93.if.end103_crit_edge
  %221 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i326 = getelementptr i16, ptr %222, i32 8
  %223 = ptrtoint ptr %arrayidx.i326 to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %arrayidx.i326, align 2
  %225 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %edu_base.i, align 8
  %conv.i328 = zext i16 %224 to i32
  %add.ptr.i329 = getelementptr i8, ptr %226, i32 %conv.i328
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i329) #9, !srcloc !336
  %228 = and i32 %227, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool106.not = icmp eq i32 %228, 0
  br i1 %tobool106.not, label %if.end103.if.end118_crit_edge, label %do.end116, !prof !338

if.end103.if.end118_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

do.end116:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  %229 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %230, ptr noundef nonnull @.str.125, i64 noundef %addr) #12
  br label %if.end118

if.end118:                                        ; preds = %do.end116, %if.end103.if.end118_crit_edge
  %ret.1 = phi i32 [ -5, %do.end116 ], [ %ret.0, %if.end103.if.end118_crit_edge ]
  %231 = ptrtoint ptr %edu_pending to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 0, ptr %edu_pending, align 1
  %232 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i.i330 = getelementptr i16, ptr %233, i32 8
  %234 = ptrtoint ptr %arrayidx.i.i330 to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %arrayidx.i.i330, align 2
  %236 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %edu_base.i, align 8
  %conv.i.i = zext i16 %235 to i32
  %add.ptr.i.i331 = getelementptr i8, ptr %237, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i331, i32 0) #9, !srcloc !337
  %238 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i9.i = getelementptr i16, ptr %239, i32 8
  %240 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %arrayidx.i9.i, align 2
  %242 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %edu_base.i, align 8
  %conv.i11.i = zext i16 %241 to i32
  %add.ptr.i12.i = getelementptr i8, ptr %243, i32 %conv.i11.i
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #9, !srcloc !336
  %245 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i14.i = getelementptr i16, ptr %246, i32 7
  %247 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %arrayidx.i14.i, align 2
  %249 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %edu_base.i, align 8
  %conv.i16.i = zext i16 %248 to i32
  %add.ptr.i17.i = getelementptr i8, ptr %250, i32 %conv.i16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 0) #9, !srcloc !337
  %251 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i19.i = getelementptr i16, ptr %252, i32 7
  %253 = ptrtoint ptr %arrayidx.i19.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %arrayidx.i19.i, align 2
  %255 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %edu_base.i, align 8
  %conv.i21.i = zext i16 %254 to i32
  %add.ptr.i22.i = getelementptr i8, ptr %256, i32 %conv.i21.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 0) #9, !srcloc !337
  %257 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i24.i = getelementptr i16, ptr %258, i32 7
  %259 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %arrayidx.i24.i, align 2
  %261 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %edu_base.i, align 8
  %conv.i26.i = zext i16 %260 to i32
  %add.ptr.i27.i = getelementptr i8, ptr %262, i32 %conv.i26.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #9, !srcloc !337
  %263 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i29.i = getelementptr i16, ptr %264, i32 7
  %265 = ptrtoint ptr %arrayidx.i29.i to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %arrayidx.i29.i, align 2
  %267 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %edu_base.i, align 8
  %conv.i31.i = zext i16 %266 to i32
  %add.ptr.i32.i = getelementptr i8, ptr %268, i32 %conv.i31.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 0) #9, !srcloc !337
  %269 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i34.i = getelementptr i16, ptr %270, i32 7
  %271 = ptrtoint ptr %arrayidx.i34.i to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %arrayidx.i34.i, align 2
  %273 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %edu_base.i, align 8
  %conv.i36.i = zext i16 %272 to i32
  %add.ptr.i37.i = getelementptr i8, ptr %274, i32 %conv.i36.i
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i) #9, !srcloc !336
  %276 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i333 = getelementptr i16, ptr %277, i32 5
  %278 = ptrtoint ptr %arrayidx.i333 to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %arrayidx.i333, align 2
  %280 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %edu_base.i, align 8
  %conv.i335 = zext i16 %279 to i32
  %add.ptr.i336 = getelementptr i8, ptr %281, i32 %conv.i335
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i336, i32 0) #9, !srcloc !337
  %282 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i338 = getelementptr i16, ptr %283, i32 5
  %284 = ptrtoint ptr %arrayidx.i338 to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %arrayidx.i338, align 2
  %286 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %edu_base.i, align 8
  %conv.i340 = zext i16 %285 to i32
  %add.ptr.i341 = getelementptr i8, ptr %287, i32 %conv.i340
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i341) #9, !srcloc !336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool121.not = icmp eq i32 %ret.1, 0
  %289 = and i1 %cmp, %tobool121.not
  br i1 %289, label %if.then126, label %if.end118.cleanup_crit_edge

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then126:                                       ; preds = %if.end118
  %290 = ptrtoint ptr %reg_offsets.i306 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %reg_offsets.i306, align 8
  %arrayidx.i.i343 = getelementptr i16, ptr %291, i32 16
  %292 = ptrtoint ptr %arrayidx.i.i343 to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %arrayidx.i.i343, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %293)
  %tobool.not.i.i344 = icmp eq i16 %293, 0
  br i1 %tobool.not.i.i344, label %if.then126.brcmnand_read_reg.exit.i_crit_edge, label %if.then.i.i

if.then126.brcmnand_read_reg.exit.i_crit_edge:    ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit.i

if.then.i.i:                                      ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i345 = zext i16 %293 to i32
  %nand_base.i.i.i346 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %294 = ptrtoint ptr %nand_base.i.i.i346 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %nand_base.i.i.i346, align 4
  %add.ptr.i.i.i347 = getelementptr i8, ptr %295, i32 %conv.i.i345
  %296 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i347) #9, !srcloc !336
  %297 = tail call i32 @llvm.bswap.i32(i32 %296) #9
  br label %brcmnand_read_reg.exit.i

brcmnand_read_reg.exit.i:                         ; preds = %if.then.i.i, %if.then126.brcmnand_read_reg.exit.i_crit_edge
  %retval.0.i.i348 = phi i32 [ %297, %if.then.i.i ], [ 0, %if.then126.brcmnand_read_reg.exit.i_crit_edge ]
  %298 = ptrtoint ptr %reg_offsets.i306 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %reg_offsets.i306, align 8
  %arrayidx.i6.i = getelementptr i16, ptr %299, i32 15
  %300 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %arrayidx.i6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %301)
  %tobool.not.i7.i = icmp eq i16 %301, 0
  br i1 %tobool.not.i7.i, label %brcmnand_read_reg.exit.i.brcmnand_get_uncorrecc_addr.exit_crit_edge, label %if.then.i11.i

brcmnand_read_reg.exit.i.brcmnand_get_uncorrecc_addr.exit_crit_edge: ; preds = %brcmnand_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_get_uncorrecc_addr.exit

if.then.i11.i:                                    ; preds = %brcmnand_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i8.i = zext i16 %301 to i32
  %nand_base.i.i9.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %302 = ptrtoint ptr %nand_base.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %nand_base.i.i9.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %303, i32 %conv.i8.i
  %304 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i) #9, !srcloc !336
  %305 = and i32 %304, -65536
  %306 = tail call i32 @llvm.bswap.i32(i32 %305) #9
  br label %brcmnand_get_uncorrecc_addr.exit

brcmnand_get_uncorrecc_addr.exit:                 ; preds = %if.then.i11.i, %brcmnand_read_reg.exit.i.brcmnand_get_uncorrecc_addr.exit_crit_edge
  %retval.0.i12.i = phi i32 [ %306, %if.then.i11.i ], [ 0, %brcmnand_read_reg.exit.i.brcmnand_get_uncorrecc_addr.exit_crit_edge ]
  %conv.i349 = zext i32 %retval.0.i.i348 to i64
  %conv2.i = zext i32 %retval.0.i12.i to i64
  %shl.i350 = shl nuw nsw i64 %conv2.i, 32
  %or.i351 = or i64 %shl.i350, %conv.i349
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i351)
  %tobool128.not = icmp eq i64 %or.i351, 0
  br i1 %tobool128.not, label %if.then129, label %brcmnand_get_uncorrecc_addr.exit.cleanup_crit_edge

brcmnand_get_uncorrecc_addr.exit.cleanup_crit_edge: ; preds = %brcmnand_get_uncorrecc_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then129:                                       ; preds = %brcmnand_get_uncorrecc_addr.exit
  %307 = ptrtoint ptr %reg_offsets.i306 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %reg_offsets.i306, align 8
  %arrayidx.i.i353 = getelementptr i16, ptr %308, i32 14
  %309 = ptrtoint ptr %arrayidx.i.i353 to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %arrayidx.i.i353, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %310)
  %tobool.not.i.i354 = icmp eq i16 %310, 0
  br i1 %tobool.not.i.i354, label %if.then129.brcmnand_read_reg.exit.i362_crit_edge, label %if.then.i.i358

if.then129.brcmnand_read_reg.exit.i362_crit_edge: ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit.i362

if.then.i.i358:                                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i355 = zext i16 %310 to i32
  %nand_base.i.i.i356 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %311 = ptrtoint ptr %nand_base.i.i.i356 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %nand_base.i.i.i356, align 4
  %add.ptr.i.i.i357 = getelementptr i8, ptr %312, i32 %conv.i.i355
  %313 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i357) #9, !srcloc !336
  %314 = tail call i32 @llvm.bswap.i32(i32 %313) #9
  br label %brcmnand_read_reg.exit.i362

brcmnand_read_reg.exit.i362:                      ; preds = %if.then.i.i358, %if.then129.brcmnand_read_reg.exit.i362_crit_edge
  %retval.0.i.i359 = phi i32 [ %314, %if.then.i.i358 ], [ 0, %if.then129.brcmnand_read_reg.exit.i362_crit_edge ]
  %315 = ptrtoint ptr %reg_offsets.i306 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %reg_offsets.i306, align 8
  %arrayidx.i6.i360 = getelementptr i16, ptr %316, i32 13
  %317 = ptrtoint ptr %arrayidx.i6.i360 to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %arrayidx.i6.i360, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %318)
  %tobool.not.i7.i361 = icmp eq i16 %318, 0
  br i1 %tobool.not.i7.i361, label %brcmnand_read_reg.exit.i362.brcmnand_get_correcc_addr.exit_crit_edge, label %if.then.i11.i366

brcmnand_read_reg.exit.i362.brcmnand_get_correcc_addr.exit_crit_edge: ; preds = %brcmnand_read_reg.exit.i362
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_get_correcc_addr.exit

if.then.i11.i366:                                 ; preds = %brcmnand_read_reg.exit.i362
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i8.i363 = zext i16 %318 to i32
  %nand_base.i.i9.i364 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %319 = ptrtoint ptr %nand_base.i.i9.i364 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %nand_base.i.i9.i364, align 4
  %add.ptr.i.i10.i365 = getelementptr i8, ptr %320, i32 %conv.i8.i363
  %321 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i365) #9, !srcloc !336
  %322 = and i32 %321, -65536
  %323 = tail call i32 @llvm.bswap.i32(i32 %322) #9
  br label %brcmnand_get_correcc_addr.exit

brcmnand_get_correcc_addr.exit:                   ; preds = %if.then.i11.i366, %brcmnand_read_reg.exit.i362.brcmnand_get_correcc_addr.exit_crit_edge
  %retval.0.i12.i367 = phi i32 [ %323, %if.then.i11.i366 ], [ 0, %brcmnand_read_reg.exit.i362.brcmnand_get_correcc_addr.exit_crit_edge ]
  %conv.i368 = zext i32 %retval.0.i.i359 to i64
  %conv2.i369 = zext i32 %retval.0.i12.i367 to i64
  %shl.i370 = shl nuw nsw i64 %conv2.i369, 32
  %or.i371 = or i64 %shl.i370, %conv.i368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i371)
  %tobool131.not = icmp eq i64 %or.i371, 0
  %spec.select = select i1 %tobool131.not, i32 0, i32 -117
  br label %cleanup

cleanup:                                          ; preds = %brcmnand_get_correcc_addr.exit, %brcmnand_get_uncorrecc_addr.exit.cleanup_crit_edge, %if.end118.cleanup_crit_edge, %do.end23
  %retval.0 = phi i32 [ -12, %do.end23 ], [ %ret.1, %if.end118.cleanup_crit_edge ], [ %spec.select, %brcmnand_get_correcc_addr.exit ], [ -74, %brcmnand_get_uncorrecc_addr.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmnand_set_wp(ptr nocapture noundef readonly %ctrl, i1 noundef zeroext %en) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %cond = select i1 %en, i32 536870912, i32 0
  %reg_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %ctrl, i32 0, i32 33
  %0 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %1, i32 4
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i.i, label %entry.brcmnand_read_reg.exit.i_crit_edge, label %if.then.i.i

entry.brcmnand_read_reg.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i16 %3 to i32
  %nand_base.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %ctrl, i32 0, i32 2
  %4 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !336
  %7 = and i32 %6, -33
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  br label %brcmnand_read_reg.exit.i

brcmnand_read_reg.exit.i:                         ; preds = %if.then.i.i, %entry.brcmnand_read_reg.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %8, %if.then.i.i ], [ 0, %entry.brcmnand_read_reg.exit.i_crit_edge ]
  %9 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i6.i = getelementptr i16, ptr %10, i32 4
  %11 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i7.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i7.i, label %brcmnand_read_reg.exit.i.brcmnand_rmw_reg.exit_crit_edge, label %if.then.i11.i

brcmnand_read_reg.exit.i.brcmnand_rmw_reg.exit_crit_edge: ; preds = %brcmnand_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_rmw_reg.exit

if.then.i11.i:                                    ; preds = %brcmnand_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %retval.0.i.i, %cond
  %conv.i8.i = zext i16 %12 to i32
  %nand_base.i.i9.i = getelementptr inbounds %struct.brcmnand_controller, ptr %ctrl, i32 0, i32 2
  %13 = ptrtoint ptr %nand_base.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nand_base.i.i9.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %14, i32 %conv.i8.i
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i, i32 %15) #9, !srcloc !337
  br label %brcmnand_rmw_reg.exit

brcmnand_rmw_reg.exit:                            ; preds = %if.then.i11.i, %brcmnand_read_reg.exit.i.brcmnand_rmw_reg.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmnand_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %soc = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call zeroext i1 %3(ptr noundef %1) #9
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %dma_pending.i = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 11
  %4 = ptrtoint ptr %dma_pending.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma_pending.i, align 8, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %edu_pending.i = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 12
  %6 = ptrtoint ptr %edu_pending.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %edu_pending.i, align 1, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %if.end7.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %irq3.i = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 5
  %8 = ptrtoint ptr %irq3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %irq)
  %cmp.i = icmp eq i32 %9, %irq
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then2.i.if.end6.i_crit_edge

if.then2.i.if.end6.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %edu_irq.i = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 19
  %10 = ptrtoint ptr %edu_irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %edu_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp4.i = icmp sgt i32 %11, -1
  br i1 %cmp4.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %if.then2.i.if.end6.i_crit_edge
  %call.i = tail call i32 @brcmnand_edu_irq(i32 noundef %irq, ptr noundef %data) #9
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %done.i = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 13
  tail call void @complete(ptr noundef %done.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7.i, %if.end6.i, %land.lhs.true.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then.cleanup_crit_edge ], [ 1, %land.lhs.true.i.cleanup_crit_edge ], [ 1, %if.end6.i ], [ 1, %if.end7.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmnand_ctlrdy_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_pending = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %dma_pending to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_pending, align 8, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %edu_pending = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 12
  %2 = ptrtoint ptr %edu_pending to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %edu_pending, align 1, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.end
  %irq3 = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 5
  %4 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %irq)
  %cmp = icmp eq i32 %5, %irq
  br i1 %cmp, label %land.lhs.true, label %if.then2.if.end6_crit_edge

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.then2
  %edu_irq = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 19
  %6 = ptrtoint ptr %edu_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %edu_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp4 = icmp sgt i32 %7, -1
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.then2.if.end6_crit_edge
  %call = tail call i32 @brcmnand_edu_irq(i32 noundef %irq, ptr noundef %data)
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %done = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 13
  tail call void @complete(ptr noundef %done) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end6, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmnand_remove(ptr nocapture noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %host_list = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %host_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %host.040 = load ptr, ptr %host_list, align 4
  %cmp.not41 = icmp eq ptr %host.040, %host_list
  br i1 %cmp.not41, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %host.042 = phi ptr [ %host.0, %if.end.for.body_crit_edge ], [ %host.040, %entry.for.body_crit_edge ]
  %chip2 = getelementptr inbounds %struct.brcmnand_host, ptr %host.042, i32 0, i32 1
  %call4 = tail call i32 @mtd_device_unregister(ptr noundef %chip2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.end, !prof !338

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 3208, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %chip2) #9
  %3 = ptrtoint ptr %host.042 to i32
  call void @__asan_load4_noabort(i32 %3)
  %host.0 = load ptr, ptr %host.042, align 4
  %cmp.not = icmp eq ptr %host.0, %host_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %clk = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmnand_save_restore_cs_config(ptr nocapture noundef %host, i32 noundef %restore) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.brcmnand_host, ptr %host, i32 0, i32 8
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 8
  %cs = getelementptr inbounds %struct.brcmnand_host, ptr %host, i32 0, i32 3
  %2 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cs, align 4
  %reg_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_offsets.i, align 8
  %arrayidx.i = getelementptr i16, ptr %5, i32 7
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %cs0_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 36
  %8 = ptrtoint ptr %cs0_offsets.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cs0_offsets.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.thread42.i, label %land.lhs.true.i.land.lhs.true.i93_crit_edge

land.lhs.true.i.land.lhs.true.i93_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i93

if.end.thread42.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 35
  %10 = ptrtoint ptr %cs_offsets43.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cs_offsets43.i, align 8
  br label %land.lhs.true.i93

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i = getelementptr i16, ptr %5, i32 8
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx2.i, align 2
  %cs_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 35
  %14 = ptrtoint ptr %cs_offsets.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cs_offsets.i, align 8
  %cs_offs.0.in.i = getelementptr i8, ptr %15, i32 1
  %16 = ptrtoint ptr %cs_offs.0.in.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %cs_offs.0.i = load i8, ptr %cs_offs.0.in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool8.not.i = icmp eq i16 %13, 0
  %not.tobool8.not.i = xor i1 %tobool8.not.i, true
  %sub.i = sext i1 %not.tobool8.not.i to i32
  %spec.select = add i32 %3, %sub.i
  %spec.select308 = select i1 %tobool8.not.i, i16 %7, i16 %13
  %conv15.sink.i238 = zext i16 %spec.select308 to i32
  %reg_spacing16.i239 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 34
  %17 = ptrtoint ptr %reg_spacing16.i239 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_spacing16.i239, align 4
  %mul17.i240 = mul i32 %18, %spec.select
  %conv19.i241 = zext i8 %cs_offs.0.i to i32
  %add18.i242 = add nuw nsw i32 %conv19.i241, %conv15.sink.i238
  %add20.i243 = add i32 %add18.i242, %mul17.i240
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %19)
  %cs_offs.0.i97 = load i8, ptr %15, align 1
  %conv19.i113254 = zext i8 %cs_offs.0.i97 to i32
  %add18.i114255 = add i32 %mul17.i240, %conv15.sink.i238
  %add20.i115256 = add i32 %add18.i114255, %conv19.i113254
  %cs_offs.0.in.i128 = getelementptr i8, ptr %15, i32 2
  %20 = ptrtoint ptr %cs_offs.0.in.i128 to i32
  call void @__asan_load1_noabort(i32 %20)
  %cs_offs.0.i129 = load i8, ptr %cs_offs.0.in.i128, align 1
  %conv19.i146271 = zext i8 %cs_offs.0.i129 to i32
  %add20.i148273 = add i32 %add18.i114255, %conv19.i146271
  br label %brcmnand_cs_offset.exit216

land.lhs.true.i93:                                ; preds = %if.end.thread42.i, %land.lhs.true.i.land.lhs.true.i93_crit_edge
  %.sink.i = phi ptr [ %11, %if.end.thread42.i ], [ %9, %land.lhs.true.i.land.lhs.true.i93_crit_edge ]
  %cs_offs.0.in44.i = getelementptr i8, ptr %.sink.i, i32 1
  %21 = ptrtoint ptr %cs_offs.0.in44.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %cs_offs.045.i = load i8, ptr %cs_offs.0.in44.i, align 1
  %conv15.sink.i = zext i16 %7 to i32
  %reg_spacing16.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 34
  %22 = ptrtoint ptr %reg_spacing16.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_spacing16.i, align 4
  %conv19.i = zext i8 %cs_offs.045.i to i32
  %add18.i = add nuw nsw i32 %conv19.i, %conv15.sink.i
  %24 = ptrtoint ptr %cs0_offsets.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cs0_offsets.i, align 4
  %tobool.not.i92 = icmp eq ptr %25, null
  br i1 %tobool.not.i92, label %if.end.thread42.i126, label %land.lhs.true.i93.land.lhs.true.i157_crit_edge

land.lhs.true.i93.land.lhs.true.i157_crit_edge:   ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i157

if.end.thread42.i126:                             ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i94 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 35
  %26 = ptrtoint ptr %cs_offsets43.i94 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cs_offsets43.i94, align 8
  br label %land.lhs.true.i157

land.lhs.true.i157:                               ; preds = %if.end.thread42.i126, %land.lhs.true.i93.land.lhs.true.i157_crit_edge
  %conv19.i113313.pn.in.in = phi ptr [ %27, %if.end.thread42.i126 ], [ %25, %land.lhs.true.i93.land.lhs.true.i157_crit_edge ]
  %28 = ptrtoint ptr %conv19.i113313.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %28)
  %conv19.i113313.pn.in = load i8, ptr %conv19.i113313.pn.in.in, align 1
  %conv19.i113313.pn = zext i8 %conv19.i113313.pn.in to i32
  %add20.i115316 = add nuw nsw i32 %conv15.sink.i, %conv19.i113313.pn
  %cs_offs.0.in44.i135 = getelementptr i8, ptr %conv19.i113313.pn.in.in, i32 2
  %29 = ptrtoint ptr %cs_offs.0.in44.i135 to i32
  call void @__asan_load1_noabort(i32 %29)
  %cs_offs.045.i136 = load i8, ptr %cs_offs.0.in44.i135, align 1
  %conv19.i146 = zext i8 %cs_offs.045.i136 to i32
  %add20.i148 = add nuw nsw i32 %conv15.sink.i, %conv19.i146
  %30 = ptrtoint ptr %cs0_offsets.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cs0_offsets.i, align 4
  %tobool.not.i156 = icmp eq ptr %31, null
  br i1 %tobool.not.i156, label %if.end.thread42.i192, label %land.lhs.true.i157.brcmnand_cs_offset.exit216_crit_edge

land.lhs.true.i157.brcmnand_cs_offset.exit216_crit_edge: ; preds = %land.lhs.true.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_cs_offset.exit216

if.end.thread42.i192:                             ; preds = %land.lhs.true.i157
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i158 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 35
  %32 = ptrtoint ptr %cs_offsets43.i158 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cs_offsets43.i158, align 8
  br label %brcmnand_cs_offset.exit216

brcmnand_cs_offset.exit216:                       ; preds = %if.end.thread42.i192, %land.lhs.true.i157.brcmnand_cs_offset.exit216_crit_edge, %if.end.i
  %.sink = phi ptr [ %33, %if.end.thread42.i192 ], [ %15, %if.end.i ], [ %31, %land.lhs.true.i157.brcmnand_cs_offset.exit216_crit_edge ]
  %conv15.sink.i.sink = phi i32 [ %conv15.sink.i, %if.end.thread42.i192 ], [ %add18.i114255, %if.end.i ], [ %conv15.sink.i, %land.lhs.true.i157.brcmnand_cs_offset.exit216_crit_edge ]
  %conv15.sink.i209.pre-phi = phi i32 [ %conv15.sink.i, %if.end.thread42.i192 ], [ %conv15.sink.i238, %if.end.i ], [ %conv15.sink.i, %land.lhs.true.i157.brcmnand_cs_offset.exit216_crit_edge ]
  %retval.0.i116261275302.in = phi i32 [ %add20.i115316, %if.end.thread42.i192 ], [ %add20.i115256, %if.end.i ], [ %add20.i115316, %land.lhs.true.i157.brcmnand_cs_offset.exit216_crit_edge ]
  %34 = phi i32 [ %23, %if.end.thread42.i192 ], [ %18, %if.end.i ], [ %23, %land.lhs.true.i157.brcmnand_cs_offset.exit216_crit_edge ]
  %retval.0.i245258278299.in = phi i32 [ %add18.i, %if.end.thread42.i192 ], [ %add20.i243, %if.end.i ], [ %add18.i, %land.lhs.true.i157.brcmnand_cs_offset.exit216_crit_edge ]
  %retval.0.i149281296.in = phi i32 [ %add20.i148, %if.end.thread42.i192 ], [ %add20.i148273, %if.end.i ], [ %add20.i148, %land.lhs.true.i157.brcmnand_cs_offset.exit216_crit_edge ]
  %cs.sink.i206 = phi i32 [ 0, %if.end.thread42.i192 ], [ %spec.select, %if.end.i ], [ 0, %land.lhs.true.i157.brcmnand_cs_offset.exit216_crit_edge ]
  %cs_offs.0.in44.i168 = getelementptr i8, ptr %.sink, i32 3
  %35 = ptrtoint ptr %cs_offs.0.in44.i168 to i32
  call void @__asan_load1_noabort(i32 %35)
  %cs_offs.045.i169 = load i8, ptr %cs_offs.0.in44.i168, align 1
  %conv19.i179 = zext i8 %cs_offs.045.i169 to i32
  %add20.i181 = add i32 %conv15.sink.i.sink, %conv19.i179
  %cs_offs.041.sink.i207.in = getelementptr i8, ptr %.sink, i32 4
  %36 = ptrtoint ptr %cs_offs.041.sink.i207.in to i32
  call void @__asan_load1_noabort(i32 %36)
  %cs_offs.041.sink.i207 = load i8, ptr %cs_offs.041.sink.i207.in, align 1
  %retval.0.i245258278299 = trunc i32 %retval.0.i245258278299.in to i16
  %retval.0.i116261275302 = trunc i32 %retval.0.i116261275302.in to i16
  %mul17.i211 = mul i32 %cs.sink.i206, %34
  %conv19.i212 = zext i8 %cs_offs.041.sink.i207 to i32
  %add18.i213 = add i32 %mul17.i211, %conv15.sink.i209.pre-phi
  %add20.i214 = add i32 %add18.i213, %conv19.i212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %restore)
  %tobool.not = icmp eq i32 %restore, 0
  %conv22 = and i32 %retval.0.i245258278299.in, 65535
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %brcmnand_cs_offset.exit216
  %config = getelementptr inbounds %struct.brcmnand_host, ptr %host, i32 0, i32 7, i32 11
  %37 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %config, align 8
  %nand_base.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %nand_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nand_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 %conv22
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %41) #9, !srcloc !337
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i245258278299, i16 %retval.0.i116261275302)
  %cmp.not = icmp eq i16 %retval.0.i245258278299, %retval.0.i116261275302
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then13

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv11 = and i32 %retval.0.i116261275302.in, 65535
  %config_ext = getelementptr inbounds %struct.brcmnand_host, ptr %host, i32 0, i32 7, i32 12
  %42 = ptrtoint ptr %config_ext to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %config_ext, align 4
  %44 = ptrtoint ptr %nand_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nand_base.i, align 4
  %add.ptr.i218 = getelementptr i8, ptr %45, i32 %conv11
  %46 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218, i32 %46) #9, !srcloc !337
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then.if.end_crit_edge
  %conv16 = and i32 %retval.0.i149281296.in, 65535
  %acc_control = getelementptr inbounds %struct.brcmnand_host, ptr %host, i32 0, i32 7, i32 10
  %47 = ptrtoint ptr %acc_control to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %acc_control, align 4
  %49 = ptrtoint ptr %nand_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %nand_base.i, align 4
  %add.ptr.i220 = getelementptr i8, ptr %50, i32 %conv16
  %51 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i220, i32 %51) #9, !srcloc !337
  %conv18 = and i32 %add20.i181, 65535
  %timing_1 = getelementptr inbounds %struct.brcmnand_host, ptr %host, i32 0, i32 7, i32 13
  %52 = ptrtoint ptr %timing_1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %timing_1, align 8
  %54 = ptrtoint ptr %nand_base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nand_base.i, align 4
  %add.ptr.i222 = getelementptr i8, ptr %55, i32 %conv18
  %56 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222, i32 %56) #9, !srcloc !337
  %conv20 = and i32 %add20.i214, 65535
  %timing_2 = getelementptr inbounds %struct.brcmnand_host, ptr %host, i32 0, i32 7, i32 14
  %57 = ptrtoint ptr %timing_2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %timing_2, align 4
  %59 = ptrtoint ptr %nand_base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %nand_base.i, align 4
  %add.ptr.i224 = getelementptr i8, ptr %60, i32 %conv20
  %61 = tail call i32 @llvm.bswap.i32(i32 %58) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i224, i32 %61) #9, !srcloc !337
  br label %if.end48

if.else:                                          ; preds = %brcmnand_cs_offset.exit216
  %nand_base.i225 = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %nand_base.i225 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %nand_base.i225, align 4
  %add.ptr.i226 = getelementptr i8, ptr %63, i32 %conv22
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i226) #9, !srcloc !336
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #9
  %config25 = getelementptr inbounds %struct.brcmnand_host, ptr %host, i32 0, i32 7, i32 11
  %66 = ptrtoint ptr %config25 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %config25, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i245258278299, i16 %retval.0.i116261275302)
  %cmp28.not = icmp eq i16 %retval.0.i245258278299, %retval.0.i116261275302
  br i1 %cmp28.not, label %if.else.if.end35_crit_edge, label %if.then30

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv27 = and i32 %retval.0.i116261275302.in, 65535
  %67 = ptrtoint ptr %nand_base.i225 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %nand_base.i225, align 4
  %add.ptr.i228 = getelementptr i8, ptr %68, i32 %conv27
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i228) #9, !srcloc !336
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #9
  %config_ext34 = getelementptr inbounds %struct.brcmnand_host, ptr %host, i32 0, i32 7, i32 12
  %71 = ptrtoint ptr %config_ext34 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %config_ext34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.else.if.end35_crit_edge
  %conv36 = and i32 %retval.0.i149281296.in, 65535
  %72 = ptrtoint ptr %nand_base.i225 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %nand_base.i225, align 4
  %add.ptr.i230 = getelementptr i8, ptr %73, i32 %conv36
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i230) #9, !srcloc !336
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #9
  %acc_control39 = getelementptr inbounds %struct.brcmnand_host, ptr %host, i32 0, i32 7, i32 10
  %76 = ptrtoint ptr %acc_control39 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %acc_control39, align 4
  %conv40 = and i32 %add20.i181, 65535
  %77 = ptrtoint ptr %nand_base.i225 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %nand_base.i225, align 4
  %add.ptr.i232 = getelementptr i8, ptr %78, i32 %conv40
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i232) #9, !srcloc !336
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #9
  %timing_143 = getelementptr inbounds %struct.brcmnand_host, ptr %host, i32 0, i32 7, i32 13
  %81 = ptrtoint ptr %timing_143 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %timing_143, align 8
  %conv44 = and i32 %add20.i214, 65535
  %82 = ptrtoint ptr %nand_base.i225 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %nand_base.i225, align 4
  %add.ptr.i234 = getelementptr i8, ptr %83, i32 %conv44
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i234) #9, !srcloc !336
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #9
  %timing_247 = getelementptr inbounds %struct.brcmnand_host, ptr %host, i32 0, i32 7, i32 14
  %86 = ptrtoint ptr %timing_247 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %timing_247, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end35, %if.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_reset_op(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmnand_attach_chip(ptr nocapture noundef %chip) #0 align 64 {
entry:
  %msg.i = alloca [128 x i8], align 1
  %oob_sector.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 8
  %or3 = or i32 %3, 1049088
  store i32 %or3, ptr %options, align 8
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 10
  %4 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bbt_options, align 8
  %and = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or5 = or i32 %5, 262144
  %6 = ptrtoint ptr %bbt_options to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or5, ptr %bbt_options, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ctrl4.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %ctrl4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl4.i, align 8
  %hwcfg.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %msg.i) #9
  %9 = call ptr @memset(ptr %msg.i, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oob_sector.i) #9
  %10 = ptrtoint ptr %oob_sector.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %oob_sector.i, align 4, !annotation !343
  %11 = call ptr @memset(ptr %hwcfg.i, i32 0, i32 64)
  %of_node.i.i.i.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 56, i32 27
  %12 = ptrtoint ptr %of_node.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i.i.i.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.24, ptr noundef nonnull %oob_sector.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %oobsize.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 6
  %14 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %oobsize.i, align 4
  %writesize.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 4
  %16 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %writesize.i, align 4
  %shr.i = lshr i32 %17, 9
  %div.i = udiv i32 %15, %shr.i
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %oob_sector.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %oob_sector.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %div.sink.i = phi i32 [ %19, %if.else.i ], [ %div.i, %if.then.i ]
  %20 = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div.sink.i, ptr %20, align 8
  %max_oob.i = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 42
  %22 = ptrtoint ptr %max_oob.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_oob.i, align 4
  %24 = call i32 @llvm.umin.i32(i32 %div.sink.i, i32 %23) #9
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %20, align 8
  %writesize14.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 4
  %26 = ptrtoint ptr %writesize14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %writesize14.i, align 4
  %shr15.i = lshr i32 %27, 9
  %mul.i = mul i32 %shr15.i, %24
  %oobsize16.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 6
  %28 = ptrtoint ptr %oobsize16.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul.i, ptr %oobsize16.i, align 4
  %size.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 2
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %size.i, align 8
  %31 = ptrtoint ptr %hwcfg.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %hwcfg.i, align 8
  %erasesize.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 3
  %32 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %erasesize.i, align 8
  %block_size.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %block_size.i, align 8
  %page_size.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 2
  %35 = ptrtoint ptr %page_size.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %27, ptr %page_size.i, align 4
  %options.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 6
  %36 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %options.i, align 8
  %and.i = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool18.not.i, i32 8, i32 16
  %device_width.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 4
  %38 = ptrtoint ptr %device_width.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond.i, ptr %device_width.i, align 4
  %col_adr_bytes.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 5
  %39 = ptrtoint ptr %col_adr_bytes.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %col_adr_bytes.i, align 8
  %shr.i.i.i.i = lshr i64 %30, 32
  %conv.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %conv.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = call i32 @llvm.ctlz.i32(i32 %conv.i.i.i.i, i1 true) #9, !range !344
  %add.i.i.i.i = sub nuw nsw i32 64, %40
  br label %get_blk_adr_bytes.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i.i.i.i = trunc i64 %30 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i.i)
  %tobool.not.i5.i.i.i.i = icmp eq i32 %conv1.i.i.i.i, 0
  %41 = call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i.i, i1 true) #9, !range !344
  %sub.i6.i.i.i.i = sub nuw nsw i32 32, %41
  %cond.i7.i.i.i.i = select i1 %tobool.not.i5.i.i.i.i, i32 0, i32 %sub.i6.i.i.i.i
  br label %get_blk_adr_bytes.exit.i

get_blk_adr_bytes.exit.i:                         ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %add.i.i.i.i, %if.then.i.i.i.i ], [ %cond.i7.i.i.i.i, %if.end.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i24.i.i = icmp eq i32 %27, 0
  %42 = call i32 @llvm.ctlz.i32(i32 %27, i1 true) #9, !range !344
  %sub.i.op.i.neg.i.i = add nsw i32 %42, -31
  %sub.i25.neg.i.i = select i1 %tobool.not.i.i24.i.i, i32 1, i32 %sub.i.op.i.neg.i.i
  %sub17.i.i = add nsw i32 %retval.0.i.i.i.i, 6
  %add.i.i = add nsw i32 %sub17.i.i, %sub.i25.neg.i.i
  %shr.i.i = ashr i32 %add.i.i, 3
  %blk_adr_bytes.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 6
  %43 = ptrtoint ptr %blk_adr_bytes.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr.i.i, ptr %blk_adr_bytes.i, align 4
  %ecc.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 33
  %44 = ptrtoint ptr %ecc.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ecc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp22.not.i = icmp eq i32 %45, 3
  br i1 %cmp22.not.i, label %if.end26.i, label %do.end.i

do.end.i:                                         ; preds = %get_blk_adr_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.25, i32 noundef %45) #12
  br label %brcmnand_setup_dev.exit.thread

if.end26.i:                                       ; preds = %get_blk_adr_bytes.exit.i
  %algo.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 33, i32 2
  %48 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %algo.i, align 8
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i32 %49, label %if.end26.i.land.lhs.true66.i_crit_edge [
    i32 0, label %if.then29.i
    i32 1, label %if.end26.i.land.lhs.true46.i_crit_edge
  ]

if.end26.i.land.lhs.true46.i_crit_edge:           ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true46.i

if.end26.i.land.lhs.true66.i_crit_edge:           ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true66.i

if.then29.i:                                      ; preds = %if.end26.i
  %strength.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 33, i32 7
  %51 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %strength.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp31.i = icmp eq i32 %52, 1
  br i1 %cmp31.i, label %land.lhs.true.i, label %if.then29.i.if.end42.thread325.i_crit_edge

if.then29.i.if.end42.thread325.i_crit_edge:       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.thread325.i

land.lhs.true.i:                                  ; preds = %if.then29.i
  %size33.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 33, i32 4
  %53 = ptrtoint ptr %size33.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size33.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %54)
  %cmp34.i = icmp eq i32 %54, 512
  br i1 %cmp34.i, label %if.end42.thread.i, label %land.lhs.true.i.if.end42.thread325.i_crit_edge

land.lhs.true.i.if.end42.thread325.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.thread325.i

if.end42.thread.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %algo.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %algo.i, align 8
  br label %land.lhs.true46.i

if.end42.thread325.i:                             ; preds = %land.lhs.true.i.if.end42.thread325.i_crit_edge, %if.then29.i.if.end42.thread325.i_crit_edge
  %56 = ptrtoint ptr %algo.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %algo.i, align 8
  br label %land.lhs.true66.i

land.lhs.true46.i:                                ; preds = %if.end42.thread.i, %if.end26.i.land.lhs.true46.i_crit_edge
  %strength48.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 33, i32 7
  %57 = ptrtoint ptr %strength48.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %strength48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp49.not.i = icmp eq i32 %58, 1
  br i1 %cmp49.not.i, label %lor.lhs.false.i, label %land.lhs.true46.i.do.end56.i_crit_edge

land.lhs.true46.i.do.end56.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true46.i
  %size51.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 33, i32 4
  %59 = ptrtoint ptr %size51.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %size51.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %60)
  %cmp52.not.i = icmp eq i32 %60, 512
  br i1 %cmp52.not.i, label %lor.lhs.false.i.land.lhs.true66.i_crit_edge, label %lor.lhs.false.i.do.end56.i_crit_edge

lor.lhs.false.i.do.end56.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56.i

lor.lhs.false.i.land.lhs.true66.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true66.i

do.end56.i:                                       ; preds = %lor.lhs.false.i.do.end56.i_crit_edge, %land.lhs.true46.i.do.end56.i_crit_edge
  %61 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %8, align 8
  %size61.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 33, i32 4
  %63 = ptrtoint ptr %size61.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size61.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.28, i32 noundef %58, i32 noundef %64) #12
  br label %brcmnand_setup_dev.exit.thread

land.lhs.true66.i:                                ; preds = %lor.lhs.false.i.land.lhs.true66.i_crit_edge, %if.end42.thread325.i, %if.end26.i.land.lhs.true66.i_crit_edge
  %size68.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 33, i32 4
  %65 = ptrtoint ptr %size68.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size68.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool69.not.i = icmp eq i32 %66, 0
  br i1 %tobool69.not.i, label %land.lhs.true66.i.if.then74.i_crit_edge, label %lor.lhs.false70.i

land.lhs.true66.i.if.then74.i_crit_edge:          ; preds = %land.lhs.true66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then74.i

lor.lhs.false70.i:                                ; preds = %land.lhs.true66.i
  %strength72.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 33, i32 7
  %67 = ptrtoint ptr %strength72.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %strength72.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool73.not.i = icmp eq i32 %68, 0
  br i1 %tobool73.not.i, label %lor.lhs.false70.i.if.then74.i_crit_edge, label %lor.lhs.false70.i.if.end95.i_crit_edge

lor.lhs.false70.i.if.end95.i_crit_edge:           ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95.i

lor.lhs.false70.i.if.then74.i_crit_edge:          ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then74.i

if.then74.i:                                      ; preds = %lor.lhs.false70.i.if.then74.i_crit_edge, %land.lhs.true66.i.if.then74.i_crit_edge
  %step_size.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 0, i32 2, i32 1, i32 4
  %69 = ptrtoint ptr %step_size.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %step_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool75.not.i = icmp eq i32 %70, 0
  br i1 %tobool75.not.i, label %if.then74.i.if.end95.i_crit_edge, label %land.lhs.true76.i

if.then74.i.if.end95.i_crit_edge:                 ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95.i

land.lhs.true76.i:                                ; preds = %if.then74.i
  %strength77.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 0, i32 2, i32 1, i32 3
  %71 = ptrtoint ptr %strength77.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %strength77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool78.not.i = icmp eq i32 %72, 0
  br i1 %tobool78.not.i, label %land.lhs.true76.i.if.end95.i_crit_edge, label %if.then79.i

land.lhs.true76.i.if.end95.i_crit_edge:           ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95.i

if.then79.i:                                      ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %size68.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %70, ptr %size68.i, align 8
  %strength85.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 33, i32 7
  %74 = ptrtoint ptr %strength85.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %72, ptr %strength85.i, align 4
  %75 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %76, ptr noundef nonnull @.str.31, i32 noundef %70, i32 noundef %72) #12
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then79.i, %land.lhs.true76.i.if.end95.i_crit_edge, %if.then74.i.if.end95.i_crit_edge, %lor.lhs.false70.i.if.end95.i_crit_edge
  %77 = ptrtoint ptr %size68.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size68.i, align 8
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %78, label %do.end133.i [
    i32 512, label %sw.bb.i
    i32 1024, label %sw.bb107.i
  ]

sw.bb.i:                                          ; preds = %if.end95.i
  %80 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %algo.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp100.i = icmp eq i32 %81, 1
  br i1 %cmp100.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %if.else102.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.else102.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %strength104.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 33, i32 7
  %82 = ptrtoint ptr %strength104.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %strength104.i, align 4
  br label %sw.epilog.i

sw.bb107.i:                                       ; preds = %if.end95.i
  %features.i = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 43
  %84 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %features.i, align 8
  %and108.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i)
  %tobool109.not.i = icmp eq i32 %and108.i, 0
  br i1 %tobool109.not.i, label %do.end113.i, label %if.end115.i

do.end113.i:                                      ; preds = %sw.bb107.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.34) #12
  br label %brcmnand_setup_dev.exit.thread

if.end115.i:                                      ; preds = %sw.bb107.i
  %strength117.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 33, i32 7
  %88 = ptrtoint ptr %strength117.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %strength117.i, align 4
  %and118.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118.i)
  %tobool119.not.i = icmp eq i32 %and118.i, 0
  br i1 %tobool119.not.i, label %if.end125.i, label %do.end123.i

do.end123.i:                                      ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.37) #12
  br label %brcmnand_setup_dev.exit.thread

if.end125.i:                                      ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr128.i = ashr i32 %89, 1
  br label %sw.epilog.i

do.end133.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.40, i32 noundef %78) #12
  br label %brcmnand_setup_dev.exit.thread

sw.epilog.i:                                      ; preds = %if.end125.i, %if.else102.i, %sw.bb.i.sw.epilog.i_crit_edge
  %shr128.sink.i = phi i32 [ %shr128.i, %if.end125.i ], [ %83, %if.else102.i ], [ 15, %sw.bb.i.sw.epilog.i_crit_edge ]
  %.sink340.i = phi i32 [ 1, %if.end125.i ], [ 0, %if.else102.i ], [ 0, %sw.bb.i.sw.epilog.i_crit_edge ]
  %ecc_level129.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 9
  %94 = ptrtoint ptr %ecc_level129.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %shr128.sink.i, ptr %ecc_level129.i, align 8
  %sector_size_1k130.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 8
  %95 = ptrtoint ptr %sector_size_1k130.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %.sink340.i, ptr %sector_size_1k130.i, align 4
  %96 = ptrtoint ptr %blk_adr_bytes.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %blk_adr_bytes.i, align 4
  %ful_adr_bytes.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 7
  %98 = ptrtoint ptr %writesize14.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %writesize14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %99)
  %cmp139.i = icmp ugt i32 %99, 512
  br i1 %cmp139.i, label %if.then140.i, label %if.else143.i

if.then140.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %col_adr_bytes.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %col_adr_bytes.i, align 8
  %add.i = add i32 %101, %97
  br label %if.end146.i

if.else143.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %add145.i = add i32 %97, 1
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.else143.i, %if.then140.i
  %storemerge.i = phi i32 [ %add145.i, %if.else143.i ], [ %add.i, %if.then140.i ]
  %102 = ptrtoint ptr %ful_adr_bytes.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %storemerge.i, ptr %ful_adr_bytes.i, align 8
  %103 = ptrtoint ptr %ctrl4.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ctrl4.i, align 8
  %cs.i.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 3
  %105 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cs.i.i, align 4
  %reg_offsets.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 33
  %107 = ptrtoint ptr %reg_offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reg_offsets.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr i16, ptr %108, i32 7
  %109 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp.i.i.i = icmp eq i32 %106, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %if.end.i269.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end146.i
  %cs0_offsets.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 36
  %111 = ptrtoint ptr %cs0_offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cs0_offsets.i.i.i, align 4
  %tobool.not.i268.i.i = icmp eq ptr %112, null
  br i1 %tobool.not.i268.i.i, label %if.end.thread42.i310.i.i, label %land.lhs.true.i308.i.i

if.end.i269.i.i:                                  ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i.i.i = getelementptr i16, ptr %108, i32 8
  %113 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %arrayidx2.i.i.i, align 2
  %cs_offsets.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 35
  %115 = ptrtoint ptr %cs_offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cs_offsets.i.i.i, align 8
  %cs_offs.0.in.i.i.i = getelementptr i8, ptr %116, i32 1
  %117 = ptrtoint ptr %cs_offs.0.in.i.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %cs_offs.0.i.i.i = load i8, ptr %cs_offs.0.in.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool8.not.i.i.i = icmp eq i16 %114, 0
  %not.tobool8.not.i.i.i = xor i1 %tobool8.not.i.i.i, true
  %sub.i.i273.i = sext i1 %not.tobool8.not.i.i.i to i32
  %spec.select405.i.i = add i32 %106, %sub.i.i273.i
  %spec.select406.i.i = select i1 %tobool8.not.i.i.i, i16 %110, i16 %114
  %conv15.sink.i370.i.i = zext i16 %spec.select406.i.i to i32
  %reg_spacing16.i371.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 34
  %118 = ptrtoint ptr %reg_spacing16.i371.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %reg_spacing16.i371.i.i, align 4
  %mul17.i372.i.i = mul i32 %119, %spec.select405.i.i
  %conv19.i373.i.i = zext i8 %cs_offs.0.i.i.i to i32
  %add18.i374.i.i = add i32 %mul17.i372.i.i, %conv15.sink.i370.i.i
  %add20.i375.i.i = add i32 %add18.i374.i.i, %conv19.i373.i.i
  %120 = ptrtoint ptr %116 to i32
  call void @__asan_load1_noabort(i32 %120)
  %cs_offs.0.i281.i.i = load i8, ptr %116, align 1
  %conv19.i297386.i.i = zext i8 %cs_offs.0.i281.i.i to i32
  br label %brcmnand_cs_offset.exit334.i.i

land.lhs.true.i308.i.i:                           ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offs.0.in44.i.i.i = getelementptr i8, ptr %112, i32 1
  %121 = ptrtoint ptr %cs_offs.0.in44.i.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %cs_offs.045.i.i.i = load i8, ptr %cs_offs.0.in44.i.i.i, align 1
  %conv15.sink.i.i.i = zext i16 %110 to i32
  %reg_spacing16.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 34
  %122 = ptrtoint ptr %reg_spacing16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %reg_spacing16.i.i.i, align 4
  %conv19.i.i.i = zext i8 %cs_offs.045.i.i.i to i32
  %add18.i.i.i = add nuw nsw i32 %conv19.i.i.i, %conv15.sink.i.i.i
  %124 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %124)
  %cs_offs.045.i287.i.i = load i8, ptr %112, align 1
  %conv19.i297.i.i = zext i8 %cs_offs.045.i287.i.i to i32
  br label %brcmnand_cs_offset.exit334.i.i

if.end.thread42.i310.i.i:                         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 35
  %125 = ptrtoint ptr %cs_offsets43.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cs_offsets43.i.i.i, align 8
  %cs_offs.0.in44.i.i328.i = getelementptr i8, ptr %126, i32 1
  %127 = ptrtoint ptr %cs_offs.0.in44.i.i328.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %cs_offs.045.i.i329.i = load i8, ptr %cs_offs.0.in44.i.i328.i, align 1
  %conv15.sink.i.i330.i = zext i16 %110 to i32
  %reg_spacing16.i.i331.i = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 34
  %128 = ptrtoint ptr %reg_spacing16.i.i331.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %reg_spacing16.i.i331.i, align 4
  %conv19.i.i332.i = zext i8 %cs_offs.045.i.i329.i to i32
  %add18.i.i333.i = add nuw nsw i32 %conv19.i.i332.i, %conv15.sink.i.i330.i
  %130 = ptrtoint ptr %126 to i32
  call void @__asan_load1_noabort(i32 %130)
  %cs_offs.045.i287422.i.i = load i8, ptr %126, align 1
  %conv19.i297423.i.i = zext i8 %cs_offs.045.i287422.i.i to i32
  br label %brcmnand_cs_offset.exit334.i.i

brcmnand_cs_offset.exit334.i.i:                   ; preds = %if.end.thread42.i310.i.i, %land.lhs.true.i308.i.i, %if.end.i269.i.i
  %conv15.sink.i.i330.sink.i = phi i32 [ %conv15.sink.i.i330.i, %if.end.thread42.i310.i.i ], [ %conv15.sink.i.i.i, %land.lhs.true.i308.i.i ], [ %conv19.i297386.i.i, %if.end.i269.i.i ]
  %conv19.i297423.i.sink.i = phi i32 [ %conv19.i297423.i.i, %if.end.thread42.i310.i.i ], [ %conv19.i297.i.i, %land.lhs.true.i308.i.i ], [ %add18.i374.i.i, %if.end.i269.i.i ]
  %conv15.sink.i327.pre-phi.i.i = phi i32 [ %conv15.sink.i.i330.i, %if.end.thread42.i310.i.i ], [ %conv15.sink.i.i.i, %land.lhs.true.i308.i.i ], [ %conv15.sink.i370.i.i, %if.end.i269.i.i ]
  %131 = phi i32 [ %129, %if.end.thread42.i310.i.i ], [ %123, %land.lhs.true.i308.i.i ], [ %119, %if.end.i269.i.i ]
  %retval.0.i270377390.in.i.i = phi i32 [ %add18.i.i333.i, %if.end.thread42.i310.i.i ], [ %add18.i.i.i, %land.lhs.true.i308.i.i ], [ %add20.i375.i.i, %if.end.i269.i.i ]
  %cs.sink.i324.i.i = phi i32 [ 0, %if.end.thread42.i310.i.i ], [ 0, %land.lhs.true.i308.i.i ], [ %spec.select405.i.i, %if.end.i269.i.i ]
  %.sink.i318.pn.i.i = phi ptr [ %126, %if.end.thread42.i310.i.i ], [ %112, %land.lhs.true.i308.i.i ], [ %116, %if.end.i269.i.i ]
  %add20.i299424.i.i = add i32 %conv19.i297423.i.sink.i, %conv15.sink.i.i330.sink.i
  %cs_offs.041.sink.i325.in.i.i = getelementptr i8, ptr %.sink.i318.pn.i.i, i32 2
  %132 = ptrtoint ptr %cs_offs.041.sink.i325.in.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %cs_offs.041.sink.i325.i.i = load i8, ptr %cs_offs.041.sink.i325.in.i.i, align 1
  %retval.0.i270377390.i.i = trunc i32 %retval.0.i270377390.in.i.i to i16
  %retval.0.i300393.i.i = trunc i32 %add20.i299424.i.i to i16
  %mul17.i329.i.i = mul i32 %cs.sink.i324.i.i, %131
  %conv19.i330.i.i = zext i8 %cs_offs.041.sink.i325.i.i to i32
  %add18.i331.i.i = add i32 %mul17.i329.i.i, %conv15.sink.i327.pre-phi.i.i
  %add20.i332.i.i = add i32 %add18.i331.i.i, %conv19.i330.i.i
  %block_sizes.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 38
  %133 = ptrtoint ptr %block_sizes.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %block_sizes.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %134, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %brcmnand_cs_offset.exit334.i.i
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool8.not410.i.i = icmp eq i32 %136, 0
  br i1 %tobool8.not410.i.i, label %for.cond.preheader.i.i.do.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.do.end.i.i_crit_edge:      ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %137 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %block_size.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %139 = phi i32 [ %136, %for.body.lr.ph.i.i ], [ %141, %for.body.i.i.for.body.i.i_crit_edge ]
  %found.0413.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %spec.select247.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.0412.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %block_size.0411.i.i = phi i8 [ 0, %for.body.lr.ph.i.i ], [ %spec.select.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %139, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %138)
  %cmp.i274.i = icmp eq i32 %mul.i.i, %138
  %conv.i.i = trunc i32 %i.0412.i.i to i8
  %spec.select.i.i = select i1 %cmp.i274.i, i8 %conv.i.i, i8 %block_size.0411.i.i
  %spec.select247.i.i = select i1 %cmp.i274.i, i32 1, i32 %found.0413.i.i
  %inc.i.i = add i32 %i.0412.i.i, 1
  %arrayidx.i.i = getelementptr i32, ptr %134, i32 %inc.i.i
  %140 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i.i, align 4
  %tobool8.not.i.i = icmp eq i32 %141, 0
  br i1 %tobool8.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select247.i.i)
  %tobool13.not.i.i = icmp eq i32 %spec.select247.i.i, 0
  br i1 %tobool13.not.i.i, label %for.end.i.i.do.end.i.i_crit_edge, label %for.end.i.i.if.end20.i.i_crit_edge

for.end.i.i.if.end20.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

for.end.i.i.do.end.i.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %for.end.i.i.do.end.i.i_crit_edge, %for.cond.preheader.i.i.do.end.i.i_crit_edge
  %142 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %104, align 8
  %144 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %block_size.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %143, ptr noundef nonnull @.str.45, i32 noundef %145) #12
  br label %brcmnand_setup_dev.exit.thread

if.else.i.i:                                      ; preds = %brcmnand_cs_offset.exit334.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %146 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %block_size.i, align 8
  %148 = call i32 @llvm.cttz.i32(i32 %147, i1 true) #9, !range !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %iszero.i.i = icmp eq i32 %147, 0
  %149 = trunc i32 %148 to i8
  %150 = add nsw i8 %149, -13
  %conv19.i.i = select i1 %iszero.i.i, i8 -14, i8 %150
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else.i.i, %for.end.i.i.if.end20.i.i_crit_edge
  %block_size.2.i.i = phi i8 [ %conv19.i.i, %if.else.i.i ], [ %spec.select.i.i, %for.end.i.i.if.end20.i.i_crit_edge ]
  %151 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %block_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %152)
  %cmp22.i.i = icmp ult i32 %152, 8192
  br i1 %cmp22.i.i, label %if.end20.i.i.do.end32.i.i_crit_edge, label %lor.lhs.false.i.i

if.end20.i.i.do.end32.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32.i.i

lor.lhs.false.i.i:                                ; preds = %if.end20.i.i
  %max_block_size.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 37
  %153 = ptrtoint ptr %max_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %max_block_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool24.not.i.i = icmp ne i32 %154, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %154)
  %cmp27.i.i = icmp ugt i32 %152, %154
  %or.cond.i.i = select i1 %tobool24.not.i.i, i1 %cmp27.i.i, i1 false
  br i1 %or.cond.i.i, label %lor.lhs.false.i.i.do.end32.i.i_crit_edge, label %lor.lhs.false.i.i.if.end35.i.i_crit_edge

lor.lhs.false.i.i.if.end35.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i.i

lor.lhs.false.i.i.do.end32.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32.i.i

do.end32.i.i:                                     ; preds = %lor.lhs.false.i.i.do.end32.i.i_crit_edge, %if.end20.i.i.do.end32.i.i_crit_edge
  %155 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %104, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %156, ptr noundef nonnull @.str.45, i32 noundef %152) #12
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %do.end32.i.i, %lor.lhs.false.i.i.if.end35.i.i_crit_edge
  %block_size.3.i.i = phi i8 [ 0, %do.end32.i.i ], [ %block_size.2.i.i, %lor.lhs.false.i.i.if.end35.i.i_crit_edge ]
  %page_sizes.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 40
  %157 = ptrtoint ptr %page_sizes.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %page_sizes.i.i, align 4
  %tobool36.not.i.i = icmp eq ptr %158, null
  br i1 %tobool36.not.i.i, label %if.else68.i.i, label %for.cond40.preheader.i.i

for.cond40.preheader.i.i:                         ; preds = %if.end35.i.i
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool43.not415.i.i = icmp eq i32 %160, 0
  br i1 %tobool43.not415.i.i, label %for.cond40.preheader.i.i.do.end60.i.i_crit_edge, label %for.body44.lr.ph.i.i

for.cond40.preheader.i.i.do.end60.i.i_crit_edge:  ; preds = %for.cond40.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60.i.i

for.body44.lr.ph.i.i:                             ; preds = %for.cond40.preheader.i.i
  %161 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %page_size.i, align 4
  br label %for.body44.i.i

for.body44.i.i:                                   ; preds = %for.body44.i.i.for.body44.i.i_crit_edge, %for.body44.lr.ph.i.i
  %163 = phi i32 [ %160, %for.body44.lr.ph.i.i ], [ %165, %for.body44.i.i.for.body44.i.i_crit_edge ]
  %found39.0418.i.i = phi i32 [ 0, %for.body44.lr.ph.i.i ], [ %spec.select249.i.i, %for.body44.i.i.for.body44.i.i_crit_edge ]
  %i38.0417.i.i = phi i32 [ 0, %for.body44.lr.ph.i.i ], [ %inc54.i.i, %for.body44.i.i.for.body44.i.i_crit_edge ]
  %page_size.0416.i.i = phi i8 [ 0, %for.body44.lr.ph.i.i ], [ %spec.select248.i.i, %for.body44.i.i.for.body44.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %162)
  %cmp48.i.i = icmp eq i32 %163, %162
  %conv51.i.i = trunc i32 %i38.0417.i.i to i8
  %spec.select248.i.i = select i1 %cmp48.i.i, i8 %conv51.i.i, i8 %page_size.0416.i.i
  %spec.select249.i.i = select i1 %cmp48.i.i, i32 1, i32 %found39.0418.i.i
  %inc54.i.i = add i32 %i38.0417.i.i, 1
  %arrayidx42.i.i = getelementptr i32, ptr %158, i32 %inc54.i.i
  %164 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx42.i.i, align 4
  %tobool43.not.i.i = icmp eq i32 %165, 0
  br i1 %tobool43.not.i.i, label %for.end55.i.i, label %for.body44.i.i.for.body44.i.i_crit_edge

for.body44.i.i.for.body44.i.i_crit_edge:          ; preds = %for.body44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body44.i.i

for.end55.i.i:                                    ; preds = %for.body44.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select249.i.i)
  %tobool56.not.i.i = icmp eq i32 %spec.select249.i.i, 0
  br i1 %tobool56.not.i.i, label %for.end55.i.i.do.end60.i.i_crit_edge, label %for.end55.i.i.if.end74.i.i_crit_edge

for.end55.i.i.if.end74.i.i_crit_edge:             ; preds = %for.end55.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i.i

for.end55.i.i.do.end60.i.i_crit_edge:             ; preds = %for.end55.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %for.end55.i.i.do.end60.i.i_crit_edge, %for.cond40.preheader.i.i.do.end60.i.i_crit_edge
  %166 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %104, align 8
  %168 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %page_size.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %167, ptr noundef nonnull @.str.51, i32 noundef %169) #12
  br label %brcmnand_setup_dev.exit.thread

if.else68.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %170 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %page_size.i, align 4
  %172 = call i32 @llvm.cttz.i32(i32 %171, i1 true) #9, !range !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %iszero70.i.i = icmp eq i32 %171, 0
  %173 = trunc i32 %172 to i8
  %174 = add nsw i8 %173, -9
  %conv73.i.i = select i1 %iszero70.i.i, i8 -10, i8 %174
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %if.else68.i.i, %for.end55.i.i.if.end74.i.i_crit_edge
  %page_size.2.i.i = phi i8 [ %conv73.i.i, %if.else68.i.i ], [ %spec.select248.i.i, %for.end55.i.i.if.end74.i.i_crit_edge ]
  %175 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %page_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %176)
  %cmp76.i.i = icmp ult i32 %176, 512
  br i1 %cmp76.i.i, label %if.end74.i.i.do.end88.i.i_crit_edge, label %lor.lhs.false78.i.i

if.end74.i.i.do.end88.i.i_crit_edge:              ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end88.i.i

lor.lhs.false78.i.i:                              ; preds = %if.end74.i.i
  %max_page_size.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 39
  %177 = ptrtoint ptr %max_page_size.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %max_page_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool79.not.i.i = icmp ne i32 %178, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %176, i32 %178)
  %cmp83.i.i = icmp ugt i32 %176, %178
  %or.cond251.i.i = select i1 %tobool79.not.i.i, i1 %cmp83.i.i, i1 false
  br i1 %or.cond251.i.i, label %lor.lhs.false78.i.i.do.end88.i.i_crit_edge, label %if.end91.i.i

lor.lhs.false78.i.i.do.end88.i.i_crit_edge:       ; preds = %lor.lhs.false78.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end88.i.i

do.end88.i.i:                                     ; preds = %lor.lhs.false78.i.i.do.end88.i.i_crit_edge, %if.end74.i.i.do.end88.i.i_crit_edge
  %179 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %104, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %180, ptr noundef nonnull @.str.51, i32 noundef %176) #12
  br label %brcmnand_setup_dev.exit.thread

if.end91.i.i:                                     ; preds = %lor.lhs.false78.i.i
  %181 = ptrtoint ptr %hwcfg.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %hwcfg.i, align 8
  %shr.i.i.i = lshr i64 %182, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i258.i.i

if.end.i.i.i:                                     ; preds = %if.end91.i.i
  %183 = and i64 %182, 4290772992
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %183)
  %cmp95.i.i = icmp eq i64 %183, 0
  br i1 %cmp95.i.i, label %do.end100.i.i, label %if.end.i263.i.i

do.end100.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %184 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %104, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %185, ptr noundef nonnull @.str.56, i64 noundef %182) #12
  br label %brcmnand_setup_dev.exit.thread

if.then.i258.i.i:                                 ; preds = %if.end91.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %186 = call i32 @llvm.ctlz.i32(i32 %conv.i.i.i, i1 true) #9, !range !344
  %add.i257.i.i = sub nuw nsw i32 64, %186
  br label %fls64.exit265.i.i

if.end.i263.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i259.i.i = trunc i64 %182 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i259.i.i)
  %tobool.not.i5.i260.i.i = icmp eq i32 %conv1.i259.i.i, 0
  %187 = call i32 @llvm.ctlz.i32(i32 %conv1.i259.i.i, i1 true) #9, !range !344
  %sub.i6.i261.i.i = sub nuw nsw i32 32, %187
  %cond.i7.i262.i.i = select i1 %tobool.not.i5.i260.i.i, i32 0, i32 %sub.i6.i261.i.i
  br label %fls64.exit265.i.i

fls64.exit265.i.i:                                ; preds = %if.end.i263.i.i, %if.then.i258.i.i
  %retval.0.i264.i.i = phi i32 [ %add.i257.i.i, %if.then.i258.i.i ], [ %cond.i7.i262.i.i, %if.end.i263.i.i ]
  %188 = ptrtoint ptr %blk_adr_bytes.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %blk_adr_bytes.i, align 4
  %shl.i.i = shl i32 %189, 8
  %190 = ptrtoint ptr %col_adr_bytes.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %col_adr_bytes.i, align 8
  %shl109.i.i = shl i32 %191, 12
  %192 = ptrtoint ptr %ful_adr_bytes.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %ful_adr_bytes.i, align 8
  %shl110.i.i = shl i32 %193, 16
  %194 = ptrtoint ptr %device_width.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %device_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %195)
  %cmp112.i.i = icmp eq i32 %195, 16
  %shl115.i.i = select i1 %cmp112.i.i, i32 8388608, i32 0
  %sub107.i.i = shl nuw nsw i32 %retval.0.i264.i.i, 24
  %shl118.i.i = add nsw i32 %sub107.i.i, -385875968
  %or.i.i = or i32 %shl118.i.i, %shl.i.i
  %or111.i.i = or i32 %or.i.i, %shl109.i.i
  %or116.i.i = or i32 %or111.i.i, %shl110.i.i
  %or119.i.i = or i32 %or116.i.i, %shl115.i.i
  %conv120.i.i = and i32 %retval.0.i270377390.in.i.i, 65535
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.i270377390.i.i, i16 %retval.0.i300393.i.i)
  %cmp122.i.i = icmp eq i16 %retval.0.i270377390.i.i, %retval.0.i300393.i.i
  br i1 %cmp122.i.i, label %if.then124.i.i, label %if.else132.i.i

if.then124.i.i:                                   ; preds = %fls64.exit265.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv125.i.i = zext i8 %page_size.2.i.i to i32
  %page_size_shift.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 41
  %196 = ptrtoint ptr %page_size_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %page_size_shift.i.i, align 8
  %shl126.i.i = shl i32 %conv125.i.i, %197
  %conv127.i.i = zext i8 %block_size.3.i.i to i32
  %shl128.i.i = shl i32 %conv127.i.i, 28
  %or129.i.i = or i32 %or119.i.i, %shl128.i.i
  %or130.i.i = or i32 %or129.i.i, %shl126.i.i
  %nand_base.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 2
  %198 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %199, i32 %conv120.i.i
  %200 = call i32 @llvm.bswap.i32(i32 %or130.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %200) #9, !srcloc !337
  br label %if.end140.i.i

if.else132.i.i:                                   ; preds = %fls64.exit265.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv121.i.i = and i32 %add20.i299424.i.i, 65535
  %nand_base.i335.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 2
  %201 = ptrtoint ptr %nand_base.i335.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %nand_base.i335.i.i, align 4
  %add.ptr.i336.i.i = getelementptr i8, ptr %202, i32 %conv120.i.i
  %203 = call i32 @llvm.bswap.i32(i32 %or119.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i336.i.i, i32 %203) #9, !srcloc !337
  %conv134.i.i = zext i8 %page_size.2.i.i to i32
  %conv136.i.i = zext i8 %block_size.3.i.i to i32
  %shl137.i.i = shl nuw nsw i32 %conv136.i.i, 4
  %or138.i.i = or i32 %shl137.i.i, %conv134.i.i
  %204 = ptrtoint ptr %nand_base.i335.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %nand_base.i335.i.i, align 4
  %add.ptr.i338.i.i = getelementptr i8, ptr %205, i32 %conv121.i.i
  %206 = call i32 @llvm.bswap.i32(i32 %or138.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i338.i.i, i32 %206) #9, !srcloc !337
  br label %if.end140.i.i

if.end140.i.i:                                    ; preds = %if.else132.i.i, %if.then124.i.i
  %conv141.i.i = and i32 %add20.i332.i.i, 65535
  %nand_base.i339.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 2
  %207 = ptrtoint ptr %nand_base.i339.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %nand_base.i339.i.i, align 4
  %add.ptr.i340.i.i = getelementptr i8, ptr %208, i32 %conv141.i.i
  %209 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i340.i.i) #9, !srcloc !336
  %210 = call i32 @llvm.bswap.i32(i32 %209) #9
  %nand_version.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 7
  %211 = ptrtoint ptr %nand_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %nand_version.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %212)
  %cmp.i341.i.i = icmp sgt i32 %212, 1535
  %cond.i.i.i = select i1 %cmp.i341.i.i, i32 2031616, i32 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1793, i32 %212)
  %cmp2.i.i.i = icmp sgt i32 %212, 1793
  %or.i.i.i = or i32 %cond.i.i.i, 57344
  %spec.select.i.i.i = select i1 %cmp2.i.i.i, i32 %or.i.i.i, i32 %cond.i.i.i
  br i1 %cmp.i341.i.i, label %brcmnand_spare_area_mask.exit.thread.i.i, label %brcmnand_spare_area_mask.exit.i.i

brcmnand_spare_area_mask.exit.thread.i.i:         ; preds = %if.end140.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1794, i32 %212)
  %cmp.i343.i.i = icmp eq i32 %212, 1794
  %.mux.i.i = select i1 %cmp.i343.i.i, i32 255, i32 127
  %213 = or i32 %spec.select.i.i.i, %.mux.i.i
  %214 = xor i32 %213, -1
  %and146402.i.i = and i32 %210, %214
  br label %if.then149.i.i

brcmnand_spare_area_mask.exit.i.i:                ; preds = %if.end140.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 770, i32 %212)
  %cmp6.i.i.i = icmp sgt i32 %212, 770
  %..i.i.i = select i1 %cmp6.i.i.i, i32 63, i32 31
  %215 = or i32 %spec.select.i.i.i, %..i.i.i
  %216 = xor i32 %215, -1
  %and146.i.i = and i32 %210, %216
  call void @__sanitizer_cov_trace_const_cmp4(i32 769, i32 %212)
  %cmp147.i.i = icmp sgt i32 %212, 769
  br i1 %cmp147.i.i, label %brcmnand_spare_area_mask.exit.i.i.if.then149.i.i_crit_edge, label %brcmnand_spare_area_mask.exit.i.i.if.end153.i.i_crit_edge

brcmnand_spare_area_mask.exit.i.i.if.end153.i.i_crit_edge: ; preds = %brcmnand_spare_area_mask.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153.i.i

brcmnand_spare_area_mask.exit.i.i.if.then149.i.i_crit_edge: ; preds = %brcmnand_spare_area_mask.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then149.i.i

if.then149.i.i:                                   ; preds = %brcmnand_spare_area_mask.exit.i.i.if.then149.i.i_crit_edge, %brcmnand_spare_area_mask.exit.thread.i.i
  %and146404.i.i = phi i32 [ %and146402.i.i, %brcmnand_spare_area_mask.exit.thread.i.i ], [ %and146.i.i, %brcmnand_spare_area_mask.exit.i.i.if.then149.i.i_crit_edge ]
  %217 = ptrtoint ptr %ecc_level129.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %ecc_level129.i, align 8
  %shl150.i.i = shl i32 %218, 16
  %or151.i.i = or i32 %shl150.i.i, %and146404.i.i
  %219 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %20, align 8
  %or152.i.i = or i32 %or151.i.i, %220
  br label %if.end153.i.i

if.end153.i.i:                                    ; preds = %if.then149.i.i, %brcmnand_spare_area_mask.exit.i.i.if.end153.i.i_crit_edge
  %tmp.0.i.i = phi i32 [ %or152.i.i, %if.then149.i.i ], [ %and146.i.i, %brcmnand_spare_area_mask.exit.i.i.if.end153.i.i_crit_edge ]
  %221 = ptrtoint ptr %nand_base.i339.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %nand_base.i339.i.i, align 4
  %add.ptr.i347.i.i = getelementptr i8, ptr %222, i32 %conv141.i.i
  %223 = call i32 @llvm.bswap.i32(i32 %tmp.0.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i347.i.i, i32 %223) #9, !srcloc !337
  %224 = ptrtoint ptr %sector_size_1k130.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %sector_size_1k130.i, align 4
  %226 = ptrtoint ptr %ctrl4.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ctrl4.i, align 8
  %nand_version.i.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %227, i32 0, i32 7
  %228 = ptrtoint ptr %nand_version.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %nand_version.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1793, i32 %229)
  %cmp.i.i.i.i = icmp sgt i32 %229, 1793
  br i1 %cmp.i.i.i.i, label %if.end153.i.i.brcmnand_sector_1k_shift.exit.i.i.i_crit_edge, label %if.else.i.i.i.i

if.end153.i.i.brcmnand_sector_1k_shift.exit.i.i.i_crit_edge: ; preds = %if.end153.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_sector_1k_shift.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end153.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %229)
  %cmp2.i.i.i.i = icmp sgt i32 %229, 1535
  br i1 %cmp2.i.i.i.i, label %if.else.i.i.i.i.brcmnand_sector_1k_shift.exit.i.i.i_crit_edge, label %if.else4.i.i.i.i

if.else.i.i.i.i.brcmnand_sector_1k_shift.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_sector_1k_shift.exit.i.i.i

if.else4.i.i.i.i:                                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %229)
  %cmp6.i.i.i.i = icmp sgt i32 %229, 1279
  %..i.i.i.i = select i1 %cmp6.i.i.i.i, i32 6, i32 -1
  br label %brcmnand_sector_1k_shift.exit.i.i.i

brcmnand_sector_1k_shift.exit.i.i.i:              ; preds = %if.else4.i.i.i.i, %if.else.i.i.i.i.brcmnand_sector_1k_shift.exit.i.i.i_crit_edge, %if.end153.i.i.brcmnand_sector_1k_shift.exit.i.i.i_crit_edge
  %retval.0.i.i.i275.i = phi i32 [ 9, %if.end153.i.i.brcmnand_sector_1k_shift.exit.i.i.i_crit_edge ], [ 7, %if.else.i.i.i.i.brcmnand_sector_1k_shift.exit.i.i.i_crit_edge ], [ %..i.i.i.i, %if.else4.i.i.i.i ]
  %230 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %cs.i.i, align 4
  %reg_offsets.i.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %227, i32 0, i32 33
  %232 = ptrtoint ptr %reg_offsets.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %reg_offsets.i.i.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr i16, ptr %233, i32 7
  %234 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %arrayidx.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %cmp.i19.i.i.i = icmp eq i32 %231, 0
  br i1 %cmp.i19.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i277.i

land.lhs.true.i.i.i.i:                            ; preds = %brcmnand_sector_1k_shift.exit.i.i.i
  %cs0_offsets.i.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %227, i32 0, i32 36
  %236 = ptrtoint ptr %cs0_offsets.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %cs0_offsets.i.i.i.i, align 4
  %tobool.not.i.i.i276.i = icmp eq ptr %237, null
  br i1 %tobool.not.i.i.i276.i, label %if.end.thread42.i.i.i.i, label %land.lhs.true.i.i.i.i.brcmnand_cs_offset.exit.i.i.i_crit_edge

land.lhs.true.i.i.i.i.brcmnand_cs_offset.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_cs_offset.exit.i.i.i

if.end.thread42.i.i.i.i:                          ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %227, i32 0, i32 35
  %238 = ptrtoint ptr %cs_offsets43.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %cs_offsets43.i.i.i.i, align 8
  br label %brcmnand_cs_offset.exit.i.i.i

if.end.i.i.i277.i:                                ; preds = %brcmnand_sector_1k_shift.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i.i.i.i = getelementptr i16, ptr %233, i32 8
  %240 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %arrayidx2.i.i.i.i, align 2
  %cs_offsets.i.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %227, i32 0, i32 35
  %242 = ptrtoint ptr %cs_offsets.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %cs_offsets.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %241)
  %tobool8.not.i.i.i.i = icmp eq i16 %241, 0
  %not.tobool8.not.i.i.i.i = xor i1 %tobool8.not.i.i.i.i, true
  %sub.i.i.i.i = sext i1 %not.tobool8.not.i.i.i.i to i32
  %spec.select.i348.i.i = add i32 %231, %sub.i.i.i.i
  %spec.select23.i.i.i = select i1 %tobool8.not.i.i.i.i, i16 %235, i16 %241
  br label %brcmnand_cs_offset.exit.i.i.i

brcmnand_cs_offset.exit.i.i.i:                    ; preds = %if.end.i.i.i277.i, %if.end.thread42.i.i.i.i, %land.lhs.true.i.i.i.i.brcmnand_cs_offset.exit.i.i.i_crit_edge
  %cs.sink.i.i.i.i = phi i32 [ %spec.select.i348.i.i, %if.end.i.i.i277.i ], [ 0, %if.end.thread42.i.i.i.i ], [ 0, %land.lhs.true.i.i.i.i.brcmnand_cs_offset.exit.i.i.i_crit_edge ]
  %.sink.i.pn.i.i.i = phi ptr [ %243, %if.end.i.i.i277.i ], [ %239, %if.end.thread42.i.i.i.i ], [ %237, %land.lhs.true.i.i.i.i.brcmnand_cs_offset.exit.i.i.i_crit_edge ]
  %conv15.sink.in.i.i.i.i = phi i16 [ %spec.select23.i.i.i, %if.end.i.i.i277.i ], [ %235, %if.end.thread42.i.i.i.i ], [ %235, %land.lhs.true.i.i.i.i.brcmnand_cs_offset.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i275.i)
  %cmp.i349.i.i = icmp slt i32 %retval.0.i.i.i275.i, 0
  br i1 %cmp.i349.i.i, label %brcmnand_cs_offset.exit.i.i.i.brcmnand_set_sector_size_1k.exit.i.i_crit_edge, label %if.end.i352.i.i

brcmnand_cs_offset.exit.i.i.i.brcmnand_set_sector_size_1k.exit.i.i_crit_edge: ; preds = %brcmnand_cs_offset.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_set_sector_size_1k.exit.i.i

if.end.i352.i.i:                                  ; preds = %brcmnand_cs_offset.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offs.041.sink.i.in.i.i.i = getelementptr i8, ptr %.sink.i.pn.i.i.i, i32 2
  %244 = ptrtoint ptr %cs_offs.041.sink.i.in.i.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %cs_offs.041.sink.i.i.i.i = load i8, ptr %cs_offs.041.sink.i.in.i.i.i, align 1
  %conv19.i.i.i.i = zext i8 %cs_offs.041.sink.i.i.i.i to i32
  %conv15.sink.i.i.i.i = zext i16 %conv15.sink.in.i.i.i.i to i32
  %add18.i.i.i.i = add nuw nsw i32 %conv19.i.i.i.i, %conv15.sink.i.i.i.i
  %reg_spacing16.i.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %227, i32 0, i32 34
  %245 = ptrtoint ptr %reg_spacing16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %reg_spacing16.i.i.i.i, align 4
  %mul17.i.i.i.i = mul i32 %246, %cs.sink.i.i.i.i
  %add20.i.i.i.i = add i32 %add18.i.i.i.i, %mul17.i.i.i.i
  %conv.i350.i.i = and i32 %add20.i.i.i.i, 65535
  %nand_base.i.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %227, i32 0, i32 2
  %247 = ptrtoint ptr %nand_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %nand_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %248, i32 %conv.i350.i.i
  %249 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !336
  %250 = call i32 @llvm.bswap.i32(i32 %249) #9
  %shl.i.i.i = shl nuw nsw i32 1, %retval.0.i.i.i275.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %and.i.i.i = and i32 %250, %neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool.i.i.i = icmp ne i32 %225, 0
  %lnot.ext.i.i.i = zext i1 %tobool.i.i.i to i32
  %shl5.i.i.i = shl nuw nsw i32 %lnot.ext.i.i.i, %retval.0.i.i.i275.i
  %or.i351.i.i = or i32 %and.i.i.i, %shl5.i.i.i
  %251 = ptrtoint ptr %nand_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %nand_base.i.i.i.i, align 4
  %add.ptr.i22.i.i.i = getelementptr i8, ptr %252, i32 %conv.i350.i.i
  %253 = call i32 @llvm.bswap.i32(i32 %or.i351.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i.i, i32 %253) #9, !srcloc !337
  br label %brcmnand_set_sector_size_1k.exit.i.i

brcmnand_set_sector_size_1k.exit.i.i:             ; preds = %if.end.i352.i.i, %brcmnand_cs_offset.exit.i.i.i.brcmnand_set_sector_size_1k.exit.i.i_crit_edge
  %strength.i.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 33, i32 7
  %254 = ptrtoint ptr %strength.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %strength.i.i, align 4
  %mul155.i.i = mul i32 %255, 3
  %sub156.i.i = add i32 %mul155.i.i, 3
  %div.i.i = sdiv i32 %sub156.i.i, 4
  %256 = ptrtoint ptr %ctrl4.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %ctrl4.i, align 8
  %258 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %cs.i.i, align 4
  %reg_offsets.i354.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %257, i32 0, i32 33
  %260 = ptrtoint ptr %reg_offsets.i354.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %reg_offsets.i354.i.i, align 8
  %arrayidx.i355.i.i = getelementptr i16, ptr %261, i32 9
  %262 = ptrtoint ptr %arrayidx.i355.i.i to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %arrayidx.i355.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %263)
  %tobool.not.i356.i.i = icmp eq i16 %263, 0
  br i1 %tobool.not.i356.i.i, label %brcmnand_set_sector_size_1k.exit.i.i.if.end150.i_crit_edge, label %if.end.i359.i.i

brcmnand_set_sector_size_1k.exit.i.i.if.end150.i_crit_edge: ; preds = %brcmnand_set_sector_size_1k.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150.i

if.end.i359.i.i:                                  ; preds = %brcmnand_set_sector_size_1k.exit.i.i
  %nand_version.i357.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %257, i32 0, i32 7
  %264 = ptrtoint ptr %nand_version.i357.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %nand_version.i357.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1794, i32 %265)
  %cmp.i358.i.i = icmp eq i32 %265, 1794
  br i1 %cmp.i358.i.i, label %if.end.i359.i.i.if.then17.i.i.i_crit_edge, label %if.else.i360.i.i

if.end.i359.i.i.if.then17.i.i.i_crit_edge:        ; preds = %if.end.i359.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i.i.i

if.else.i360.i.i:                                 ; preds = %if.end.i359.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %265)
  %cmp5.i.i.i = icmp sgt i32 %265, 1535
  br i1 %cmp5.i.i.i, label %if.end14.i361.i.i, label %if.else21.i.i.i

if.end14.i361.i.i:                                ; preds = %if.else.i360.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1793, i32 %265)
  %cmp16.i.i.i = icmp ugt i32 %265, 1793
  br i1 %cmp16.i.i.i, label %if.end14.i361.i.i.if.then17.i.i.i_crit_edge, label %if.then24.i.i.i

if.end14.i361.i.i.if.then17.i.i.i_crit_edge:      ; preds = %if.end14.i361.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i.i.i

if.then17.i.i.i:                                  ; preds = %if.end14.i361.i.i.if.then17.i.i.i_crit_edge, %if.end.i359.i.i.if.then17.i.i.i_crit_edge
  %bits.054.i.i.i = phi i32 [ 6, %if.end14.i361.i.i.if.then17.i.i.i_crit_edge ], [ 7, %if.end.i359.i.i.if.then17.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %259)
  %cmp18.i.i.i = icmp sgt i32 %259, 3
  %spec.select.i362.i.i = select i1 %cmp18.i.i.i, i32 10, i32 9
  %rem.i.i.i = srem i32 %259, 4
  %mul.i.i.i = mul nsw i32 %bits.054.i.i.i, %rem.i.i.i
  br label %if.end31.i.i.i

if.else21.i.i.i:                                  ; preds = %if.else.i360.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %265)
  %cmp9.i.i.i = icmp sgt i32 %265, 1279
  %..i363.i.i = select i1 %cmp9.i.i.i, i32 5, i32 4
  br label %if.end31.i.i.i

if.then24.i.i.i:                                  ; preds = %if.end14.i361.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %259)
  %cmp25.i.i.i = icmp sgt i32 %259, 4
  %spec.select51.i.i.i = select i1 %cmp25.i.i.i, i32 10, i32 9
  %rem28.i.i.i = srem i32 %259, 5
  %mul29.i.i.i = mul nsw i32 %rem28.i.i.i, 6
  br label %if.end31.i.i.i

if.end31.i.i.i:                                   ; preds = %if.then24.i.i.i, %if.else21.i.i.i, %if.then17.i.i.i
  %bits.055.i.i.i = phi i32 [ %bits.054.i.i.i, %if.then17.i.i.i ], [ 6, %if.then24.i.i.i ], [ %..i363.i.i, %if.else21.i.i.i ]
  %shift.0.i.i.i = phi i32 [ %mul.i.i.i, %if.then17.i.i.i ], [ %mul29.i.i.i, %if.then24.i.i.i ], [ 0, %if.else21.i.i.i ]
  %reg.2.i.i.i = phi i32 [ %spec.select.i362.i.i, %if.then17.i.i.i ], [ %spec.select51.i.i.i, %if.then24.i.i.i ], [ 9, %if.else21.i.i.i ]
  %sub.i364.i.i = add nsw i32 %bits.055.i.i.i, -1
  %shl.i365.i.i = shl nuw nsw i32 %sub.i364.i.i, %shift.0.i.i.i
  %conv.i366.i.i = and i32 %div.i.i, 255
  %arrayidx.i.i.i.i.i = getelementptr i16, ptr %261, i32 %reg.2.i.i.i
  %266 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %arrayidx.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %267)
  %tobool.not.i.i.i.i.i = icmp eq i16 %267, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end31.i.i.i.brcmnand_read_reg.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

if.end31.i.i.i.brcmnand_read_reg.exit.i.i.i.i_crit_edge: ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i16 %267 to i32
  %nand_base.i.i.i.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %257, i32 0, i32 2
  %268 = ptrtoint ptr %nand_base.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %nand_base.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %269, i32 %conv.i.i.i.i.i
  %270 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i.i) #9, !srcloc !336
  %271 = call i32 @llvm.bswap.i32(i32 %270) #9
  br label %brcmnand_read_reg.exit.i.i.i.i

brcmnand_read_reg.exit.i.i.i.i:                   ; preds = %if.then.i.i.i.i.i, %if.end31.i.i.i.brcmnand_read_reg.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %271, %if.then.i.i.i.i.i ], [ 0, %if.end31.i.i.i.brcmnand_read_reg.exit.i.i.i.i_crit_edge ]
  %272 = ptrtoint ptr %reg_offsets.i354.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %reg_offsets.i354.i.i, align 8
  %arrayidx.i6.i.i.i.i = getelementptr i16, ptr %273, i32 %reg.2.i.i.i
  %274 = ptrtoint ptr %arrayidx.i6.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %arrayidx.i6.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %275)
  %tobool.not.i7.i.i.i.i = icmp eq i16 %275, 0
  br i1 %tobool.not.i7.i.i.i.i, label %brcmnand_read_reg.exit.i.i.i.i.if.end150.i_crit_edge, label %if.then.i11.i.i.i.i

brcmnand_read_reg.exit.i.i.i.i.if.end150.i_crit_edge: ; preds = %brcmnand_read_reg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150.i

if.then.i11.i.i.i.i:                              ; preds = %brcmnand_read_reg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %neg.i.i.i.i = xor i32 %shl.i365.i.i, -1
  %and.i.i.i.i = and i32 %retval.0.i.i.i.i.i, %neg.i.i.i.i
  %shl.i.i.i.i = shl nuw i32 %conv.i366.i.i, %shift.0.i.i.i
  %or.i.i.i.i = or i32 %and.i.i.i.i, %shl.i.i.i.i
  %conv.i8.i.i.i.i = zext i16 %275 to i32
  %nand_base.i.i9.i.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %257, i32 0, i32 2
  %276 = ptrtoint ptr %nand_base.i.i9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %nand_base.i.i9.i.i.i.i, align 4
  %add.ptr.i.i10.i.i.i.i = getelementptr i8, ptr %277, i32 %conv.i8.i.i.i.i
  %278 = call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i.i.i.i, i32 %278) #9, !srcloc !337
  br label %if.end150.i

if.end150.i:                                      ; preds = %if.then.i11.i.i.i.i, %brcmnand_read_reg.exit.i.i.i.i.if.end150.i_crit_edge, %brcmnand_set_sector_size_1k.exit.i.i.if.end150.i_crit_edge
  %279 = ptrtoint ptr %ctrl4.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %ctrl4.i, align 8
  %281 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %cs.i.i, align 4
  %reg_offsets.i.i280.i = getelementptr inbounds %struct.brcmnand_controller, ptr %280, i32 0, i32 33
  %283 = ptrtoint ptr %reg_offsets.i.i280.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %reg_offsets.i.i280.i, align 8
  %arrayidx.i.i281.i = getelementptr i16, ptr %284, i32 7
  %285 = ptrtoint ptr %arrayidx.i.i281.i to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %arrayidx.i.i281.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %282)
  %cmp.i.i282.i = icmp eq i32 %282, 0
  br i1 %cmp.i.i282.i, label %land.lhs.true.i.i285.i, label %if.end.i.i294.i

land.lhs.true.i.i285.i:                           ; preds = %if.end150.i
  %cs0_offsets.i.i283.i = getelementptr inbounds %struct.brcmnand_controller, ptr %280, i32 0, i32 36
  %287 = ptrtoint ptr %cs0_offsets.i.i283.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %cs0_offsets.i.i283.i, align 4
  %tobool.not.i.i284.i = icmp eq ptr %288, null
  br i1 %tobool.not.i.i284.i, label %if.end.thread42.i.i287.i, label %land.lhs.true.i.i285.i.brcmnand_set_ecc_enabled.exit.i_crit_edge

land.lhs.true.i.i285.i.brcmnand_set_ecc_enabled.exit.i_crit_edge: ; preds = %land.lhs.true.i.i285.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_set_ecc_enabled.exit.i

if.end.thread42.i.i287.i:                         ; preds = %land.lhs.true.i.i285.i
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i.i286.i = getelementptr inbounds %struct.brcmnand_controller, ptr %280, i32 0, i32 35
  %289 = ptrtoint ptr %cs_offsets43.i.i286.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %cs_offsets43.i.i286.i, align 8
  br label %brcmnand_set_ecc_enabled.exit.i

if.end.i.i294.i:                                  ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i.i288.i = getelementptr i16, ptr %284, i32 8
  %291 = ptrtoint ptr %arrayidx2.i.i288.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %arrayidx2.i.i288.i, align 2
  %cs_offsets.i.i289.i = getelementptr inbounds %struct.brcmnand_controller, ptr %280, i32 0, i32 35
  %293 = ptrtoint ptr %cs_offsets.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %cs_offsets.i.i289.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %292)
  %tobool8.not.i.i290.i = icmp eq i16 %292, 0
  %not.tobool8.not.i.i291.i = xor i1 %tobool8.not.i.i290.i, true
  %sub.i.i292.i = sext i1 %not.tobool8.not.i.i291.i to i32
  %spec.select.i293.i = add i32 %282, %sub.i.i292.i
  %spec.select22.i.i = select i1 %tobool8.not.i.i290.i, i16 %286, i16 %292
  br label %brcmnand_set_ecc_enabled.exit.i

brcmnand_set_ecc_enabled.exit.i:                  ; preds = %if.end.i.i294.i, %if.end.thread42.i.i287.i, %land.lhs.true.i.i285.i.brcmnand_set_ecc_enabled.exit.i_crit_edge
  %cs.sink.i.i.i = phi i32 [ %spec.select.i293.i, %if.end.i.i294.i ], [ 0, %if.end.thread42.i.i287.i ], [ 0, %land.lhs.true.i.i285.i.brcmnand_set_ecc_enabled.exit.i_crit_edge ]
  %.sink.i.pn.i.i = phi ptr [ %294, %if.end.i.i294.i ], [ %290, %if.end.thread42.i.i287.i ], [ %288, %land.lhs.true.i.i285.i.brcmnand_set_ecc_enabled.exit.i_crit_edge ]
  %conv15.sink.in.i.i.i = phi i16 [ %spec.select22.i.i, %if.end.i.i294.i ], [ %286, %if.end.thread42.i.i287.i ], [ %286, %land.lhs.true.i.i285.i.brcmnand_set_ecc_enabled.exit.i_crit_edge ]
  %cs_offs.041.sink.i.in.i.i = getelementptr i8, ptr %.sink.i.pn.i.i, i32 2
  %295 = ptrtoint ptr %cs_offs.041.sink.i.in.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %cs_offs.041.sink.i.i.i = load i8, ptr %cs_offs.041.sink.i.in.i.i, align 1
  %conv15.sink.i.i295.i = zext i16 %conv15.sink.in.i.i.i to i32
  %reg_spacing16.i.i296.i = getelementptr inbounds %struct.brcmnand_controller, ptr %280, i32 0, i32 34
  %296 = ptrtoint ptr %reg_spacing16.i.i296.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %reg_spacing16.i.i296.i, align 4
  %mul17.i.i.i = mul i32 %297, %cs.sink.i.i.i
  %conv19.i.i297.i = zext i8 %cs_offs.041.sink.i.i.i to i32
  %add18.i.i298.i = add nuw nsw i32 %conv19.i.i297.i, %conv15.sink.i.i295.i
  %add20.i.i.i = add i32 %add18.i.i298.i, %mul17.i.i.i
  %conv.i299.i = and i32 %add20.i.i.i, 65535
  %nand_base.i.i300.i = getelementptr inbounds %struct.brcmnand_controller, ptr %280, i32 0, i32 2
  %298 = ptrtoint ptr %nand_base.i.i300.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %nand_base.i.i300.i, align 4
  %add.ptr.i.i301.i = getelementptr i8, ptr %299, i32 %conv.i299.i
  %300 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i301.i) #9, !srcloc !336
  %301 = ptrtoint ptr %ecc_level129.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %ecc_level129.i, align 8
  %shl.i303.i = shl i32 %302, 16
  %303 = or i32 %300, 192
  %304 = call i32 @llvm.bswap.i32(i32 %303) #9
  %or3.i.i = or i32 %304, %shl.i303.i
  %305 = ptrtoint ptr %nand_base.i.i300.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %nand_base.i.i300.i, align 4
  %add.ptr.i21.i.i = getelementptr i8, ptr %306, i32 %conv.i299.i
  %307 = call i32 @llvm.bswap.i32(i32 %or3.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i.i, i32 %307) #9, !srcloc !337
  %308 = ptrtoint ptr %hwcfg.i to i32
  call void @__asan_load8_noabort(i32 %308)
  %309 = load i64, ptr %hwcfg.i, align 8
  %shr.i305.i = lshr i64 %309, 20
  %310 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %block_size.i, align 8
  %shr1.i.i = lshr i32 %311, 10
  %312 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %page_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %313)
  %cmp.i306.i = icmp ugt i32 %313, 1023
  %shr3.i.i = lshr i32 %313, 10
  %cond.i.i = select i1 %cmp.i306.i, i32 %shr3.i.i, i32 %313
  %cond7.i.i = select i1 %cmp.i306.i, ptr @.str.59, ptr @.str.60
  %314 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %20, align 8
  %316 = ptrtoint ptr %device_width.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %device_width.i, align 4
  %call.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %msg.i, ptr noundef nonnull @.str.58, i64 noundef %shr.i305.i, i32 noundef %shr1.i.i, i32 noundef %cond.i.i, ptr noundef nonnull %cond7.i.i, i32 noundef %315, i32 noundef %317) #9
  %add.ptr.i.i = getelementptr i8, ptr %msg.i, i32 %call.i.i
  %318 = ptrtoint ptr %ctrl4.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %ctrl4.i, align 8
  %nand_version.i.i309.i = getelementptr inbounds %struct.brcmnand_controller, ptr %319, i32 0, i32 7
  %320 = ptrtoint ptr %nand_version.i.i309.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %nand_version.i.i309.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1794, i32 %321)
  %cmp.i.i310.i = icmp slt i32 %321, 1794
  %322 = ptrtoint ptr %sector_size_1k130.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %sector_size_1k130.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %cmp1.i.i.i = icmp eq i32 %323, 0
  br i1 %cmp.i.i310.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %brcmnand_set_ecc_enabled.exit.i
  br i1 %cmp1.i.i.i, label %land.lhs.true.i.i312.i, label %if.then.i.i.i.if.then10.i.i_crit_edge

if.then.i.i.i.if.then10.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i.i

land.lhs.true.i.i312.i:                           ; preds = %if.then.i.i.i
  %324 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %325)
  %cmp2.i.i311.i = icmp eq i32 %325, 16
  br i1 %cmp2.i.i311.i, label %land.lhs.true.i.i312.i.is_hamming_ecc.exit.i.i_crit_edge, label %land.lhs.true.i.i312.i.if.else12.i.i_crit_edge

land.lhs.true.i.i312.i.if.else12.i.i_crit_edge:   ; preds = %land.lhs.true.i.i312.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else12.i.i

land.lhs.true.i.i312.i.is_hamming_ecc.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i312.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_hamming_ecc.exit.i.i

if.else.i.i.i:                                    ; preds = %brcmnand_set_ecc_enabled.exit.i
  br i1 %cmp1.i.i.i, label %land.rhs6.i.i.i, label %if.else.i.i.i.if.then10.i.i_crit_edge

if.else.i.i.i.if.then10.i.i_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i.i

land.rhs6.i.i.i:                                  ; preds = %if.else.i.i.i
  %326 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %20, align 8
  %328 = zext i32 %327 to i64
  call void @__sanitizer_cov_trace_switch(i64 %328, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %327, label %land.rhs6.i.i.i.if.else12.i.i_crit_edge [
    i32 16, label %land.rhs6.i.i.i.is_hamming_ecc.exit.i.i_crit_edge
    i32 28, label %land.rhs14.i.i.i
  ]

land.rhs6.i.i.i.is_hamming_ecc.exit.i.i_crit_edge: ; preds = %land.rhs6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_hamming_ecc.exit.i.i

land.rhs6.i.i.i.if.else12.i.i_crit_edge:          ; preds = %land.rhs6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else12.i.i

land.rhs14.i.i.i:                                 ; preds = %land.rhs6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_hamming_ecc.exit.i.i

is_hamming_ecc.exit.i.i:                          ; preds = %land.rhs14.i.i.i, %land.rhs6.i.i.i.is_hamming_ecc.exit.i.i_crit_edge, %land.lhs.true.i.i312.i.is_hamming_ecc.exit.i.i_crit_edge
  %.sink27.i.i.i = phi i32 [ 16, %land.rhs14.i.i.i ], [ 15, %land.lhs.true.i.i312.i.is_hamming_ecc.exit.i.i_crit_edge ], [ 15, %land.rhs6.i.i.i.is_hamming_ecc.exit.i.i_crit_edge ]
  %329 = ptrtoint ptr %ecc_level129.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %ecc_level129.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %330, i32 %.sink27.i.i.i)
  %cmp11.i.i.i = icmp eq i32 %330, %.sink27.i.i.i
  br i1 %cmp11.i.i.i, label %if.then.i.i, label %is_hamming_ecc.exit.i.i.if.else12.i.i_crit_edge

is_hamming_ecc.exit.i.i.if.else12.i.i_crit_edge:  ; preds = %is_hamming_ecc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else12.i.i

if.then.i.i:                                      ; preds = %is_hamming_ecc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %331 = call ptr @memcpy(ptr %add.ptr.i.i, ptr @.str.61, i32 14)
  br label %brcmnand_print_cfg.exit.i

if.then10.i.i:                                    ; preds = %if.else.i.i.i.if.then10.i.i_crit_edge, %if.then.i.i.i.if.then10.i.i_crit_edge
  %332 = ptrtoint ptr %ecc_level129.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %ecc_level129.i, align 8
  %shl.i314.i = shl i32 %333, 1
  %call11.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.62, i32 noundef %shl.i314.i) #9
  br label %brcmnand_print_cfg.exit.i

if.else12.i.i:                                    ; preds = %is_hamming_ecc.exit.i.i.if.else12.i.i_crit_edge, %land.rhs6.i.i.i.if.else12.i.i_crit_edge, %land.lhs.true.i.i312.i.if.else12.i.i_crit_edge
  %334 = ptrtoint ptr %ecc_level129.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %ecc_level129.i, align 8
  %call14.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.63, i32 noundef %335) #9
  br label %brcmnand_print_cfg.exit.i

brcmnand_print_cfg.exit.i:                        ; preds = %if.else12.i.i, %if.then10.i.i, %if.then.i.i
  %336 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %8, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %337, ptr noundef nonnull @.str.43, ptr noundef nonnull %msg.i) #12
  %338 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %cs.i.i, align 4
  %reg_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 33
  %340 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i315.i = getelementptr i16, ptr %341, i32 7
  %342 = ptrtoint ptr %arrayidx.i315.i to i32
  call void @__asan_load2_noabort(i32 %342)
  %343 = load i16, ptr %arrayidx.i315.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %cmp.i316.i = icmp eq i32 %339, 0
  br i1 %cmp.i316.i, label %land.lhs.true.i.i, label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %brcmnand_print_cfg.exit.i
  %cs0_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 36
  %344 = ptrtoint ptr %cs0_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %cs0_offsets.i.i, align 4
  %tobool.not.i317.i = icmp eq ptr %345, null
  br i1 %tobool.not.i317.i, label %if.end.thread42.i.i, label %land.lhs.true.i.i.if.end9_crit_edge

land.lhs.true.i.i.if.end9_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end.thread42.i.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 35
  %346 = ptrtoint ptr %cs_offsets43.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %cs_offsets43.i.i, align 8
  br label %if.end9

if.end.i.i:                                       ; preds = %brcmnand_print_cfg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i.i = getelementptr i16, ptr %341, i32 8
  %348 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %348)
  %349 = load i16, ptr %arrayidx2.i.i, align 2
  %cs_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 35
  %350 = ptrtoint ptr %cs_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %cs_offsets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %349)
  %tobool8.not.i318.i = icmp eq i16 %349, 0
  %not.tobool8.not.i318.i = xor i1 %tobool8.not.i318.i, true
  %sub.i319.i = sext i1 %not.tobool8.not.i318.i to i32
  %spec.select338.i = add i32 %339, %sub.i319.i
  %spec.select339.i = select i1 %tobool8.not.i318.i, i16 %343, i16 %349
  br label %if.end9

brcmnand_setup_dev.exit.thread:                   ; preds = %do.end100.i.i, %do.end88.i.i, %do.end60.i.i, %do.end.i.i, %do.end133.i, %do.end123.i, %do.end113.i, %do.end56.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oob_sector.i) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg.i) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i, %if.end.thread42.i.i, %land.lhs.true.i.i.if.end9_crit_edge
  %cs.sink.i.i = phi i32 [ %spec.select338.i, %if.end.i.i ], [ 0, %if.end.thread42.i.i ], [ 0, %land.lhs.true.i.i.if.end9_crit_edge ]
  %.sink.i.pn.i = phi ptr [ %351, %if.end.i.i ], [ %347, %if.end.thread42.i.i ], [ %345, %land.lhs.true.i.i.if.end9_crit_edge ]
  %conv15.sink.in.i.i = phi i16 [ %spec.select339.i, %if.end.i.i ], [ %343, %if.end.thread42.i.i ], [ %343, %land.lhs.true.i.i.if.end9_crit_edge ]
  %cs_offs.041.sink.i.in.i = getelementptr i8, ptr %.sink.i.pn.i, i32 2
  %352 = ptrtoint ptr %cs_offs.041.sink.i.in.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %cs_offs.041.sink.i.i = load i8, ptr %cs_offs.041.sink.i.in.i, align 1
  %conv15.sink.i.i = zext i16 %conv15.sink.in.i.i to i32
  %reg_spacing16.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 34
  %353 = ptrtoint ptr %reg_spacing16.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %reg_spacing16.i.i, align 4
  %mul17.i.i = mul i32 %354, %cs.sink.i.i
  %conv19.i320.i = zext i8 %cs_offs.041.sink.i.i to i32
  %add18.i.i = add nuw nsw i32 %conv19.i320.i, %conv15.sink.i.i
  %add20.i.i = add i32 %add18.i.i, %mul17.i.i
  %conv.i = and i32 %add20.i.i, 65535
  %nand_base.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 2
  %355 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i321.i = getelementptr i8, ptr %356, i32 %conv.i
  %357 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i321.i) #9, !srcloc !336
  %358 = and i32 %357, -13
  %359 = call i32 @llvm.bswap.i32(i32 %358) #9
  %nand_version.i = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 7
  %360 = ptrtoint ptr %nand_version.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %nand_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1793, i32 %361)
  %cmp160.i = icmp sgt i32 %361, 1793
  %or.i = or i32 %359, 134217728
  %spec.select.i = select i1 %cmp160.i, i32 %or.i, i32 %359
  %features165.i = getelementptr inbounds %struct.brcmnand_controller, ptr %8, i32 0, i32 43
  %362 = ptrtoint ptr %features165.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %features165.i, align 8
  %and166.i = and i32 %363, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166.i)
  %tobool167.not.i = icmp eq i32 %and166.i, 0
  %tmp.1.v.i = select i1 %tobool167.not.i, i32 -335544321, i32 -343932929
  %tmp.1.i = and i32 %tmp.1.v.i, %spec.select.i
  %364 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i323.i = getelementptr i8, ptr %365, i32 %conv.i
  %366 = call i32 @llvm.bswap.i32(i32 %tmp.1.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i323.i, i32 %366) #9, !srcloc !337
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oob_sector.i) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg.i) #9
  %367 = ptrtoint ptr %sector_size_1k130.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %sector_size_1k130.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %368)
  %tobool10.not = icmp eq i32 %368, 0
  %cond = select i1 %tobool10.not, i32 512, i32 1024
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %369 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %cond, ptr %size, align 8
  %bitflip_threshold = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 12
  %370 = ptrtoint ptr %bitflip_threshold to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 1, ptr %bitflip_threshold, align 4
  %371 = ptrtoint ptr %ecc_level129.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %ecc_level129.i, align 8
  %373 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %20, align 8
  %375 = ptrtoint ptr %sector_size_1k130.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %sector_size_1k130.i, align 4
  %shl.i = shl i32 %374, %376
  %377 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %page_size.i, align 4
  %379 = add i32 %376, 9
  %div45.i = lshr i32 %378, %379
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %376)
  %tobool.not.i33 = icmp ne i32 %376, 0
  %shl7.i = zext i1 %tobool.not.i33 to i32
  %spec.select.i34 = shl i32 %372, %shl7.i
  %380 = ptrtoint ptr %ctrl4.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %ctrl4.i, align 8
  %nand_version.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %381, i32 0, i32 7
  %382 = ptrtoint ptr %nand_version.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %nand_version.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1794, i32 %383)
  %cmp.i.i35 = icmp slt i32 %383, 1794
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %376)
  %cmp1.i.i = icmp eq i32 %376, 0
  br i1 %cmp.i.i35, label %if.then.i.i36, label %if.else.i.i38

if.then.i.i36:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %374)
  %cmp2.i.i = icmp eq i32 %374, 16
  %or.cond = select i1 %cmp1.i.i, i1 %cmp2.i.i, i1 false
  br i1 %or.cond, label %if.then.i.i36.is_hamming_ecc.exit.i_crit_edge, label %if.then.i.i36.if.end10.i_crit_edge

if.then.i.i36.if.end10.i_crit_edge:               ; preds = %if.then.i.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then.i.i36.is_hamming_ecc.exit.i_crit_edge:    ; preds = %if.then.i.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_hamming_ecc.exit.i

if.else.i.i38:                                    ; preds = %if.end9
  br i1 %cmp1.i.i, label %land.rhs6.i.i, label %if.else.i.i38.if.end10.i_crit_edge

if.else.i.i38.if.end10.i_crit_edge:               ; preds = %if.else.i.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

land.rhs6.i.i:                                    ; preds = %if.else.i.i38
  %384 = zext i32 %374 to i64
  call void @__sanitizer_cov_trace_switch(i64 %384, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %374, label %land.rhs6.i.i.if.end10.i_crit_edge [
    i32 16, label %land.rhs6.i.i.is_hamming_ecc.exit.i_crit_edge
    i32 28, label %land.rhs14.i.i
  ]

land.rhs6.i.i.is_hamming_ecc.exit.i_crit_edge:    ; preds = %land.rhs6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_hamming_ecc.exit.i

land.rhs6.i.i.if.end10.i_crit_edge:               ; preds = %land.rhs6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

land.rhs14.i.i:                                   ; preds = %land.rhs6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_hamming_ecc.exit.i

is_hamming_ecc.exit.i:                            ; preds = %land.rhs14.i.i, %land.rhs6.i.i.is_hamming_ecc.exit.i_crit_edge, %if.then.i.i36.is_hamming_ecc.exit.i_crit_edge
  %.sink27.i.i = phi i32 [ 16, %land.rhs14.i.i ], [ 15, %land.rhs6.i.i.is_hamming_ecc.exit.i_crit_edge ], [ 15, %if.then.i.i36.is_hamming_ecc.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %372, i32 %.sink27.i.i)
  %cmp11.i.i = icmp eq i32 %372, %.sink27.i.i
  br i1 %cmp11.i.i, label %if.then9.i, label %is_hamming_ecc.exit.i.if.end10.i_crit_edge

is_hamming_ecc.exit.i.if.end10.i_crit_edge:       ; preds = %is_hamming_ecc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then9.i:                                       ; preds = %is_hamming_ecc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i39 = mul i32 %div45.i, 3
  %bytes.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 33, i32 5
  %385 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %mul.i39, ptr %bytes.i, align 4
  %ooblayout1.i.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 15
  %386 = ptrtoint ptr %ooblayout1.i.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store ptr @brcmnand_hamming_ooblayout_ops, ptr %ooblayout1.i.i, align 8
  br label %brcmstb_choose_ecc_layout.exit

if.end10.i:                                       ; preds = %is_hamming_ecc.exit.i.if.end10.i_crit_edge, %land.rhs6.i.i.if.end10.i_crit_edge, %if.else.i.i38.if.end10.i_crit_edge, %if.then.i.i36.if.end10.i_crit_edge
  %mul11.i = mul i32 %spec.select.i34, 14
  %sub.i = add i32 %mul11.i, 7
  %div1246.i = lshr i32 %sub.i, 3
  %bytes13.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 33, i32 5
  %387 = ptrtoint ptr %bytes13.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 %div1246.i, ptr %bytes13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %378)
  %cmp.i = icmp eq i32 %378, 512
  %spec.select50.i = select i1 %cmp.i, ptr @brcmnand_bch_sp_ooblayout_ops, ptr @brcmnand_bch_lp_ooblayout_ops
  %388 = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 15
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_store4_noabort(i32 %389)
  store ptr %spec.select50.i, ptr %388, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div1246.i, i32 %shl.i)
  %cmp18.not.i = icmp slt i32 %div1246.i, %shl.i
  br i1 %cmp18.not.i, label %if.end10.i.brcmstb_choose_ecc_layout.exit_crit_edge, label %do.end.i40

if.end10.i.brcmstb_choose_ecc_layout.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmstb_choose_ecc_layout.exit

do.end.i40:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 2
  %390 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %391, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.64, i32 noundef %div1246.i, i32 noundef %shl.i) #12
  br label %brcmstb_choose_ecc_layout.exit

brcmstb_choose_ecc_layout.exit:                   ; preds = %do.end.i40, %if.end10.i.brcmstb_choose_ecc_layout.exit_crit_edge, %if.then9.i
  %retval.0.i41 = phi i32 [ 0, %if.then9.i ], [ -22, %do.end.i40 ], [ 0, %if.end10.i.brcmstb_choose_ecc_layout.exit_crit_edge ]
  %392 = ptrtoint ptr %ctrl4.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %ctrl4.i, align 8
  %nand_version.i42 = getelementptr inbounds %struct.brcmnand_controller, ptr %393, i32 0, i32 7
  %394 = ptrtoint ptr %nand_version.i42 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %nand_version.i42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1794, i32 %395)
  %cmp.i43 = icmp slt i32 %395, 1794
  %396 = ptrtoint ptr %sector_size_1k130.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %sector_size_1k130.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %397)
  %cmp1.i = icmp eq i32 %397, 0
  br i1 %cmp.i43, label %if.then.i45, label %if.else.i48

if.then.i45:                                      ; preds = %brcmstb_choose_ecc_layout.exit
  br i1 %cmp1.i, label %land.lhs.true.i47, label %if.then.i45.cleanup_crit_edge

if.then.i45.cleanup_crit_edge:                    ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i47:                                ; preds = %if.then.i45
  %398 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %399)
  %cmp2.i = icmp eq i32 %399, 16
  br i1 %cmp2.i, label %land.lhs.true.i47.is_hamming_ecc.exit_crit_edge, label %land.lhs.true.i47.cleanup_crit_edge

land.lhs.true.i47.cleanup_crit_edge:              ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i47.is_hamming_ecc.exit_crit_edge:  ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_hamming_ecc.exit

if.else.i48:                                      ; preds = %brcmstb_choose_ecc_layout.exit
  br i1 %cmp1.i, label %land.rhs6.i, label %if.else.i48.cleanup_crit_edge

if.else.i48.cleanup_crit_edge:                    ; preds = %if.else.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs6.i:                                      ; preds = %if.else.i48
  %400 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %20, align 8
  %402 = zext i32 %401 to i64
  call void @__sanitizer_cov_trace_switch(i64 %402, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %401, label %land.rhs6.i.cleanup_crit_edge [
    i32 16, label %land.rhs6.i.is_hamming_ecc.exit_crit_edge
    i32 28, label %land.rhs14.i
  ]

land.rhs6.i.is_hamming_ecc.exit_crit_edge:        ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_hamming_ecc.exit

land.rhs6.i.cleanup_crit_edge:                    ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs14.i:                                     ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_hamming_ecc.exit

is_hamming_ecc.exit:                              ; preds = %land.rhs14.i, %land.rhs6.i.is_hamming_ecc.exit_crit_edge, %land.lhs.true.i47.is_hamming_ecc.exit_crit_edge
  %.sink27.i = phi i32 [ 16, %land.rhs14.i ], [ 15, %land.lhs.true.i47.is_hamming_ecc.exit_crit_edge ], [ 15, %land.rhs6.i.is_hamming_ecc.exit_crit_edge ]
  %403 = ptrtoint ptr %ecc_level129.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %ecc_level129.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %404, i32 %.sink27.i)
  %cmp11.i = icmp eq i32 %404, %.sink27.i
  br i1 %cmp11.i, label %if.then14, label %is_hamming_ecc.exit.cleanup_crit_edge

is_hamming_ecc.exit.cleanup_crit_edge:            ; preds = %is_hamming_ecc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %is_hamming_ecc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %write_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 25
  %405 = ptrtoint ptr %write_oob to i32
  call void @__asan_store4_noabort(i32 %405)
  store ptr @brcmnand_write_oob_raw, ptr %write_oob, align 4
  %read_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 24
  %406 = ptrtoint ptr %read_oob to i32
  call void @__asan_store4_noabort(i32 %406)
  store ptr @brcmnand_read_oob_raw, ptr %read_oob, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %is_hamming_ecc.exit.cleanup_crit_edge, %land.rhs6.i.cleanup_crit_edge, %if.else.i48.cleanup_crit_edge, %land.lhs.true.i47.cleanup_crit_edge, %if.then.i45.cleanup_crit_edge, %brcmnand_setup_dev.exit.thread
  %retval.0 = phi i32 [ %retval.0.i41, %if.then14 ], [ %retval.0.i41, %is_hamming_ecc.exit.cleanup_crit_edge ], [ -6, %brcmnand_setup_dev.exit.thread ], [ %retval.0.i41, %land.lhs.true.i47.cleanup_crit_edge ], [ %retval.0.i41, %if.then.i45.cleanup_crit_edge ], [ %retval.0.i41, %if.else.i48.cleanup_crit_edge ], [ %retval.0.i41, %land.rhs6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmnand_write_oob_raw(ptr noundef %chip, i32 noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl1.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl1.i, align 8
  %cs.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cs.i, align 4
  %reg_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 33
  %6 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %7, i32 7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %cs0_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 36
  %10 = ptrtoint ptr %cs0_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cs0_offsets.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.thread42.i.i, label %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge

land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_set_ecc_enabled.exit

if.end.thread42.i.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 35
  %12 = ptrtoint ptr %cs_offsets43.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cs_offsets43.i.i, align 8
  br label %brcmnand_set_ecc_enabled.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i.i = getelementptr i16, ptr %7, i32 8
  %14 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx2.i.i, align 2
  %cs_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 35
  %16 = ptrtoint ptr %cs_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cs_offsets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool8.not.i.i = icmp eq i16 %15, 0
  %not.tobool8.not.i.i = xor i1 %tobool8.not.i.i, true
  %sub.i.i = sext i1 %not.tobool8.not.i.i to i32
  %spec.select.i = add i32 %5, %sub.i.i
  %spec.select22.i = select i1 %tobool8.not.i.i, i16 %9, i16 %15
  br label %brcmnand_set_ecc_enabled.exit

brcmnand_set_ecc_enabled.exit:                    ; preds = %if.end.i.i, %if.end.thread42.i.i, %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge
  %cs.sink.i.i = phi i32 [ %spec.select.i, %if.end.i.i ], [ 0, %if.end.thread42.i.i ], [ 0, %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge ]
  %.sink.i.pn.i = phi ptr [ %17, %if.end.i.i ], [ %13, %if.end.thread42.i.i ], [ %11, %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge ]
  %conv15.sink.in.i.i = phi i16 [ %spec.select22.i, %if.end.i.i ], [ %9, %if.end.thread42.i.i ], [ %9, %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge ]
  %cs_offs.041.sink.i.in.i = getelementptr i8, ptr %.sink.i.pn.i, i32 2
  %18 = ptrtoint ptr %cs_offs.041.sink.i.in.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %cs_offs.041.sink.i.i = load i8, ptr %cs_offs.041.sink.i.in.i, align 1
  %conv15.sink.i.i = zext i16 %conv15.sink.in.i.i to i32
  %reg_spacing16.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 34
  %19 = ptrtoint ptr %reg_spacing16.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_spacing16.i.i, align 4
  %mul17.i.i = mul i32 %20, %cs.sink.i.i
  %conv19.i.i = zext i8 %cs_offs.041.sink.i.i to i32
  %add18.i.i = add nuw nsw i32 %conv19.i.i, %conv15.sink.i.i
  %add20.i.i = add i32 %add18.i.i, %mul17.i.i
  %conv.i = and i32 %add20.i.i, 65535
  %nand_base.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %conv.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !336
  %24 = and i32 %23, -4033
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %nand_version.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 7
  %26 = ptrtoint ptr %nand_version.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nand_version.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %27)
  %cmp.i19.i = icmp sgt i32 %27, 1535
  %cond.i.i = select i1 %cmp.i19.i, i32 2031616, i32 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1793, i32 %27)
  %cmp2.i.i = icmp sgt i32 %27, 1793
  %or.i.i = or i32 %cond.i.i, 57344
  %spec.select.i.i = select i1 %cmp2.i.i, i32 %or.i.i, i32 %cond.i.i
  %neg5.i = xor i32 %spec.select.i.i, -1
  %and6.i = and i32 %25, %neg5.i
  %28 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %29, i32 %conv.i
  %30 = tail call i32 @llvm.bswap.i32(i32 %and6.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %30) #9, !srcloc !337
  %conv = sext i32 %page to i64
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 17
  %31 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %page_shift, align 4
  %sh_prom = zext i32 %32 to i64
  %shl = shl i64 %conv, %sh_prom
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %33 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %oob_poi, align 4
  %call2 = tail call fastcc i32 @brcmnand_write(ptr noundef %chip, ptr noundef %chip, i64 noundef %shl, ptr noundef null, ptr noundef %34)
  %35 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctrl1.i, align 8
  %37 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cs.i, align 4
  %reg_offsets.i.i10 = getelementptr inbounds %struct.brcmnand_controller, ptr %36, i32 0, i32 33
  %39 = ptrtoint ptr %reg_offsets.i.i10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_offsets.i.i10, align 8
  %arrayidx.i.i11 = getelementptr i16, ptr %40, i32 7
  %41 = ptrtoint ptr %arrayidx.i.i11 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.i.i11, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i12 = icmp eq i32 %38, 0
  br i1 %cmp.i.i12, label %land.lhs.true.i.i15, label %if.end.i.i25

land.lhs.true.i.i15:                              ; preds = %brcmnand_set_ecc_enabled.exit
  %cs0_offsets.i.i13 = getelementptr inbounds %struct.brcmnand_controller, ptr %36, i32 0, i32 36
  %43 = ptrtoint ptr %cs0_offsets.i.i13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cs0_offsets.i.i13, align 4
  %tobool.not.i.i14 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i14, label %if.end.thread42.i.i17, label %land.lhs.true.i.i15.brcmnand_set_ecc_enabled.exit41_crit_edge

land.lhs.true.i.i15.brcmnand_set_ecc_enabled.exit41_crit_edge: ; preds = %land.lhs.true.i.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_set_ecc_enabled.exit41

if.end.thread42.i.i17:                            ; preds = %land.lhs.true.i.i15
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i.i16 = getelementptr inbounds %struct.brcmnand_controller, ptr %36, i32 0, i32 35
  %45 = ptrtoint ptr %cs_offsets43.i.i16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cs_offsets43.i.i16, align 8
  br label %brcmnand_set_ecc_enabled.exit41

if.end.i.i25:                                     ; preds = %brcmnand_set_ecc_enabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i.i18 = getelementptr i16, ptr %40, i32 8
  %47 = ptrtoint ptr %arrayidx2.i.i18 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx2.i.i18, align 2
  %cs_offsets.i.i19 = getelementptr inbounds %struct.brcmnand_controller, ptr %36, i32 0, i32 35
  %49 = ptrtoint ptr %cs_offsets.i.i19 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cs_offsets.i.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool8.not.i.i20 = icmp eq i16 %48, 0
  %not.tobool8.not.i.i21 = xor i1 %tobool8.not.i.i20, true
  %sub.i.i22 = sext i1 %not.tobool8.not.i.i21 to i32
  %spec.select.i23 = add i32 %38, %sub.i.i22
  %spec.select22.i24 = select i1 %tobool8.not.i.i20, i16 %42, i16 %48
  br label %brcmnand_set_ecc_enabled.exit41

brcmnand_set_ecc_enabled.exit41:                  ; preds = %if.end.i.i25, %if.end.thread42.i.i17, %land.lhs.true.i.i15.brcmnand_set_ecc_enabled.exit41_crit_edge
  %cs.sink.i.i26 = phi i32 [ %spec.select.i23, %if.end.i.i25 ], [ 0, %if.end.thread42.i.i17 ], [ 0, %land.lhs.true.i.i15.brcmnand_set_ecc_enabled.exit41_crit_edge ]
  %.sink.i.pn.i27 = phi ptr [ %50, %if.end.i.i25 ], [ %46, %if.end.thread42.i.i17 ], [ %44, %land.lhs.true.i.i15.brcmnand_set_ecc_enabled.exit41_crit_edge ]
  %conv15.sink.in.i.i28 = phi i16 [ %spec.select22.i24, %if.end.i.i25 ], [ %42, %if.end.thread42.i.i17 ], [ %42, %land.lhs.true.i.i15.brcmnand_set_ecc_enabled.exit41_crit_edge ]
  %cs_offs.041.sink.i.in.i29 = getelementptr i8, ptr %.sink.i.pn.i27, i32 2
  %51 = ptrtoint ptr %cs_offs.041.sink.i.in.i29 to i32
  call void @__asan_load1_noabort(i32 %51)
  %cs_offs.041.sink.i.i30 = load i8, ptr %cs_offs.041.sink.i.in.i29, align 1
  %conv15.sink.i.i31 = zext i16 %conv15.sink.in.i.i28 to i32
  %reg_spacing16.i.i32 = getelementptr inbounds %struct.brcmnand_controller, ptr %36, i32 0, i32 34
  %52 = ptrtoint ptr %reg_spacing16.i.i32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reg_spacing16.i.i32, align 4
  %mul17.i.i33 = mul i32 %53, %cs.sink.i.i26
  %conv19.i.i34 = zext i8 %cs_offs.041.sink.i.i30 to i32
  %add18.i.i35 = add nuw nsw i32 %conv19.i.i34, %conv15.sink.i.i31
  %add20.i.i36 = add i32 %add18.i.i35, %mul17.i.i33
  %conv.i37 = and i32 %add20.i.i36, 65535
  %nand_base.i.i38 = getelementptr inbounds %struct.brcmnand_controller, ptr %36, i32 0, i32 2
  %54 = ptrtoint ptr %nand_base.i.i38 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nand_base.i.i38, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %55, i32 %conv.i37
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39) #9, !srcloc !336
  %ecc_level.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 9
  %57 = ptrtoint ptr %ecc_level.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ecc_level.i, align 8
  %shl.i = shl i32 %58, 16
  %59 = or i32 %56, 192
  %60 = call i32 @llvm.bswap.i32(i32 %59)
  %or3.i = or i32 %60, %shl.i
  %61 = ptrtoint ptr %nand_base.i.i38 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %nand_base.i.i38, align 4
  %add.ptr.i21.i40 = getelementptr i8, ptr %62, i32 %conv.i37
  %63 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i40, i32 %63) #9, !srcloc !337
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmnand_read_oob_raw(ptr noundef %chip, i32 noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl1.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl1.i, align 8
  %cs.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cs.i, align 4
  %reg_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 33
  %6 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %7, i32 7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %cs0_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 36
  %10 = ptrtoint ptr %cs0_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cs0_offsets.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.thread42.i.i, label %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge

land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_set_ecc_enabled.exit

if.end.thread42.i.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 35
  %12 = ptrtoint ptr %cs_offsets43.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cs_offsets43.i.i, align 8
  br label %brcmnand_set_ecc_enabled.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i.i = getelementptr i16, ptr %7, i32 8
  %14 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx2.i.i, align 2
  %cs_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 35
  %16 = ptrtoint ptr %cs_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cs_offsets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool8.not.i.i = icmp eq i16 %15, 0
  %not.tobool8.not.i.i = xor i1 %tobool8.not.i.i, true
  %sub.i.i = sext i1 %not.tobool8.not.i.i to i32
  %spec.select.i = add i32 %5, %sub.i.i
  %spec.select22.i = select i1 %tobool8.not.i.i, i16 %9, i16 %15
  br label %brcmnand_set_ecc_enabled.exit

brcmnand_set_ecc_enabled.exit:                    ; preds = %if.end.i.i, %if.end.thread42.i.i, %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge
  %cs.sink.i.i = phi i32 [ %spec.select.i, %if.end.i.i ], [ 0, %if.end.thread42.i.i ], [ 0, %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge ]
  %.sink.i.pn.i = phi ptr [ %17, %if.end.i.i ], [ %13, %if.end.thread42.i.i ], [ %11, %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge ]
  %conv15.sink.in.i.i = phi i16 [ %spec.select22.i, %if.end.i.i ], [ %9, %if.end.thread42.i.i ], [ %9, %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge ]
  %cs_offs.041.sink.i.in.i = getelementptr i8, ptr %.sink.i.pn.i, i32 2
  %18 = ptrtoint ptr %cs_offs.041.sink.i.in.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %cs_offs.041.sink.i.i = load i8, ptr %cs_offs.041.sink.i.in.i, align 1
  %conv15.sink.i.i = zext i16 %conv15.sink.in.i.i to i32
  %reg_spacing16.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 34
  %19 = ptrtoint ptr %reg_spacing16.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_spacing16.i.i, align 4
  %mul17.i.i = mul i32 %20, %cs.sink.i.i
  %conv19.i.i = zext i8 %cs_offs.041.sink.i.i to i32
  %add18.i.i = add nuw nsw i32 %conv19.i.i, %conv15.sink.i.i
  %add20.i.i = add i32 %add18.i.i, %mul17.i.i
  %conv.i = and i32 %add20.i.i, 65535
  %nand_base.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %conv.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !336
  %24 = and i32 %23, -4033
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %nand_version.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 7
  %26 = ptrtoint ptr %nand_version.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nand_version.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %27)
  %cmp.i19.i = icmp sgt i32 %27, 1535
  %cond.i.i = select i1 %cmp.i19.i, i32 2031616, i32 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1793, i32 %27)
  %cmp2.i.i = icmp sgt i32 %27, 1793
  %or.i.i = or i32 %cond.i.i, 57344
  %spec.select.i.i = select i1 %cmp2.i.i, i32 %or.i.i, i32 %cond.i.i
  %neg5.i = xor i32 %spec.select.i.i, -1
  %and6.i = and i32 %25, %neg5.i
  %28 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %29, i32 %conv.i
  %30 = tail call i32 @llvm.bswap.i32(i32 %and6.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %30) #9, !srcloc !337
  %conv = sext i32 %page to i64
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 17
  %31 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %page_shift, align 4
  %sh_prom = zext i32 %32 to i64
  %shl = shl i64 %conv, %sh_prom
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %33 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %writesize, align 4
  %shr = lshr i32 %34, 9
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %35 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %oob_poi, align 4
  %call2 = tail call fastcc i32 @brcmnand_read(ptr noundef %chip, ptr noundef %chip, i64 noundef %shl, i32 noundef %shr, ptr noundef null, ptr noundef %36)
  %37 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctrl1.i, align 8
  %39 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cs.i, align 4
  %reg_offsets.i.i11 = getelementptr inbounds %struct.brcmnand_controller, ptr %38, i32 0, i32 33
  %41 = ptrtoint ptr %reg_offsets.i.i11 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_offsets.i.i11, align 8
  %arrayidx.i.i12 = getelementptr i16, ptr %42, i32 7
  %43 = ptrtoint ptr %arrayidx.i.i12 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.i.i12, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i13 = icmp eq i32 %40, 0
  br i1 %cmp.i.i13, label %land.lhs.true.i.i16, label %if.end.i.i26

land.lhs.true.i.i16:                              ; preds = %brcmnand_set_ecc_enabled.exit
  %cs0_offsets.i.i14 = getelementptr inbounds %struct.brcmnand_controller, ptr %38, i32 0, i32 36
  %45 = ptrtoint ptr %cs0_offsets.i.i14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cs0_offsets.i.i14, align 4
  %tobool.not.i.i15 = icmp eq ptr %46, null
  br i1 %tobool.not.i.i15, label %if.end.thread42.i.i18, label %land.lhs.true.i.i16.brcmnand_set_ecc_enabled.exit42_crit_edge

land.lhs.true.i.i16.brcmnand_set_ecc_enabled.exit42_crit_edge: ; preds = %land.lhs.true.i.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_set_ecc_enabled.exit42

if.end.thread42.i.i18:                            ; preds = %land.lhs.true.i.i16
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i.i17 = getelementptr inbounds %struct.brcmnand_controller, ptr %38, i32 0, i32 35
  %47 = ptrtoint ptr %cs_offsets43.i.i17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cs_offsets43.i.i17, align 8
  br label %brcmnand_set_ecc_enabled.exit42

if.end.i.i26:                                     ; preds = %brcmnand_set_ecc_enabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i.i19 = getelementptr i16, ptr %42, i32 8
  %49 = ptrtoint ptr %arrayidx2.i.i19 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx2.i.i19, align 2
  %cs_offsets.i.i20 = getelementptr inbounds %struct.brcmnand_controller, ptr %38, i32 0, i32 35
  %51 = ptrtoint ptr %cs_offsets.i.i20 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cs_offsets.i.i20, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool8.not.i.i21 = icmp eq i16 %50, 0
  %not.tobool8.not.i.i22 = xor i1 %tobool8.not.i.i21, true
  %sub.i.i23 = sext i1 %not.tobool8.not.i.i22 to i32
  %spec.select.i24 = add i32 %40, %sub.i.i23
  %spec.select22.i25 = select i1 %tobool8.not.i.i21, i16 %44, i16 %50
  br label %brcmnand_set_ecc_enabled.exit42

brcmnand_set_ecc_enabled.exit42:                  ; preds = %if.end.i.i26, %if.end.thread42.i.i18, %land.lhs.true.i.i16.brcmnand_set_ecc_enabled.exit42_crit_edge
  %cs.sink.i.i27 = phi i32 [ %spec.select.i24, %if.end.i.i26 ], [ 0, %if.end.thread42.i.i18 ], [ 0, %land.lhs.true.i.i16.brcmnand_set_ecc_enabled.exit42_crit_edge ]
  %.sink.i.pn.i28 = phi ptr [ %52, %if.end.i.i26 ], [ %48, %if.end.thread42.i.i18 ], [ %46, %land.lhs.true.i.i16.brcmnand_set_ecc_enabled.exit42_crit_edge ]
  %conv15.sink.in.i.i29 = phi i16 [ %spec.select22.i25, %if.end.i.i26 ], [ %44, %if.end.thread42.i.i18 ], [ %44, %land.lhs.true.i.i16.brcmnand_set_ecc_enabled.exit42_crit_edge ]
  %cs_offs.041.sink.i.in.i30 = getelementptr i8, ptr %.sink.i.pn.i28, i32 2
  %53 = ptrtoint ptr %cs_offs.041.sink.i.in.i30 to i32
  call void @__asan_load1_noabort(i32 %53)
  %cs_offs.041.sink.i.i31 = load i8, ptr %cs_offs.041.sink.i.in.i30, align 1
  %conv15.sink.i.i32 = zext i16 %conv15.sink.in.i.i29 to i32
  %reg_spacing16.i.i33 = getelementptr inbounds %struct.brcmnand_controller, ptr %38, i32 0, i32 34
  %54 = ptrtoint ptr %reg_spacing16.i.i33 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reg_spacing16.i.i33, align 4
  %mul17.i.i34 = mul i32 %55, %cs.sink.i.i27
  %conv19.i.i35 = zext i8 %cs_offs.041.sink.i.i31 to i32
  %add18.i.i36 = add nuw nsw i32 %conv19.i.i35, %conv15.sink.i.i32
  %add20.i.i37 = add i32 %add18.i.i36, %mul17.i.i34
  %conv.i38 = and i32 %add20.i.i37, 65535
  %nand_base.i.i39 = getelementptr inbounds %struct.brcmnand_controller, ptr %38, i32 0, i32 2
  %56 = ptrtoint ptr %nand_base.i.i39 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %nand_base.i.i39, align 4
  %add.ptr.i.i40 = getelementptr i8, ptr %57, i32 %conv.i38
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40) #9, !srcloc !336
  %ecc_level.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 9
  %59 = ptrtoint ptr %ecc_level.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ecc_level.i, align 8
  %shl.i = shl i32 %60, 16
  %61 = or i32 %58, 192
  %62 = call i32 @llvm.bswap.i32(i32 %61)
  %or3.i = or i32 %62, %shl.i
  %63 = ptrtoint ptr %nand_base.i.i39 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %nand_base.i.i39, align 4
  %add.ptr.i21.i41 = getelementptr i8, ptr %64, i32 %conv.i38
  %65 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i41, i32 %65) #9, !srcloc !337
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcmnand_hamming_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %sector_size_1k = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %sector_size_1k to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sector_size_1k, align 4
  %page_size = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_size, align 4
  %6 = add i32 %3, 9
  %div13 = lshr i32 %5, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %div13, i32 %section)
  %cmp.not = icmp sgt i32 %div13, %section
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %spare_area_size = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 3
  %7 = ptrtoint ptr %spare_area_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %spare_area_size, align 8
  %shl = shl i32 %8, %3
  %mul = mul i32 %shl, %section
  %add = add i32 %mul, 6
  %9 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcmnand_hamming_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef %oobregion) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %spare_area_size = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %spare_area_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spare_area_size, align 8
  %sector_size_1k = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %sector_size_1k to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sector_size_1k, align 4
  %shl = shl i32 %3, %5
  %page_size = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_size, align 4
  %8 = add i32 %5, 9
  %div41 = lshr i32 %7, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %div41, i32 %section)
  %cmp = icmp slt i32 %div41, %section
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = mul i32 %shl, %section
  call void @__sanitizer_cov_trace_cmp4(i32 %div41, i32 %section)
  %cmp4 = icmp sgt i32 %div41, %section
  %add = add i32 %mul, 6
  %spec.select = select i1 %cmp4, i32 %add, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %section, -1
  %mul8 = mul i32 %shl, %sub
  %add9 = add i32 %mul8, 9
  %9 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add9, ptr %oobregion, align 4
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %7)
  %cmp11 = icmp ugt i32 %7, 512
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %oobregion, align 4
  br label %if.end17

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %oobregion, align 4
  %dec = add i32 %spec.select, -1
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then12, %if.then7
  %next.1 = phi i32 [ %spec.select, %if.then7 ], [ %spec.select, %if.then12 ], [ %dec, %if.else14 ]
  %12 = ptrtoint ptr %oobregion to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oobregion, align 4
  %sub19 = sub i32 %next.1, %13
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %14 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub19, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcmnand_bch_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %sector_size_1k = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %sector_size_1k to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sector_size_1k, align 4
  %page_size = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_size, align 4
  %6 = add i32 %3, 9
  %div17 = lshr i32 %5, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %div17, i32 %section)
  %cmp.not = icmp sgt i32 %div17, %section
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %spare_area_size = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 3
  %7 = ptrtoint ptr %spare_area_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %spare_area_size, align 8
  %shl = shl i32 %8, %3
  %add = add nsw i32 %section, 1
  %mul = mul i32 %shl, %add
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %9 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytes, align 4
  %sub = sub i32 %mul, %10
  %11 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %oobregion, align 4
  %12 = load i32, ptr %bytes, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %13 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcmnand_bch_ooblayout_free_sp(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %spare_area_size = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %spare_area_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spare_area_size, align 8
  %sector_size_1k = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %sector_size_1k to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sector_size_1k, align 4
  %shl = shl i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %section)
  %cmp = icmp sgt i32 %section, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %6 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytes, align 4
  %sub = sub i32 %shl, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub)
  %cmp2 = icmp slt i32 %sub, 6
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub)
  %cmp7 = icmp eq i32 %sub, 6
  %or.cond = select i1 %tobool.not.not, i1 %cmp7, i1 false
  br i1 %or.cond, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  br i1 %tobool.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %oobregion, align 4
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6, ptr %oobregion, align 4
  %10 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytes, align 4
  %sub13 = add i32 %shl, -6
  %sub14 = sub i32 %sub13, %11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then9
  %.sink = phi i32 [ 5, %if.then9 ], [ %sub14, %if.else ]
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %12 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %lor.lhs.false3.cleanup_crit_edge ], [ -34, %lor.lhs.false.cleanup_crit_edge ], [ -34, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcmnand_bch_ooblayout_free_lp(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef %oobregion) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %spare_area_size = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %spare_area_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spare_area_size, align 8
  %sector_size_1k = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %sector_size_1k to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sector_size_1k, align 4
  %shl = shl i32 %3, %5
  %page_size = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_size, align 4
  %8 = add i32 %5, 9
  %div29 = lshr i32 %7, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %div29, i32 %section)
  %cmp.not = icmp sgt i32 %div29, %section
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %9 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %10)
  %cmp4.not = icmp sgt i32 %shl, %10
  br i1 %cmp4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mul = mul i32 %shl, %section
  %11 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %oobregion, align 4
  %12 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bytes, align 4
  %sub = sub i32 %shl, %13
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %14 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.then9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nuw nsw i32 %mul, 1
  %15 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc, ptr %oobregion, align 4
  %dec = add i32 %sub, -1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dec, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmnand_write(ptr noundef %mtd, ptr nocapture noundef readonly %chip, i64 noundef %addr, ptr noundef %buf, ptr noundef %oob) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl1 = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl1, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  %shr = lshr i32 %5, 9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmnand_write.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmnand_write, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !340

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmnand_write.__UNIQUE_ID_ddebug272, ptr noundef %7, ptr noundef nonnull @.str.67, i64 noundef %addr, ptr noundef %buf) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %buf to i32
  %and = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.end.if.end18_crit_edge, label %do.end15, !prof !338

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.68, ptr noundef %buf) #12
  %and17 = and i32 %8, -4
  %11 = inttoptr i32 %and17 to ptr
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %do.end.if.end18_crit_edge
  %buf.addr.0 = phi ptr [ %11, %do.end15 ], [ %buf, %do.end.if.end18_crit_edge ]
  tail call fastcc void @brcmnand_wp(ptr noundef %mtd, i32 noundef 0)
  %max_oob = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 42
  %12 = ptrtoint ptr %max_oob to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_oob, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp161.not = icmp eq i32 %13, 0
  br i1 %cmp161.not, label %if.end18.for.end_crit_edge, label %oob_reg_write.exit.lr.ph

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

oob_reg_write.exit.lr.ph:                         ; preds = %if.end18
  %reg_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 33
  %nand_base.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  br label %oob_reg_write.exit

oob_reg_write.exit:                               ; preds = %oob_reg_write.exit.oob_reg_write.exit_crit_edge, %oob_reg_write.exit.lr.ph
  %i.0162 = phi i32 [ 0, %oob_reg_write.exit.lr.ph ], [ %add, %oob_reg_write.exit.oob_reg_write.exit_crit_edge ]
  %14 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_offsets.i, align 8
  %arrayidx2.i = getelementptr i16, ptr %15, i32 24
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx2.i, align 2
  %arrayidx.i = getelementptr i16, ptr %15, i32 23
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0162)
  %cmp3.i = icmp ult i32 %i.0162, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  %or.cond.i = select i1 %cmp3.i, i1 true, i1 %tobool.not.i
  %20 = trunc i32 %i.0162 to i16
  %21 = add i16 %20, -16
  %.sink23.i = select i1 %or.cond.i, i16 %20, i16 %21
  %.sink.i = select i1 %or.cond.i, i16 %19, i16 %17
  %conv10.i = add i16 %.sink.i, %.sink23.i
  %conv12.i = zext i16 %conv10.i to i32
  %22 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %conv12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #9, !srcloc !337
  %add = add i32 %i.0162, 4
  %24 = ptrtoint ptr %max_oob to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_oob, align 4
  %cmp = icmp ult i32 %add, %25
  br i1 %cmp, label %oob_reg_write.exit.oob_reg_write.exit_crit_edge, label %oob_reg_write.exit.for.end_crit_edge

oob_reg_write.exit.for.end_crit_edge:             ; preds = %oob_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

oob_reg_write.exit.oob_reg_write.exit_crit_edge:  ; preds = %oob_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %oob_reg_write.exit

for.end:                                          ; preds = %oob_reg_write.exit.for.end_crit_edge, %if.end18.for.end_crit_edge
  %oops_panic_write = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 50
  %26 = ptrtoint ptr %oops_panic_write to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %oops_panic_write, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool19.not = icmp eq i8 %27, 0
  br i1 %tobool19.not, label %for.end.if.end21_crit_edge, label %if.then20

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %for.end
  %pio_poll_mode.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 49
  %28 = ptrtoint ptr %pio_poll_mode.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pio_poll_mode.i, align 8, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i123 = icmp eq i8 %29, 0
  br i1 %tobool.not.i123, label %if.end.i124, label %if.then20.if.end21_crit_edge

if.then20.if.end21_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end.i124:                                      ; preds = %if.then20
  %flash_dma_base.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %flash_dma_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %flash_dma_base.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %31, null
  br i1 %tobool.i.not.i, label %if.end.i124.if.end2.i_crit_edge, label %if.then1.i

if.end.i124.if.end2.i_crit_edge:                  ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %flash_dma_base.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %flash_dma_base.i.i, align 4
  %dma_irq.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 6
  %33 = ptrtoint ptr %dma_irq.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_irq.i, align 4
  tail call void @disable_irq(i32 noundef %34) #9
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i124.if.end2.i_crit_edge
  %irq.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 5
  %35 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq.i, align 8
  tail call void @disable_irq(i32 noundef %36) #9
  %37 = ptrtoint ptr %pio_poll_mode.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %pio_poll_mode.i, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end2.i, %if.then20.if.end21_crit_edge, %for.end.if.end21_crit_edge
  %flash_dma_base.i.i125 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 4
  %38 = ptrtoint ptr %flash_dma_base.i.i125 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %flash_dma_base.i.i125, align 4
  %tobool.i.not.i126 = icmp eq ptr %39, null
  br i1 %tobool.i.not.i126, label %use_dma.exit, label %if.end21.land.lhs.true_crit_edge

if.end21.land.lhs.true_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

use_dma.exit:                                     ; preds = %if.end21
  %edu_base.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 18
  %40 = ptrtoint ptr %edu_base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %edu_base.i.i, align 8
  %tobool.i3.i.not = icmp eq ptr %41, null
  br i1 %tobool.i3.i.not, label %use_dma.exit.if.end33_crit_edge, label %use_dma.exit.land.lhs.true_crit_edge

use_dma.exit.land.lhs.true_crit_edge:             ; preds = %use_dma.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

use_dma.exit.if.end33_crit_edge:                  ; preds = %use_dma.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

land.lhs.true:                                    ; preds = %use_dma.exit.land.lhs.true_crit_edge, %if.end21.land.lhs.true_crit_edge
  %edu_base.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 18
  %42 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %edu_base.i, align 8
  %tobool.i = icmp eq ptr %43, null
  %tobool24.not = icmp ne ptr %oob, null
  %or.cond.not = and i1 %tobool24.not, %tobool.i
  %tobool.not.i127 = icmp eq ptr %buf.addr.0, null
  %or.cond158 = or i1 %tobool.not.i127, %or.cond.not
  br i1 %or.cond158, label %land.lhs.true.if.end33_crit_edge, label %land.lhs.true.i

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %buf.addr.0) #9
  %44 = ptrtoint ptr %buf.addr.0 to i32
  %and.i = and i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  %45 = or i1 %cmp.i, %call.i
  br i1 %45, label %land.lhs.true.i.if.end33_crit_edge, label %if.then27

land.lhs.true.i.if.end33_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then27:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %dma_trans = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 31
  %46 = ptrtoint ptr %dma_trans to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_trans, align 4
  %48 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %writesize, align 4
  %call29 = tail call i32 %47(ptr noundef %1, i64 noundef %addr, ptr noundef nonnull %buf.addr.0, ptr noundef %oob, i32 noundef %49, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  %spec.select = select i1 %tobool30.not, i32 0, i32 -5
  br label %out

if.end33:                                         ; preds = %land.lhs.true.i.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %use_dma.exit.if.end33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %5)
  %cmp35166.not = icmp ult i32 %5, 512
  br i1 %cmp35166.not, label %if.end33.out_crit_edge, label %for.body36.lr.ph

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body36.lr.ph:                                 ; preds = %if.end33
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %soc = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 8
  %nand_fc.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 3
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %sector_size_1k = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 8
  %reg_offsets.i.i148 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 33
  %nand_base.i.i.i149 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body36

for.body36:                                       ; preds = %for.inc68.for.body36_crit_edge, %for.body36.lr.ph
  %addr.addr.0172 = phi i64 [ %addr, %for.body36.lr.ph ], [ %add70, %for.inc68.for.body36_crit_edge ]
  %buf.addr.1171 = phi ptr [ %buf.addr.0, %for.body36.lr.ph ], [ %buf.addr.3157, %for.inc68.for.body36_crit_edge ]
  %i.1169 = phi i32 [ 0, %for.body36.lr.ph ], [ %inc69, %for.inc68.for.body36_crit_edge ]
  %oob.addr.0167 = phi ptr [ %oob, %for.body36.lr.ph ], [ %oob.addr.1, %for.inc68.for.body36_crit_edge ]
  %50 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv.i.i, align 8
  %ctrl2.i = getelementptr inbounds %struct.brcmnand_host, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctrl2.i, align 8
  %reg_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %53, i32 0, i32 33
  %54 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %55, i32 1
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not.i.i = icmp eq i16 %57, 0
  br i1 %tobool.not.i.i, label %for.body36.brcmnand_write_reg.exit.i_crit_edge, label %if.then.i.i

for.body36.brcmnand_write_reg.exit.i_crit_edge:   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit.i

if.then.i.i:                                      ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i = lshr i64 %addr.addr.0172, 32
  %58 = trunc i64 %shr.i to i32
  %59 = and i32 %58, 65535
  %cs.i = getelementptr inbounds %struct.brcmnand_host, ptr %51, i32 0, i32 3
  %60 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cs.i, align 4
  %shl.i = shl i32 %61, 16
  %conv3.i = or i32 %shl.i, %59
  %conv.i.i = zext i16 %57 to i32
  %nand_base.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %53, i32 0, i32 2
  %62 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %63, i32 %conv.i.i
  %64 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %64) #9, !srcloc !337
  br label %brcmnand_write_reg.exit.i

brcmnand_write_reg.exit.i:                        ; preds = %if.then.i.i, %for.body36.brcmnand_write_reg.exit.i_crit_edge
  %65 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i15.i = getelementptr i16, ptr %66, i32 1
  %67 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx.i15.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool.not.i16.i = icmp eq i16 %68, 0
  br i1 %tobool.not.i16.i, label %brcmnand_write_reg.exit.i.brcmnand_read_reg.exit.i_crit_edge, label %if.then.i20.i

brcmnand_write_reg.exit.i.brcmnand_read_reg.exit.i_crit_edge: ; preds = %brcmnand_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit.i

if.then.i20.i:                                    ; preds = %brcmnand_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i17.i = zext i16 %68 to i32
  %nand_base.i.i18.i = getelementptr inbounds %struct.brcmnand_controller, ptr %53, i32 0, i32 2
  %69 = ptrtoint ptr %nand_base.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %nand_base.i.i18.i, align 4
  %add.ptr.i.i19.i = getelementptr i8, ptr %70, i32 %conv.i17.i
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19.i) #9, !srcloc !336
  br label %brcmnand_read_reg.exit.i

brcmnand_read_reg.exit.i:                         ; preds = %if.then.i20.i, %brcmnand_write_reg.exit.i.brcmnand_read_reg.exit.i_crit_edge
  %72 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i22.i = getelementptr i16, ptr %73, i32 2
  %74 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.i22.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool.not.i23.i = icmp eq i16 %75, 0
  br i1 %tobool.not.i23.i, label %brcmnand_read_reg.exit.i.brcmnand_write_reg.exit28.i_crit_edge, label %if.then.i27.i

brcmnand_read_reg.exit.i.brcmnand_write_reg.exit28.i_crit_edge: ; preds = %brcmnand_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit28.i

if.then.i27.i:                                    ; preds = %brcmnand_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = trunc i64 %addr.addr.0172 to i32
  %conv.i24.i = zext i16 %75 to i32
  %nand_base.i.i25.i = getelementptr inbounds %struct.brcmnand_controller, ptr %53, i32 0, i32 2
  %76 = ptrtoint ptr %nand_base.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %nand_base.i.i25.i, align 4
  %add.ptr.i.i26.i = getelementptr i8, ptr %77, i32 %conv.i24.i
  %78 = tail call i32 @llvm.bswap.i32(i32 %conv6.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i26.i, i32 %78) #9, !srcloc !337
  br label %brcmnand_write_reg.exit28.i

brcmnand_write_reg.exit28.i:                      ; preds = %if.then.i27.i, %brcmnand_read_reg.exit.i.brcmnand_write_reg.exit28.i_crit_edge
  %79 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i30.i = getelementptr i16, ptr %80, i32 2
  %81 = ptrtoint ptr %arrayidx.i30.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %arrayidx.i30.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool.not.i31.i = icmp eq i16 %82, 0
  br i1 %tobool.not.i31.i, label %brcmnand_write_reg.exit28.i.brcmnand_set_cmd_addr.exit_crit_edge, label %if.then.i35.i

brcmnand_write_reg.exit28.i.brcmnand_set_cmd_addr.exit_crit_edge: ; preds = %brcmnand_write_reg.exit28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_set_cmd_addr.exit

if.then.i35.i:                                    ; preds = %brcmnand_write_reg.exit28.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i32.i = zext i16 %82 to i32
  %nand_base.i.i33.i = getelementptr inbounds %struct.brcmnand_controller, ptr %53, i32 0, i32 2
  %83 = ptrtoint ptr %nand_base.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %nand_base.i.i33.i, align 4
  %add.ptr.i.i34.i = getelementptr i8, ptr %84, i32 %conv.i32.i
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34.i) #9, !srcloc !336
  br label %brcmnand_set_cmd_addr.exit

brcmnand_set_cmd_addr.exit:                       ; preds = %if.then.i35.i, %brcmnand_write_reg.exit28.i.brcmnand_set_cmd_addr.exit_crit_edge
  %tobool37.not = icmp eq ptr %buf.addr.1171, null
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %brcmnand_set_cmd_addr.exit
  %86 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %soc, align 4
  %tobool.not.i128 = icmp eq ptr %87, null
  br i1 %tobool.not.i128, label %if.then38.for.body41.preheader_crit_edge, label %land.lhs.true.i129

if.then38.for.body41.preheader_crit_edge:         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41.preheader

land.lhs.true.i129:                               ; preds = %if.then38
  %prepare_data_bus.i = getelementptr inbounds %struct.brcmnand_soc, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %prepare_data_bus.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prepare_data_bus.i, align 4
  %tobool1.not.i = icmp eq ptr %89, null
  br i1 %tobool1.not.i, label %land.lhs.true.i129.for.body41.preheader_crit_edge, label %if.then.i

land.lhs.true.i129.for.body41.preheader_crit_edge: ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41.preheader

if.then.i:                                        ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %89(ptr noundef nonnull %87, i1 noundef zeroext true, i1 noundef zeroext false) #9
  br label %for.body41.preheader

for.body41.preheader:                             ; preds = %if.then.i, %land.lhs.true.i129.for.body41.preheader_crit_edge, %if.then38.for.body41.preheader_crit_edge
  br label %for.body41

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %for.body41.preheader
  %buf.addr.2164 = phi ptr [ %incdec.ptr, %for.body41.for.body41_crit_edge ], [ %buf.addr.1171, %for.body41.preheader ]
  %j.0163 = phi i32 [ %inc, %for.body41.for.body41_crit_edge ], [ 0, %for.body41.preheader ]
  %90 = ptrtoint ptr %buf.addr.2164 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %buf.addr.2164, align 4
  %92 = ptrtoint ptr %nand_fc.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %nand_fc.i, align 8
  %mul.i = shl nuw nsw i32 %j.0163, 2
  %add.ptr.i = getelementptr i8, ptr %93, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %91) #9, !srcloc !337
  %inc = add nuw nsw i32 %j.0163, 1
  %incdec.ptr = getelementptr i32, ptr %buf.addr.2164, i32 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end43, label %for.body41.for.body41_crit_edge

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41

for.end43:                                        ; preds = %for.body41
  %94 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %soc, align 4
  %tobool.not.i131 = icmp eq ptr %95, null
  br i1 %tobool.not.i131, label %for.end43.if.end54_crit_edge, label %land.lhs.true.i134

for.end43.if.end54_crit_edge:                     ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

land.lhs.true.i134:                               ; preds = %for.end43
  %prepare_data_bus.i132 = getelementptr inbounds %struct.brcmnand_soc, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %prepare_data_bus.i132 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prepare_data_bus.i132, align 4
  %tobool1.not.i133 = icmp eq ptr %97, null
  br i1 %tobool1.not.i133, label %land.lhs.true.i134.if.end54_crit_edge, label %if.then.i135

land.lhs.true.i134.if.end54_crit_edge:            ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then.i135:                                     ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %97(ptr noundef nonnull %95, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end54

if.else:                                          ; preds = %brcmnand_set_cmd_addr.exit
  %tobool45.not = icmp eq ptr %oob.addr.0167, null
  br i1 %tobool45.not, label %if.else.if.end58_crit_edge, label %if.else.for.body49_crit_edge

if.else.for.body49_crit_edge:                     ; preds = %if.else
  br label %for.body49

if.else.if.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

for.body49:                                       ; preds = %for.body49.for.body49_crit_edge, %if.else.for.body49_crit_edge
  %j.1165 = phi i32 [ %inc51, %for.body49.for.body49_crit_edge ], [ 0, %if.else.for.body49_crit_edge ]
  %98 = ptrtoint ptr %nand_fc.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %nand_fc.i, align 8
  %mul.i138 = shl nuw nsw i32 %j.1165, 2
  %add.ptr.i139 = getelementptr i8, ptr %99, i32 %mul.i138
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 -1) #9, !srcloc !337
  %inc51 = add nuw nsw i32 %j.1165, 1
  %exitcond174.not = icmp eq i32 %inc51, 128
  br i1 %exitcond174.not, label %for.body49.if.end54_crit_edge, label %for.body49.for.body49_crit_edge

for.body49.for.body49_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body49

for.body49.if.end54_crit_edge:                    ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end54:                                         ; preds = %for.body49.if.end54_crit_edge, %if.then.i135, %land.lhs.true.i134.if.end54_crit_edge, %for.end43.if.end54_crit_edge
  %buf.addr.3 = phi ptr [ %incdec.ptr, %for.end43.if.end54_crit_edge ], [ %incdec.ptr, %land.lhs.true.i134.if.end54_crit_edge ], [ %incdec.ptr, %if.then.i135 ], [ null, %for.body49.if.end54_crit_edge ]
  %tobool55.not = icmp eq ptr %oob.addr.0167, null
  br i1 %tobool55.not, label %if.end54.if.end58_crit_edge, label %if.then56

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then56:                                        ; preds = %if.end54
  %100 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %oobsize, align 4
  %div = udiv i32 %101, %shr
  %102 = ptrtoint ptr %sector_size_1k to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sector_size_1k, align 4
  %shl.i140 = shl i32 %div, %103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i141 = icmp eq i32 %103, 0
  %and.i142 = and i32 %i.1169, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142)
  %tobool1.not.i143 = icmp eq i32 %and.i142, 0
  %or.cond.i144 = or i1 %tobool1.not.i143, %tobool.not.i141
  br i1 %or.cond.i144, label %if.then56.if.end.i147_crit_edge, label %if.then.i146

if.then56.if.end.i147_crit_edge:                  ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i147

if.then.i146:                                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %max_oob to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %max_oob, align 4
  %sub.i = sub i32 %shl.i140, %105
  %106 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #9
  br label %if.end.i147

if.end.i147:                                      ; preds = %if.then.i146, %if.then56.if.end.i147_crit_edge
  %tbytes.0.i = phi i32 [ %106, %if.then.i146 ], [ %shl.i140, %if.then56.if.end.i147_crit_edge ]
  %107 = ptrtoint ptr %max_oob to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %max_oob, align 4
  %109 = tail call i32 @llvm.smin.i32(i32 %tbytes.0.i, i32 %108) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp945.i = icmp sgt i32 %109, 0
  br i1 %cmp945.i, label %if.end.i147.for.body.i_crit_edge, label %if.end.i147.write_oob_to_regs.exit_crit_edge

if.end.i147.write_oob_to_regs.exit_crit_edge:     ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_oob_to_regs.exit

if.end.i147.for.body.i_crit_edge:                 ; preds = %if.end.i147
  br label %for.body.i

for.body.i:                                       ; preds = %oob_reg_write.exit.i.for.body.i_crit_edge, %if.end.i147.for.body.i_crit_edge
  %j.046.i = phi i32 [ %add25.i, %oob_reg_write.exit.i.for.body.i_crit_edge ], [ 0, %if.end.i147.for.body.i_crit_edge ]
  %110 = ptrtoint ptr %max_oob to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %max_oob, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %j.046.i)
  %cmp.not.i.i = icmp ugt i32 %111, %j.046.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %for.body.i.oob_reg_write.exit.i_crit_edge

for.body.i.oob_reg_write.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %oob_reg_write.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i150 = getelementptr i8, ptr %oob.addr.0167, i32 %j.046.i
  %112 = ptrtoint ptr %arrayidx.i150 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx.i150, align 1
  %conv.i = zext i8 %113 to i32
  %shl10.i = shl nuw i32 %conv.i, 24
  %add11.i = or i32 %j.046.i, 1
  %arrayidx12.i = getelementptr i8, ptr %oob.addr.0167, i32 %add11.i
  %114 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %115 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 16
  %or.i = or i32 %shl14.i, %shl10.i
  %add15.i = or i32 %j.046.i, 2
  %arrayidx16.i = getelementptr i8, ptr %oob.addr.0167, i32 %add15.i
  %116 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %117 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 8
  %or19.i = or i32 %or.i, %shl18.i
  %add20.i = or i32 %j.046.i, 3
  %arrayidx21.i = getelementptr i8, ptr %oob.addr.0167, i32 %add20.i
  %118 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %119 to i32
  %or24.i = or i32 %or19.i, %conv22.i
  %120 = ptrtoint ptr %reg_offsets.i.i148 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %reg_offsets.i.i148, align 8
  %arrayidx2.i.i = getelementptr i16, ptr %121, i32 24
  %122 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %arrayidx2.i.i, align 2
  %arrayidx.i.i151 = getelementptr i16, ptr %121, i32 23
  %124 = ptrtoint ptr %arrayidx.i.i151 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %arrayidx.i.i151, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %j.046.i)
  %cmp3.i.i = icmp ult i32 %j.046.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool.not.i.i152 = icmp eq i16 %123, 0
  %or.cond.i.i = select i1 %cmp3.i.i, i1 true, i1 %tobool.not.i.i152
  %126 = trunc i32 %j.046.i to i16
  %127 = add i16 %126, -16
  %.sink23.i.i = select i1 %or.cond.i.i, i16 %126, i16 %127
  %.sink.i.i = select i1 %or.cond.i.i, i16 %125, i16 %123
  %conv10.i.i = add i16 %.sink.i.i, %.sink23.i.i
  %conv12.i.i = zext i16 %conv10.i.i to i32
  %128 = ptrtoint ptr %nand_base.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %nand_base.i.i.i149, align 4
  %add.ptr.i.i.i153 = getelementptr i8, ptr %129, i32 %conv12.i.i
  %130 = tail call i32 @llvm.bswap.i32(i32 %or24.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i153, i32 %130) #9, !srcloc !337
  br label %oob_reg_write.exit.i

oob_reg_write.exit.i:                             ; preds = %if.end.i.i, %for.body.i.oob_reg_write.exit.i_crit_edge
  %add25.i = add i32 %j.046.i, 4
  %cmp9.i = icmp slt i32 %add25.i, %109
  br i1 %cmp9.i, label %oob_reg_write.exit.i.for.body.i_crit_edge, label %oob_reg_write.exit.i.write_oob_to_regs.exit_crit_edge

oob_reg_write.exit.i.write_oob_to_regs.exit_crit_edge: ; preds = %oob_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_oob_to_regs.exit

oob_reg_write.exit.i.for.body.i_crit_edge:        ; preds = %oob_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

write_oob_to_regs.exit:                           ; preds = %oob_reg_write.exit.i.write_oob_to_regs.exit_crit_edge, %if.end.i147.write_oob_to_regs.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %oob.addr.0167, i32 %109
  br label %if.end58

if.end58:                                         ; preds = %write_oob_to_regs.exit, %if.end54.if.end58_crit_edge, %if.else.if.end58_crit_edge
  %buf.addr.3157 = phi ptr [ %buf.addr.3, %write_oob_to_regs.exit ], [ %buf.addr.3, %if.end54.if.end58_crit_edge ], [ null, %if.else.if.end58_crit_edge ]
  %oob.addr.1 = phi ptr [ %add.ptr, %write_oob_to_regs.exit ], [ null, %if.end54.if.end58_crit_edge ], [ null, %if.else.if.end58_crit_edge ]
  tail call fastcc void @brcmnand_send_cmd(ptr noundef %1, i32 noundef 4)
  %call59 = tail call i32 @brcmnand_waitfunc(ptr noundef %chip)
  %and60 = and i32 %call59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %for.inc68, label %do.end65

do.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %132, ptr noundef nonnull @.str.70, i64 noundef %addr.addr.0172) #12
  br label %out

for.inc68:                                        ; preds = %if.end58
  %inc69 = add nuw nsw i32 %i.1169, 1
  %add70 = add i64 %addr.addr.0172, 512
  %exitcond175.not = icmp eq i32 %inc69, %umax
  br i1 %exitcond175.not, label %for.inc68.out_crit_edge, label %for.inc68.for.body36_crit_edge

for.inc68.for.body36_crit_edge:                   ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body36

for.inc68.out_crit_edge:                          ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.inc68.out_crit_edge, %do.end65, %if.end33.out_crit_edge, %if.then27
  %ret.0 = phi i32 [ -5, %do.end65 ], [ %spec.select, %if.then27 ], [ 0, %if.end33.out_crit_edge ], [ 0, %for.inc68.out_crit_edge ]
  tail call fastcc void @brcmnand_wp(ptr noundef %mtd, i32 noundef 1)
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmnand_wp(ptr noundef %mtd, i32 noundef %wp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl2 = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl2, align 8
  %features = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 43
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 8
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup38_crit_edge, label %land.lhs.true

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, ptr @wp_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.cleanup38_crit_edge

land.lhs.true.cleanup38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, ptr @brcmnand_wp.old_wp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %wp)
  %cmp3.not = icmp eq i32 %7, %wp
  br i1 %cmp3.not, label %if.then.if.end11_crit_edge, label %do.body

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmnand_wp.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmnand_wp, %if.then9)) #9
          to label %do.end [label %if.then9], !srcloc !340

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wp)
  %tobool10.not = icmp eq i32 %wp, 0
  %cond = select i1 %tobool10.not, ptr @.str.75, ptr @.str.74
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmnand_wp.__UNIQUE_ID_ddebug250, ptr noundef %9, ptr noundef nonnull @.str.73, ptr noundef nonnull %cond) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  store i32 %wp, ptr @brcmnand_wp.old_wp, align 4
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.then.if.end11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %reg_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 33
  %nand_base.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %add.neg.i = sub i32 -10, %10
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %if.end11
  %11 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %12, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i.i, label %do.body.i.do.end.i_crit_edge, label %brcmnand_read_reg.exit.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

brcmnand_read_reg.exit.i:                         ; preds = %do.body.i
  %conv.i.i = zext i16 %14 to i32
  %15 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 %conv.i.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !336
  %18 = and i32 %17, 1073742016
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073742016, i32 %18)
  %cmp.i = icmp eq i32 %18, 1073742016
  br i1 %cmp.i, label %if.end15, label %brcmnand_read_reg.exit.i.do.end.i_crit_edge

brcmnand_read_reg.exit.i.do.end.i_crit_edge:      ; preds = %brcmnand_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %brcmnand_read_reg.exit.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %and.i82 = phi i32 [ %19, %brcmnand_read_reg.exit.i.do.end.i_crit_edge ], [ 0, %do.body.i.do.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !345
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !346
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %20
  %cmp12.i = icmp slt i32 %sub.i, 0
  br i1 %cmp12.i, label %do.end.i.do.body.i_crit_edge, label %bcmnand_ctrl_poll_status.exit

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

bcmnand_ctrl_poll_status.exit:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.78, i32 noundef -1073741760, i32 noundef %and.i82) #12
  br label %cleanup38

if.end15:                                         ; preds = %brcmnand_read_reg.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wp)
  %tobool16.not = icmp eq i32 %wp, 0
  %cond.i = select i1 %tobool16.not, i32 0, i32 536870912
  %23 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i.i = getelementptr i16, ptr %24, i32 4
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.i.i.i = icmp eq i16 %26, 0
  br i1 %tobool.not.i.i.i, label %if.end15.brcmnand_read_reg.exit.i.i_crit_edge, label %if.then.i.i.i

if.end15.brcmnand_read_reg.exit.i.i_crit_edge:    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i = zext i16 %26 to i32
  %27 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %28, i32 %conv.i.i.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !336
  %30 = and i32 %29, -33
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  br label %brcmnand_read_reg.exit.i.i

brcmnand_read_reg.exit.i.i:                       ; preds = %if.then.i.i.i, %if.end15.brcmnand_read_reg.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %31, %if.then.i.i.i ], [ 0, %if.end15.brcmnand_read_reg.exit.i.i_crit_edge ]
  %32 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i6.i.i = getelementptr i16, ptr %33, i32 4
  %34 = ptrtoint ptr %arrayidx.i6.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.i6.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not.i7.i.i = icmp eq i16 %35, 0
  br i1 %tobool.not.i7.i.i, label %brcmnand_read_reg.exit.i.i.brcmnand_set_wp.exit_crit_edge, label %if.then.i11.i.i

brcmnand_read_reg.exit.i.i.brcmnand_set_wp.exit_crit_edge: ; preds = %brcmnand_read_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_set_wp.exit

if.then.i11.i.i:                                  ; preds = %brcmnand_read_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i32 %retval.0.i.i.i, %cond.i
  %conv.i8.i.i = zext i16 %35 to i32
  %36 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i10.i.i = getelementptr i8, ptr %37, i32 %conv.i8.i.i
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i.i, i32 %38) #9, !srcloc !337
  br label %brcmnand_set_wp.exit

brcmnand_set_wp.exit:                             ; preds = %if.then.i11.i.i, %brcmnand_read_reg.exit.i.i.brcmnand_set_wp.exit_crit_edge
  %call17 = tail call i32 @nand_status_op(ptr noundef %mtd, ptr noundef null) #9
  %or = select i1 %tobool16.not, i32 -1073741632, i32 -1073741760
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i61 = sub i32 -10, %39
  br label %do.body.i64

do.body.i64:                                      ; preds = %do.end.i74.do.body.i64_crit_edge, %brcmnand_set_wp.exit
  %40 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i62 = getelementptr i16, ptr %41, i32 3
  %42 = ptrtoint ptr %arrayidx.i.i62 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.i.i62, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not.i.i63 = icmp eq i16 %43, 0
  br i1 %tobool.not.i.i63, label %do.body.i64.brcmnand_read_reg.exit.i71_crit_edge, label %if.then.i.i67

do.body.i64.brcmnand_read_reg.exit.i71_crit_edge: ; preds = %do.body.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit.i71

if.then.i.i67:                                    ; preds = %do.body.i64
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i65 = zext i16 %43 to i32
  %44 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i.i66 = getelementptr i8, ptr %45, i32 %conv.i.i65
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i66) #9, !srcloc !336
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  br label %brcmnand_read_reg.exit.i71

brcmnand_read_reg.exit.i71:                       ; preds = %if.then.i.i67, %do.body.i64.brcmnand_read_reg.exit.i71_crit_edge
  %retval.0.i.i68 = phi i32 [ %47, %if.then.i.i67 ], [ 0, %do.body.i64.brcmnand_read_reg.exit.i71_crit_edge ]
  %and.i69 = and i32 %retval.0.i.i68, -1073741632
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i69, i32 %or)
  %cmp.i70 = icmp eq i32 %and.i69, %or
  br i1 %cmp.i70, label %brcmnand_read_reg.exit.i71.cleanup38_crit_edge, label %do.end.i74

brcmnand_read_reg.exit.i71.cleanup38_crit_edge:   ; preds = %brcmnand_read_reg.exit.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

do.end.i74:                                       ; preds = %brcmnand_read_reg.exit.i71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !345
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !346
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub.i72 = add i32 %add.neg.i61, %48
  %cmp12.i73 = icmp slt i32 %sub.i72, 0
  br i1 %cmp12.i73, label %do.end.i74.do.body.i64_crit_edge, label %do.body23

do.end.i74.do.body.i64_crit_edge:                 ; preds = %do.end.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i64

do.body23:                                        ; preds = %do.end.i74
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.78, i32 noundef %or, i32 noundef %and.i69) #12
  %call24 = tail call i32 @___ratelimit(ptr noundef nonnull @brcmnand_wp._rs, ptr noundef nonnull @.str.72) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.body23.cleanup38_crit_edge, label %do.end29

do.body23.cleanup38_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev, align 8
  %dev30 = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3
  %cond32 = select i1 %tobool16.not, ptr @.str.75, ptr @.str.74
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.77, ptr noundef nonnull %cond32) #12
  br label %cleanup38

cleanup38:                                        ; preds = %do.end29, %do.body23.cleanup38_crit_edge, %brcmnand_read_reg.exit.i71.cleanup38_crit_edge, %bcmnand_ctrl_poll_status.exit, %land.lhs.true.cleanup38_crit_edge, %entry.cleanup38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmnand_send_cmd(ptr nocapture noundef readonly %host, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.brcmnand_host, ptr %host, i32 0, i32 8
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 8
  %reg_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_offsets.i, align 8
  %arrayidx.i = getelementptr i16, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %entry.brcmnand_read_reg.exit_crit_edge, label %if.then.i

entry.brcmnand_read_reg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %5 to i32
  %nand_base.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !336
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  br label %brcmnand_read_reg.exit

brcmnand_read_reg.exit:                           ; preds = %if.then.i, %entry.brcmnand_read_reg.exit_crit_edge
  %retval.0.i68 = phi i32 [ %9, %if.then.i ], [ 0, %entry.brcmnand_read_reg.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmnand_send_cmd.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmnand_send_cmd, %if.then)) #9
          to label %do.body5 [label %if.then], !srcloc !340

if.then:                                          ; preds = %brcmnand_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i32 %retval.0.i68 to i64
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmnand_send_cmd.__UNIQUE_ID_ddebug259, ptr noundef %11, ptr noundef nonnull @.str.81, i32 noundef %cmd, i64 noundef %conv) #9
  br label %do.body5

do.body5:                                         ; preds = %if.then, %brcmnand_read_reg.exit
  %cmd_pending = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %cmd_pending to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmd_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %do.end22, label %do.body14, !prof !338

do.body14:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/brcmnand/brcmnand.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1566, 0\0A.popsection", ""() #9, !srcloc !347
  unreachable

do.end22:                                         ; preds = %do.body5
  %14 = ptrtoint ptr %cmd_pending to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cmd, ptr %cmd_pending, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %nand_base.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 2
  %add.neg.i = sub i32 -10, %15
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %do.end22
  %16 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_offsets.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %17, i32 3
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i.i = icmp eq i16 %19, 0
  br i1 %tobool.not.i.i, label %do.body.i.do.end.i_crit_edge, label %brcmnand_read_reg.exit.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

brcmnand_read_reg.exit.i:                         ; preds = %do.body.i
  %conv.i.i = zext i16 %19 to i32
  %20 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %conv.i.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !336
  %23 = shl i32 %22, 24
  %and.i = and i32 %23, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %23)
  %cmp.i = icmp ugt i32 %23, -1073741825
  br i1 %cmp.i, label %brcmnand_read_reg.exit.i.if.end47_crit_edge, label %brcmnand_read_reg.exit.i.do.end.i_crit_edge

brcmnand_read_reg.exit.i.do.end.i_crit_edge:      ; preds = %brcmnand_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

brcmnand_read_reg.exit.i.if.end47_crit_edge:      ; preds = %brcmnand_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

do.end.i:                                         ; preds = %brcmnand_read_reg.exit.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %and.i81 = phi i32 [ %and.i, %brcmnand_read_reg.exit.i.do.end.i_crit_edge ], [ 0, %do.body.i.do.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !345
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !346
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %24
  %cmp12.i = icmp slt i32 %sub.i, 0
  br i1 %cmp12.i, label %do.end.i.do.body.i_crit_edge, label %do.end41

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.end41:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.78, i32 noundef -1073741824, i32 noundef %and.i81) #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1570, i32 noundef 9, ptr noundef null) #9
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %brcmnand_read_reg.exit.i.if.end47_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !348
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_offsets.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i72 = icmp eq i16 %30, 0
  br i1 %tobool.not.i72, label %if.end47.brcmnand_write_reg.exit_crit_edge, label %if.then.i76

if.end47.brcmnand_write_reg.exit_crit_edge:       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit

if.then.i76:                                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %nand_version.i = getelementptr inbounds %struct.brcmnand_controller, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %nand_version.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nand_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1538, i32 %32)
  %cmp.i70 = icmp slt i32 %32, 1538
  %..i = select i1 %cmp.i70, i32 24, i32 0
  %shl = shl i32 %cmd, %..i
  %conv.i73 = zext i16 %30 to i32
  %33 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i75 = getelementptr i8, ptr %34, i32 %conv.i73
  %35 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i75, i32 %35) #9, !srcloc !337
  br label %brcmnand_write_reg.exit

brcmnand_write_reg.exit:                          ; preds = %if.then.i76, %if.end47.brcmnand_write_reg.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmnand_waitfunc(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl1 = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmnand_waitfunc.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmnand_waitfunc, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !340

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %cmd_pending = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %cmd_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd_pending, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmnand_waitfunc.__UNIQUE_ID_ddebug260, ptr noundef %5, ptr noundef nonnull @.str.83, i32 noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmd_pending5 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %cmd_pending5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd_pending5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %do.end.if.end38_crit_edge, label %if.then7

do.end.if.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then7:                                         ; preds = %do.end
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %ctrl1.i = getelementptr inbounds %struct.brcmnand_host, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl1.i, align 8
  %oops_panic_write.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 50
  %14 = ptrtoint ptr %oops_panic_write.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %oops_panic_write.i, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %brcmstb_nand_wait_for_completion.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then7
  %pio_poll_mode.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %13, i32 0, i32 49
  %16 = ptrtoint ptr %pio_poll_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pio_poll_mode.i.i, align 8, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.disable_ctrl_irqs.exit.i_crit_edge

if.then.i.disable_ctrl_irqs.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_ctrl_irqs.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %flash_dma_base.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %13, i32 0, i32 4
  %18 = ptrtoint ptr %flash_dma_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %flash_dma_base.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.i.not.i.i, label %if.end.i.i.if.end2.i.i_crit_edge, label %if.then1.i.i

if.end.i.i.if.end2.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %flash_dma_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %flash_dma_base.i.i.i, align 4
  %dma_irq.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %13, i32 0, i32 6
  %21 = ptrtoint ptr %dma_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_irq.i.i, align 4
  tail call void @disable_irq(i32 noundef %22) #9
  br label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.then1.i.i, %if.end.i.i.if.end2.i.i_crit_edge
  %irq.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %13, i32 0, i32 5
  %23 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq.i.i, align 8
  tail call void @disable_irq(i32 noundef %24) #9
  %25 = ptrtoint ptr %pio_poll_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %pio_poll_mode.i.i, align 8
  br label %disable_ctrl_irqs.exit.i

disable_ctrl_irqs.exit.i:                         ; preds = %if.end2.i.i, %if.then.i.disable_ctrl_irqs.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %reg_offsets.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %13, i32 0, i32 33
  %nand_base.i.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %13, i32 0, i32 2
  %add.neg.i.i = sub i32 -10, %26
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end.i.i.do.body.i.i_crit_edge, %disable_ctrl_irqs.exit.i
  %27 = ptrtoint ptr %reg_offsets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_offsets.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr i16, ptr %28, i32 3
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i.i.i = icmp eq i16 %30, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.do.end.i.i_crit_edge, label %brcmnand_read_reg.exit.i.i

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

brcmnand_read_reg.exit.i.i:                       ; preds = %do.body.i.i
  %conv.i.i.i = zext i16 %30 to i32
  %31 = ptrtoint ptr %nand_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nand_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %32, i32 %conv.i.i.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !336
  %34 = shl i32 %33, 24
  %and.i.i = and i32 %34, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %34)
  %cmp.i.i = icmp ugt i32 %34, -1073741825
  br i1 %cmp.i.i, label %brcmnand_read_reg.exit.i.i.if.end38_crit_edge, label %brcmnand_read_reg.exit.i.i.do.end.i.i_crit_edge

brcmnand_read_reg.exit.i.i.do.end.i.i_crit_edge:  ; preds = %brcmnand_read_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

brcmnand_read_reg.exit.i.i.if.end38_crit_edge:    ; preds = %brcmnand_read_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

do.end.i.i:                                       ; preds = %brcmnand_read_reg.exit.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  %and.i19.i = phi i32 [ %and.i.i, %brcmnand_read_reg.exit.i.i.do.end.i.i_crit_edge ], [ 0, %do.body.i.i.do.end.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !345
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !346
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %35
  %cmp12.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp12.i.i, label %do.end.i.i.do.body.i.i_crit_edge, label %brcmstb_nand_wait_for_completion.exit.thread

do.end.i.i.do.body.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

brcmstb_nand_wait_for_completion.exit.thread:     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.78, i32 noundef -1073741824, i32 noundef %and.i19.i) #12
  br label %if.then12

brcmstb_nand_wait_for_completion.exit:            ; preds = %if.then7
  %done.i = getelementptr inbounds %struct.brcmnand_controller, ptr %13, i32 0, i32 13
  %call6.i = tail call i32 @wait_for_completion_timeout(ptr noundef %done.i, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 1
  br i1 %cmp7.i, label %brcmstb_nand_wait_for_completion.exit.if.then12_crit_edge, label %brcmstb_nand_wait_for_completion.exit.if.end38_crit_edge

brcmstb_nand_wait_for_completion.exit.if.end38_crit_edge: ; preds = %brcmstb_nand_wait_for_completion.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

brcmstb_nand_wait_for_completion.exit.if.then12_crit_edge: ; preds = %brcmstb_nand_wait_for_completion.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12:                                        ; preds = %brcmstb_nand_wait_for_completion.exit.if.then12_crit_edge, %brcmstb_nand_wait_for_completion.exit.thread
  %reg_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 33
  %38 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_offsets.i, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %39, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.i51 = icmp eq i16 %41, 0
  br i1 %tobool.not.i51, label %if.then12.brcmnand_read_reg.exit_crit_edge, label %if.then.i52

if.then12.brcmnand_read_reg.exit_crit_edge:       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit

if.then.i52:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %41 to i32
  %nand_base.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %42 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 %conv.i
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !336
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  br label %brcmnand_read_reg.exit

brcmnand_read_reg.exit:                           ; preds = %if.then.i52, %if.then12.brcmnand_read_reg.exit_crit_edge
  %retval.0.i53 = phi i32 [ %45, %if.then.i52 ], [ 0, %if.then12.brcmnand_read_reg.exit_crit_edge ]
  %nand_version.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 7
  %46 = ptrtoint ptr %nand_version.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nand_version.i, align 8
  %call16 = tail call i32 @___ratelimit(ptr noundef nonnull @brcmnand_waitfunc._rs, ptr noundef nonnull @.str.82) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %brcmnand_read_reg.exit.do.body26_crit_edge, label %do.end21

brcmnand_read_reg.exit.do.body26_crit_edge:       ; preds = %brcmnand_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body26

do.end21:                                         ; preds = %brcmnand_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1538, i32 %47)
  %cmp.i = icmp slt i32 %47, 1538
  %..i = select i1 %cmp.i, i32 24, i32 0
  %shr = lshr i32 %retval.0.i53, %..i
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.84, i32 noundef %shr) #12
  br label %do.body26

do.body26:                                        ; preds = %do.end21, %brcmnand_read_reg.exit.do.body26_crit_edge
  %call27 = tail call i32 @___ratelimit(ptr noundef nonnull @brcmnand_waitfunc._rs.85, ptr noundef nonnull @.str.82) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.body26.if.end38_crit_edge, label %do.end32

do.body26.if.end38_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

do.end32:                                         ; preds = %do.body26
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 8
  %52 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_offsets.i, align 8
  %arrayidx.i = getelementptr i16, ptr %53, i32 3
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool.not.i55 = icmp eq i16 %55, 0
  br i1 %tobool.not.i55, label %do.end32.brcmnand_read_reg.exit61_crit_edge, label %if.then.i59

do.end32.brcmnand_read_reg.exit61_crit_edge:      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit61

if.then.i59:                                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i56 = zext i16 %55 to i32
  %nand_base.i.i57 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %56 = ptrtoint ptr %nand_base.i.i57 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %nand_base.i.i57, align 4
  %add.ptr.i.i58 = getelementptr i8, ptr %57, i32 %conv.i56
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i58) #9, !srcloc !336
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #9
  br label %brcmnand_read_reg.exit61

brcmnand_read_reg.exit61:                         ; preds = %if.then.i59, %do.end32.brcmnand_read_reg.exit61_crit_edge
  %retval.0.i60 = phi i32 [ %59, %if.then.i59 ], [ 0, %do.end32.brcmnand_read_reg.exit61_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.87, i32 noundef %retval.0.i60) #12
  br label %if.end38

if.end38:                                         ; preds = %brcmnand_read_reg.exit61, %do.body26.if.end38_crit_edge, %brcmstb_nand_wait_for_completion.exit.if.end38_crit_edge, %brcmnand_read_reg.exit.i.i.if.end38_crit_edge, %do.end.if.end38_crit_edge
  %60 = ptrtoint ptr %cmd_pending5 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %cmd_pending5, align 4
  %reg_offsets.i62 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 33
  %61 = ptrtoint ptr %reg_offsets.i62 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg_offsets.i62, align 8
  %arrayidx.i63 = getelementptr i16, ptr %62, i32 3
  %63 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx.i63, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool.not.i64 = icmp eq i16 %64, 0
  br i1 %tobool.not.i64, label %if.end38.brcmnand_read_reg.exit70_crit_edge, label %if.then.i68

if.end38.brcmnand_read_reg.exit70_crit_edge:      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit70

if.then.i68:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i65 = zext i16 %64 to i32
  %nand_base.i.i66 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %65 = ptrtoint ptr %nand_base.i.i66 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %nand_base.i.i66, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %66, i32 %conv.i65
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i67) #9, !srcloc !336
  %68 = lshr i32 %67, 24
  br label %brcmnand_read_reg.exit70

brcmnand_read_reg.exit70:                         ; preds = %if.then.i68, %if.end38.brcmnand_read_reg.exit70_crit_edge
  %retval.0.i69 = phi i32 [ %68, %if.then.i68 ], [ 0, %if.end38.brcmnand_read_reg.exit70_crit_edge ]
  ret i32 %retval.0.i69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_status_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmnand_read(ptr noundef %mtd, ptr noundef %chip, i64 noundef %addr, i32 noundef %trans, ptr noundef %buf, ptr noundef %oob) unnamed_addr #0 align 64 {
entry:
  %ecc.i = alloca %struct.mtd_oob_region, align 4
  %err_addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl1 = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %err_addr) #9
  %4 = ptrtoint ptr %err_addr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %err_addr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmnand_read.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmnand_read, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !340

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmnand_read.__UNIQUE_ID_ddebug267, ptr noundef %6, ptr noundef nonnull @.str.90, i64 noundef %addr, ptr noundef %buf) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 33
  %nand_base.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %dma_trans = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 31
  %edu_base.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 18
  %tobool7.not = icmp eq ptr %oob, null
  %tobool.not.i = icmp eq ptr %buf, null
  %7 = ptrtoint ptr %buf to i32
  %and.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  %mul = shl i32 %trans, 9
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %nand_version = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 7
  br label %try_dmaread

try_dmaread:                                      ; preds = %if.then33.try_dmaread_crit_edge, %do.end
  %edu_err.0.off0 = phi i1 [ false, %do.end ], [ %edu_err.1.off0, %if.then33.try_dmaread_crit_edge ]
  %retry.0.off0 = phi i1 [ false, %do.end ], [ true, %if.then33.try_dmaread_crit_edge ]
  %8 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %9, i32 16
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i.i, label %try_dmaread.brcmnand_write_reg.exit.i_crit_edge, label %if.then.i.i

try_dmaread.brcmnand_write_reg.exit.i_crit_edge:  ; preds = %try_dmaread
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit.i

if.then.i.i:                                      ; preds = %try_dmaread
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i16 %11 to i32
  %12 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #9, !srcloc !337
  br label %brcmnand_write_reg.exit.i

brcmnand_write_reg.exit.i:                        ; preds = %if.then.i.i, %try_dmaread.brcmnand_write_reg.exit.i_crit_edge
  %14 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i5.i = getelementptr i16, ptr %15, i32 14
  %16 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i5.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i6.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i6.i, label %brcmnand_write_reg.exit.i.brcmnand_write_reg.exit11.i_crit_edge, label %if.then.i10.i

brcmnand_write_reg.exit.i.brcmnand_write_reg.exit11.i_crit_edge: ; preds = %brcmnand_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit11.i

if.then.i10.i:                                    ; preds = %brcmnand_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i7.i = zext i16 %17 to i32
  %18 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i9.i = getelementptr i8, ptr %19, i32 %conv.i7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9.i, i32 0) #9, !srcloc !337
  br label %brcmnand_write_reg.exit11.i

brcmnand_write_reg.exit11.i:                      ; preds = %if.then.i10.i, %brcmnand_write_reg.exit.i.brcmnand_write_reg.exit11.i_crit_edge
  %20 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i13.i = getelementptr i16, ptr %21, i32 15
  %22 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i13.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i14.i = icmp eq i16 %23, 0
  br i1 %tobool.not.i14.i, label %brcmnand_write_reg.exit11.i.brcmnand_write_reg.exit19.i_crit_edge, label %if.then.i18.i

brcmnand_write_reg.exit11.i.brcmnand_write_reg.exit19.i_crit_edge: ; preds = %brcmnand_write_reg.exit11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit19.i

if.then.i18.i:                                    ; preds = %brcmnand_write_reg.exit11.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i15.i = zext i16 %23 to i32
  %24 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i17.i = getelementptr i8, ptr %25, i32 %conv.i15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17.i, i32 0) #9, !srcloc !337
  br label %brcmnand_write_reg.exit19.i

brcmnand_write_reg.exit19.i:                      ; preds = %if.then.i18.i, %brcmnand_write_reg.exit11.i.brcmnand_write_reg.exit19.i_crit_edge
  %26 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i21.i = getelementptr i16, ptr %27, i32 13
  %28 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.i21.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i22.i = icmp eq i16 %29, 0
  br i1 %tobool.not.i22.i, label %brcmnand_write_reg.exit19.i.brcmnand_clear_ecc_addr.exit_crit_edge, label %if.then.i26.i

brcmnand_write_reg.exit19.i.brcmnand_clear_ecc_addr.exit_crit_edge: ; preds = %brcmnand_write_reg.exit19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_clear_ecc_addr.exit

if.then.i26.i:                                    ; preds = %brcmnand_write_reg.exit19.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i23.i = zext i16 %29 to i32
  %30 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i25.i = getelementptr i8, ptr %31, i32 %conv.i23.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i25.i, i32 0) #9, !srcloc !337
  br label %brcmnand_clear_ecc_addr.exit

brcmnand_clear_ecc_addr.exit:                     ; preds = %if.then.i26.i, %brcmnand_write_reg.exit19.i.brcmnand_clear_ecc_addr.exit_crit_edge
  %32 = ptrtoint ptr %dma_trans to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_trans, align 4
  %tobool5.not = icmp eq ptr %33, null
  br i1 %tobool5.not, label %brcmnand_clear_ecc_addr.exit.if.else25_crit_edge, label %land.lhs.true

brcmnand_clear_ecc_addr.exit.if.else25_crit_edge: ; preds = %brcmnand_clear_ecc_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else25

land.lhs.true:                                    ; preds = %brcmnand_clear_ecc_addr.exit
  %34 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %edu_base.i, align 8
  %tobool.i = icmp ne ptr %35, null
  %or.cond = or i1 %tobool7.not, %tobool.i
  br i1 %or.cond, label %land.lhs.true8, label %land.lhs.true.if.then27_crit_edge

land.lhs.true.if.then27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

land.lhs.true8:                                   ; preds = %land.lhs.true
  br i1 %tobool.not.i, label %land.lhs.true8.if.else25_crit_edge, label %land.lhs.true.i

land.lhs.true8.if.else25_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else25

land.lhs.true.i:                                  ; preds = %land.lhs.true8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %buf) #9
  %36 = or i1 %cmp.i, %call.i
  br i1 %36, label %land.lhs.true.i.if.else25_crit_edge, label %if.then10

land.lhs.true.i.if.else25_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else25

if.then10:                                        ; preds = %land.lhs.true.i
  %37 = ptrtoint ptr %dma_trans to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma_trans, align 4
  %call12 = tail call i32 %38(ptr noundef %1, i64 noundef %addr, ptr noundef nonnull %buf, ptr noundef %oob, i32 noundef %mul, i8 noundef zeroext 1) #9
  %39 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %call12, label %if.then10.cleanup_crit_edge [
    i32 0, label %if.then10.if.end19_crit_edge
    i32 -74, label %if.then10.if.then17_crit_edge
    i32 -117, label %if.then10.if.then17_crit_edge202
  ]

if.then10.if.then17_crit_edge202:                 ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

if.then10.if.then17_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17:                                        ; preds = %if.then10.if.then17_crit_edge, %if.then10.if.then17_crit_edge202
  %40 = ptrtoint ptr %err_addr to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %addr, ptr %err_addr, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then10.if.end19_crit_edge
  %41 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %edu_base.i, align 8
  %tobool.i160.not = icmp eq ptr %42, null
  br i1 %tobool.i160.not, label %if.end19.if.end30_crit_edge, label %land.lhs.true21

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.lhs.true21:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %err_addr to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %err_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %44)
  %tobool22.not = icmp ne i64 %44, 0
  %spec.select = select i1 %tobool22.not, i1 true, i1 %edu_err.0.off0
  br label %if.end30

if.else25:                                        ; preds = %land.lhs.true.i.if.else25_crit_edge, %land.lhs.true8.if.else25_crit_edge, %brcmnand_clear_ecc_addr.exit.if.else25_crit_edge
  br i1 %tobool7.not, label %if.else25.if.end28_crit_edge, label %if.else25.if.then27_crit_edge

if.else25.if.then27_crit_edge:                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

if.else25.if.end28_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then27:                                        ; preds = %if.else25.if.then27_crit_edge, %land.lhs.true.if.then27_crit_edge
  %45 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %oobsize, align 4
  %47 = call ptr @memset(ptr %oob, i32 153, i32 %46)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.else25.if.end28_crit_edge
  %call29 = call fastcc i32 @brcmnand_read_by_pio(ptr noundef %mtd, ptr noundef %chip, i64 noundef %addr, i32 noundef %trans, ptr noundef %buf, ptr noundef %oob, ptr noundef nonnull %err_addr)
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %land.lhs.true21, %if.end19.if.end30_crit_edge
  %edu_err.1.off0 = phi i1 [ %edu_err.0.off0, %if.end19.if.end30_crit_edge ], [ %edu_err.0.off0, %if.end28 ], [ %spec.select, %land.lhs.true21 ]
  %err.0 = phi i32 [ %call12, %if.end19.if.end30_crit_edge ], [ %call29, %if.end28 ], [ %call12, %land.lhs.true21 ]
  %48 = zext i32 %err.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %err.0, label %if.end30.cleanup_crit_edge [
    i32 -74, label %if.then33
    i32 -117, label %if.then70
  ]

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then33:                                        ; preds = %if.end30
  %49 = ptrtoint ptr %nand_version to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nand_version, align 8
  %51 = and i32 %50, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1792, i32 %51)
  %switch = icmp ne i32 %51, 1792
  %brmerge = or i1 %retry.0.off0, %switch
  br i1 %brmerge, label %if.end41, label %if.then33.try_dmaread_crit_edge

if.then33.try_dmaread_crit_edge:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_dmaread

if.end41:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1794, i32 %50)
  %cmp43 = icmp slt i32 %50, 1794
  br i1 %cmp43, label %if.then44, label %if.end41.do.body50_crit_edge

if.end41.do.body50_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body50

if.then44:                                        ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ecc.i) #9
  %52 = ptrtoint ptr %ecc.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %ecc.i, align 4, !annotation !343
  %53 = getelementptr inbounds %struct.mtd_oob_region, ptr %ecc.i, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %53, align 4, !annotation !343
  %page_shift.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 17
  %55 = ptrtoint ptr %page_shift.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %page_shift.i, align 4
  %sh_prom.i = zext i32 %56 to i64
  %shr.i = lshr i64 %addr, %sh_prom.i
  %conv.i162 = trunc i64 %shr.i to i32
  br i1 %tobool.not.i, label %if.then.i, label %if.then44.if.end.i_crit_edge

if.then44.if.end.i_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %page.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 24, i32 1
  %57 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %page.i.i, align 4
  %data_buf.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 22
  %58 = ptrtoint ptr %data_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data_buf.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then44.if.end.i_crit_edge
  %buf.addr.0.i = phi ptr [ %buf, %if.then44.if.end.i_crit_edge ], [ %59, %if.then.i ]
  %read_page_raw.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 16
  %60 = ptrtoint ptr %read_page_raw.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read_page_raw.i, align 8
  %call2.i = tail call i32 %61(ptr noundef %chip, ptr noundef %buf.addr.0.i, i32 noundef 1, i32 noundef %conv.i162) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %for.cond.preheader.i, label %brcmstb_nand_verify_erased_page.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %62 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %steps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp47.i = icmp sgt i32 %63, 0
  br i1 %cmp47.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.brcmstb_nand_verify_erased_page.exit.thread_crit_edge

for.cond.preheader.i.brcmstb_nand_verify_erased_page.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmstb_nand_verify_erased_page.exit.thread

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %oob_poi.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end18.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bitflips.049.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %76, %if.end18.i.for.body.i_crit_edge ]
  %i.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end18.i.for.body.i_crit_edge ]
  %64 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size.i, align 8
  %mul.i = mul i32 %65, %i.048.i
  %add.ptr.i = getelementptr i8, ptr %buf.addr.0.i, i32 %mul.i
  %call9.i = call i32 @mtd_ooblayout_ecc(ptr noundef %mtd, i32 noundef %i.048.i, ptr noundef nonnull %ecc.i) #9
  %66 = ptrtoint ptr %oob_poi.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %oob_poi.i, align 4
  %68 = ptrtoint ptr %ecc.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ecc.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %67, i32 %69
  %70 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size.i, align 8
  %72 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %53, align 4
  %74 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %strength.i, align 4
  %call14.i = call i32 @nand_check_erased_ecc_chunk(ptr noundef %add.ptr.i, i32 noundef %71, ptr noundef %add.ptr10.i, i32 noundef %73, ptr noundef null, i32 noundef 0, i32 noundef %75) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %brcmstb_nand_verify_erased_page.exit.thread182, label %if.end18.i

brcmstb_nand_verify_erased_page.exit.thread182:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ecc.i) #9
  br label %do.body50

if.end18.i:                                       ; preds = %for.body.i
  %76 = call i32 @llvm.smax.i32(i32 %bitflips.049.i, i32 %call14.i) #9
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %77 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %steps.i, align 4
  %cmp.i164 = icmp slt i32 %inc.i, %78
  br i1 %cmp.i164, label %if.end18.i.for.body.i_crit_edge, label %if.end18.i.brcmstb_nand_verify_erased_page.exit.thread_crit_edge

if.end18.i.brcmstb_nand_verify_erased_page.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmstb_nand_verify_erased_page.exit.thread

if.end18.i.for.body.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

brcmstb_nand_verify_erased_page.exit.thread:      ; preds = %if.end18.i.brcmstb_nand_verify_erased_page.exit.thread_crit_edge, %for.cond.preheader.i.brcmstb_nand_verify_erased_page.exit.thread_crit_edge
  %retval.0.i165.ph = phi i32 [ 0, %for.cond.preheader.i.brcmstb_nand_verify_erased_page.exit.thread_crit_edge ], [ %76, %if.end18.i.brcmstb_nand_verify_erased_page.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ecc.i) #9
  br label %cleanup

brcmstb_nand_verify_erased_page.exit:             ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ecc.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp46 = icmp sgt i32 %call2.i, -1
  br i1 %cmp46, label %brcmstb_nand_verify_erased_page.exit.cleanup_crit_edge, label %brcmstb_nand_verify_erased_page.exit.do.body50_crit_edge

brcmstb_nand_verify_erased_page.exit.do.body50_crit_edge: ; preds = %brcmstb_nand_verify_erased_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body50

brcmstb_nand_verify_erased_page.exit.cleanup_crit_edge: ; preds = %brcmstb_nand_verify_erased_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body50:                                        ; preds = %brcmstb_nand_verify_erased_page.exit.do.body50_crit_edge, %brcmstb_nand_verify_erased_page.exit.thread182, %if.end41.do.body50_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmnand_read.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmnand_read, %if.then62)) #9
          to label %do.end66 [label %if.then62], !srcloc !340

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %3, align 8
  %81 = ptrtoint ptr %err_addr to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %err_addr, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmnand_read.__UNIQUE_ID_ddebug268, ptr noundef %80, ptr noundef nonnull @.str.91, i64 noundef %82) #9
  br label %do.end66

do.end66:                                         ; preds = %if.then62, %do.body50
  %failed = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52, i32 1
  %83 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %failed, align 4
  %inc = add i32 %84, 1
  store i32 %inc, ptr %failed, align 4
  br label %cleanup

if.then70:                                        ; preds = %if.end30
  %85 = ptrtoint ptr %nand_version to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nand_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %86)
  %cmp.i168 = icmp slt i32 %86, 1536
  br i1 %cmp.i168, label %if.then70.brcmnand_count_corrected.exit_crit_edge, label %if.end.i172

if.then70.brcmnand_count_corrected.exit_crit_edge: ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_count_corrected.exit

if.end.i172:                                      ; preds = %if.then70
  %87 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i170 = getelementptr i16, ptr %88, i32 12
  %89 = ptrtoint ptr %arrayidx.i.i170 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx.i.i170, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool.not.i.i171 = icmp eq i16 %90, 0
  br i1 %tobool.not.i.i171, label %if.end.i172.brcmnand_count_corrected.exit_crit_edge, label %if.then.i.i176

if.end.i172.brcmnand_count_corrected.exit_crit_edge: ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_count_corrected.exit

if.then.i.i176:                                   ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i173 = zext i16 %90 to i32
  %91 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i.i175 = getelementptr i8, ptr %92, i32 %conv.i.i173
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i175) #9, !srcloc !336
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #9
  br label %brcmnand_count_corrected.exit

brcmnand_count_corrected.exit:                    ; preds = %if.then.i.i176, %if.end.i172.brcmnand_count_corrected.exit_crit_edge, %if.then70.brcmnand_count_corrected.exit_crit_edge
  %retval.0.i177 = phi i32 [ 1, %if.then70.brcmnand_count_corrected.exit_crit_edge ], [ %94, %if.then.i.i176 ], [ 0, %if.end.i172.brcmnand_count_corrected.exit_crit_edge ]
  br i1 %edu_err.1.off0, label %if.then73, label %brcmnand_count_corrected.exit.do.body76_crit_edge

brcmnand_count_corrected.exit.do.body76_crit_edge: ; preds = %brcmnand_count_corrected.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body76

if.then73:                                        ; preds = %brcmnand_count_corrected.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call74 = call fastcc i32 @brcmnand_read_by_pio(ptr noundef %mtd, ptr noundef %chip, i64 noundef %addr, i32 noundef %trans, ptr noundef %buf, ptr noundef %oob, ptr noundef nonnull %err_addr)
  br label %do.body76

do.body76:                                        ; preds = %if.then73, %brcmnand_count_corrected.exit.do.body76_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmnand_read.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmnand_read, %if.then88)) #9
          to label %do.end92 [label %if.then88], !srcloc !340

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %3, align 8
  %97 = ptrtoint ptr %err_addr to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %err_addr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmnand_read.__UNIQUE_ID_ddebug269, ptr noundef %96, ptr noundef nonnull @.str.92, i64 noundef %98) #9
  br label %do.end92

do.end92:                                         ; preds = %if.then88, %do.body76
  %ecc_stats93 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52
  %99 = ptrtoint ptr %ecc_stats93 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ecc_stats93, align 4
  %add = add i32 %100, %retval.0.i177
  store i32 %add, ptr %ecc_stats93, align 4
  %bitflip_threshold = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 12
  %101 = ptrtoint ptr %bitflip_threshold to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bitflip_threshold, align 4
  %103 = tail call i32 @llvm.umax.i32(i32 %102, i32 %retval.0.i177)
  br label %cleanup

cleanup:                                          ; preds = %do.end92, %do.end66, %brcmstb_nand_verify_erased_page.exit.cleanup_crit_edge, %brcmstb_nand_verify_erased_page.exit.thread, %if.end30.cleanup_crit_edge, %if.then10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end66 ], [ %103, %do.end92 ], [ %call2.i, %brcmstb_nand_verify_erased_page.exit.cleanup_crit_edge ], [ %retval.0.i165.ph, %brcmstb_nand_verify_erased_page.exit.thread ], [ -5, %if.then10.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %err_addr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmnand_read_by_pio(ptr nocapture noundef readonly %mtd, ptr nocapture noundef readonly %chip, i64 noundef %addr, i32 noundef %trans, ptr noundef writeonly %buf, ptr noundef writeonly %oob, ptr nocapture noundef writeonly %err_addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl1 = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl1, align 8
  %reg_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %5, i32 16
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i.i, label %entry.brcmnand_write_reg.exit.i_crit_edge, label %if.then.i.i

entry.brcmnand_write_reg.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i16 %7 to i32
  %nand_base.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #9, !srcloc !337
  br label %brcmnand_write_reg.exit.i

brcmnand_write_reg.exit.i:                        ; preds = %if.then.i.i, %entry.brcmnand_write_reg.exit.i_crit_edge
  %10 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i5.i = getelementptr i16, ptr %11, i32 14
  %12 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i5.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i6.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i6.i, label %brcmnand_write_reg.exit.i.brcmnand_write_reg.exit11.i_crit_edge, label %if.then.i10.i

brcmnand_write_reg.exit.i.brcmnand_write_reg.exit11.i_crit_edge: ; preds = %brcmnand_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit11.i

if.then.i10.i:                                    ; preds = %brcmnand_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i7.i = zext i16 %13 to i32
  %nand_base.i.i8.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %nand_base.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nand_base.i.i8.i, align 4
  %add.ptr.i.i9.i = getelementptr i8, ptr %15, i32 %conv.i7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9.i, i32 0) #9, !srcloc !337
  br label %brcmnand_write_reg.exit11.i

brcmnand_write_reg.exit11.i:                      ; preds = %if.then.i10.i, %brcmnand_write_reg.exit.i.brcmnand_write_reg.exit11.i_crit_edge
  %16 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i13.i = getelementptr i16, ptr %17, i32 15
  %18 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i13.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i14.i = icmp eq i16 %19, 0
  br i1 %tobool.not.i14.i, label %brcmnand_write_reg.exit11.i.brcmnand_write_reg.exit19.i_crit_edge, label %if.then.i18.i

brcmnand_write_reg.exit11.i.brcmnand_write_reg.exit19.i_crit_edge: ; preds = %brcmnand_write_reg.exit11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit19.i

if.then.i18.i:                                    ; preds = %brcmnand_write_reg.exit11.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i15.i = zext i16 %19 to i32
  %nand_base.i.i16.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %nand_base.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nand_base.i.i16.i, align 4
  %add.ptr.i.i17.i = getelementptr i8, ptr %21, i32 %conv.i15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17.i, i32 0) #9, !srcloc !337
  br label %brcmnand_write_reg.exit19.i

brcmnand_write_reg.exit19.i:                      ; preds = %if.then.i18.i, %brcmnand_write_reg.exit11.i.brcmnand_write_reg.exit19.i_crit_edge
  %22 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i21.i = getelementptr i16, ptr %23, i32 13
  %24 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.i21.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i22.i = icmp eq i16 %25, 0
  br i1 %tobool.not.i22.i, label %brcmnand_write_reg.exit19.i.brcmnand_clear_ecc_addr.exit_crit_edge, label %if.then.i26.i

brcmnand_write_reg.exit19.i.brcmnand_clear_ecc_addr.exit_crit_edge: ; preds = %brcmnand_write_reg.exit19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_clear_ecc_addr.exit

if.then.i26.i:                                    ; preds = %brcmnand_write_reg.exit19.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i23.i = zext i16 %25 to i32
  %nand_base.i.i24.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %26 = ptrtoint ptr %nand_base.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nand_base.i.i24.i, align 4
  %add.ptr.i.i25.i = getelementptr i8, ptr %27, i32 %conv.i23.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i25.i, i32 0) #9, !srcloc !337
  br label %brcmnand_clear_ecc_addr.exit

brcmnand_clear_ecc_addr.exit:                     ; preds = %if.then.i26.i, %brcmnand_write_reg.exit19.i.brcmnand_clear_ecc_addr.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trans)
  %cmp113.not = icmp eq i32 %trans, 0
  br i1 %cmp113.not, label %brcmnand_clear_ecc_addr.exit.for.end30_crit_edge, label %for.body.lr.ph

brcmnand_clear_ecc_addr.exit.for.end30_crit_edge: ; preds = %brcmnand_clear_ecc_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end30

for.body.lr.ph:                                   ; preds = %brcmnand_clear_ecc_addr.exit
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %soc = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 8
  %nand_fc.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 3
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %sector_size_1k = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 8
  %max_oob.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 42
  %nand_base.i.i.i75 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc28.for.body_crit_edge, %for.body.lr.ph
  %ret.0121 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.2, %for.inc28.for.body_crit_edge ]
  %i.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29, %for.inc28.for.body_crit_edge ]
  %addr.addr.0117 = phi i64 [ %addr, %for.body.lr.ph ], [ %add, %for.inc28.for.body_crit_edge ]
  %oob.addr.0115 = phi ptr [ %oob, %for.body.lr.ph ], [ %oob.addr.1, %for.inc28.for.body_crit_edge ]
  %buf.addr.0114 = phi ptr [ %buf, %for.body.lr.ph ], [ %buf.addr.2, %for.inc28.for.body_crit_edge ]
  %28 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv.i.i, align 8
  %ctrl2.i = getelementptr inbounds %struct.brcmnand_host, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctrl2.i, align 8
  %reg_offsets.i.i57 = getelementptr inbounds %struct.brcmnand_controller, ptr %31, i32 0, i32 33
  %32 = ptrtoint ptr %reg_offsets.i.i57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_offsets.i.i57, align 8
  %arrayidx.i.i58 = getelementptr i16, ptr %33, i32 1
  %34 = ptrtoint ptr %arrayidx.i.i58 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.i.i58, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not.i.i59 = icmp eq i16 %35, 0
  br i1 %tobool.not.i.i59, label %for.body.brcmnand_write_reg.exit.i64_crit_edge, label %if.then.i.i63

for.body.brcmnand_write_reg.exit.i64_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit.i64

if.then.i.i63:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i = lshr i64 %addr.addr.0117, 32
  %36 = trunc i64 %shr.i to i32
  %37 = and i32 %36, 65535
  %cs.i = getelementptr inbounds %struct.brcmnand_host, ptr %29, i32 0, i32 3
  %38 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cs.i, align 4
  %shl.i = shl i32 %39, 16
  %conv3.i = or i32 %shl.i, %37
  %conv.i.i60 = zext i16 %35 to i32
  %nand_base.i.i.i61 = getelementptr inbounds %struct.brcmnand_controller, ptr %31, i32 0, i32 2
  %40 = ptrtoint ptr %nand_base.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nand_base.i.i.i61, align 4
  %add.ptr.i.i.i62 = getelementptr i8, ptr %41, i32 %conv.i.i60
  %42 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i62, i32 %42) #9, !srcloc !337
  br label %brcmnand_write_reg.exit.i64

brcmnand_write_reg.exit.i64:                      ; preds = %if.then.i.i63, %for.body.brcmnand_write_reg.exit.i64_crit_edge
  %43 = ptrtoint ptr %reg_offsets.i.i57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_offsets.i.i57, align 8
  %arrayidx.i15.i = getelementptr i16, ptr %44, i32 1
  %45 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.i15.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.not.i16.i = icmp eq i16 %46, 0
  br i1 %tobool.not.i16.i, label %brcmnand_write_reg.exit.i64.brcmnand_read_reg.exit.i_crit_edge, label %if.then.i20.i

brcmnand_write_reg.exit.i64.brcmnand_read_reg.exit.i_crit_edge: ; preds = %brcmnand_write_reg.exit.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit.i

if.then.i20.i:                                    ; preds = %brcmnand_write_reg.exit.i64
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i17.i = zext i16 %46 to i32
  %nand_base.i.i18.i = getelementptr inbounds %struct.brcmnand_controller, ptr %31, i32 0, i32 2
  %47 = ptrtoint ptr %nand_base.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nand_base.i.i18.i, align 4
  %add.ptr.i.i19.i = getelementptr i8, ptr %48, i32 %conv.i17.i
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19.i) #9, !srcloc !336
  br label %brcmnand_read_reg.exit.i

brcmnand_read_reg.exit.i:                         ; preds = %if.then.i20.i, %brcmnand_write_reg.exit.i64.brcmnand_read_reg.exit.i_crit_edge
  %50 = ptrtoint ptr %reg_offsets.i.i57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_offsets.i.i57, align 8
  %arrayidx.i22.i = getelementptr i16, ptr %51, i32 2
  %52 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.i22.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.not.i23.i = icmp eq i16 %53, 0
  br i1 %tobool.not.i23.i, label %brcmnand_read_reg.exit.i.brcmnand_write_reg.exit28.i_crit_edge, label %if.then.i27.i

brcmnand_read_reg.exit.i.brcmnand_write_reg.exit28.i_crit_edge: ; preds = %brcmnand_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit28.i

if.then.i27.i:                                    ; preds = %brcmnand_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = trunc i64 %addr.addr.0117 to i32
  %conv.i24.i = zext i16 %53 to i32
  %nand_base.i.i25.i = getelementptr inbounds %struct.brcmnand_controller, ptr %31, i32 0, i32 2
  %54 = ptrtoint ptr %nand_base.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nand_base.i.i25.i, align 4
  %add.ptr.i.i26.i = getelementptr i8, ptr %55, i32 %conv.i24.i
  %56 = tail call i32 @llvm.bswap.i32(i32 %conv6.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i26.i, i32 %56) #9, !srcloc !337
  br label %brcmnand_write_reg.exit28.i

brcmnand_write_reg.exit28.i:                      ; preds = %if.then.i27.i, %brcmnand_read_reg.exit.i.brcmnand_write_reg.exit28.i_crit_edge
  %57 = ptrtoint ptr %reg_offsets.i.i57 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_offsets.i.i57, align 8
  %arrayidx.i30.i = getelementptr i16, ptr %58, i32 2
  %59 = ptrtoint ptr %arrayidx.i30.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx.i30.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool.not.i31.i = icmp eq i16 %60, 0
  br i1 %tobool.not.i31.i, label %brcmnand_write_reg.exit28.i.brcmnand_set_cmd_addr.exit_crit_edge, label %if.then.i35.i

brcmnand_write_reg.exit28.i.brcmnand_set_cmd_addr.exit_crit_edge: ; preds = %brcmnand_write_reg.exit28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_set_cmd_addr.exit

if.then.i35.i:                                    ; preds = %brcmnand_write_reg.exit28.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i32.i = zext i16 %60 to i32
  %nand_base.i.i33.i = getelementptr inbounds %struct.brcmnand_controller, ptr %31, i32 0, i32 2
  %61 = ptrtoint ptr %nand_base.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %nand_base.i.i33.i, align 4
  %add.ptr.i.i34.i = getelementptr i8, ptr %62, i32 %conv.i32.i
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34.i) #9, !srcloc !336
  br label %brcmnand_set_cmd_addr.exit

brcmnand_set_cmd_addr.exit:                       ; preds = %if.then.i35.i, %brcmnand_write_reg.exit28.i.brcmnand_set_cmd_addr.exit_crit_edge
  tail call fastcc void @brcmnand_send_cmd(ptr noundef %1, i32 noundef 1)
  %call2 = tail call i32 @brcmnand_waitfunc(ptr noundef %chip)
  %tobool.not = icmp eq ptr %buf.addr.0114, null
  br i1 %tobool.not, label %brcmnand_set_cmd_addr.exit.if.end_crit_edge, label %if.then, !prof !349

brcmnand_set_cmd_addr.exit.if.end_crit_edge:      ; preds = %brcmnand_set_cmd_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %brcmnand_set_cmd_addr.exit
  %64 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %soc, align 4
  %tobool.not.i = icmp eq ptr %65, null
  br i1 %tobool.not.i, label %if.then.for.body7.preheader_crit_edge, label %land.lhs.true.i

if.then.for.body7.preheader_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7.preheader

land.lhs.true.i:                                  ; preds = %if.then
  %prepare_data_bus.i = getelementptr inbounds %struct.brcmnand_soc, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %prepare_data_bus.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prepare_data_bus.i, align 4
  %tobool1.not.i = icmp eq ptr %67, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.for.body7.preheader_crit_edge, label %if.then.i

land.lhs.true.i.for.body7.preheader_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7.preheader

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %67(ptr noundef nonnull %65, i1 noundef zeroext true, i1 noundef zeroext false) #9
  br label %for.body7.preheader

for.body7.preheader:                              ; preds = %if.then.i, %land.lhs.true.i.for.body7.preheader_crit_edge, %if.then.for.body7.preheader_crit_edge
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body7.preheader
  %j.0112 = phi i32 [ %inc, %for.body7.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %buf.addr.1111 = phi ptr [ %incdec.ptr, %for.body7.for.body7_crit_edge ], [ %buf.addr.0114, %for.body7.preheader ]
  %68 = ptrtoint ptr %nand_fc.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %nand_fc.i, align 8
  %mul.i = shl nuw nsw i32 %j.0112, 2
  %add.ptr.i = getelementptr i8, ptr %69, i32 %mul.i
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !336
  %71 = ptrtoint ptr %buf.addr.1111 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %buf.addr.1111, align 4
  %inc = add nuw nsw i32 %j.0112, 1
  %incdec.ptr = getelementptr i32, ptr %buf.addr.1111, i32 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7

for.end:                                          ; preds = %for.body7
  %72 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %soc, align 4
  %tobool.not.i65 = icmp eq ptr %73, null
  br i1 %tobool.not.i65, label %for.end.if.end_crit_edge, label %land.lhs.true.i68

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i68:                                ; preds = %for.end
  %prepare_data_bus.i66 = getelementptr inbounds %struct.brcmnand_soc, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %prepare_data_bus.i66 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prepare_data_bus.i66, align 4
  %tobool1.not.i67 = icmp eq ptr %75, null
  br i1 %tobool1.not.i67, label %land.lhs.true.i68.if.end_crit_edge, label %if.then.i69

land.lhs.true.i68.if.end_crit_edge:               ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i69:                                      ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %75(ptr noundef nonnull %73, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i69, %land.lhs.true.i68.if.end_crit_edge, %for.end.if.end_crit_edge, %brcmnand_set_cmd_addr.exit.if.end_crit_edge
  %buf.addr.2 = phi ptr [ null, %brcmnand_set_cmd_addr.exit.if.end_crit_edge ], [ %incdec.ptr, %for.end.if.end_crit_edge ], [ %incdec.ptr, %land.lhs.true.i68.if.end_crit_edge ], [ %incdec.ptr, %if.then.i69 ]
  %tobool10.not = icmp eq ptr %oob.addr.0115, null
  br i1 %tobool10.not, label %if.end.if.end13_crit_edge, label %if.then11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.end
  %76 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %oobsize, align 4
  %div = udiv i32 %77, %trans
  %78 = ptrtoint ptr %sector_size_1k to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sector_size_1k, align 4
  %shl.i70 = shl i32 %div, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i71 = icmp eq i32 %79, 0
  %and.i = and i32 %i.0119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i72 = icmp eq i32 %and.i, 0
  %or.cond.i = or i1 %tobool1.not.i72, %tobool.not.i71
  br i1 %or.cond.i, label %if.then11.if.end.i_crit_edge, label %if.then.i73

if.then11.if.end.i_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i73:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %max_oob.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max_oob.i, align 4
  %sub.i = sub i32 %shl.i70, %81
  %82 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i73, %if.then11.if.end.i_crit_edge
  %tbytes.0.i = phi i32 [ %82, %if.then.i73 ], [ %shl.i70, %if.then11.if.end.i_crit_edge ]
  %83 = ptrtoint ptr %max_oob.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %max_oob.i, align 4
  %85 = tail call i32 @llvm.smin.i32(i32 %tbytes.0.i, i32 %84) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp923.i = icmp sgt i32 %85, 0
  br i1 %cmp923.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.read_oob_from_regs.exit_crit_edge

if.end.i.read_oob_from_regs.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_oob_from_regs.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %oob_reg_read.exit.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %j.024.i = phi i32 [ %inc.i, %oob_reg_read.exit.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %86 = ptrtoint ptr %max_oob.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %max_oob.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %j.024.i)
  %cmp.not.i.i = icmp ugt i32 %87, %j.024.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %for.body.i.oob_reg_read.exit.i_crit_edge

for.body.i.oob_reg_read.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %oob_reg_read.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx2.i.i = getelementptr i16, ptr %89, i32 22
  %90 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx2.i.i, align 2
  %arrayidx.i.i76 = getelementptr i16, ptr %89, i32 21
  %92 = ptrtoint ptr %arrayidx.i.i76 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx.i.i76, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %j.024.i)
  %cmp3.i.i = icmp ult i32 %j.024.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool.not.i.i77 = icmp eq i16 %91, 0
  %or.cond.i.i = select i1 %cmp3.i.i, i1 true, i1 %tobool.not.i.i77
  %94 = trunc i32 %j.024.i to i16
  %95 = add i16 %94, -16
  %.sink27.i.i = select i1 %or.cond.i.i, i16 %94, i16 %95
  %.sink.i.i = select i1 %or.cond.i.i, i16 %93, i16 %91
  %96 = and i16 %.sink27.i.i, -4
  %conv10.i.i = add i16 %96, %.sink.i.i
  %conv12.i.i = zext i16 %conv10.i.i to i32
  %97 = ptrtoint ptr %nand_base.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %nand_base.i.i.i75, align 4
  %add.ptr.i.i.i78 = getelementptr i8, ptr %98, i32 %conv12.i.i
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i78) #9, !srcloc !336
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #9
  %and13.i.i = shl i32 %j.024.i, 3
  %and13.not.i.i = and i32 %and13.i.i, 24
  %sub14.i.i = xor i32 %and13.not.i.i, 24
  %shr.i.i = lshr i32 %100, %sub14.i.i
  %conv15.i.i = trunc i32 %shr.i.i to i8
  br label %oob_reg_read.exit.i

oob_reg_read.exit.i:                              ; preds = %if.end.i.i, %for.body.i.oob_reg_read.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %conv15.i.i, %if.end.i.i ], [ 119, %for.body.i.oob_reg_read.exit.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %oob.addr.0115, i32 %j.024.i
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %retval.0.i.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %j.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %85
  br i1 %exitcond.not.i, label %oob_reg_read.exit.i.read_oob_from_regs.exit_crit_edge, label %oob_reg_read.exit.i.for.body.i_crit_edge

oob_reg_read.exit.i.for.body.i_crit_edge:         ; preds = %oob_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

oob_reg_read.exit.i.read_oob_from_regs.exit_crit_edge: ; preds = %oob_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_oob_from_regs.exit

read_oob_from_regs.exit:                          ; preds = %oob_reg_read.exit.i.read_oob_from_regs.exit_crit_edge, %if.end.i.read_oob_from_regs.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %oob.addr.0115, i32 %85
  br label %if.end13

if.end13:                                         ; preds = %read_oob_from_regs.exit, %if.end.if.end13_crit_edge
  %oob.addr.1 = phi ptr [ %add.ptr, %read_oob_from_regs.exit ], [ null, %if.end.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %ret.0121)
  %cmp14.not = icmp eq i32 %ret.0121, -74
  br i1 %cmp14.not, label %if.end13.for.inc28_crit_edge, label %if.then15

if.end13.for.inc28_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28

if.then15:                                        ; preds = %if.end13
  %102 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i80 = getelementptr i16, ptr %103, i32 16
  %104 = ptrtoint ptr %arrayidx.i.i80 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx.i.i80, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool.not.i.i81 = icmp eq i16 %105, 0
  br i1 %tobool.not.i.i81, label %if.then15.brcmnand_read_reg.exit.i87_crit_edge, label %if.then.i.i85

if.then15.brcmnand_read_reg.exit.i87_crit_edge:   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit.i87

if.then.i.i85:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i82 = zext i16 %105 to i32
  %106 = ptrtoint ptr %nand_base.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %nand_base.i.i.i75, align 4
  %add.ptr.i.i.i84 = getelementptr i8, ptr %107, i32 %conv.i.i82
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i84) #9, !srcloc !336
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #9
  br label %brcmnand_read_reg.exit.i87

brcmnand_read_reg.exit.i87:                       ; preds = %if.then.i.i85, %if.then15.brcmnand_read_reg.exit.i87_crit_edge
  %retval.0.i.i86 = phi i32 [ %109, %if.then.i.i85 ], [ 0, %if.then15.brcmnand_read_reg.exit.i87_crit_edge ]
  %110 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i6.i = getelementptr i16, ptr %111, i32 15
  %112 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx.i6.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool.not.i7.i = icmp eq i16 %113, 0
  br i1 %tobool.not.i7.i, label %brcmnand_read_reg.exit.i87.brcmnand_get_uncorrecc_addr.exit_crit_edge, label %if.then.i11.i

brcmnand_read_reg.exit.i87.brcmnand_get_uncorrecc_addr.exit_crit_edge: ; preds = %brcmnand_read_reg.exit.i87
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_get_uncorrecc_addr.exit

if.then.i11.i:                                    ; preds = %brcmnand_read_reg.exit.i87
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i8.i = zext i16 %113 to i32
  %114 = ptrtoint ptr %nand_base.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %nand_base.i.i.i75, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %115, i32 %conv.i8.i
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i) #9, !srcloc !336
  %117 = and i32 %116, -65536
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #9
  br label %brcmnand_get_uncorrecc_addr.exit

brcmnand_get_uncorrecc_addr.exit:                 ; preds = %if.then.i11.i, %brcmnand_read_reg.exit.i87.brcmnand_get_uncorrecc_addr.exit_crit_edge
  %retval.0.i12.i = phi i32 [ %118, %if.then.i11.i ], [ 0, %brcmnand_read_reg.exit.i87.brcmnand_get_uncorrecc_addr.exit_crit_edge ]
  %conv.i = zext i32 %retval.0.i.i86 to i64
  %conv2.i = zext i32 %retval.0.i12.i to i64
  %shl.i88 = shl nuw nsw i64 %conv2.i, 32
  %or.i = or i64 %shl.i88, %conv.i
  %119 = ptrtoint ptr %err_addr to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %or.i, ptr %err_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i)
  %tobool17.not = icmp eq i64 %or.i, 0
  br i1 %tobool17.not, label %if.end20, label %brcmnand_get_uncorrecc_addr.exit.for.inc28_crit_edge

brcmnand_get_uncorrecc_addr.exit.for.inc28_crit_edge: ; preds = %brcmnand_get_uncorrecc_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28

if.end20:                                         ; preds = %brcmnand_get_uncorrecc_addr.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0121)
  %tobool21.not = icmp eq i32 %ret.0121, 0
  br i1 %tobool21.not, label %if.then22, label %if.end20.for.inc28_crit_edge

if.end20.for.inc28_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28

if.then22:                                        ; preds = %if.end20
  %120 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i90 = getelementptr i16, ptr %121, i32 14
  %122 = ptrtoint ptr %arrayidx.i.i90 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %arrayidx.i.i90, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool.not.i.i91 = icmp eq i16 %123, 0
  br i1 %tobool.not.i.i91, label %if.then22.brcmnand_read_reg.exit.i99_crit_edge, label %if.then.i.i95

if.then22.brcmnand_read_reg.exit.i99_crit_edge:   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit.i99

if.then.i.i95:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i92 = zext i16 %123 to i32
  %124 = ptrtoint ptr %nand_base.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %nand_base.i.i.i75, align 4
  %add.ptr.i.i.i94 = getelementptr i8, ptr %125, i32 %conv.i.i92
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i94) #9, !srcloc !336
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #9
  br label %brcmnand_read_reg.exit.i99

brcmnand_read_reg.exit.i99:                       ; preds = %if.then.i.i95, %if.then22.brcmnand_read_reg.exit.i99_crit_edge
  %retval.0.i.i96 = phi i32 [ %127, %if.then.i.i95 ], [ 0, %if.then22.brcmnand_read_reg.exit.i99_crit_edge ]
  %128 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i6.i97 = getelementptr i16, ptr %129, i32 13
  %130 = ptrtoint ptr %arrayidx.i6.i97 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx.i6.i97, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool.not.i7.i98 = icmp eq i16 %131, 0
  br i1 %tobool.not.i7.i98, label %brcmnand_read_reg.exit.i99.brcmnand_get_correcc_addr.exit_crit_edge, label %if.then.i11.i103

brcmnand_read_reg.exit.i99.brcmnand_get_correcc_addr.exit_crit_edge: ; preds = %brcmnand_read_reg.exit.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_get_correcc_addr.exit

if.then.i11.i103:                                 ; preds = %brcmnand_read_reg.exit.i99
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i8.i100 = zext i16 %131 to i32
  %132 = ptrtoint ptr %nand_base.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %nand_base.i.i.i75, align 4
  %add.ptr.i.i10.i102 = getelementptr i8, ptr %133, i32 %conv.i8.i100
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i102) #9, !srcloc !336
  %135 = and i32 %134, -65536
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #9
  br label %brcmnand_get_correcc_addr.exit

brcmnand_get_correcc_addr.exit:                   ; preds = %if.then.i11.i103, %brcmnand_read_reg.exit.i99.brcmnand_get_correcc_addr.exit_crit_edge
  %retval.0.i12.i104 = phi i32 [ %136, %if.then.i11.i103 ], [ 0, %brcmnand_read_reg.exit.i99.brcmnand_get_correcc_addr.exit_crit_edge ]
  %conv.i105 = zext i32 %retval.0.i.i96 to i64
  %conv2.i106 = zext i32 %retval.0.i12.i104 to i64
  %shl.i107 = shl nuw nsw i64 %conv2.i106, 32
  %or.i108 = or i64 %shl.i107, %conv.i105
  %137 = ptrtoint ptr %err_addr to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %or.i108, ptr %err_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i108)
  %tobool24.not = icmp eq i64 %or.i108, 0
  %spec.select56 = select i1 %tobool24.not, i32 0, i32 -117
  br label %for.inc28

for.inc28:                                        ; preds = %brcmnand_get_correcc_addr.exit, %if.end20.for.inc28_crit_edge, %brcmnand_get_uncorrecc_addr.exit.for.inc28_crit_edge, %if.end13.for.inc28_crit_edge
  %ret.2 = phi i32 [ %ret.0121, %if.end20.for.inc28_crit_edge ], [ %spec.select56, %brcmnand_get_correcc_addr.exit ], [ -74, %if.end13.for.inc28_crit_edge ], [ -74, %brcmnand_get_uncorrecc_addr.exit.for.inc28_crit_edge ]
  %inc29 = add nuw i32 %i.0119, 1
  %add = add i64 %addr.addr.0117, 512
  %exitcond122.not = icmp eq i32 %inc29, %trans
  br i1 %exitcond122.not, label %for.inc28.for.end30_crit_edge, label %for.inc28.for.body_crit_edge

for.inc28.for.body_crit_edge:                     ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc28.for.end30_crit_edge:                    ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end30

for.end30:                                        ; preds = %for.inc28.for.end30_crit_edge, %brcmnand_clear_ecc_addr.exit.for.end30_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %brcmnand_clear_ecc_addr.exit.for.end30_crit_edge ], [ %ret.2, %for.inc28.for.end30_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_ecc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmnand_edu_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %edu_count = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 20
  %0 = ptrtoint ptr %edu_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %edu_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end34_crit_edge, label %if.then

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then:                                          ; preds = %entry
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %edu_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %edu_count, align 8
  %edu_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 17
  %edu_base.i = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 18
  %3 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i152 = getelementptr i16, ptr %4, i32 7
  %5 = ptrtoint ptr %arrayidx.i152 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx.i152, align 2
  %7 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %edu_base.i, align 8
  %conv.i153 = zext i16 %6 to i32
  %add.ptr.i154 = getelementptr i8, ptr %8, i32 %conv.i153
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154) #9, !srcloc !336
  %10 = and i32 %9, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not155 = icmp eq i32 %10, 0
  br i1 %tobool2.not155, label %if.then.while.body_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #9
  %12 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i = getelementptr i16, ptr %13, i32 7
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i, align 2
  %16 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %edu_base.i, align 8
  %conv.i = zext i16 %15 to i32
  %add.ptr.i = getelementptr i8, ptr %17, i32 %conv.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !336
  %19 = and i32 %18, 50331648
  %tobool2.not = icmp eq i32 %19, 0
  br i1 %tobool2.not, label %while.body.while.body_crit_edge, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end:                                           ; preds = %while.body.if.end_crit_edge, %if.then.if.end_crit_edge
  %20 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i71 = getelementptr i16, ptr %21, i32 7
  %22 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i71, align 2
  %24 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %edu_base.i, align 8
  %conv.i73 = zext i16 %23 to i32
  %add.ptr.i74 = getelementptr i8, ptr %25, i32 %conv.i73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 0) #9, !srcloc !337
  %26 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i76 = getelementptr i16, ptr %27, i32 7
  %28 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.i76, align 2
  %30 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %edu_base.i, align 8
  %conv.i78 = zext i16 %29 to i32
  %add.ptr.i79 = getelementptr i8, ptr %31, i32 %conv.i78
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #9, !srcloc !336
  %33 = ptrtoint ptr %edu_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %edu_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool5.not = icmp eq i32 %.pr, 0
  br i1 %tobool5.not, label %if.end.if.end34_crit_edge, label %if.then6

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then6:                                         ; preds = %if.end
  %edu_dram_addr = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 21
  %34 = ptrtoint ptr %edu_dram_addr to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %edu_dram_addr, align 8
  %add = add i64 %35, 512
  store i64 %add, ptr %edu_dram_addr, align 8
  %edu_ext_addr = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 22
  %36 = ptrtoint ptr %edu_ext_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %edu_ext_addr, align 8
  %add7 = add i32 %37, 512
  store i32 %add7, ptr %edu_ext_addr, align 8
  %conv = trunc i64 %add to i32
  %38 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i81 = getelementptr i16, ptr %39, i32 1
  %40 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.i81, align 2
  %42 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %edu_base.i, align 8
  %conv.i83 = zext i16 %41 to i32
  %add.ptr.i84 = getelementptr i8, ptr %43, i32 %conv.i83
  %44 = tail call i32 @llvm.bswap.i32(i32 %conv) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %44) #9, !srcloc !337
  %45 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i86 = getelementptr i16, ptr %46, i32 1
  %47 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i86, align 2
  %49 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %edu_base.i, align 8
  %conv.i88 = zext i16 %48 to i32
  %add.ptr.i89 = getelementptr i8, ptr %50, i32 %conv.i88
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89) #9, !srcloc !336
  %52 = ptrtoint ptr %edu_ext_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %edu_ext_addr, align 8
  %54 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i91 = getelementptr i16, ptr %55, i32 2
  %56 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx.i91, align 2
  %58 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %edu_base.i, align 8
  %conv.i93 = zext i16 %57 to i32
  %add.ptr.i94 = getelementptr i8, ptr %59, i32 %conv.i93
  %60 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %60) #9, !srcloc !337
  %61 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i96 = getelementptr i16, ptr %62, i32 2
  %63 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx.i96, align 2
  %65 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %edu_base.i, align 8
  %conv.i98 = zext i16 %64 to i32
  %add.ptr.i99 = getelementptr i8, ptr %66, i32 %conv.i98
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #9, !srcloc !336
  %oob = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 27
  %68 = ptrtoint ptr %oob to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %oob, align 4
  %tobool12.not = icmp eq ptr %69, null
  br i1 %tobool12.not, label %if.then6.do.body_crit_edge, label %if.then13

if.then6.do.body_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then13:                                        ; preds = %if.then6
  %edu_cmd = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 23
  %70 = ptrtoint ptr %edu_cmd to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %edu_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp = icmp eq i32 %71, 1
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then13
  %72 = ptrtoint ptr %edu_count to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %edu_count, align 8
  %sas = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 25
  %74 = ptrtoint ptr %sas to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sas, align 4
  %sector_size_1k = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 26
  %76 = ptrtoint ptr %sector_size_1k to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sector_size_1k, align 8
  %shl.i = shl i32 %75, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i = icmp eq i32 %77, 0
  %78 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool1.not.i = icmp ne i32 %78, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then15.if.end.i_crit_edge, label %if.then.i

if.then15.if.end.i_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %max_oob.i = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 42
  %79 = ptrtoint ptr %max_oob.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_oob.i, align 4
  %sub.i = sub i32 %shl.i, %80
  %81 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then15.if.end.i_crit_edge
  %tbytes.0.i = phi i32 [ %81, %if.then.i ], [ %shl.i, %if.then15.if.end.i_crit_edge ]
  %max_oob2.i = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 42
  %82 = ptrtoint ptr %max_oob2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_oob2.i, align 4
  %84 = tail call i32 @llvm.smin.i32(i32 %tbytes.0.i, i32 %83) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp923.i = icmp sgt i32 %84, 0
  br i1 %cmp923.i, label %for.body.lr.ph.i, label %if.end.i.do.body.sink.split_crit_edge

if.end.i.do.body.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %reg_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 33
  %nand_base.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %oob_reg_read.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %oob_reg_read.exit.i.for.body.i_crit_edge ]
  %85 = ptrtoint ptr %max_oob2.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_oob2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %j.024.i)
  %cmp.not.i.i = icmp ugt i32 %86, %j.024.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %for.body.i.oob_reg_read.exit.i_crit_edge

for.body.i.oob_reg_read.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %oob_reg_read.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx2.i.i = getelementptr i16, ptr %88, i32 22
  %89 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx2.i.i, align 2
  %arrayidx.i.i = getelementptr i16, ptr %88, i32 21
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %j.024.i)
  %cmp3.i.i = icmp ult i32 %j.024.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool.not.i.i = icmp eq i16 %90, 0
  %or.cond.i.i = select i1 %cmp3.i.i, i1 true, i1 %tobool.not.i.i
  %93 = trunc i32 %j.024.i to i16
  %94 = add i16 %93, -16
  %.sink27.i.i = select i1 %or.cond.i.i, i16 %93, i16 %94
  %.sink.i.i = select i1 %or.cond.i.i, i16 %92, i16 %90
  %95 = and i16 %.sink27.i.i, -4
  %conv10.i.i = add i16 %95, %.sink.i.i
  %conv12.i.i = zext i16 %conv10.i.i to i32
  %96 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %97, i32 %conv12.i.i
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !336
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #9
  %and13.i.i = shl i32 %j.024.i, 3
  %and13.not.i.i = and i32 %and13.i.i, 24
  %sub14.i.i = xor i32 %and13.not.i.i, 24
  %shr.i.i = lshr i32 %99, %sub14.i.i
  %conv15.i.i = trunc i32 %shr.i.i to i8
  br label %oob_reg_read.exit.i

oob_reg_read.exit.i:                              ; preds = %if.end.i.i, %for.body.i.oob_reg_read.exit.i_crit_edge
  %retval.0.i.i = phi i8 [ %conv15.i.i, %if.end.i.i ], [ 119, %for.body.i.oob_reg_read.exit.i_crit_edge ]
  %arrayidx.i100 = getelementptr i8, ptr %69, i32 %j.024.i
  %100 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %retval.0.i.i, ptr %arrayidx.i100, align 1
  %inc.i = add nuw nsw i32 %j.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %84
  br i1 %exitcond.not.i, label %oob_reg_read.exit.i.do.body.sink.split_crit_edge, label %oob_reg_read.exit.i.for.body.i_crit_edge

oob_reg_read.exit.i.for.body.i_crit_edge:         ; preds = %oob_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

oob_reg_read.exit.i.do.body.sink.split_crit_edge: ; preds = %oob_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split

if.else:                                          ; preds = %if.then13
  %reg_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 33
  %101 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reg_offsets.i, align 8
  %arrayidx.i101 = getelementptr i16, ptr %102, i32 2
  %103 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx.i101, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool.not.i102 = icmp eq i16 %104, 0
  br i1 %tobool.not.i102, label %if.else.brcmnand_write_reg.exit_crit_edge, label %if.then.i104

if.else.brcmnand_write_reg.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit

if.then.i104:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %edu_ext_addr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %edu_ext_addr, align 8
  %conv.i103 = zext i16 %104 to i32
  %nand_base.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 2
  %107 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %108, i32 %conv.i103
  %109 = tail call i32 @llvm.bswap.i32(i32 %106) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %109) #9, !srcloc !337
  br label %brcmnand_write_reg.exit

brcmnand_write_reg.exit:                          ; preds = %if.then.i104, %if.else.brcmnand_write_reg.exit_crit_edge
  %110 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %reg_offsets.i, align 8
  %arrayidx.i107 = getelementptr i16, ptr %111, i32 2
  %112 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx.i107, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool.not.i108 = icmp eq i16 %113, 0
  br i1 %tobool.not.i108, label %brcmnand_write_reg.exit.brcmnand_read_reg.exit_crit_edge, label %if.then.i112

brcmnand_write_reg.exit.brcmnand_read_reg.exit_crit_edge: ; preds = %brcmnand_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit

if.then.i112:                                     ; preds = %brcmnand_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i109 = zext i16 %113 to i32
  %nand_base.i.i110 = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 2
  %114 = ptrtoint ptr %nand_base.i.i110 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %nand_base.i.i110, align 4
  %add.ptr.i.i111 = getelementptr i8, ptr %115, i32 %conv.i109
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i111) #9, !srcloc !336
  br label %brcmnand_read_reg.exit

brcmnand_read_reg.exit:                           ; preds = %if.then.i112, %brcmnand_write_reg.exit.brcmnand_read_reg.exit_crit_edge
  %117 = ptrtoint ptr %edu_count to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %edu_count, align 8
  %119 = ptrtoint ptr %oob to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %oob, align 4
  %sas25 = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 25
  %121 = ptrtoint ptr %sas25 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sas25, align 4
  %sector_size_1k26 = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 26
  %123 = ptrtoint ptr %sector_size_1k26 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %sector_size_1k26, align 8
  %shl.i113 = shl i32 %122, %124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i114 = icmp eq i32 %124, 0
  %and.i115 = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %tobool1.not.i116 = icmp eq i32 %and.i115, 0
  %or.cond.i117 = or i1 %tobool1.not.i116, %tobool.not.i114
  br i1 %or.cond.i117, label %brcmnand_read_reg.exit.if.end.i123_crit_edge, label %if.then.i120

brcmnand_read_reg.exit.if.end.i123_crit_edge:     ; preds = %brcmnand_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i123

if.then.i120:                                     ; preds = %brcmnand_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %max_oob.i118 = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 42
  %125 = ptrtoint ptr %max_oob.i118 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %max_oob.i118, align 4
  %sub.i119 = sub i32 %shl.i113, %126
  %127 = tail call i32 @llvm.smax.i32(i32 %sub.i119, i32 0) #9
  br label %if.end.i123

if.end.i123:                                      ; preds = %if.then.i120, %brcmnand_read_reg.exit.if.end.i123_crit_edge
  %tbytes.0.i121 = phi i32 [ %127, %if.then.i120 ], [ %shl.i113, %brcmnand_read_reg.exit.if.end.i123_crit_edge ]
  %max_oob2.i122 = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 42
  %128 = ptrtoint ptr %max_oob2.i122 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %max_oob2.i122, align 4
  %130 = tail call i32 @llvm.smin.i32(i32 %tbytes.0.i121, i32 %129) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp945.i = icmp sgt i32 %130, 0
  br i1 %cmp945.i, label %for.body.lr.ph.i126, label %if.end.i123.do.body.sink.split_crit_edge

if.end.i123.do.body.sink.split_crit_edge:         ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split

for.body.lr.ph.i126:                              ; preds = %if.end.i123
  %nand_base.i.i.i125 = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 2
  br label %for.body.i128

for.body.i128:                                    ; preds = %oob_reg_write.exit.i.for.body.i128_crit_edge, %for.body.lr.ph.i126
  %j.046.i = phi i32 [ 0, %for.body.lr.ph.i126 ], [ %add25.i, %oob_reg_write.exit.i.for.body.i128_crit_edge ]
  %131 = ptrtoint ptr %max_oob2.i122 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %max_oob2.i122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %j.046.i)
  %cmp.not.i.i127 = icmp ugt i32 %132, %j.046.i
  br i1 %cmp.not.i.i127, label %if.end.i.i140, label %for.body.i128.oob_reg_write.exit.i_crit_edge

for.body.i128.oob_reg_write.exit.i_crit_edge:     ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %oob_reg_write.exit.i

if.end.i.i140:                                    ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i129 = getelementptr i8, ptr %120, i32 %j.046.i
  %133 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.i129, align 1
  %conv.i130 = zext i8 %134 to i32
  %shl10.i = shl nuw i32 %conv.i130, 24
  %add11.i = or i32 %j.046.i, 1
  %arrayidx12.i = getelementptr i8, ptr %120, i32 %add11.i
  %135 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %136 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 16
  %or.i = or i32 %shl14.i, %shl10.i
  %add15.i = or i32 %j.046.i, 2
  %arrayidx16.i = getelementptr i8, ptr %120, i32 %add15.i
  %137 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %138 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 8
  %or19.i = or i32 %or.i, %shl18.i
  %add20.i = or i32 %j.046.i, 3
  %arrayidx21.i = getelementptr i8, ptr %120, i32 %add20.i
  %139 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %140 to i32
  %or24.i = or i32 %or19.i, %conv22.i
  %141 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %reg_offsets.i, align 8
  %arrayidx2.i.i131 = getelementptr i16, ptr %142, i32 24
  %143 = ptrtoint ptr %arrayidx2.i.i131 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %arrayidx2.i.i131, align 2
  %arrayidx.i.i132 = getelementptr i16, ptr %142, i32 23
  %145 = ptrtoint ptr %arrayidx.i.i132 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %arrayidx.i.i132, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %j.046.i)
  %cmp3.i.i133 = icmp ult i32 %j.046.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %144)
  %tobool.not.i.i134 = icmp eq i16 %144, 0
  %or.cond.i.i135 = select i1 %cmp3.i.i133, i1 true, i1 %tobool.not.i.i134
  %147 = trunc i32 %j.046.i to i16
  %148 = add i16 %147, -16
  %.sink23.i.i = select i1 %or.cond.i.i135, i16 %147, i16 %148
  %.sink.i.i136 = select i1 %or.cond.i.i135, i16 %146, i16 %144
  %conv10.i.i137 = add i16 %.sink.i.i136, %.sink23.i.i
  %conv12.i.i138 = zext i16 %conv10.i.i137 to i32
  %149 = ptrtoint ptr %nand_base.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %nand_base.i.i.i125, align 4
  %add.ptr.i.i.i139 = getelementptr i8, ptr %150, i32 %conv12.i.i138
  %151 = tail call i32 @llvm.bswap.i32(i32 %or24.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i139, i32 %151) #9, !srcloc !337
  br label %oob_reg_write.exit.i

oob_reg_write.exit.i:                             ; preds = %if.end.i.i140, %for.body.i128.oob_reg_write.exit.i_crit_edge
  %add25.i = add i32 %j.046.i, 4
  %cmp9.i = icmp slt i32 %add25.i, %130
  br i1 %cmp9.i, label %oob_reg_write.exit.i.for.body.i128_crit_edge, label %oob_reg_write.exit.i.do.body.sink.split_crit_edge

oob_reg_write.exit.i.do.body.sink.split_crit_edge: ; preds = %oob_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split

oob_reg_write.exit.i.for.body.i128_crit_edge:     ; preds = %oob_reg_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i128

do.body.sink.split:                               ; preds = %oob_reg_write.exit.i.do.body.sink.split_crit_edge, %if.end.i123.do.body.sink.split_crit_edge, %oob_reg_read.exit.i.do.body.sink.split_crit_edge, %if.end.i.do.body.sink.split_crit_edge
  %.sink156 = phi i32 [ %84, %if.end.i.do.body.sink.split_crit_edge ], [ %130, %if.end.i123.do.body.sink.split_crit_edge ], [ %84, %oob_reg_read.exit.i.do.body.sink.split_crit_edge ], [ %130, %oob_reg_write.exit.i.do.body.sink.split_crit_edge ]
  %152 = ptrtoint ptr %oob to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %oob, align 4
  %add.ptr29 = getelementptr i8, ptr %153, i32 %.sink156
  store ptr %add.ptr29, ptr %oob, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.then6.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !350
  tail call void @arm_heavy_mb() #9
  %edu_cmd32 = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 23
  %154 = ptrtoint ptr %edu_cmd32 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %edu_cmd32, align 4
  %156 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i142 = getelementptr i16, ptr %157, i32 4
  %158 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %arrayidx.i142, align 2
  %160 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %edu_base.i, align 8
  %conv.i144 = zext i16 %159 to i32
  %add.ptr.i145 = getelementptr i8, ptr %161, i32 %conv.i144
  %162 = tail call i32 @llvm.bswap.i32(i32 %155) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 %162) #9, !srcloc !337
  %163 = ptrtoint ptr %edu_offsets.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %edu_offsets.i, align 4
  %arrayidx.i147 = getelementptr i16, ptr %164, i32 4
  %165 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %arrayidx.i147, align 2
  %167 = ptrtoint ptr %edu_base.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %edu_base.i, align 8
  %conv.i149 = zext i16 %166 to i32
  %add.ptr.i150 = getelementptr i8, ptr %168, i32 %conv.i149
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150) #9, !srcloc !336
  br label %cleanup

if.end34:                                         ; preds = %if.end.if.end34_crit_edge, %entry.if.end34_crit_edge
  %edu_done = getelementptr inbounds %struct.brcmnand_controller, ptr %data, i32 0, i32 15
  tail call void @complete(ptr noundef %edu_done) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.body
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @brcmnand_cmd_ctrl(ptr nocapture noundef %chip, i32 noundef %dat, i32 noundef %ctrl) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmnand_cmdfunc(ptr noundef %chip, i32 noundef %command, i32 noundef %column, i32 noundef %page_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl2 = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl2, align 8
  %4 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %command, label %if.else [
    i32 144, label %entry.if.then_crit_edge
    i32 236, label %entry.if.then_crit_edge333
    i32 5, label %entry.if.then_crit_edge334
  ]

entry.if.then_crit_edge334:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge333:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge333, %entry.if.then_crit_edge334
  %conv9 = sext i32 %column to i64
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = sext i32 %page_addr to i64
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 17
  %5 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %page_shift, align 4
  %sh_prom = zext i32 %6 to i64
  %shl = shl i64 %conv, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page_addr)
  %cmp10 = icmp slt i32 %page_addr, 0
  %spec.select = select i1 %cmp10, i64 0, i64 %shl
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %addr.0 = phi i64 [ %conv9, %if.then ], [ %spec.select, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmnand_cmdfunc.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmnand_cmdfunc, %if.then17)) #9
          to label %do.end [label %if.then17], !srcloc !340

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmnand_cmdfunc.__UNIQUE_ID_ddebug262, ptr noundef %8, ptr noundef nonnull @.str.133, i32 noundef %command, i64 noundef %addr.0) #9
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %last_cmd = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %last_cmd to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %command, ptr %last_cmd, align 8
  %last_byte = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %last_byte to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %last_byte, align 4
  %last_addr = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %last_addr to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %addr.0, ptr %last_addr, align 8
  %extract.t311 = trunc i64 %addr.0 to i32
  %extract328 = lshr i64 %addr.0, 32
  %extract.t329 = trunc i64 %extract328 to i32
  %12 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %command, label %do.end.cleanup_crit_edge [
    i32 255, label %do.end.if.end35_crit_edge
    i32 112, label %sw.bb19
    i32 144, label %sw.bb20
    i32 80, label %sw.bb21
    i32 96, label %sw.bb22
    i32 236, label %sw.bb23
    i32 239, label %do.end.sw.bb24_crit_edge
    i32 238, label %do.end.sw.bb24_crit_edge335
    i32 5, label %sw.bb27
  ]

do.end.sw.bb24_crit_edge335:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

do.end.sw.bb24_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb19:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

sw.bb20:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

sw.bb21:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

sw.bb22:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @brcmnand_wp(ptr noundef %chip, i32 noundef 0)
  br label %if.end35

sw.bb23:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

sw.bb24:                                          ; preds = %do.end.sw.bb24_crit_edge, %do.end.sw.bb24_crit_edge335
  %13 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl2, align 8
  %or.i = or i32 %command, 655360
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmnand_low_level_op.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmnand_cmdfunc, %if.then15.i)) #9
          to label %do.end.i [label %if.then15.i], !srcloc !340

if.then15.i:                                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmnand_low_level_op.__UNIQUE_ID_ddebug261, ptr noundef %16, ptr noundef nonnull @.str.135, i32 noundef %or.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then15.i, %sw.bb24
  %reg_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %14, i32 0, i32 33
  %17 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %18, i32 6
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i.i = icmp eq i16 %20, 0
  br i1 %tobool.not.i.i, label %do.end.i.brcmnand_write_reg.exit.i_crit_edge, label %if.then.i.i

do.end.i.brcmnand_write_reg.exit.i_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit.i

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i16 %20 to i32
  %nand_base.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %14, i32 0, i32 2
  %21 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 %conv.i.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %23) #9, !srcloc !337
  br label %brcmnand_write_reg.exit.i

brcmnand_write_reg.exit.i:                        ; preds = %if.then.i.i, %do.end.i.brcmnand_write_reg.exit.i_crit_edge
  %24 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i2.i = getelementptr i16, ptr %25, i32 6
  %26 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i3.i = icmp eq i16 %27, 0
  br i1 %tobool.not.i3.i, label %brcmnand_write_reg.exit.i.brcmnand_low_level_op.exit_crit_edge, label %if.then.i7.i

brcmnand_write_reg.exit.i.brcmnand_low_level_op.exit_crit_edge: ; preds = %brcmnand_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_low_level_op.exit

if.then.i7.i:                                     ; preds = %brcmnand_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i4.i = zext i16 %27 to i32
  %nand_base.i.i5.i = getelementptr inbounds %struct.brcmnand_controller, ptr %14, i32 0, i32 2
  %28 = ptrtoint ptr %nand_base.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nand_base.i.i5.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %29, i32 %conv.i4.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6.i) #9, !srcloc !336
  br label %brcmnand_low_level_op.exit

brcmnand_low_level_op.exit:                       ; preds = %if.then.i7.i, %brcmnand_write_reg.exit.i.brcmnand_low_level_op.exit_crit_edge
  %chip1.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1
  tail call fastcc void @brcmnand_send_cmd(ptr noundef %1, i32 noundef 16) #9
  %call18.i = tail call i32 @brcmnand_waitfunc(ptr noundef %chip1.i) #9
  %31 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctrl2, align 8
  %and.i105 = and i32 %column, 65535
  %or4.i = or i32 %and.i105, 393216
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmnand_low_level_op.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmnand_cmdfunc, %if.then15.i107)) #9
          to label %do.end.i111 [label %if.then15.i107], !srcloc !340

if.then15.i107:                                   ; preds = %brcmnand_low_level_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmnand_low_level_op.__UNIQUE_ID_ddebug261, ptr noundef %34, ptr noundef nonnull @.str.135, i32 noundef %or4.i) #9
  br label %do.end.i111

do.end.i111:                                      ; preds = %if.then15.i107, %brcmnand_low_level_op.exit
  %reg_offsets.i.i108 = getelementptr inbounds %struct.brcmnand_controller, ptr %32, i32 0, i32 33
  %35 = ptrtoint ptr %reg_offsets.i.i108 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_offsets.i.i108, align 8
  %arrayidx.i.i109 = getelementptr i16, ptr %36, i32 6
  %37 = ptrtoint ptr %arrayidx.i.i109 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.i.i109, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.i.i110 = icmp eq i16 %38, 0
  br i1 %tobool.not.i.i110, label %do.end.i111.brcmnand_write_reg.exit.i118_crit_edge, label %if.then.i.i115

do.end.i111.brcmnand_write_reg.exit.i118_crit_edge: ; preds = %do.end.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit.i118

if.then.i.i115:                                   ; preds = %do.end.i111
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i112 = zext i16 %38 to i32
  %nand_base.i.i.i113 = getelementptr inbounds %struct.brcmnand_controller, ptr %32, i32 0, i32 2
  %39 = ptrtoint ptr %nand_base.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nand_base.i.i.i113, align 4
  %add.ptr.i.i.i114 = getelementptr i8, ptr %40, i32 %conv.i.i112
  %41 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i114, i32 %41) #9, !srcloc !337
  br label %brcmnand_write_reg.exit.i118

brcmnand_write_reg.exit.i118:                     ; preds = %if.then.i.i115, %do.end.i111.brcmnand_write_reg.exit.i118_crit_edge
  %42 = ptrtoint ptr %reg_offsets.i.i108 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_offsets.i.i108, align 8
  %arrayidx.i2.i116 = getelementptr i16, ptr %43, i32 6
  %44 = ptrtoint ptr %arrayidx.i2.i116 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.i2.i116, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool.not.i3.i117 = icmp eq i16 %45, 0
  br i1 %tobool.not.i3.i117, label %brcmnand_write_reg.exit.i118.brcmnand_low_level_op.exit125_crit_edge, label %if.then.i7.i122

brcmnand_write_reg.exit.i118.brcmnand_low_level_op.exit125_crit_edge: ; preds = %brcmnand_write_reg.exit.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_low_level_op.exit125

if.then.i7.i122:                                  ; preds = %brcmnand_write_reg.exit.i118
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i4.i119 = zext i16 %45 to i32
  %nand_base.i.i5.i120 = getelementptr inbounds %struct.brcmnand_controller, ptr %32, i32 0, i32 2
  %46 = ptrtoint ptr %nand_base.i.i5.i120 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nand_base.i.i5.i120, align 4
  %add.ptr.i.i6.i121 = getelementptr i8, ptr %47, i32 %conv.i4.i119
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6.i121) #9, !srcloc !336
  br label %brcmnand_low_level_op.exit125

brcmnand_low_level_op.exit125:                    ; preds = %if.then.i7.i122, %brcmnand_write_reg.exit.i118.brcmnand_low_level_op.exit125_crit_edge
  tail call fastcc void @brcmnand_send_cmd(ptr noundef %1, i32 noundef 16) #9
  %call18.i124 = tail call i32 @brcmnand_waitfunc(ptr noundef %chip1.i) #9
  br label %cleanup

sw.bb27:                                          ; preds = %do.end
  %49 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctrl2, align 8
  %nand_version.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %nand_version.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nand_version.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1793, i32 %52)
  %cmp.i.i = icmp sgt i32 %52, 1793
  br i1 %cmp.i.i, label %sw.bb27.brcmnand_sector_1k_shift.exit.i_crit_edge, label %if.else.i.i

sw.bb27.brcmnand_sector_1k_shift.exit.i_crit_edge: ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_sector_1k_shift.exit.i

if.else.i.i:                                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %52)
  %cmp2.i.i = icmp sgt i32 %52, 1535
  br i1 %cmp2.i.i, label %if.else.i.i.brcmnand_sector_1k_shift.exit.i_crit_edge, label %if.else4.i.i

if.else.i.i.brcmnand_sector_1k_shift.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_sector_1k_shift.exit.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %52)
  %cmp6.i.i = icmp sgt i32 %52, 1279
  %..i.i = select i1 %cmp6.i.i, i32 6, i32 -1
  br label %brcmnand_sector_1k_shift.exit.i

brcmnand_sector_1k_shift.exit.i:                  ; preds = %if.else4.i.i, %if.else.i.i.brcmnand_sector_1k_shift.exit.i_crit_edge, %sw.bb27.brcmnand_sector_1k_shift.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 9, %sw.bb27.brcmnand_sector_1k_shift.exit.i_crit_edge ], [ 7, %if.else.i.i.brcmnand_sector_1k_shift.exit.i_crit_edge ], [ %..i.i, %if.else4.i.i ]
  %cs.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cs.i, align 4
  %reg_offsets.i.i126 = getelementptr inbounds %struct.brcmnand_controller, ptr %50, i32 0, i32 33
  %55 = ptrtoint ptr %reg_offsets.i.i126 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_offsets.i.i126, align 8
  %arrayidx.i.i127 = getelementptr i16, ptr %56, i32 7
  %57 = ptrtoint ptr %arrayidx.i.i127 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx.i.i127, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i10.i = icmp eq i32 %54, 0
  br i1 %cmp.i10.i, label %land.lhs.true.i.i, label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %brcmnand_sector_1k_shift.exit.i
  %cs0_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %50, i32 0, i32 36
  %59 = ptrtoint ptr %cs0_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cs0_offsets.i.i, align 4
  %tobool.not.i.i128 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i128, label %if.end.thread42.i.i, label %land.lhs.true.i.i.brcmnand_cs_offset.exit.i_crit_edge

land.lhs.true.i.i.brcmnand_cs_offset.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_cs_offset.exit.i

if.end.thread42.i.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %50, i32 0, i32 35
  %61 = ptrtoint ptr %cs_offsets43.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cs_offsets43.i.i, align 8
  br label %brcmnand_cs_offset.exit.i

if.end.i.i:                                       ; preds = %brcmnand_sector_1k_shift.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i.i = getelementptr i16, ptr %56, i32 8
  %63 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx2.i.i, align 2
  %cs_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %50, i32 0, i32 35
  %65 = ptrtoint ptr %cs_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cs_offsets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool8.not.i.i = icmp eq i16 %64, 0
  %not.tobool8.not.i.i = xor i1 %tobool8.not.i.i, true
  %sub.i.i = sext i1 %not.tobool8.not.i.i to i32
  %spec.select.i = add i32 %54, %sub.i.i
  %spec.select12.i = select i1 %tobool8.not.i.i, i16 %58, i16 %64
  br label %brcmnand_cs_offset.exit.i

brcmnand_cs_offset.exit.i:                        ; preds = %if.end.i.i, %if.end.thread42.i.i, %land.lhs.true.i.i.brcmnand_cs_offset.exit.i_crit_edge
  %cs.sink.i.i = phi i32 [ %spec.select.i, %if.end.i.i ], [ 0, %if.end.thread42.i.i ], [ 0, %land.lhs.true.i.i.brcmnand_cs_offset.exit.i_crit_edge ]
  %.sink.i.pn.i = phi ptr [ %66, %if.end.i.i ], [ %62, %if.end.thread42.i.i ], [ %60, %land.lhs.true.i.i.brcmnand_cs_offset.exit.i_crit_edge ]
  %conv15.sink.in.i.i = phi i16 [ %spec.select12.i, %if.end.i.i ], [ %58, %if.end.thread42.i.i ], [ %58, %land.lhs.true.i.i.brcmnand_cs_offset.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  %67 = trunc i64 %addr.0 to i32
  %extract.t312 = and i32 %67, -512
  br i1 %cmp.i, label %brcmnand_cs_offset.exit.i.if.end35_crit_edge, label %brcmnand_get_sector_size_1k.exit

brcmnand_cs_offset.exit.i.if.end35_crit_edge:     ; preds = %brcmnand_cs_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

brcmnand_get_sector_size_1k.exit:                 ; preds = %brcmnand_cs_offset.exit.i
  %cs_offs.041.sink.i.in.i = getelementptr i8, ptr %.sink.i.pn.i, i32 2
  %68 = ptrtoint ptr %cs_offs.041.sink.i.in.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %cs_offs.041.sink.i.i = load i8, ptr %cs_offs.041.sink.i.in.i, align 1
  %conv19.i.i = zext i8 %cs_offs.041.sink.i.i to i32
  %conv15.sink.i.i = zext i16 %conv15.sink.in.i.i to i32
  %add18.i.i = add nuw nsw i32 %conv19.i.i, %conv15.sink.i.i
  %reg_spacing16.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %50, i32 0, i32 34
  %69 = ptrtoint ptr %reg_spacing16.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %reg_spacing16.i.i, align 4
  %mul17.i.i = mul i32 %70, %cs.sink.i.i
  %add20.i.i = add i32 %add18.i.i, %mul17.i.i
  %conv.i = and i32 %add20.i.i, 65535
  %nand_base.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %50, i32 0, i32 2
  %71 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %72, i32 %conv.i
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !336
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #9
  %75 = shl nuw nsw i32 1, %retval.0.i.i
  %76 = and i32 %74, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool29.not = icmp eq i32 %76, 0
  br i1 %tobool29.not, label %brcmnand_get_sector_size_1k.exit.if.end35_crit_edge, label %if.then30

brcmnand_get_sector_size_1k.exit.if.end35_crit_edge: ; preds = %brcmnand_get_sector_size_1k.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then30:                                        ; preds = %brcmnand_get_sector_size_1k.exit
  %77 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ctrl2, align 8
  %nand_version.i.i132 = getelementptr inbounds %struct.brcmnand_controller, ptr %78, i32 0, i32 7
  %79 = ptrtoint ptr %nand_version.i.i132 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nand_version.i.i132, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1793, i32 %80)
  %cmp.i.i133 = icmp sgt i32 %80, 1793
  br i1 %cmp.i.i133, label %if.then30.brcmnand_sector_1k_shift.exit.i144_crit_edge, label %if.else.i.i135

if.then30.brcmnand_sector_1k_shift.exit.i144_crit_edge: ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_sector_1k_shift.exit.i144

if.else.i.i135:                                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %80)
  %cmp2.i.i134 = icmp sgt i32 %80, 1535
  br i1 %cmp2.i.i134, label %if.else.i.i135.brcmnand_sector_1k_shift.exit.i144_crit_edge, label %if.else4.i.i138

if.else.i.i135.brcmnand_sector_1k_shift.exit.i144_crit_edge: ; preds = %if.else.i.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_sector_1k_shift.exit.i144

if.else4.i.i138:                                  ; preds = %if.else.i.i135
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %80)
  %cmp6.i.i136 = icmp sgt i32 %80, 1279
  %..i.i137 = select i1 %cmp6.i.i136, i32 6, i32 -1
  br label %brcmnand_sector_1k_shift.exit.i144

brcmnand_sector_1k_shift.exit.i144:               ; preds = %if.else4.i.i138, %if.else.i.i135.brcmnand_sector_1k_shift.exit.i144_crit_edge, %if.then30.brcmnand_sector_1k_shift.exit.i144_crit_edge
  %retval.0.i.i139 = phi i32 [ 9, %if.then30.brcmnand_sector_1k_shift.exit.i144_crit_edge ], [ 7, %if.else.i.i135.brcmnand_sector_1k_shift.exit.i144_crit_edge ], [ %..i.i137, %if.else4.i.i138 ]
  %81 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cs.i, align 4
  %reg_offsets.i.i141 = getelementptr inbounds %struct.brcmnand_controller, ptr %78, i32 0, i32 33
  %83 = ptrtoint ptr %reg_offsets.i.i141 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg_offsets.i.i141, align 8
  %arrayidx.i.i142 = getelementptr i16, ptr %84, i32 7
  %85 = ptrtoint ptr %arrayidx.i.i142 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx.i.i142, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.i10.i143 = icmp eq i32 %82, 0
  br i1 %cmp.i10.i143, label %land.lhs.true.i.i147, label %if.end.i.i157

land.lhs.true.i.i147:                             ; preds = %brcmnand_sector_1k_shift.exit.i144
  %cs0_offsets.i.i145 = getelementptr inbounds %struct.brcmnand_controller, ptr %78, i32 0, i32 36
  %87 = ptrtoint ptr %cs0_offsets.i.i145 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cs0_offsets.i.i145, align 4
  %tobool.not.i.i146 = icmp eq ptr %88, null
  br i1 %tobool.not.i.i146, label %if.end.thread42.i.i149, label %land.lhs.true.i.i147.brcmnand_cs_offset.exit.i162_crit_edge

land.lhs.true.i.i147.brcmnand_cs_offset.exit.i162_crit_edge: ; preds = %land.lhs.true.i.i147
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_cs_offset.exit.i162

if.end.thread42.i.i149:                           ; preds = %land.lhs.true.i.i147
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i.i148 = getelementptr inbounds %struct.brcmnand_controller, ptr %78, i32 0, i32 35
  %89 = ptrtoint ptr %cs_offsets43.i.i148 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cs_offsets43.i.i148, align 8
  br label %brcmnand_cs_offset.exit.i162

if.end.i.i157:                                    ; preds = %brcmnand_sector_1k_shift.exit.i144
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i.i150 = getelementptr i16, ptr %84, i32 8
  %91 = ptrtoint ptr %arrayidx2.i.i150 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx2.i.i150, align 2
  %cs_offsets.i.i151 = getelementptr inbounds %struct.brcmnand_controller, ptr %78, i32 0, i32 35
  %93 = ptrtoint ptr %cs_offsets.i.i151 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cs_offsets.i.i151, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool8.not.i.i152 = icmp eq i16 %92, 0
  %not.tobool8.not.i.i153 = xor i1 %tobool8.not.i.i152, true
  %sub.i.i154 = sext i1 %not.tobool8.not.i.i153 to i32
  %spec.select.i155 = add i32 %82, %sub.i.i154
  %spec.select12.i156 = select i1 %tobool8.not.i.i152, i16 %86, i16 %92
  br label %brcmnand_cs_offset.exit.i162

brcmnand_cs_offset.exit.i162:                     ; preds = %if.end.i.i157, %if.end.thread42.i.i149, %land.lhs.true.i.i147.brcmnand_cs_offset.exit.i162_crit_edge
  %cs.sink.i.i158 = phi i32 [ %spec.select.i155, %if.end.i.i157 ], [ 0, %if.end.thread42.i.i149 ], [ 0, %land.lhs.true.i.i147.brcmnand_cs_offset.exit.i162_crit_edge ]
  %.sink.i.pn.i159 = phi ptr [ %94, %if.end.i.i157 ], [ %90, %if.end.thread42.i.i149 ], [ %88, %land.lhs.true.i.i147.brcmnand_cs_offset.exit.i162_crit_edge ]
  %conv15.sink.in.i.i160 = phi i16 [ %spec.select12.i156, %if.end.i.i157 ], [ %86, %if.end.thread42.i.i149 ], [ %86, %land.lhs.true.i.i147.brcmnand_cs_offset.exit.i162_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i139)
  %cmp.i161 = icmp slt i32 %retval.0.i.i139, 0
  br i1 %cmp.i161, label %brcmnand_cs_offset.exit.i162.brcmnand_get_sector_size_1k.exit178_crit_edge, label %if.end.i176

brcmnand_cs_offset.exit.i162.brcmnand_get_sector_size_1k.exit178_crit_edge: ; preds = %brcmnand_cs_offset.exit.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_get_sector_size_1k.exit178

if.end.i176:                                      ; preds = %brcmnand_cs_offset.exit.i162
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offs.041.sink.i.in.i163 = getelementptr i8, ptr %.sink.i.pn.i159, i32 2
  %95 = ptrtoint ptr %cs_offs.041.sink.i.in.i163 to i32
  call void @__asan_load1_noabort(i32 %95)
  %cs_offs.041.sink.i.i164 = load i8, ptr %cs_offs.041.sink.i.in.i163, align 1
  %conv19.i.i165 = zext i8 %cs_offs.041.sink.i.i164 to i32
  %conv15.sink.i.i166 = zext i16 %conv15.sink.in.i.i160 to i32
  %add18.i.i167 = add nuw nsw i32 %conv19.i.i165, %conv15.sink.i.i166
  %reg_spacing16.i.i168 = getelementptr inbounds %struct.brcmnand_controller, ptr %78, i32 0, i32 34
  %96 = ptrtoint ptr %reg_spacing16.i.i168 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %reg_spacing16.i.i168, align 4
  %mul17.i.i169 = mul i32 %97, %cs.sink.i.i158
  %add20.i.i170 = add i32 %add18.i.i167, %mul17.i.i169
  %conv.i171 = and i32 %add20.i.i170, 65535
  %nand_base.i.i172 = getelementptr inbounds %struct.brcmnand_controller, ptr %78, i32 0, i32 2
  %98 = ptrtoint ptr %nand_base.i.i172 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %nand_base.i.i172, align 4
  %add.ptr.i.i173 = getelementptr i8, ptr %99, i32 %conv.i171
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i173) #9, !srcloc !336
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #9
  %shr.i174 = lshr i32 %101, %retval.0.i.i139
  %and.i175 = and i32 %shr.i174, 1
  br label %brcmnand_get_sector_size_1k.exit178

brcmnand_get_sector_size_1k.exit178:              ; preds = %if.end.i176, %brcmnand_cs_offset.exit.i162.brcmnand_get_sector_size_1k.exit178_crit_edge
  %retval.0.i177 = phi i32 [ %and.i175, %if.end.i176 ], [ 0, %brcmnand_cs_offset.exit.i162.brcmnand_get_sector_size_1k.exit178_crit_edge ]
  %sector_size_1k = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 8
  %102 = ptrtoint ptr %sector_size_1k to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %retval.0.i177, ptr %sector_size_1k, align 4
  %103 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ctrl2, align 8
  %nand_version.i.i180 = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 7
  %105 = ptrtoint ptr %nand_version.i.i180 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %nand_version.i.i180, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1793, i32 %106)
  %cmp.i.i181 = icmp sgt i32 %106, 1793
  br i1 %cmp.i.i181, label %brcmnand_get_sector_size_1k.exit178.brcmnand_sector_1k_shift.exit.i191_crit_edge, label %if.else.i.i183

brcmnand_get_sector_size_1k.exit178.brcmnand_sector_1k_shift.exit.i191_crit_edge: ; preds = %brcmnand_get_sector_size_1k.exit178
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_sector_1k_shift.exit.i191

if.else.i.i183:                                   ; preds = %brcmnand_get_sector_size_1k.exit178
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %106)
  %cmp2.i.i182 = icmp sgt i32 %106, 1535
  br i1 %cmp2.i.i182, label %if.else.i.i183.brcmnand_sector_1k_shift.exit.i191_crit_edge, label %if.else4.i.i186

if.else.i.i183.brcmnand_sector_1k_shift.exit.i191_crit_edge: ; preds = %if.else.i.i183
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_sector_1k_shift.exit.i191

if.else4.i.i186:                                  ; preds = %if.else.i.i183
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %106)
  %cmp6.i.i184 = icmp sgt i32 %106, 1279
  %..i.i185 = select i1 %cmp6.i.i184, i32 6, i32 -1
  br label %brcmnand_sector_1k_shift.exit.i191

brcmnand_sector_1k_shift.exit.i191:               ; preds = %if.else4.i.i186, %if.else.i.i183.brcmnand_sector_1k_shift.exit.i191_crit_edge, %brcmnand_get_sector_size_1k.exit178.brcmnand_sector_1k_shift.exit.i191_crit_edge
  %retval.0.i.i187 = phi i32 [ 9, %brcmnand_get_sector_size_1k.exit178.brcmnand_sector_1k_shift.exit.i191_crit_edge ], [ 7, %if.else.i.i183.brcmnand_sector_1k_shift.exit.i191_crit_edge ], [ %..i.i185, %if.else4.i.i186 ]
  %107 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cs.i, align 4
  %reg_offsets.i.i189 = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 33
  %109 = ptrtoint ptr %reg_offsets.i.i189 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reg_offsets.i.i189, align 8
  %arrayidx.i.i190 = getelementptr i16, ptr %110, i32 7
  %111 = ptrtoint ptr %arrayidx.i.i190 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx.i.i190, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp.i19.i = icmp eq i32 %108, 0
  br i1 %cmp.i19.i, label %land.lhs.true.i.i194, label %if.end.i.i203

land.lhs.true.i.i194:                             ; preds = %brcmnand_sector_1k_shift.exit.i191
  %cs0_offsets.i.i192 = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 36
  %113 = ptrtoint ptr %cs0_offsets.i.i192 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cs0_offsets.i.i192, align 4
  %tobool.not.i.i193 = icmp eq ptr %114, null
  br i1 %tobool.not.i.i193, label %if.end.thread42.i.i196, label %land.lhs.true.i.i194.brcmnand_cs_offset.exit.i208_crit_edge

land.lhs.true.i.i194.brcmnand_cs_offset.exit.i208_crit_edge: ; preds = %land.lhs.true.i.i194
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_cs_offset.exit.i208

if.end.thread42.i.i196:                           ; preds = %land.lhs.true.i.i194
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i.i195 = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 35
  %115 = ptrtoint ptr %cs_offsets43.i.i195 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cs_offsets43.i.i195, align 8
  br label %brcmnand_cs_offset.exit.i208

if.end.i.i203:                                    ; preds = %brcmnand_sector_1k_shift.exit.i191
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i.i197 = getelementptr i16, ptr %110, i32 8
  %117 = ptrtoint ptr %arrayidx2.i.i197 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %arrayidx2.i.i197, align 2
  %cs_offsets.i.i198 = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 35
  %119 = ptrtoint ptr %cs_offsets.i.i198 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cs_offsets.i.i198, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool8.not.i.i199 = icmp eq i16 %118, 0
  %not.tobool8.not.i.i200 = xor i1 %tobool8.not.i.i199, true
  %sub.i.i201 = sext i1 %not.tobool8.not.i.i200 to i32
  %spec.select.i202 = add i32 %108, %sub.i.i201
  %spec.select23.i = select i1 %tobool8.not.i.i199, i16 %112, i16 %118
  br label %brcmnand_cs_offset.exit.i208

brcmnand_cs_offset.exit.i208:                     ; preds = %if.end.i.i203, %if.end.thread42.i.i196, %land.lhs.true.i.i194.brcmnand_cs_offset.exit.i208_crit_edge
  %cs.sink.i.i204 = phi i32 [ %spec.select.i202, %if.end.i.i203 ], [ 0, %if.end.thread42.i.i196 ], [ 0, %land.lhs.true.i.i194.brcmnand_cs_offset.exit.i208_crit_edge ]
  %.sink.i.pn.i205 = phi ptr [ %120, %if.end.i.i203 ], [ %116, %if.end.thread42.i.i196 ], [ %114, %land.lhs.true.i.i194.brcmnand_cs_offset.exit.i208_crit_edge ]
  %conv15.sink.in.i.i206 = phi i16 [ %spec.select23.i, %if.end.i.i203 ], [ %112, %if.end.thread42.i.i196 ], [ %112, %land.lhs.true.i.i194.brcmnand_cs_offset.exit.i208_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i187)
  %cmp.i207 = icmp slt i32 %retval.0.i.i187, 0
  br i1 %cmp.i207, label %brcmnand_cs_offset.exit.i208.if.end35_crit_edge, label %if.end.i221

brcmnand_cs_offset.exit.i208.if.end35_crit_edge:  ; preds = %brcmnand_cs_offset.exit.i208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end.i221:                                      ; preds = %brcmnand_cs_offset.exit.i208
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offs.041.sink.i.in.i209 = getelementptr i8, ptr %.sink.i.pn.i205, i32 2
  %121 = ptrtoint ptr %cs_offs.041.sink.i.in.i209 to i32
  call void @__asan_load1_noabort(i32 %121)
  %cs_offs.041.sink.i.i210 = load i8, ptr %cs_offs.041.sink.i.in.i209, align 1
  %conv19.i.i211 = zext i8 %cs_offs.041.sink.i.i210 to i32
  %conv15.sink.i.i212 = zext i16 %conv15.sink.in.i.i206 to i32
  %add18.i.i213 = add nuw nsw i32 %conv19.i.i211, %conv15.sink.i.i212
  %reg_spacing16.i.i214 = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 34
  %122 = ptrtoint ptr %reg_spacing16.i.i214 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %reg_spacing16.i.i214, align 4
  %mul17.i.i215 = mul i32 %123, %cs.sink.i.i204
  %add20.i.i216 = add i32 %add18.i.i213, %mul17.i.i215
  %conv.i217 = and i32 %add20.i.i216, 65535
  %nand_base.i.i218 = getelementptr inbounds %struct.brcmnand_controller, ptr %104, i32 0, i32 2
  %124 = ptrtoint ptr %nand_base.i.i218 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %nand_base.i.i218, align 4
  %add.ptr.i.i219 = getelementptr i8, ptr %125, i32 %conv.i217
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i219) #9, !srcloc !336
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #9
  %shl.i = shl nuw nsw i32 1, %retval.0.i.i187
  %neg.i = xor i32 %shl.i, -1
  %and.i220 = and i32 %127, %neg.i
  %128 = ptrtoint ptr %nand_base.i.i218 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %nand_base.i.i218, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %129, i32 %conv.i217
  %130 = tail call i32 @llvm.bswap.i32(i32 %and.i220) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %130) #9, !srcloc !337
  br label %if.end35

if.end35:                                         ; preds = %if.end.i221, %brcmnand_cs_offset.exit.i208.if.end35_crit_edge, %brcmnand_get_sector_size_1k.exit.if.end35_crit_edge, %brcmnand_cs_offset.exit.i.if.end35_crit_edge, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %do.end.if.end35_crit_edge
  %addr.1.ph.off0 = phi i32 [ %extract.t312, %if.end.i221 ], [ %extract.t312, %brcmnand_cs_offset.exit.i208.if.end35_crit_edge ], [ %extract.t311, %sw.bb19 ], [ %extract.t311, %sw.bb20 ], [ %extract.t311, %sw.bb21 ], [ %extract.t311, %sw.bb22 ], [ %extract.t311, %sw.bb23 ], [ %extract.t312, %brcmnand_get_sector_size_1k.exit.if.end35_crit_edge ], [ %extract.t311, %do.end.if.end35_crit_edge ], [ %extract.t312, %brcmnand_cs_offset.exit.i.if.end35_crit_edge ]
  %cmp37.ph = phi i1 [ false, %if.end.i221 ], [ false, %brcmnand_cs_offset.exit.i208.if.end35_crit_edge ], [ false, %sw.bb19 ], [ false, %sw.bb20 ], [ false, %sw.bb21 ], [ false, %sw.bb22 ], [ true, %sw.bb23 ], [ false, %brcmnand_get_sector_size_1k.exit.if.end35_crit_edge ], [ false, %do.end.if.end35_crit_edge ], [ false, %brcmnand_cs_offset.exit.i.if.end35_crit_edge ]
  %cmp40.ph = phi i1 [ true, %if.end.i221 ], [ true, %brcmnand_cs_offset.exit.i208.if.end35_crit_edge ], [ false, %sw.bb19 ], [ false, %sw.bb20 ], [ false, %sw.bb21 ], [ false, %sw.bb22 ], [ false, %sw.bb23 ], [ true, %brcmnand_get_sector_size_1k.exit.if.end35_crit_edge ], [ false, %do.end.if.end35_crit_edge ], [ true, %brcmnand_cs_offset.exit.i.if.end35_crit_edge ]
  %native_cmd.0.ph = phi i32 [ 15, %if.end.i221 ], [ 15, %brcmnand_cs_offset.exit.i208.if.end35_crit_edge ], [ 3, %sw.bb19 ], [ 7, %sw.bb20 ], [ 2, %sw.bb21 ], [ 8, %sw.bb22 ], [ 14, %sw.bb23 ], [ 15, %brcmnand_get_sector_size_1k.exit.if.end35_crit_edge ], [ 9, %do.end.if.end35_crit_edge ], [ 15, %brcmnand_cs_offset.exit.i.if.end35_crit_edge ]
  %131 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %priv.i, align 8
  %ctrl2.i222 = getelementptr inbounds %struct.brcmnand_host, ptr %132, i32 0, i32 8
  %133 = ptrtoint ptr %ctrl2.i222 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ctrl2.i222, align 8
  %reg_offsets.i.i223 = getelementptr inbounds %struct.brcmnand_controller, ptr %134, i32 0, i32 33
  %135 = ptrtoint ptr %reg_offsets.i.i223 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %reg_offsets.i.i223, align 8
  %arrayidx.i.i224 = getelementptr i16, ptr %136, i32 1
  %137 = ptrtoint ptr %arrayidx.i.i224 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx.i.i224, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %tobool.not.i.i225 = icmp eq i16 %138, 0
  br i1 %tobool.not.i.i225, label %if.end35.brcmnand_write_reg.exit.i233_crit_edge, label %if.then.i.i232

if.end35.brcmnand_write_reg.exit.i233_crit_edge:  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit.i233

if.then.i.i232:                                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %139 = and i32 %extract.t329, 65535
  %cs.i227 = getelementptr inbounds %struct.brcmnand_host, ptr %132, i32 0, i32 3
  %140 = ptrtoint ptr %cs.i227 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cs.i227, align 4
  %shl.i228 = shl i32 %141, 16
  %conv3.i = or i32 %shl.i228, %139
  %conv.i.i229 = zext i16 %138 to i32
  %nand_base.i.i.i230 = getelementptr inbounds %struct.brcmnand_controller, ptr %134, i32 0, i32 2
  %142 = ptrtoint ptr %nand_base.i.i.i230 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %nand_base.i.i.i230, align 4
  %add.ptr.i.i.i231 = getelementptr i8, ptr %143, i32 %conv.i.i229
  %144 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i231, i32 %144) #9, !srcloc !337
  br label %brcmnand_write_reg.exit.i233

brcmnand_write_reg.exit.i233:                     ; preds = %if.then.i.i232, %if.end35.brcmnand_write_reg.exit.i233_crit_edge
  %145 = ptrtoint ptr %reg_offsets.i.i223 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %reg_offsets.i.i223, align 8
  %arrayidx.i15.i = getelementptr i16, ptr %146, i32 1
  %147 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %arrayidx.i15.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %148)
  %tobool.not.i16.i = icmp eq i16 %148, 0
  br i1 %tobool.not.i16.i, label %brcmnand_write_reg.exit.i233.brcmnand_read_reg.exit.i_crit_edge, label %if.then.i20.i

brcmnand_write_reg.exit.i233.brcmnand_read_reg.exit.i_crit_edge: ; preds = %brcmnand_write_reg.exit.i233
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit.i

if.then.i20.i:                                    ; preds = %brcmnand_write_reg.exit.i233
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i17.i = zext i16 %148 to i32
  %nand_base.i.i18.i = getelementptr inbounds %struct.brcmnand_controller, ptr %134, i32 0, i32 2
  %149 = ptrtoint ptr %nand_base.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %nand_base.i.i18.i, align 4
  %add.ptr.i.i19.i = getelementptr i8, ptr %150, i32 %conv.i17.i
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19.i) #9, !srcloc !336
  br label %brcmnand_read_reg.exit.i

brcmnand_read_reg.exit.i:                         ; preds = %if.then.i20.i, %brcmnand_write_reg.exit.i233.brcmnand_read_reg.exit.i_crit_edge
  %152 = ptrtoint ptr %reg_offsets.i.i223 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %reg_offsets.i.i223, align 8
  %arrayidx.i22.i = getelementptr i16, ptr %153, i32 2
  %154 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %arrayidx.i22.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %tobool.not.i23.i = icmp eq i16 %155, 0
  br i1 %tobool.not.i23.i, label %brcmnand_read_reg.exit.i.brcmnand_write_reg.exit28.i_crit_edge, label %if.then.i27.i

brcmnand_read_reg.exit.i.brcmnand_write_reg.exit28.i_crit_edge: ; preds = %brcmnand_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit28.i

if.then.i27.i:                                    ; preds = %brcmnand_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i24.i = zext i16 %155 to i32
  %nand_base.i.i25.i = getelementptr inbounds %struct.brcmnand_controller, ptr %134, i32 0, i32 2
  %156 = ptrtoint ptr %nand_base.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %nand_base.i.i25.i, align 4
  %add.ptr.i.i26.i = getelementptr i8, ptr %157, i32 %conv.i24.i
  %158 = tail call i32 @llvm.bswap.i32(i32 %addr.1.ph.off0) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i26.i, i32 %158) #9, !srcloc !337
  br label %brcmnand_write_reg.exit28.i

brcmnand_write_reg.exit28.i:                      ; preds = %if.then.i27.i, %brcmnand_read_reg.exit.i.brcmnand_write_reg.exit28.i_crit_edge
  %159 = ptrtoint ptr %reg_offsets.i.i223 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %reg_offsets.i.i223, align 8
  %arrayidx.i30.i = getelementptr i16, ptr %160, i32 2
  %161 = ptrtoint ptr %arrayidx.i30.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %arrayidx.i30.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %162)
  %tobool.not.i31.i = icmp eq i16 %162, 0
  br i1 %tobool.not.i31.i, label %brcmnand_write_reg.exit28.i.brcmnand_set_cmd_addr.exit_crit_edge, label %if.then.i35.i

brcmnand_write_reg.exit28.i.brcmnand_set_cmd_addr.exit_crit_edge: ; preds = %brcmnand_write_reg.exit28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_set_cmd_addr.exit

if.then.i35.i:                                    ; preds = %brcmnand_write_reg.exit28.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i32.i = zext i16 %162 to i32
  %nand_base.i.i33.i = getelementptr inbounds %struct.brcmnand_controller, ptr %134, i32 0, i32 2
  %163 = ptrtoint ptr %nand_base.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %nand_base.i.i33.i, align 4
  %add.ptr.i.i34.i = getelementptr i8, ptr %164, i32 %conv.i32.i
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34.i) #9, !srcloc !336
  br label %brcmnand_set_cmd_addr.exit

brcmnand_set_cmd_addr.exit:                       ; preds = %if.then.i35.i, %brcmnand_write_reg.exit28.i.brcmnand_set_cmd_addr.exit_crit_edge
  tail call fastcc void @brcmnand_send_cmd(ptr noundef %1, i32 noundef %native_cmd.0.ph)
  %call36 = tail call i32 @brcmnand_waitfunc(ptr noundef %chip)
  %brmerge = or i1 %cmp37.ph, %cmp40.ph
  br i1 %brmerge, label %if.then42, label %brcmnand_set_cmd_addr.exit.if.end55_crit_edge

brcmnand_set_cmd_addr.exit.if.end55_crit_edge:    ; preds = %brcmnand_set_cmd_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then42:                                        ; preds = %brcmnand_set_cmd_addr.exit
  %flash_cache43 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 32
  %soc = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 8
  %166 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %soc, align 4
  %tobool.not.i = icmp eq ptr %167, null
  br i1 %tobool.not.i, label %if.then42.brcmnand_soc_data_bus_prepare.exit_crit_edge, label %land.lhs.true.i

if.then42.brcmnand_soc_data_bus_prepare.exit_crit_edge: ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_soc_data_bus_prepare.exit

land.lhs.true.i:                                  ; preds = %if.then42
  %prepare_data_bus.i = getelementptr inbounds %struct.brcmnand_soc, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %prepare_data_bus.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %prepare_data_bus.i, align 4
  %tobool1.not.i = icmp eq ptr %169, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.brcmnand_soc_data_bus_prepare.exit_crit_edge, label %if.then.i

land.lhs.true.i.brcmnand_soc_data_bus_prepare.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_soc_data_bus_prepare.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %169(ptr noundef nonnull %167, i1 noundef zeroext true, i1 noundef zeroext true) #9
  br label %brcmnand_soc_data_bus_prepare.exit

brcmnand_soc_data_bus_prepare.exit:               ; preds = %if.then.i, %land.lhs.true.i.brcmnand_soc_data_bus_prepare.exit_crit_edge, %if.then42.brcmnand_soc_data_bus_prepare.exit_crit_edge
  %nand_fc.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %brcmnand_soc_data_bus_prepare.exit
  %i.0332 = phi i32 [ 0, %brcmnand_soc_data_bus_prepare.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %170 = ptrtoint ptr %nand_fc.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %nand_fc.i, align 8
  %mul.i = shl nuw nsw i32 %i.0332, 2
  %add.ptr.i = getelementptr i8, ptr %171, i32 %mul.i
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !336
  %arrayidx = getelementptr i32, ptr %flash_cache43, i32 %i.0332
  %173 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0332, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %174 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %soc, align 4
  %tobool.not.i235 = icmp eq ptr %175, null
  br i1 %tobool.not.i235, label %for.end.brcmnand_soc_data_bus_unprepare.exit_crit_edge, label %land.lhs.true.i238

for.end.brcmnand_soc_data_bus_unprepare.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_soc_data_bus_unprepare.exit

land.lhs.true.i238:                               ; preds = %for.end
  %prepare_data_bus.i236 = getelementptr inbounds %struct.brcmnand_soc, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %prepare_data_bus.i236 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %prepare_data_bus.i236, align 4
  %tobool1.not.i237 = icmp eq ptr %177, null
  br i1 %tobool1.not.i237, label %land.lhs.true.i238.brcmnand_soc_data_bus_unprepare.exit_crit_edge, label %if.then.i239

land.lhs.true.i238.brcmnand_soc_data_bus_unprepare.exit_crit_edge: ; preds = %land.lhs.true.i238
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_soc_data_bus_unprepare.exit

if.then.i239:                                     ; preds = %land.lhs.true.i238
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %177(ptr noundef nonnull %175, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %brcmnand_soc_data_bus_unprepare.exit

brcmnand_soc_data_bus_unprepare.exit:             ; preds = %if.then.i239, %land.lhs.true.i238.brcmnand_soc_data_bus_unprepare.exit_crit_edge, %for.end.brcmnand_soc_data_bus_unprepare.exit_crit_edge
  %sector_size_1k49 = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 8
  %178 = ptrtoint ptr %sector_size_1k49 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %sector_size_1k49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool50.not = icmp eq i32 %179, 0
  br i1 %tobool50.not, label %brcmnand_soc_data_bus_unprepare.exit.if.end55_crit_edge, label %if.then51

brcmnand_soc_data_bus_unprepare.exit.if.end55_crit_edge: ; preds = %brcmnand_soc_data_bus_unprepare.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then51:                                        ; preds = %brcmnand_soc_data_bus_unprepare.exit
  %180 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ctrl2, align 8
  %nand_version.i.i242 = getelementptr inbounds %struct.brcmnand_controller, ptr %181, i32 0, i32 7
  %182 = ptrtoint ptr %nand_version.i.i242 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %nand_version.i.i242, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1793, i32 %183)
  %cmp.i.i243 = icmp sgt i32 %183, 1793
  br i1 %cmp.i.i243, label %if.then51.brcmnand_sector_1k_shift.exit.i254_crit_edge, label %if.else.i.i245

if.then51.brcmnand_sector_1k_shift.exit.i254_crit_edge: ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_sector_1k_shift.exit.i254

if.else.i.i245:                                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %183)
  %cmp2.i.i244 = icmp sgt i32 %183, 1535
  br i1 %cmp2.i.i244, label %if.else.i.i245.brcmnand_sector_1k_shift.exit.i254_crit_edge, label %if.else4.i.i248

if.else.i.i245.brcmnand_sector_1k_shift.exit.i254_crit_edge: ; preds = %if.else.i.i245
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_sector_1k_shift.exit.i254

if.else4.i.i248:                                  ; preds = %if.else.i.i245
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %183)
  %cmp6.i.i246 = icmp sgt i32 %183, 1279
  %..i.i247 = select i1 %cmp6.i.i246, i32 6, i32 -1
  br label %brcmnand_sector_1k_shift.exit.i254

brcmnand_sector_1k_shift.exit.i254:               ; preds = %if.else4.i.i248, %if.else.i.i245.brcmnand_sector_1k_shift.exit.i254_crit_edge, %if.then51.brcmnand_sector_1k_shift.exit.i254_crit_edge
  %retval.0.i.i249 = phi i32 [ 9, %if.then51.brcmnand_sector_1k_shift.exit.i254_crit_edge ], [ 7, %if.else.i.i245.brcmnand_sector_1k_shift.exit.i254_crit_edge ], [ %..i.i247, %if.else4.i.i248 ]
  %cs.i250 = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 3
  %184 = ptrtoint ptr %cs.i250 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cs.i250, align 4
  %reg_offsets.i.i251 = getelementptr inbounds %struct.brcmnand_controller, ptr %181, i32 0, i32 33
  %186 = ptrtoint ptr %reg_offsets.i.i251 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %reg_offsets.i.i251, align 8
  %arrayidx.i.i252 = getelementptr i16, ptr %187, i32 7
  %188 = ptrtoint ptr %arrayidx.i.i252 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %arrayidx.i.i252, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp.i19.i253 = icmp eq i32 %185, 0
  br i1 %cmp.i19.i253, label %land.lhs.true.i.i257, label %if.end.i.i267

land.lhs.true.i.i257:                             ; preds = %brcmnand_sector_1k_shift.exit.i254
  %cs0_offsets.i.i255 = getelementptr inbounds %struct.brcmnand_controller, ptr %181, i32 0, i32 36
  %190 = ptrtoint ptr %cs0_offsets.i.i255 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %cs0_offsets.i.i255, align 4
  %tobool.not.i.i256 = icmp eq ptr %191, null
  br i1 %tobool.not.i.i256, label %if.end.thread42.i.i259, label %land.lhs.true.i.i257.brcmnand_cs_offset.exit.i272_crit_edge

land.lhs.true.i.i257.brcmnand_cs_offset.exit.i272_crit_edge: ; preds = %land.lhs.true.i.i257
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_cs_offset.exit.i272

if.end.thread42.i.i259:                           ; preds = %land.lhs.true.i.i257
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i.i258 = getelementptr inbounds %struct.brcmnand_controller, ptr %181, i32 0, i32 35
  %192 = ptrtoint ptr %cs_offsets43.i.i258 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %cs_offsets43.i.i258, align 8
  br label %brcmnand_cs_offset.exit.i272

if.end.i.i267:                                    ; preds = %brcmnand_sector_1k_shift.exit.i254
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i.i260 = getelementptr i16, ptr %187, i32 8
  %194 = ptrtoint ptr %arrayidx2.i.i260 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %arrayidx2.i.i260, align 2
  %cs_offsets.i.i261 = getelementptr inbounds %struct.brcmnand_controller, ptr %181, i32 0, i32 35
  %196 = ptrtoint ptr %cs_offsets.i.i261 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %cs_offsets.i.i261, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %195)
  %tobool8.not.i.i262 = icmp eq i16 %195, 0
  %not.tobool8.not.i.i263 = xor i1 %tobool8.not.i.i262, true
  %sub.i.i264 = sext i1 %not.tobool8.not.i.i263 to i32
  %spec.select.i265 = add i32 %185, %sub.i.i264
  %spec.select23.i266 = select i1 %tobool8.not.i.i262, i16 %189, i16 %195
  br label %brcmnand_cs_offset.exit.i272

brcmnand_cs_offset.exit.i272:                     ; preds = %if.end.i.i267, %if.end.thread42.i.i259, %land.lhs.true.i.i257.brcmnand_cs_offset.exit.i272_crit_edge
  %cs.sink.i.i268 = phi i32 [ %spec.select.i265, %if.end.i.i267 ], [ 0, %if.end.thread42.i.i259 ], [ 0, %land.lhs.true.i.i257.brcmnand_cs_offset.exit.i272_crit_edge ]
  %.sink.i.pn.i269 = phi ptr [ %197, %if.end.i.i267 ], [ %193, %if.end.thread42.i.i259 ], [ %191, %land.lhs.true.i.i257.brcmnand_cs_offset.exit.i272_crit_edge ]
  %conv15.sink.in.i.i270 = phi i16 [ %spec.select23.i266, %if.end.i.i267 ], [ %189, %if.end.thread42.i.i259 ], [ %189, %land.lhs.true.i.i257.brcmnand_cs_offset.exit.i272_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i249)
  %cmp.i271 = icmp slt i32 %retval.0.i.i249, 0
  br i1 %cmp.i271, label %brcmnand_cs_offset.exit.i272.if.end55_crit_edge, label %if.end.i289

brcmnand_cs_offset.exit.i272.if.end55_crit_edge:  ; preds = %brcmnand_cs_offset.exit.i272
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end.i289:                                      ; preds = %brcmnand_cs_offset.exit.i272
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offs.041.sink.i.in.i273 = getelementptr i8, ptr %.sink.i.pn.i269, i32 2
  %198 = ptrtoint ptr %cs_offs.041.sink.i.in.i273 to i32
  call void @__asan_load1_noabort(i32 %198)
  %cs_offs.041.sink.i.i274 = load i8, ptr %cs_offs.041.sink.i.in.i273, align 1
  %conv19.i.i275 = zext i8 %cs_offs.041.sink.i.i274 to i32
  %conv15.sink.i.i276 = zext i16 %conv15.sink.in.i.i270 to i32
  %add18.i.i277 = add nuw nsw i32 %conv19.i.i275, %conv15.sink.i.i276
  %reg_spacing16.i.i278 = getelementptr inbounds %struct.brcmnand_controller, ptr %181, i32 0, i32 34
  %199 = ptrtoint ptr %reg_spacing16.i.i278 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %reg_spacing16.i.i278, align 4
  %mul17.i.i279 = mul i32 %200, %cs.sink.i.i268
  %add20.i.i280 = add i32 %add18.i.i277, %mul17.i.i279
  %conv.i281 = and i32 %add20.i.i280, 65535
  %nand_base.i.i282 = getelementptr inbounds %struct.brcmnand_controller, ptr %181, i32 0, i32 2
  %201 = ptrtoint ptr %nand_base.i.i282 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %nand_base.i.i282, align 4
  %add.ptr.i.i283 = getelementptr i8, ptr %202, i32 %conv.i281
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i283) #9, !srcloc !336
  %204 = tail call i32 @llvm.bswap.i32(i32 %203) #9
  %shl.i284 = shl nuw nsw i32 1, %retval.0.i.i249
  %or.i287 = or i32 %204, %shl.i284
  %205 = ptrtoint ptr %nand_base.i.i282 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %nand_base.i.i282, align 4
  %add.ptr.i22.i288 = getelementptr i8, ptr %206, i32 %conv.i281
  %207 = tail call i32 @llvm.bswap.i32(i32 %or.i287) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i288, i32 %207) #9, !srcloc !337
  br label %if.end55

if.end55:                                         ; preds = %if.end.i289, %brcmnand_cs_offset.exit.i272.if.end55_crit_edge, %brcmnand_soc_data_bus_unprepare.exit.if.end55_crit_edge, %brcmnand_set_cmd_addr.exit.if.end55_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %command)
  %cmp56 = icmp eq i32 %command, 96
  br i1 %cmp56, label %if.then58, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @brcmnand_wp(ptr noundef %chip, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.end55.cleanup_crit_edge, %brcmnand_low_level_op.exit125, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @brcmnand_read_byte(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl1 = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl1, align 8
  %last_cmd = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %last_cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_cmd, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %5, label %entry.do.body_crit_edge [
    i32 144, label %sw.bb
    i32 80, label %sw.bb15
    i32 112, label %sw.bb18
    i32 236, label %entry.sw.bb25_crit_edge
    i32 5, label %entry.sw.bb25_crit_edge123
    i32 238, label %sw.bb38
  ]

entry.sw.bb25_crit_edge123:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb25

entry.sw.bb25_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb25

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb:                                            ; preds = %entry
  %last_byte = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %last_byte to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_byte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp ult i32 %8, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %reg_offsets.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 33
  %9 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_offsets.i, align 8
  %arrayidx.i = getelementptr i16, ptr %10, i32 18
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i, label %if.then.brcmnand_read_reg.exit_crit_edge, label %if.then.i

if.then.brcmnand_read_reg.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %12 to i32
  %nand_base.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %conv.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !336
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  br label %brcmnand_read_reg.exit

brcmnand_read_reg.exit:                           ; preds = %if.then.i, %if.then.brcmnand_read_reg.exit_crit_edge
  %retval.0.i87 = phi i32 [ %16, %if.then.i ], [ 0, %if.then.brcmnand_read_reg.exit_crit_edge ]
  %17 = ptrtoint ptr %last_byte to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_byte, align 4
  %shl.neg = mul i32 %18, -8
  %sub = add i32 %shl.neg, 24
  %shr = lshr i32 %retval.0.i87, %sub
  %conv = trunc i32 %shr to i8
  br label %do.body

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp5 = icmp ult i32 %8, 8
  br i1 %cmp5, label %if.then7, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then7:                                         ; preds = %if.else
  %reg_offsets.i88 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 33
  %19 = ptrtoint ptr %reg_offsets.i88 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_offsets.i88, align 8
  %arrayidx.i89 = getelementptr i16, ptr %20, i32 19
  %21 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.i89, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i90 = icmp eq i16 %22, 0
  br i1 %tobool.not.i90, label %if.then7.brcmnand_read_reg.exit96_crit_edge, label %if.then.i94

if.then7.brcmnand_read_reg.exit96_crit_edge:      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit96

if.then.i94:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i91 = zext i16 %22 to i32
  %nand_base.i.i92 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %nand_base.i.i92 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nand_base.i.i92, align 4
  %add.ptr.i.i93 = getelementptr i8, ptr %24, i32 %conv.i91
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i93) #9, !srcloc !336
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  br label %brcmnand_read_reg.exit96

brcmnand_read_reg.exit96:                         ; preds = %if.then.i94, %if.then7.brcmnand_read_reg.exit96_crit_edge
  %retval.0.i95 = phi i32 [ %26, %if.then.i94 ], [ 0, %if.then7.brcmnand_read_reg.exit96_crit_edge ]
  %27 = ptrtoint ptr %last_byte to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %last_byte, align 4
  %shl10.neg = mul i32 %28, -8
  %sub11 = add i32 %shl10.neg, 56
  %shr12 = lshr i32 %retval.0.i95, %sub11
  %conv13 = trunc i32 %shr12 to i8
  br label %do.body

sw.bb15:                                          ; preds = %entry
  %last_byte16 = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %last_byte16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %last_byte16, align 4
  %max_oob.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 42
  %31 = ptrtoint ptr %max_oob.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_oob.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp.not.i = icmp ugt i32 %32, %30
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb15.do.body_crit_edge

sw.bb15.do.body_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  %reg_offsets.i97 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 33
  %33 = ptrtoint ptr %reg_offsets.i97 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_offsets.i97, align 8
  %arrayidx2.i = getelementptr i16, ptr %34, i32 22
  %35 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx2.i, align 2
  %arrayidx.i98 = getelementptr i16, ptr %34, i32 21
  %37 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.i98, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %30)
  %cmp3.i = icmp ult i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.not.i99 = icmp eq i16 %36, 0
  %or.cond.i = select i1 %cmp3.i, i1 true, i1 %tobool.not.i99
  %39 = trunc i32 %30 to i16
  %40 = add i16 %39, -16
  %.sink27.i = select i1 %or.cond.i, i16 %39, i16 %40
  %.sink.i = select i1 %or.cond.i, i16 %38, i16 %36
  %41 = and i16 %.sink27.i, -4
  %conv10.i = add i16 %41, %.sink.i
  %conv12.i = zext i16 %conv10.i to i32
  %nand_base.i.i100 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %42 = ptrtoint ptr %nand_base.i.i100 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nand_base.i.i100, align 4
  %add.ptr.i.i101 = getelementptr i8, ptr %43, i32 %conv12.i
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i101) #9, !srcloc !336
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  %and13.i = shl i32 %30, 3
  %and13.not.i = and i32 %and13.i, 24
  %sub14.i = xor i32 %and13.not.i, 24
  %shr.i = lshr i32 %45, %sub14.i
  %conv15.i = trunc i32 %shr.i to i8
  br label %do.body

sw.bb18:                                          ; preds = %entry
  %reg_offsets.i103 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 33
  %46 = ptrtoint ptr %reg_offsets.i103 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_offsets.i103, align 8
  %arrayidx.i104 = getelementptr i16, ptr %47, i32 3
  %48 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.i104, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool.not.i105 = icmp eq i16 %49, 0
  br i1 %tobool.not.i105, label %sw.bb18.brcmnand_read_reg.exit111_crit_edge, label %if.then.i109

sw.bb18.brcmnand_read_reg.exit111_crit_edge:      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_read_reg.exit111

if.then.i109:                                     ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i106 = zext i16 %49 to i32
  %nand_base.i.i107 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %50 = ptrtoint ptr %nand_base.i.i107 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nand_base.i.i107, align 4
  %add.ptr.i.i108 = getelementptr i8, ptr %51, i32 %conv.i106
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i108) #9, !srcloc !336
  %53 = lshr i32 %52, 24
  %phi.cast122 = trunc i32 %53 to i8
  br label %brcmnand_read_reg.exit111

brcmnand_read_reg.exit111:                        ; preds = %if.then.i109, %sw.bb18.brcmnand_read_reg.exit111_crit_edge
  %retval.0.i110 = phi i8 [ %phi.cast122, %if.then.i109 ], [ 0, %sw.bb18.brcmnand_read_reg.exit111_crit_edge ]
  %54 = load i32, ptr @wp_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not = icmp eq i32 %54, 0
  %conv23 = or i8 %retval.0.i110, -128
  %spec.select = select i1 %tobool.not, i8 %retval.0.i110, i8 %conv23
  br label %do.body

sw.bb25:                                          ; preds = %entry.sw.bb25_crit_edge, %entry.sw.bb25_crit_edge123
  %last_addr = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 6
  %55 = ptrtoint ptr %last_addr to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %last_addr, align 8
  %last_byte26 = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 5
  %57 = ptrtoint ptr %last_byte26 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %last_byte26, align 4
  %59 = trunc i64 %56 to i32
  %conv28 = add i32 %58, %59
  %and29 = and i32 %conv28, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp31.not = icmp ne i32 %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %cmp33 = icmp eq i32 %and29, 0
  %or.cond = select i1 %cmp31.not, i1 %cmp33, i1 false
  br i1 %or.cond, label %if.then35, label %sw.bb25.if.end37_crit_edge

sw.bb25.if.end37_crit_edge:                       ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then35:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %conv28, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %sw.bb25.if.end37_crit_edge
  %arrayidx = getelementptr %struct.brcmnand_controller, ptr %3, i32 0, i32 32, i32 %and29
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx, align 1
  br label %do.body

sw.bb38:                                          ; preds = %entry
  %last_byte39 = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 5
  %62 = ptrtoint ptr %last_byte39 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %last_byte39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp40 = icmp ugt i32 %63, 3
  br i1 %cmp40, label %sw.bb38.do.body_crit_edge, label %if.else43

sw.bb38.do.body_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.else43:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp45 = icmp eq i32 %63, 3
  %spec.select.i = select i1 %cmp45, i32 -2147418112, i32 65536
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmnand_low_level_op.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmnand_read_byte, %if.then15.i)) #9
          to label %do.end.i [label %if.then15.i], !srcloc !340

if.then15.i:                                      ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmnand_low_level_op.__UNIQUE_ID_ddebug261, ptr noundef %65, ptr noundef nonnull @.str.135, i32 noundef %spec.select.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then15.i, %if.else43
  %reg_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 33
  %66 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %67, i32 6
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool.not.i.i = icmp eq i16 %69, 0
  br i1 %tobool.not.i.i, label %do.end.i.brcmnand_write_reg.exit.i_crit_edge, label %if.then.i.i

do.end.i.brcmnand_write_reg.exit.i_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit.i

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i16 %69 to i32
  %nand_base.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %70 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %71, i32 %conv.i.i
  %72 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %72) #9, !srcloc !337
  br label %brcmnand_write_reg.exit.i

brcmnand_write_reg.exit.i:                        ; preds = %if.then.i.i, %do.end.i.brcmnand_write_reg.exit.i_crit_edge
  %73 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i2.i = getelementptr i16, ptr %74, i32 6
  %75 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx.i2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool.not.i3.i = icmp eq i16 %76, 0
  br i1 %tobool.not.i3.i, label %brcmnand_write_reg.exit.i.brcmnand_low_level_op.exit_crit_edge, label %if.then.i7.i

brcmnand_write_reg.exit.i.brcmnand_low_level_op.exit_crit_edge: ; preds = %brcmnand_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_low_level_op.exit

if.then.i7.i:                                     ; preds = %brcmnand_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i4.i = zext i16 %76 to i32
  %nand_base.i.i5.i = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %77 = ptrtoint ptr %nand_base.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %nand_base.i.i5.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %78, i32 %conv.i4.i
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6.i) #9, !srcloc !336
  br label %brcmnand_low_level_op.exit

brcmnand_low_level_op.exit:                       ; preds = %if.then.i7.i, %brcmnand_write_reg.exit.i.brcmnand_low_level_op.exit_crit_edge
  %chip1.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1
  tail call fastcc void @brcmnand_send_cmd(ptr noundef %1, i32 noundef 16) #9
  %call18.i = tail call i32 @brcmnand_waitfunc(ptr noundef %chip1.i) #9
  %80 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i113 = getelementptr i16, ptr %81, i32 20
  %82 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx.i113, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool.not.i114 = icmp eq i16 %83, 0
  br i1 %tobool.not.i114, label %brcmnand_low_level_op.exit.do.body_crit_edge, label %if.then.i118

brcmnand_low_level_op.exit.do.body_crit_edge:     ; preds = %brcmnand_low_level_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then.i118:                                     ; preds = %brcmnand_low_level_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i115 = zext i16 %83 to i32
  %nand_base.i.i116 = getelementptr inbounds %struct.brcmnand_controller, ptr %3, i32 0, i32 2
  %84 = ptrtoint ptr %nand_base.i.i116 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %nand_base.i.i116, align 4
  %add.ptr.i.i117 = getelementptr i8, ptr %85, i32 %conv.i115
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i117) #9, !srcloc !336
  %87 = lshr i32 %86, 24
  %phi.cast = trunc i32 %87 to i8
  br label %do.body

do.body:                                          ; preds = %if.then.i118, %brcmnand_low_level_op.exit.do.body_crit_edge, %sw.bb38.do.body_crit_edge, %if.end37, %brcmnand_read_reg.exit111, %if.end.i, %sw.bb15.do.body_crit_edge, %brcmnand_read_reg.exit96, %if.else.do.body_crit_edge, %brcmnand_read_reg.exit, %entry.do.body_crit_edge
  %ret.0 = phi i8 [ 0, %entry.do.body_crit_edge ], [ %61, %if.end37 ], [ %conv, %brcmnand_read_reg.exit ], [ %conv13, %brcmnand_read_reg.exit96 ], [ 0, %if.else.do.body_crit_edge ], [ 0, %sw.bb38.do.body_crit_edge ], [ %conv15.i, %if.end.i ], [ 119, %sw.bb15.do.body_crit_edge ], [ %spec.select, %brcmnand_read_reg.exit111 ], [ %phi.cast, %if.then.i118 ], [ 0, %brcmnand_low_level_op.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmnand_read_byte.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmnand_read_byte, %if.then58)) #9
          to label %do.end [label %if.then58], !srcloc !340

if.then58:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %3, align 8
  %conv59 = zext i8 %ret.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmnand_read_byte.__UNIQUE_ID_ddebug263, ptr noundef %89, ptr noundef nonnull @.str.137, i32 noundef %conv59) #9
  br label %do.end

do.end:                                           ; preds = %if.then58, %do.body
  %last_byte61 = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 5
  %90 = ptrtoint ptr %last_byte61 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %last_byte61, align 4
  %inc = add i32 %91, 1
  store i32 %inc, ptr %last_byte61, align 4
  ret i8 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmnand_read_buf(ptr noundef %chip, ptr nocapture noundef writeonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp3 = icmp sgt i32 %len, 0
  br i1 %cmp3, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %buf.addr.04 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %buf, %entry.for.body_crit_edge ]
  %call = tail call zeroext i8 @brcmnand_read_byte(ptr noundef %chip)
  %0 = ptrtoint ptr %buf.addr.04 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %call, ptr %buf.addr.04, align 1
  %inc = add nuw nsw i32 %i.05, 1
  %incdec.ptr = getelementptr i8, ptr %buf.addr.04, i32 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmnand_write_buf(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %last_cmd = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %last_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_cmd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 239, i32 %3)
  %cond = icmp eq i32 %3, 239
  br i1 %cond, label %for.cond.preheader, label %do.body

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp12 = icmp sgt i32 %len, 0
  br i1 %cmp12, label %for.body.lr.ph, label %for.cond.preheader.sw.epilog_crit_edge

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ctrl2.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 8
  %chip1.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %brcmnand_low_level_op.exit.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %brcmnand_low_level_op.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.013
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %add = add nuw nsw i32 %i.013, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp1 = icmp eq i32 %add, %len
  %6 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl2.i, align 8
  %spec.select.i.v = select i1 %cmp1, i32 -2147352576, i32 131072
  %spec.select.i = or i32 %spec.select.i.v, %conv
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmnand_low_level_op.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcmnand_write_buf, %if.then15.i)) #9
          to label %do.end.i [label %if.then15.i], !srcloc !340

if.then15.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmnand_low_level_op.__UNIQUE_ID_ddebug261, ptr noundef %9, ptr noundef nonnull @.str.135, i32 noundef %spec.select.i) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then15.i, %for.body
  %reg_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %7, i32 0, i32 33
  %10 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %11, i32 6
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i.i, label %do.end.i.brcmnand_write_reg.exit.i_crit_edge, label %if.then.i.i

do.end.i.brcmnand_write_reg.exit.i_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_write_reg.exit.i

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i16 %13 to i32
  %nand_base.i.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %nand_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nand_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 %conv.i.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %16) #9, !srcloc !337
  br label %brcmnand_write_reg.exit.i

brcmnand_write_reg.exit.i:                        ; preds = %if.then.i.i, %do.end.i.brcmnand_write_reg.exit.i_crit_edge
  %17 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i2.i = getelementptr i16, ptr %18, i32 6
  %19 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.i2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i3.i = icmp eq i16 %20, 0
  br i1 %tobool.not.i3.i, label %brcmnand_write_reg.exit.i.brcmnand_low_level_op.exit_crit_edge, label %if.then.i7.i

brcmnand_write_reg.exit.i.brcmnand_low_level_op.exit_crit_edge: ; preds = %brcmnand_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_low_level_op.exit

if.then.i7.i:                                     ; preds = %brcmnand_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i4.i = zext i16 %20 to i32
  %nand_base.i.i5.i = getelementptr inbounds %struct.brcmnand_controller, ptr %7, i32 0, i32 2
  %21 = ptrtoint ptr %nand_base.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nand_base.i.i5.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %22, i32 %conv.i4.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6.i) #9, !srcloc !336
  br label %brcmnand_low_level_op.exit

brcmnand_low_level_op.exit:                       ; preds = %if.then.i7.i, %brcmnand_write_reg.exit.i.brcmnand_low_level_op.exit_crit_edge
  tail call fastcc void @brcmnand_send_cmd(ptr noundef %1, i32 noundef 16) #9
  %call18.i = tail call i32 @brcmnand_waitfunc(ptr noundef %chip1.i) #9
  %exitcond.not = icmp eq i32 %add, %len
  br i1 %exitcond.not, label %brcmnand_low_level_op.exit.sw.epilog_crit_edge, label %brcmnand_low_level_op.exit.for.body_crit_edge

brcmnand_low_level_op.exit.for.body_crit_edge:    ; preds = %brcmnand_low_level_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

brcmnand_low_level_op.exit.sw.epilog_crit_edge:   ; preds = %brcmnand_low_level_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/brcmnand/brcmnand.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1864, 0\0A.popsection", ""() #9, !srcloc !351
  unreachable

sw.epilog:                                        ; preds = %brcmnand_low_level_op.exit.sw.epilog_crit_edge, %for.cond.preheader.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmnand_read_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call2 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %last_addr = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %last_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %last_addr, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writesize, align 4
  %shr = lshr i32 %7, 9
  %call3 = tail call fastcc i32 @brcmnand_read(ptr noundef %chip, ptr noundef %chip, i64 noundef %5, i32 noundef %shr, ptr noundef %buf, ptr noundef %cond)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmnand_write_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call2 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %last_addr = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %last_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %last_addr, align 8
  %call3 = tail call fastcc i32 @brcmnand_write(ptr noundef %chip, ptr noundef %chip, i64 noundef %5, ptr noundef %buf, ptr noundef %cond)
  %call4 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #9
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmnand_read_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call2 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %ctrl1.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl1.i, align 8
  %cs.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cs.i, align 4
  %reg_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 33
  %8 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %9, i32 7
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %cond.end
  %cs0_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 36
  %12 = ptrtoint ptr %cs0_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cs0_offsets.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.thread42.i.i, label %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge

land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_set_ecc_enabled.exit

if.end.thread42.i.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 35
  %14 = ptrtoint ptr %cs_offsets43.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cs_offsets43.i.i, align 8
  br label %brcmnand_set_ecc_enabled.exit

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i.i = getelementptr i16, ptr %9, i32 8
  %16 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx2.i.i, align 2
  %cs_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 35
  %18 = ptrtoint ptr %cs_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cs_offsets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool8.not.i.i = icmp eq i16 %17, 0
  %not.tobool8.not.i.i = xor i1 %tobool8.not.i.i, true
  %sub.i.i = sext i1 %not.tobool8.not.i.i to i32
  %spec.select.i = add i32 %7, %sub.i.i
  %spec.select22.i = select i1 %tobool8.not.i.i, i16 %11, i16 %17
  br label %brcmnand_set_ecc_enabled.exit

brcmnand_set_ecc_enabled.exit:                    ; preds = %if.end.i.i, %if.end.thread42.i.i, %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge
  %cs.sink.i.i = phi i32 [ %spec.select.i, %if.end.i.i ], [ 0, %if.end.thread42.i.i ], [ 0, %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge ]
  %.sink.i.pn.i = phi ptr [ %19, %if.end.i.i ], [ %15, %if.end.thread42.i.i ], [ %13, %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge ]
  %conv15.sink.in.i.i = phi i16 [ %spec.select22.i, %if.end.i.i ], [ %11, %if.end.thread42.i.i ], [ %11, %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge ]
  %cs_offs.041.sink.i.in.i = getelementptr i8, ptr %.sink.i.pn.i, i32 2
  %20 = ptrtoint ptr %cs_offs.041.sink.i.in.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %cs_offs.041.sink.i.i = load i8, ptr %cs_offs.041.sink.i.in.i, align 1
  %conv15.sink.i.i = zext i16 %conv15.sink.in.i.i to i32
  %reg_spacing16.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 34
  %21 = ptrtoint ptr %reg_spacing16.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_spacing16.i.i, align 4
  %mul17.i.i = mul i32 %22, %cs.sink.i.i
  %conv19.i.i = zext i8 %cs_offs.041.sink.i.i to i32
  %add18.i.i = add nuw nsw i32 %conv19.i.i, %conv15.sink.i.i
  %add20.i.i = add i32 %add18.i.i, %mul17.i.i
  %conv.i = and i32 %add20.i.i, 65535
  %nand_base.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %conv.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !336
  %26 = and i32 %25, -4033
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %nand_version.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 7
  %28 = ptrtoint ptr %nand_version.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nand_version.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %29)
  %cmp.i19.i = icmp sgt i32 %29, 1535
  %cond.i.i = select i1 %cmp.i19.i, i32 2031616, i32 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1793, i32 %29)
  %cmp2.i.i = icmp sgt i32 %29, 1793
  %or.i.i = or i32 %cond.i.i, 57344
  %spec.select.i.i = select i1 %cmp2.i.i, i32 %or.i.i, i32 %cond.i.i
  %neg5.i = xor i32 %spec.select.i.i, -1
  %and6.i = and i32 %27, %neg5.i
  %30 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %31, i32 %conv.i
  %32 = tail call i32 @llvm.bswap.i32(i32 %and6.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %32) #9, !srcloc !337
  %last_addr = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %last_addr to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %last_addr, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %35 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %writesize, align 4
  %shr = lshr i32 %36, 9
  %call3 = tail call fastcc i32 @brcmnand_read(ptr noundef %chip, ptr noundef %chip, i64 noundef %34, i32 noundef %shr, ptr noundef %buf, ptr noundef %cond)
  %37 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctrl1.i, align 8
  %39 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cs.i, align 4
  %reg_offsets.i.i13 = getelementptr inbounds %struct.brcmnand_controller, ptr %38, i32 0, i32 33
  %41 = ptrtoint ptr %reg_offsets.i.i13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_offsets.i.i13, align 8
  %arrayidx.i.i14 = getelementptr i16, ptr %42, i32 7
  %43 = ptrtoint ptr %arrayidx.i.i14 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.i.i14, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i15 = icmp eq i32 %40, 0
  br i1 %cmp.i.i15, label %land.lhs.true.i.i18, label %if.end.i.i28

land.lhs.true.i.i18:                              ; preds = %brcmnand_set_ecc_enabled.exit
  %cs0_offsets.i.i16 = getelementptr inbounds %struct.brcmnand_controller, ptr %38, i32 0, i32 36
  %45 = ptrtoint ptr %cs0_offsets.i.i16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cs0_offsets.i.i16, align 4
  %tobool.not.i.i17 = icmp eq ptr %46, null
  br i1 %tobool.not.i.i17, label %if.end.thread42.i.i20, label %land.lhs.true.i.i18.brcmnand_set_ecc_enabled.exit44_crit_edge

land.lhs.true.i.i18.brcmnand_set_ecc_enabled.exit44_crit_edge: ; preds = %land.lhs.true.i.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_set_ecc_enabled.exit44

if.end.thread42.i.i20:                            ; preds = %land.lhs.true.i.i18
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i.i19 = getelementptr inbounds %struct.brcmnand_controller, ptr %38, i32 0, i32 35
  %47 = ptrtoint ptr %cs_offsets43.i.i19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cs_offsets43.i.i19, align 8
  br label %brcmnand_set_ecc_enabled.exit44

if.end.i.i28:                                     ; preds = %brcmnand_set_ecc_enabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i.i21 = getelementptr i16, ptr %42, i32 8
  %49 = ptrtoint ptr %arrayidx2.i.i21 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx2.i.i21, align 2
  %cs_offsets.i.i22 = getelementptr inbounds %struct.brcmnand_controller, ptr %38, i32 0, i32 35
  %51 = ptrtoint ptr %cs_offsets.i.i22 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cs_offsets.i.i22, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool8.not.i.i23 = icmp eq i16 %50, 0
  %not.tobool8.not.i.i24 = xor i1 %tobool8.not.i.i23, true
  %sub.i.i25 = sext i1 %not.tobool8.not.i.i24 to i32
  %spec.select.i26 = add i32 %40, %sub.i.i25
  %spec.select22.i27 = select i1 %tobool8.not.i.i23, i16 %44, i16 %50
  br label %brcmnand_set_ecc_enabled.exit44

brcmnand_set_ecc_enabled.exit44:                  ; preds = %if.end.i.i28, %if.end.thread42.i.i20, %land.lhs.true.i.i18.brcmnand_set_ecc_enabled.exit44_crit_edge
  %cs.sink.i.i29 = phi i32 [ %spec.select.i26, %if.end.i.i28 ], [ 0, %if.end.thread42.i.i20 ], [ 0, %land.lhs.true.i.i18.brcmnand_set_ecc_enabled.exit44_crit_edge ]
  %.sink.i.pn.i30 = phi ptr [ %52, %if.end.i.i28 ], [ %48, %if.end.thread42.i.i20 ], [ %46, %land.lhs.true.i.i18.brcmnand_set_ecc_enabled.exit44_crit_edge ]
  %conv15.sink.in.i.i31 = phi i16 [ %spec.select22.i27, %if.end.i.i28 ], [ %44, %if.end.thread42.i.i20 ], [ %44, %land.lhs.true.i.i18.brcmnand_set_ecc_enabled.exit44_crit_edge ]
  %cs_offs.041.sink.i.in.i32 = getelementptr i8, ptr %.sink.i.pn.i30, i32 2
  %53 = ptrtoint ptr %cs_offs.041.sink.i.in.i32 to i32
  call void @__asan_load1_noabort(i32 %53)
  %cs_offs.041.sink.i.i33 = load i8, ptr %cs_offs.041.sink.i.in.i32, align 1
  %conv15.sink.i.i34 = zext i16 %conv15.sink.in.i.i31 to i32
  %reg_spacing16.i.i35 = getelementptr inbounds %struct.brcmnand_controller, ptr %38, i32 0, i32 34
  %54 = ptrtoint ptr %reg_spacing16.i.i35 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reg_spacing16.i.i35, align 4
  %mul17.i.i36 = mul i32 %55, %cs.sink.i.i29
  %conv19.i.i37 = zext i8 %cs_offs.041.sink.i.i33 to i32
  %add18.i.i38 = add nuw nsw i32 %conv19.i.i37, %conv15.sink.i.i34
  %add20.i.i39 = add i32 %add18.i.i38, %mul17.i.i36
  %conv.i40 = and i32 %add20.i.i39, 65535
  %nand_base.i.i41 = getelementptr inbounds %struct.brcmnand_controller, ptr %38, i32 0, i32 2
  %56 = ptrtoint ptr %nand_base.i.i41 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %nand_base.i.i41, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %57, i32 %conv.i40
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42) #9, !srcloc !336
  %ecc_level.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 9
  %59 = ptrtoint ptr %ecc_level.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ecc_level.i, align 8
  %shl.i = shl i32 %60, 16
  %61 = or i32 %58, 192
  %62 = call i32 @llvm.bswap.i32(i32 %61)
  %or3.i = or i32 %62, %shl.i
  %63 = ptrtoint ptr %nand_base.i.i41 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %nand_base.i.i41, align 4
  %add.ptr.i21.i43 = getelementptr i8, ptr %64, i32 %conv.i40
  %65 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i43, i32 %65) #9, !srcloc !337
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmnand_write_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %call2 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %ctrl1.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl1.i, align 8
  %cs.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cs.i, align 4
  %reg_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 33
  %8 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_offsets.i.i, align 8
  %arrayidx.i.i = getelementptr i16, ptr %9, i32 7
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %cond.end
  %cs0_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 36
  %12 = ptrtoint ptr %cs0_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cs0_offsets.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.thread42.i.i, label %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge

land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_set_ecc_enabled.exit

if.end.thread42.i.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 35
  %14 = ptrtoint ptr %cs_offsets43.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cs_offsets43.i.i, align 8
  br label %brcmnand_set_ecc_enabled.exit

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i.i = getelementptr i16, ptr %9, i32 8
  %16 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx2.i.i, align 2
  %cs_offsets.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 35
  %18 = ptrtoint ptr %cs_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cs_offsets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool8.not.i.i = icmp eq i16 %17, 0
  %not.tobool8.not.i.i = xor i1 %tobool8.not.i.i, true
  %sub.i.i = sext i1 %not.tobool8.not.i.i to i32
  %spec.select.i = add i32 %7, %sub.i.i
  %spec.select22.i = select i1 %tobool8.not.i.i, i16 %11, i16 %17
  br label %brcmnand_set_ecc_enabled.exit

brcmnand_set_ecc_enabled.exit:                    ; preds = %if.end.i.i, %if.end.thread42.i.i, %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge
  %cs.sink.i.i = phi i32 [ %spec.select.i, %if.end.i.i ], [ 0, %if.end.thread42.i.i ], [ 0, %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge ]
  %.sink.i.pn.i = phi ptr [ %19, %if.end.i.i ], [ %15, %if.end.thread42.i.i ], [ %13, %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge ]
  %conv15.sink.in.i.i = phi i16 [ %spec.select22.i, %if.end.i.i ], [ %11, %if.end.thread42.i.i ], [ %11, %land.lhs.true.i.i.brcmnand_set_ecc_enabled.exit_crit_edge ]
  %cs_offs.041.sink.i.in.i = getelementptr i8, ptr %.sink.i.pn.i, i32 2
  %20 = ptrtoint ptr %cs_offs.041.sink.i.in.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %cs_offs.041.sink.i.i = load i8, ptr %cs_offs.041.sink.i.in.i, align 1
  %conv15.sink.i.i = zext i16 %conv15.sink.in.i.i to i32
  %reg_spacing16.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 34
  %21 = ptrtoint ptr %reg_spacing16.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_spacing16.i.i, align 4
  %mul17.i.i = mul i32 %22, %cs.sink.i.i
  %conv19.i.i = zext i8 %cs_offs.041.sink.i.i to i32
  %add18.i.i = add nuw nsw i32 %conv19.i.i, %conv15.sink.i.i
  %add20.i.i = add i32 %add18.i.i, %mul17.i.i
  %conv.i = and i32 %add20.i.i, 65535
  %nand_base.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 2
  %23 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %conv.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !336
  %26 = and i32 %25, -4033
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %nand_version.i.i = getelementptr inbounds %struct.brcmnand_controller, ptr %5, i32 0, i32 7
  %28 = ptrtoint ptr %nand_version.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nand_version.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535, i32 %29)
  %cmp.i19.i = icmp sgt i32 %29, 1535
  %cond.i.i = select i1 %cmp.i19.i, i32 2031616, i32 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 1793, i32 %29)
  %cmp2.i.i = icmp sgt i32 %29, 1793
  %or.i.i = or i32 %cond.i.i, 57344
  %spec.select.i.i = select i1 %cmp2.i.i, i32 %or.i.i, i32 %cond.i.i
  %neg5.i = xor i32 %spec.select.i.i, -1
  %and6.i = and i32 %27, %neg5.i
  %30 = ptrtoint ptr %nand_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %nand_base.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %31, i32 %conv.i
  %32 = tail call i32 @llvm.bswap.i32(i32 %and6.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %32) #9, !srcloc !337
  %last_addr = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %last_addr to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %last_addr, align 8
  %call3 = tail call fastcc i32 @brcmnand_write(ptr noundef %chip, ptr noundef %chip, i64 noundef %34, ptr noundef %buf, ptr noundef %cond)
  %35 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctrl1.i, align 8
  %37 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cs.i, align 4
  %reg_offsets.i.i14 = getelementptr inbounds %struct.brcmnand_controller, ptr %36, i32 0, i32 33
  %39 = ptrtoint ptr %reg_offsets.i.i14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_offsets.i.i14, align 8
  %arrayidx.i.i15 = getelementptr i16, ptr %40, i32 7
  %41 = ptrtoint ptr %arrayidx.i.i15 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.i.i15, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i16 = icmp eq i32 %38, 0
  br i1 %cmp.i.i16, label %land.lhs.true.i.i19, label %if.end.i.i29

land.lhs.true.i.i19:                              ; preds = %brcmnand_set_ecc_enabled.exit
  %cs0_offsets.i.i17 = getelementptr inbounds %struct.brcmnand_controller, ptr %36, i32 0, i32 36
  %43 = ptrtoint ptr %cs0_offsets.i.i17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cs0_offsets.i.i17, align 4
  %tobool.not.i.i18 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i18, label %if.end.thread42.i.i21, label %land.lhs.true.i.i19.brcmnand_set_ecc_enabled.exit45_crit_edge

land.lhs.true.i.i19.brcmnand_set_ecc_enabled.exit45_crit_edge: ; preds = %land.lhs.true.i.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %brcmnand_set_ecc_enabled.exit45

if.end.thread42.i.i21:                            ; preds = %land.lhs.true.i.i19
  call void @__sanitizer_cov_trace_pc() #11
  %cs_offsets43.i.i20 = getelementptr inbounds %struct.brcmnand_controller, ptr %36, i32 0, i32 35
  %45 = ptrtoint ptr %cs_offsets43.i.i20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cs_offsets43.i.i20, align 8
  br label %brcmnand_set_ecc_enabled.exit45

if.end.i.i29:                                     ; preds = %brcmnand_set_ecc_enabled.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i.i22 = getelementptr i16, ptr %40, i32 8
  %47 = ptrtoint ptr %arrayidx2.i.i22 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx2.i.i22, align 2
  %cs_offsets.i.i23 = getelementptr inbounds %struct.brcmnand_controller, ptr %36, i32 0, i32 35
  %49 = ptrtoint ptr %cs_offsets.i.i23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cs_offsets.i.i23, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool8.not.i.i24 = icmp eq i16 %48, 0
  %not.tobool8.not.i.i25 = xor i1 %tobool8.not.i.i24, true
  %sub.i.i26 = sext i1 %not.tobool8.not.i.i25 to i32
  %spec.select.i27 = add i32 %38, %sub.i.i26
  %spec.select22.i28 = select i1 %tobool8.not.i.i24, i16 %42, i16 %48
  br label %brcmnand_set_ecc_enabled.exit45

brcmnand_set_ecc_enabled.exit45:                  ; preds = %if.end.i.i29, %if.end.thread42.i.i21, %land.lhs.true.i.i19.brcmnand_set_ecc_enabled.exit45_crit_edge
  %cs.sink.i.i30 = phi i32 [ %spec.select.i27, %if.end.i.i29 ], [ 0, %if.end.thread42.i.i21 ], [ 0, %land.lhs.true.i.i19.brcmnand_set_ecc_enabled.exit45_crit_edge ]
  %.sink.i.pn.i31 = phi ptr [ %50, %if.end.i.i29 ], [ %46, %if.end.thread42.i.i21 ], [ %44, %land.lhs.true.i.i19.brcmnand_set_ecc_enabled.exit45_crit_edge ]
  %conv15.sink.in.i.i32 = phi i16 [ %spec.select22.i28, %if.end.i.i29 ], [ %42, %if.end.thread42.i.i21 ], [ %42, %land.lhs.true.i.i19.brcmnand_set_ecc_enabled.exit45_crit_edge ]
  %cs_offs.041.sink.i.in.i33 = getelementptr i8, ptr %.sink.i.pn.i31, i32 2
  %51 = ptrtoint ptr %cs_offs.041.sink.i.in.i33 to i32
  call void @__asan_load1_noabort(i32 %51)
  %cs_offs.041.sink.i.i34 = load i8, ptr %cs_offs.041.sink.i.in.i33, align 1
  %conv15.sink.i.i35 = zext i16 %conv15.sink.in.i.i32 to i32
  %reg_spacing16.i.i36 = getelementptr inbounds %struct.brcmnand_controller, ptr %36, i32 0, i32 34
  %52 = ptrtoint ptr %reg_spacing16.i.i36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reg_spacing16.i.i36, align 4
  %mul17.i.i37 = mul i32 %53, %cs.sink.i.i30
  %conv19.i.i38 = zext i8 %cs_offs.041.sink.i.i34 to i32
  %add18.i.i39 = add nuw nsw i32 %conv19.i.i38, %conv15.sink.i.i35
  %add20.i.i40 = add i32 %add18.i.i39, %mul17.i.i37
  %conv.i41 = and i32 %add20.i.i40, 65535
  %nand_base.i.i42 = getelementptr inbounds %struct.brcmnand_controller, ptr %36, i32 0, i32 2
  %54 = ptrtoint ptr %nand_base.i.i42 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nand_base.i.i42, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %55, i32 %conv.i41
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43) #9, !srcloc !336
  %ecc_level.i = getelementptr inbounds %struct.brcmnand_host, ptr %1, i32 0, i32 7, i32 9
  %57 = ptrtoint ptr %ecc_level.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ecc_level.i, align 8
  %shl.i = shl i32 %58, 16
  %59 = or i32 %56, 192
  %60 = call i32 @llvm.bswap.i32(i32 %59)
  %or3.i = or i32 %60, %shl.i
  %61 = ptrtoint ptr %nand_base.i.i42 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %nand_base.i.i42, align 4
  %add.ptr.i21.i44 = getelementptr i8, ptr %62, i32 %conv.i41
  %63 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i44, i32 %63) #9, !srcloc !337
  %call4 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #9
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmnand_read_oob(ptr noundef %chip, i32 noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i32 %page to i64
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 17
  %0 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_shift, align 4
  %sh_prom = zext i32 %1 to i64
  %shl = shl i64 %conv, %sh_prom
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  %shr = lshr i32 %3, 9
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %4 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %oob_poi, align 4
  %call1 = tail call fastcc i32 @brcmnand_read(ptr noundef %chip, ptr noundef %chip, i64 noundef %shl, i32 noundef %shr, ptr noundef null, ptr noundef %5)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmnand_write_oob(ptr noundef %chip, i32 noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i32 %page to i64
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 17
  %0 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_shift, align 4
  %sh_prom = zext i32 %1 to i64
  %shl = shl i64 %conv, %sh_prom
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi, align 4
  %call1 = tail call fastcc i32 @brcmnand_write(ptr noundef %chip, ptr noundef %chip, i64 noundef %shl, ptr noundef null, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 162)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 162)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !57, !59, !61, !63, !64, !66, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !106, !108, !109, !111, !112, !113, !115, !116, !118, !119, !120, !122, !124, !126, !128, !130, !132, !134, !135, !136, !137, !139, !141, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !159, !160, !161, !162, !163, !165, !166, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !198, !199, !201, !202, !204, !206, !208, !210, !212, !214, !216, !218, !219, !220, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !250, !251, !252, !254, !255, !256, !258, !259, !260, !261, !263, !265, !266, !267, !268, !270, !272, !273, !275, !276, !277, !279, !281, !282, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !298, !299, !300, !302, !303, !304, !306, !308, !309, !310, !311, !313, !315, !317, !318, !319, !321, !322, !323, !325, !326}
!llvm.module.flags = !{!327, !328, !329, !330, !331, !332, !333, !334}
!llvm.ident = !{!335}

!0 = !{ptr @__param_wp_on, !1, !"__param_wp_on", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 41, i32 1}
!2 = !{ptr @__UNIQUE_ID_wp_ontype249, !1, !"__UNIQUE_ID_wp_ontype249", i1 false, i1 false}
!3 = !{ptr @brcmnand_pm_ops, !4, !"brcmnand_pm_ops", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2911, i32 25}
!5 = !{ptr @__ksymtab_brcmnand_pm_ops, !6, !"__ksymtab_brcmnand_pm_ops", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2915, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 3016, i32 32}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 3038, i32 59}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 3051, i32 59}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 3087, i32 4}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @brcmnand_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @brcmnand_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 3093, i32 26}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 3096, i32 4}
!25 = !{ptr @brcmnand_probe._entry.9, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @brcmnand_probe._entry_ptr.11, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 3101, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @brcmnand_probe._entry.12, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @brcmnand_probe._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 3131, i32 3}
!34 = !{ptr @brcmnand_probe._entry.16, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @brcmnand_probe._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @brcmnand_probe._entry.19, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 3155, i32 3}
!38 = !{ptr @brcmnand_probe._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 3161, i32 38}
!41 = !{ptr @__ksymtab_brcmnand_probe, !42, !"__ksymtab_brcmnand_probe", i1 false, i1 false}
!42 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 3196, i32 1}
!43 = !{ptr @__ksymtab_brcmnand_remove, !44, !"__ksymtab_brcmnand_remove", i1 false, i1 false}
!44 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 3218, i32 1}
!45 = !{ptr @__UNIQUE_ID_file273, !46, !"__UNIQUE_ID_file273", i1 false, i1 false}
!46 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 3220, i32 1}
!47 = !{ptr @__UNIQUE_ID_license274, !46, !"__UNIQUE_ID_license274", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_author275, !49, !"__UNIQUE_ID_author275", i1 false, i1 false}
!49 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 3221, i32 1}
!50 = !{ptr @__UNIQUE_ID_author276, !51, !"__UNIQUE_ID_author276", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 3222, i32 1}
!52 = !{ptr @__UNIQUE_ID_description277, !53, !"__UNIQUE_ID_description277", i1 false, i1 false}
!53 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 3223, i32 1}
!54 = !{ptr @__UNIQUE_ID_alias278, !55, !"__UNIQUE_ID_alias278", i1 false, i1 false}
!55 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 3224, i32 1}
!56 = !{ptr @__param_str_wp_on, !1, !"__param_str_wp_on", i1 false, i1 false}
!57 = !{ptr @wp_on, !58, !"wp_on", i1 false, i1 false}
!58 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 40, i32 12}
!59 = !{ptr @brcmnand_of_match, !60, !"brcmnand_of_match", i1 false, i1 false}
!60 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2917, i32 34}
!61 = !{ptr @init_completion.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../include/linux/completion.h", i32 87, i32 2}
!63 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @nand_controller_init.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!66 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @brcmnand_controller_ops, !68, !"brcmnand_controller_ops", i1 false, i1 false}
!68 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2749, i32 41}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2595, i32 8}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2620, i32 3}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @brcmnand_setup_dev._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @brcmnand_setup_dev._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2636, i32 3}
!78 = !{ptr @brcmnand_setup_dev._entry.27, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @brcmnand_setup_dev._entry_ptr.29, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2647, i32 4}
!82 = !{ptr @brcmnand_setup_dev._entry.30, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @brcmnand_setup_dev._entry_ptr.32, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2662, i32 4}
!86 = !{ptr @brcmnand_setup_dev._entry.33, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @brcmnand_setup_dev._entry_ptr.35, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2666, i32 4}
!90 = !{ptr @brcmnand_setup_dev._entry.36, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @brcmnand_setup_dev._entry_ptr.38, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2675, i32 3}
!94 = !{ptr @brcmnand_setup_dev._entry.39, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @brcmnand_setup_dev._entry_ptr.41, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2693, i32 2}
!98 = !{ptr @brcmnand_setup_dev._entry.42, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @brcmnand_setup_dev._entry_ptr.44, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2470, i32 4}
!102 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @brcmnand_set_cfg._entry, !101, !"_entry", i1 false, i1 false}
!105 = !{ptr @brcmnand_set_cfg._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @brcmnand_set_cfg._entry.48, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2480, i32 3}
!108 = !{ptr @brcmnand_set_cfg._entry_ptr.49, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2494, i32 4}
!111 = !{ptr @brcmnand_set_cfg._entry.50, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @brcmnand_set_cfg._entry_ptr.52, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @brcmnand_set_cfg._entry.53, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2504, i32 3}
!115 = !{ptr @brcmnand_set_cfg._entry_ptr.54, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2509, i32 3}
!118 = !{ptr @brcmnand_set_cfg._entry.55, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @brcmnand_set_cfg._entry_ptr.57, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2552, i32 3}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2556, i32 28}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2556, i32 36}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2561, i32 16}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2563, i32 16}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2565, i32 16}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1309, i32 3}
!134 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @brcmstb_choose_ecc_layout._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @brcmstb_choose_ecc_layout._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @brcmnand_hamming_ooblayout_ops, !138, !"brcmnand_hamming_ooblayout_ops", i1 false, i1 false}
!138 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1196, i32 39}
!139 = !{ptr @brcmnand_bch_sp_ooblayout_ops, !140, !"brcmnand_bch_sp_ooblayout_ops", i1 false, i1 false}
!140 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1273, i32 39}
!141 = !{ptr @brcmnand_bch_lp_ooblayout_ops, !142, !"brcmnand_bch_lp_ooblayout_ops", i1 false, i1 false}
!142 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1268, i32 39}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2332, i32 2}
!145 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @brcmnand_write.__UNIQUE_ID_ddebug272, !144, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2335, i32 3}
!149 = !{ptr @brcmnand_write._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @brcmnand_write._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2384, i32 4}
!153 = !{ptr @brcmnand_write._entry.69, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @brcmnand_write._entry_ptr.71, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @brcmnand_wp.old_wp, !156, !"old_wp", i1 false, i1 false}
!156 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1325, i32 14}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1329, i32 4}
!159 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @brcmnand_wp.__UNIQUE_ID_ddebug250, !158, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!161 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1356, i32 4}
!165 = !{ptr @brcmnand_wp._rs, !164, !"_rs", i1 false, i1 false}
!166 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @brcmnand_wp._entry, !164, !"_entry", i1 false, i1 false}
!168 = !{ptr @brcmnand_wp._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1046, i32 2}
!171 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @bcmnand_ctrl_poll_status._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @bcmnand_ctrl_poll_status._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1564, i32 2}
!176 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @brcmnand_send_cmd.__UNIQUE_ID_ddebug259, !175, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!178 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1618, i32 2}
!180 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @brcmnand_waitfunc.__UNIQUE_ID_ddebug260, !179, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!182 = !{ptr @brcmnand_waitfunc._rs, !183, !"_rs", i1 false, i1 false}
!183 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1626, i32 3}
!184 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @brcmnand_waitfunc._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @brcmnand_waitfunc._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @brcmnand_waitfunc._rs.85, !188, !"_rs", i1 false, i1 false}
!188 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1628, i32 3}
!189 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @brcmnand_waitfunc._entry.86, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @brcmnand_waitfunc._entry_ptr.88, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.89, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2189, i32 2}
!194 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @brcmnand_read.__UNIQUE_ID_ddebug267, !193, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!196 = !{ptr @.str.91, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2247, i32 3}
!198 = !{ptr @brcmnand_read.__UNIQUE_ID_ddebug268, !197, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2262, i32 3}
!201 = !{ptr @brcmnand_read.__UNIQUE_ID_ddebug269, !200, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!202 = !{ptr @brcmnand_revision_init.block_sizes_v6, !203, !"block_sizes_v6", i1 false, i1 false}
!203 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 608, i32 28}
!204 = !{ptr @brcmnand_revision_init.block_sizes_v4, !205, !"block_sizes_v4", i1 false, i1 false}
!205 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 609, i32 28}
!206 = !{ptr @brcmnand_revision_init.block_sizes_v2_2, !207, !"block_sizes_v2_2", i1 false, i1 false}
!207 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 610, i32 28}
!208 = !{ptr @brcmnand_revision_init.block_sizes_v2_1, !209, !"block_sizes_v2_1", i1 false, i1 false}
!209 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 611, i32 28}
!210 = !{ptr @brcmnand_revision_init.page_sizes_v3_4, !211, !"page_sizes_v3_4", i1 false, i1 false}
!211 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 612, i32 28}
!212 = !{ptr @brcmnand_revision_init.page_sizes_v2_2, !213, !"page_sizes_v2_2", i1 false, i1 false}
!213 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 613, i32 28}
!214 = !{ptr @brcmnand_revision_init.page_sizes_v2_1, !215, !"page_sizes_v2_1", i1 false, i1 false}
!215 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 614, i32 28}
!216 = !{ptr @.str.93, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 620, i32 3}
!218 = !{ptr @.str.94, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @brcmnand_revision_init._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @brcmnand_revision_init._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.95, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 719, i32 53}
!223 = !{ptr @brcmnand_regs_v72, !224, !"brcmnand_regs_v72", i1 false, i1 false}
!224 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 495, i32 18}
!225 = !{ptr @brcmnand_regs_v71, !226, !"brcmnand_regs_v71", i1 false, i1 false}
!226 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 465, i32 18}
!227 = !{ptr @brcmnand_regs_v60, !228, !"brcmnand_regs_v60", i1 false, i1 false}
!228 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 435, i32 18}
!229 = !{ptr @brcmnand_regs_v50, !230, !"brcmnand_regs_v50", i1 false, i1 false}
!230 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 405, i32 18}
!231 = !{ptr @brcmnand_regs_v33, !232, !"brcmnand_regs_v33", i1 false, i1 false}
!232 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 375, i32 18}
!233 = !{ptr @brcmnand_regs_v21, !234, !"brcmnand_regs_v21", i1 false, i1 false}
!234 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 345, i32 18}
!235 = !{ptr @brcmnand_cs_offsets_v71, !236, !"brcmnand_cs_offsets_v71", i1 false, i1 false}
!236 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 533, i32 17}
!237 = !{ptr @brcmnand_cs_offsets, !238, !"brcmnand_cs_offsets", i1 false, i1 false}
!238 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 542, i32 17}
!239 = !{ptr @brcmnand_cs_offsets_cs0, !240, !"brcmnand_cs_offsets_cs0", i1 false, i1 false}
!240 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 551, i32 17}
!241 = !{ptr @flash_dma_regs_v4, !242, !"flash_dma_regs_v4", i1 false, i1 false}
!242 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 186, i32 18}
!243 = !{ptr @flash_dma_regs_v0, !244, !"flash_dma_regs_v0", i1 false, i1 false}
!244 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 159, i32 18}
!245 = !{ptr @flash_dma_regs_v1, !246, !"flash_dma_regs_v1", i1 false, i1 false}
!246 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 171, i32 18}
!247 = !{ptr @.str.96, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2057, i32 3}
!249 = !{ptr @.str.97, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @brcmnand_dma_trans._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @brcmnand_dma_trans._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = distinct !{null, !253, !"__already_done", i1 false, i1 false}
!253 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!254 = !{ptr @.str.98, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.99, !253, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.100, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2039, i32 3}
!258 = !{ptr @.str.101, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @brcmnand_dma_run._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @brcmnand_dma_run._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.102, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2943, i32 59}
!263 = !{ptr @.str.103, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2960, i32 4}
!265 = !{ptr @.str.104, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @brcmnand_edu_setup._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @brcmnand_edu_setup._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.105, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2965, i32 13}
!270 = !{ptr @brcmnand_edu_setup._entry.106, !271, !"_entry", i1 false, i1 false}
!271 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2967, i32 5}
!272 = !{ptr @brcmnand_edu_setup._entry_ptr.107, !271, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.109, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2972, i32 4}
!275 = !{ptr @brcmnand_edu_setup._entry.108, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @brcmnand_edu_setup._entry_ptr.110, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @edu_regs, !278, !"edu_regs", i1 false, i1 false}
!278 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 131, i32 19}
!279 = !{ptr @.str.111, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1884, i32 2}
!281 = !{ptr @.str.112, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @brcmnand_edu_trans.__UNIQUE_ID_ddebug264, !280, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!283 = !{ptr @.str.113, !280, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.114, !280, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.115, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1889, i32 3}
!287 = !{ptr @brcmnand_edu_trans._entry, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @brcmnand_edu_trans._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.117, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1924, i32 3}
!291 = !{ptr @brcmnand_edu_trans._entry.116, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @brcmnand_edu_trans._entry_ptr.118, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @brcmnand_edu_trans._entry.119, !294, !"_entry", i1 false, i1 false}
!294 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1944, i32 3}
!295 = !{ptr @brcmnand_edu_trans._entry_ptr.120, !294, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.122, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1951, i32 3}
!298 = !{ptr @brcmnand_edu_trans._entry.121, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @brcmnand_edu_trans._entry_ptr.123, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.125, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1955, i32 3}
!302 = !{ptr @brcmnand_edu_trans._entry.124, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @brcmnand_edu_trans._entry_ptr.126, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.127, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2762, i32 33}
!306 = !{ptr @.str.128, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2764, i32 3}
!308 = !{ptr @.str.129, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @brcmnand_init_cs._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @brcmnand_init_cs._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.130, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 2773, i32 53}
!313 = !{ptr @.str.131, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!315 = !{ptr @.str.132, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1701, i32 2}
!317 = !{ptr @.str.133, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @brcmnand_cmdfunc.__UNIQUE_ID_ddebug262, !316, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!319 = !{ptr @.str.134, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1676, i32 2}
!321 = !{ptr @.str.135, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @brcmnand_low_level_op.__UNIQUE_ID_ddebug261, !320, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!323 = !{ptr @.str.136, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/mtd/nand/raw/brcmnand/brcmnand.c", i32 1837, i32 2}
!325 = !{ptr @.str.137, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @brcmnand_read_byte.__UNIQUE_ID_ddebug263, !324, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!327 = !{i32 1, !"wchar_size", i32 2}
!328 = !{i32 1, !"min_enum_size", i32 4}
!329 = !{i32 8, !"branch-target-enforcement", i32 0}
!330 = !{i32 8, !"sign-return-address", i32 0}
!331 = !{i32 8, !"sign-return-address-all", i32 0}
!332 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!333 = !{i32 7, !"uwtable", i32 1}
!334 = !{i32 7, !"frame-pointer", i32 2}
!335 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!336 = !{i64 4997521}
!337 = !{i64 4997103}
!338 = !{!"branch_weights", i32 2000, i32 1}
!339 = !{i64 2154732983}
!340 = !{i64 2148807466, i64 2148807471, i64 2148807484, i64 2148807528, i64 2148807562, i64 2148807583}
!341 = !{i64 2154725195}
!342 = !{i8 0, i8 2}
!343 = !{!"auto-init"}
!344 = !{i32 0, i32 33}
!345 = !{i64 2154678903}
!346 = !{i64 2154678745}
!347 = !{i64 2154701036, i64 2154701542, i64 2154701073, i64 2154701129, i64 2154701163, i64 2154701187, i64 2154701228, i64 2154701249, i64 2154701277, i64 2154701311}
!348 = !{i64 2154703031}
!349 = !{!"branch_weights", i32 1, i32 2000}
!350 = !{i64 2154698239}
!351 = !{i64 2154719539, i64 2154720045, i64 2154719576, i64 2154719632, i64 2154719666, i64 2154719690, i64 2154719731, i64 2154719752, i64 2154719780, i64 2154719814}
