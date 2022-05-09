; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/marvell_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/marvell_nand.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, ptr }
%struct.marvell_hw_ecc_layout = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nand_op_parser = type { ptr, i32 }
%struct.nand_op_parser_pattern_elem = type { i32, i8, %union.anon.82 }
%union.anon.82 = type { %struct.nand_op_parser_addr_constraints }
%struct.nand_op_parser_addr_constraints = type { i32 }
%struct.nand_op_parser_data_constraints = type { i32 }
%struct.nand_op_parser_pattern = type { ptr, i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.marvell_nfc_caps = type { i32, i32, i8, i8, i8, i8 }
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
%struct.marvell_nfc = type { %struct.nand_controller, ptr, ptr, ptr, ptr, %struct.completion, i32, %struct.list_head, ptr, ptr, i8, ptr, ptr }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
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
%struct.pxa3xx_nand_platform_data = type { i8, i8, i32, i32, ptr, i32 }
%struct.marvell_nand_chip = type { %struct.nand_chip, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, [0 x %struct.marvell_nand_chip_sel] }
%struct.marvell_nand_chip_sel = type { i32, i32, i32 }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.marvell_nfc_op = type { [4 x i32], i32, i32, i32, i32, i32, ptr }
%struct.mtd_oob_region = type { i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.nand_subop = type { i32, ptr, i32, i32, i32 }
%struct.nand_op_instr = type { i32, %union.anon.75, i32 }
%union.anon.75 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.76, i8 }
%union.anon.76 = type { ptr }

@__initcall__kmod_marvell_nand__290_3144_marvell_nfc_driver_init6 = internal global ptr @marvell_nfc_driver_init, section ".initcall6.init", align 4
@marvell_nfc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @marvell_nfc_probe, ptr @marvell_nfc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @marvell_nfc_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @marvell_nfc_pm_ops, ptr null, ptr null }, ptr @marvell_nfc_platform_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_marvell_nfc_driver_exit = internal global ptr @marvell_nfc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file291 = internal constant [52 x i8] c"marvell_nand.file=drivers/mtd/nand/raw/marvell_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [25 x i8] c"marvell_nand.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [56 x i8] c"marvell_nand.description=Marvell NAND controller driver\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"marvell-nfc\00", [20 x i8] zeroinitializer }, align 32
@marvell_nfc_of_ids = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-8k-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @marvell_armada_8k_nfc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada370-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @marvell_armada370_nfc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa3xx-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @marvell_pxa3xx_nfc_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-8k-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @marvell_armada_8k_nfc_legacy_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada370-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @marvell_armada370_nfc_legacy_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa3xx-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @marvell_pxa3xx_nfc_legacy_caps }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@marvell_nfc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @marvell_nfc_suspend, ptr @marvell_nfc_resume, ptr @marvell_nfc_suspend, ptr @marvell_nfc_resume, ptr @marvell_nfc_suspend, ptr @marvell_nfc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@marvell_nfc_platform_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"pxa3xx-nand\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @marvell_pxa3xx_nfc_legacy_caps to i32) }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@marvell_nand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @marvell_nand_attach_chip, ptr null, ptr @marvell_nfc_exec_op, ptr @marvell_nfc_setup_interface }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@marvell_nfc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2963, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not retrieve NFC caps\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"marvell_nfc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/mtd/nand/raw/marvell_nand.c\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@marvell_nfc_probe._entry_ptr = internal global ptr @marvell_nfc_probe._entry, section ".printk_index", align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@bbt_main_descr = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 8978, [8 x i32] zeroinitializer, i32 8, i32 14, [8 x i8] zeroinitializer, i32 6, i32 8, i32 0, ptr @bbt_pattern }, [60 x i8] zeroinitializer }, align 32
@bbt_mirror_descr = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 8978, [8 x i32] zeroinitializer, i32 8, i32 14, [8 x i8] zeroinitializer, i32 6, i32 8, i32 0, ptr @bbt_mirror_pattern }, [60 x i8] zeroinitializer }, align 32
@marvell_nand_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 2506, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ECC init failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"marvell_nand_attach_chip\00", [39 x i8] zeroinitializer }, align 32
@marvell_nand_attach_chip._entry_ptr = internal global ptr @marvell_nand_attach_chip._entry, section ".printk_index", align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxa3xx_nand-0\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s:nand.%d\00", [21 x i8] zeroinitializer }, align 32
@marvell_nand_attach_chip._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.5, i32 2542, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate mtd->name\0A\00", [34 x i8] zeroinitializer }, align 32
@marvell_nand_attach_chip._entry_ptr.15 = internal global ptr @marvell_nand_attach_chip._entry.13, section ".printk_index", align 4
@bbt_pattern = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"MVBbt0", [26 x i8] zeroinitializer }, align 32
@bbt_mirror_pattern = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"1tbBVM", [26 x i8] zeroinitializer }, align 32
@marvell_nand_ecc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 2299, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No minimum ECC strength, using 1b/512B\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"marvell_nand_ecc_init\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@marvell_nand_ecc_init._entry_ptr = internal global ptr @marvell_nand_ecc_init._entry, section ".printk_index", align 4
@marvell_nand_ecc_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.5, i32 2317, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"NFCv1 cannot write %d bytes pages\0A\00", [61 x i8] zeroinitializer }, align 32
@marvell_nand_ecc_init._entry_ptr.21 = internal global ptr @marvell_nand_ecc_init._entry.19, section ".printk_index", align 4
@marvell_nand_hw_ecc_controller_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 2221, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"NFCv1: writesize (%d) cannot be bigger than a chunk (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"marvell_nand_hw_ecc_controller_init\00", [60 x i8] zeroinitializer }, align 32
@marvell_nand_hw_ecc_controller_init._entry_ptr = internal global ptr @marvell_nand_hw_ecc_controller_init._entry, section ".printk_index", align 4
@marvell_nfc_layouts = internal constant { [8 x %struct.marvell_hw_ecc_layout], [64 x i8] } { [8 x %struct.marvell_hw_ecc_layout] [%struct.marvell_hw_ecc_layout { i32 512, i32 512, i32 1, i32 1, i32 1, i32 512, i32 8, i32 8, i32 0, i32 0, i32 0 }, %struct.marvell_hw_ecc_layout { i32 2048, i32 512, i32 1, i32 1, i32 1, i32 2048, i32 40, i32 24, i32 0, i32 0, i32 0 }, %struct.marvell_hw_ecc_layout { i32 2048, i32 512, i32 4, i32 1, i32 1, i32 2048, i32 32, i32 30, i32 0, i32 0, i32 0 }, %struct.marvell_hw_ecc_layout { i32 2048, i32 512, i32 8, i32 2, i32 1, i32 1024, i32 0, i32 30, i32 1024, i32 32, i32 30 }, %struct.marvell_hw_ecc_layout { i32 4096, i32 512, i32 4, i32 2, i32 2, i32 2048, i32 32, i32 30, i32 0, i32 0, i32 0 }, %struct.marvell_hw_ecc_layout { i32 4096, i32 512, i32 8, i32 5, i32 4, i32 1024, i32 0, i32 30, i32 0, i32 64, i32 30 }, %struct.marvell_hw_ecc_layout { i32 8192, i32 512, i32 4, i32 4, i32 4, i32 2048, i32 0, i32 30, i32 0, i32 0, i32 0 }, %struct.marvell_hw_ecc_layout { i32 8192, i32 512, i32 8, i32 9, i32 8, i32 1024, i32 0, i32 30, i32 0, i32 160, i32 30 }], [64 x i8] zeroinitializer }, align 32
@marvell_nand_hw_ecc_controller_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.5, i32 2239, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ECC strength %d at page size %d is not supported\0A\00", [46 x i8] zeroinitializer }, align 32
@marvell_nand_hw_ecc_controller_init._entry_ptr.26 = internal global ptr @marvell_nand_hw_ecc_controller_init._entry.24, section ".printk_index", align 4
@marvell_nand_hw_ecc_controller_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.5, i32 2246, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Requested layout needs at least 128 OOB bytes\0A\00", [49 x i8] zeroinitializer }, align 32
@marvell_nand_hw_ecc_controller_init._entry_ptr.29 = internal global ptr @marvell_nand_hw_ecc_controller_init._entry.27, section ".printk_index", align 4
@marvell_nand_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @marvell_nand_ooblayout_ecc, ptr @marvell_nand_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RDDREQ while draining FIFO (data/oob)\00", [58 x i8] zeroinitializer }, align 32
@marvell_nfc_prepare_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 608, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Last operation did not succeed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"marvell_nfc_prepare_cmd\00", [40 x i8] zeroinitializer }, align 32
@marvell_nfc_prepare_cmd._entry_ptr = internal global ptr @marvell_nfc_prepare_cmd._entry, section ".printk_index", align 4
@marvell_nfc_prepare_cmd._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.5, i32 621, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Timeout on WRCMDRE\0A\00", [44 x i8] zeroinitializer }, align 32
@marvell_nfc_prepare_cmd._entry_ptr.35 = internal global ptr @marvell_nfc_prepare_cmd._entry.33, section ".printk_index", align 4
@marvell_nfc_wait_ndrun._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.5, i32 575, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Timeout on NAND controller run mode\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"marvell_nfc_wait_ndrun\00", [41 x i8] zeroinitializer }, align 32
@marvell_nfc_wait_ndrun._entry_ptr = internal global ptr @marvell_nfc_wait_ndrun._entry, section ".printk_index", align 4
@marvell_nfc_send_cmd.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.39, ptr @.str.5, ptr @.str.40, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"marvell_nand\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"marvell_nfc_send_cmd\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\0ANDCR:  0x%08x\0ANDCB0: 0x%08x\0ANDCB1: 0x%08x\0ANDCB2: 0x%08x\0ANDCB3: 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@marvell_nfc_send_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@marvell_nfc_end_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 671, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Timeout on %s (NDSR: 0x%08x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"marvell_nfc_end_cmd\00", [44 x i8] zeroinitializer }, align 32
@marvell_nfc_end_cmd._entry_ptr = internal global ptr @marvell_nfc_end_cmd._entry, section ".printk_index", align 4
@marvell_nfc_xfer_data_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 874, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not prepare DMA S/G list\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"marvell_nfc_xfer_data_dma\00", [38 x i8] zeroinitializer }, align 32
@marvell_nfc_xfer_data_dma._entry_ptr = internal global ptr @marvell_nfc_xfer_data_dma._entry, section ".printk_index", align 4
@marvell_nfc_xfer_data_dma._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.5, i32 890, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Timeout waiting for DMA (status: %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@marvell_nfc_xfer_data_dma._entry_ptr.47 = internal global ptr @marvell_nfc_xfer_data_dma._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CMDD\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"WRDREQ while loading FIFO (data)\00", [63 x i8] zeroinitializer }, align 32
@marvell_nfc_wait_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.5, i32 748, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Timeout waiting for RB signal\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"marvell_nfc_wait_op\00", [44 x i8] zeroinitializer }, align 32
@marvell_nfc_wait_op._entry_ptr = internal global ptr @marvell_nfc_wait_op._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"RDDREQ while draining FIFO (data)\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RDDREQ while draining FIFO (OOB)\00", [63 x i8] zeroinitializer }, align 32
@marvell_nfcv2_op_parser = internal constant { %struct.nand_op_parser, [24 x i8] } { %struct.nand_op_parser { ptr @.compoundliteral.61, i32 7 }, [24 x i8] zeroinitializer }, align 32
@marvell_nfcv1_op_parser = internal constant { %struct.nand_op_parser, [24 x i8] } { %struct.nand_op_parser { ptr @.compoundliteral.68, i32 5 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }>, [36 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }> <{ %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 1, i8 1, %union.anon.82 { %struct.nand_op_parser_addr_constraints { i32 7 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.82 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.82 zeroinitializer }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 2112 } } } }>, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem }>, [36 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem }> <{ %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.82 { %struct.nand_op_parser_addr_constraints { i32 7 } } }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 2112 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.82 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.82 zeroinitializer } }>, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal constant { [1 x %struct.nand_op_parser_pattern_elem], [20 x i8] } zeroinitializer, align 32
@.compoundliteral.57 = internal constant { [1 x %struct.nand_op_parser_pattern_elem], [20 x i8] } { [1 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.82 { %struct.nand_op_parser_addr_constraints { i32 7 } } }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal constant { [1 x { i32, i8, { %struct.nand_op_parser_data_constraints } }], [20 x i8] } { [1 x { i32, i8, { %struct.nand_op_parser_data_constraints } }] [{ i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 2112 } } }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal constant { [1 x { i32, i8, { %struct.nand_op_parser_data_constraints } }], [20 x i8] } { [1 x { i32, i8, { %struct.nand_op_parser_data_constraints } }] [{ i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 2112 } } }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal constant { [1 x %struct.nand_op_parser_pattern_elem], [20 x i8] } { [1 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem { i32 4, i8 0, %union.anon.82 zeroinitializer }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal constant { [7 x %struct.nand_op_parser_pattern], [44 x i8] } { [7 x %struct.nand_op_parser_pattern] [%struct.nand_op_parser_pattern { ptr @.compoundliteral, i32 5, ptr @marvell_nfc_monolithic_access_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.55, i32 5, ptr @marvell_nfc_monolithic_access_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.56, i32 1, ptr @marvell_nfc_naked_access_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.57, i32 1, ptr @marvell_nfc_naked_access_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.58, i32 1, ptr @marvell_nfc_naked_access_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.59, i32 1, ptr @marvell_nfc_naked_access_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.60, i32 1, ptr @marvell_nfc_naked_waitrdy_exec }], [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RDDREQ/WRDREQ while draining raw data\00", [58 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.compoundliteral.63 = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }>, [60 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }> <{ %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.82 { %struct.nand_op_parser_addr_constraints { i32 5 } } }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 8 } } } }>, [60 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal constant { [4 x %struct.nand_op_parser_pattern_elem], [48 x i8] } { [4 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.82 { %struct.nand_op_parser_addr_constraints { i32 5 } } }, %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 4, i8 0, %union.anon.82 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal constant { <{ %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }>, [40 x i8] } { <{ %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }> <{ %struct.nand_op_parser_pattern_elem zeroinitializer, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 1 } } } }>, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal constant { [2 x %struct.nand_op_parser_pattern_elem], [40 x i8] } { [2 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 4, i8 0, %union.anon.82 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal constant { [1 x %struct.nand_op_parser_pattern_elem], [20 x i8] } { [1 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem { i32 4, i8 0, %union.anon.82 zeroinitializer }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal constant { [5 x %struct.nand_op_parser_pattern], [36 x i8] } { [5 x %struct.nand_op_parser_pattern] [%struct.nand_op_parser_pattern { ptr @.compoundliteral.63, i32 3, ptr @marvell_nfc_read_id_type_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.64, i32 4, ptr @marvell_nfc_erase_cmd_type_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.65, i32 2, ptr @marvell_nfc_read_status_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.66, i32 2, ptr @marvell_nfc_reset_cmd_type_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.67, i32 1, ptr @marvell_nfc_naked_waitrdy_exec }], [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RDDREQ while reading ID\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RDDREQ while reading status\00", [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"marvell,system-controller\00", [38 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DMA channel request failed\0A\00", [36 x i8] zeroinitializer }, align 32
@marvell_nfc_init_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.5, i32 2813, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to configure DMA channel\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"marvell_nfc_init_dma\00", [43 x i8] zeroinitializer }, align 32
@marvell_nfc_init_dma._entry_ptr = internal global ptr @marvell_nfc_init_dma._entry, section ".printk_index", align 4
@marvell_nand_chips_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.5, i32 2742, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"too many NAND chips: %d (max = %d CS)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"marvell_nand_chips_init\00", [40 x i8] zeroinitializer }, align 32
@marvell_nand_chips_init._entry_ptr = internal global ptr @marvell_nand_chips_init._entry, section ".printk_index", align 4
@marvell_nand_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.5, i32 2580, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"missing/invalid reg property\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"marvell_nand_chip_init\00", [41 x i8] zeroinitializer }, align 32
@marvell_nand_chip_init._entry_ptr = internal global ptr @marvell_nand_chip_init._entry, section ".printk_index", align 4
@marvell_nand_chip_init._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.5, i32 2590, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not allocate chip structure\0A\00", [61 x i8] zeroinitializer }, align 32
@marvell_nand_chip_init._entry_ptr.82 = internal global ptr @marvell_nand_chip_init._entry.80, section ".printk_index", align 4
@marvell_nand_chip_init._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.5, i32 2609, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not retrieve reg property: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@marvell_nand_chip_init._entry_ptr.85 = internal global ptr @marvell_nand_chip_init._entry.83, section ".printk_index", align 4
@marvell_nand_chip_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.79, ptr @.str.5, i32 2616, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid reg value: %u (max CS = %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@marvell_nand_chip_init._entry_ptr.88 = internal global ptr @marvell_nand_chip_init._entry.86, section ".printk_index", align 4
@marvell_nand_chip_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.79, ptr @.str.5, i32 2621, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CS %d already assigned\0A\00", [40 x i8] zeroinitializer }, align 32
@marvell_nand_chip_init._entry_ptr.91 = internal global ptr @marvell_nand_chip_init._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nand-rb\00", [24 x i8] zeroinitializer }, align 32
@marvell_nand_chip_init._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.79, ptr @.str.5, i32 2657, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not retrieve RB property: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@marvell_nand_chip_init._entry_ptr.95 = internal global ptr @marvell_nand_chip_init._entry.93, section ".printk_index", align 4
@marvell_nand_chip_init._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.79, ptr @.str.5, i32 2664, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid reg value: %u (max RB = %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@marvell_nand_chip_init._entry_ptr.98 = internal global ptr @marvell_nand_chip_init._entry.96, section ".printk_index", align 4
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"marvell,nand-keep-config\00", [39 x i8] zeroinitializer }, align 32
@marvell_nand_chip_init._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.79, ptr @.str.5, i32 2692, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not scan the nand chip\0A\00", [34 x i8] zeroinitializer }, align 32
@marvell_nand_chip_init._entry_ptr.102 = internal global ptr @marvell_nand_chip_init._entry.100, section ".printk_index", align 4
@marvell_nand_chip_init._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.79, ptr @.str.5, i32 2702, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register mtd device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@marvell_nand_chip_init._entry_ptr.105 = internal global ptr @marvell_nand_chip_init._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@marvell_armada_8k_nfc_caps = internal constant { %struct.marvell_nfc_caps, [20 x i8] } { %struct.marvell_nfc_caps { i32 4, i32 2, i8 1, i8 0, i8 1, i8 0 }, [20 x i8] zeroinitializer }, align 32
@marvell_armada370_nfc_caps = internal constant { %struct.marvell_nfc_caps, [20 x i8] } { %struct.marvell_nfc_caps { i32 4, i32 2, i8 0, i8 0, i8 1, i8 0 }, [20 x i8] zeroinitializer }, align 32
@marvell_pxa3xx_nfc_caps = internal constant { %struct.marvell_nfc_caps, [20 x i8] } { %struct.marvell_nfc_caps { i32 2, i32 1, i8 0, i8 0, i8 0, i8 1 }, [20 x i8] zeroinitializer }, align 32
@marvell_armada_8k_nfc_legacy_caps = internal constant { %struct.marvell_nfc_caps, [20 x i8] } { %struct.marvell_nfc_caps { i32 4, i32 2, i8 1, i8 1, i8 1, i8 0 }, [20 x i8] zeroinitializer }, align 32
@marvell_armada370_nfc_legacy_caps = internal constant { %struct.marvell_nfc_caps, [20 x i8] } { %struct.marvell_nfc_caps { i32 4, i32 2, i8 0, i8 1, i8 1, i8 0 }, [20 x i8] zeroinitializer }, align 32
@marvell_pxa3xx_nfc_legacy_caps = internal constant { %struct.marvell_nfc_caps, [20 x i8] } { %struct.marvell_nfc_caps { i32 2, i32 1, i8 0, i8 1, i8 0, i8 1 }, [20 x i8] zeroinitializer }, align 32
@switch.table.marvell_nand_chip_init = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 16777216, i32 0, i32 16777216], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 32, i64 512, i64 2048, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 8]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 2048]
@__sancov_gen_cov_switch_values.112 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.113 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.114 = private unnamed_addr constant [19 x i8] c"marvell_nfc_driver\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 3134, i32 31 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 3136, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"marvell_nfc_of_ids\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 3104, i32 34 }
@___asan_gen_.123 = private unnamed_addr constant [19 x i8] c"marvell_nfc_pm_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 3050, i32 32 }
@___asan_gen_.126 = private unnamed_addr constant [25 x i8] c"marvell_nfc_platform_ids\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 3095, i32 40 }
@___asan_gen_.129 = private unnamed_addr constant [28 x i8] c"marvell_nand_controller_ops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2550, i32 41 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2922, i32 43 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2935, i32 42 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2963, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 1105, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [15 x i8] c"bbt_main_descr\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2331, i32 30 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"bbt_mirror_descr\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2341, i32 30 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2506, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2526, i32 15 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2539, i32 9 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2542, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant [12 x i8] c"bbt_pattern\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2328, i32 11 }
@___asan_gen_.192 = private unnamed_addr constant [19 x i8] c"bbt_mirror_pattern\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2329, i32 11 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2298, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2316, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2219, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [20 x i8] c"marvell_nfc_layouts\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 285, i32 43 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2237, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2246, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant [27 x i8] c"marvell_nand_ooblayout_ops\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2204, i32 39 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1049, i32 7 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 608, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 621, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 575, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 637, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 670, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 874, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 889, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 694, i32 44 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1163, i32 7 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 748, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 87, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1329, i32 9 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1337, i32 9 }
@___asan_gen_.327 = private unnamed_addr constant [24 x i8] c"marvell_nfcv2_op_parser\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2083, i32 36 }
@___asan_gen_.330 = private unnamed_addr constant [24 x i8] c"marvell_nfcv1_op_parser\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2117, i32 36 }
@___asan_gen_.333 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1811, i32 7 }
@___asan_gen_.344 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.346 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1961, i32 7 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2001, i32 7 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2868, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2792, i32 45 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2796, i32 39 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2813, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2741, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2580, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2590, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2608, i32 5 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2615, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2621, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2652, i32 41 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2655, i32 5 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2663, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2675, i32 33 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2692, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 2702, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.447 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 464, i32 31 }
@___asan_gen_.449 = private unnamed_addr constant [27 x i8] c"marvell_armada_8k_nfc_caps\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 3054, i32 38 }
@___asan_gen_.452 = private unnamed_addr constant [27 x i8] c"marvell_armada370_nfc_caps\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 3061, i32 38 }
@___asan_gen_.455 = private unnamed_addr constant [24 x i8] c"marvell_pxa3xx_nfc_caps\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 3067, i32 38 }
@___asan_gen_.458 = private unnamed_addr constant [34 x i8] c"marvell_armada_8k_nfc_legacy_caps\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 3073, i32 38 }
@___asan_gen_.461 = private unnamed_addr constant [34 x i8] c"marvell_armada370_nfc_legacy_caps\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 3081, i32 38 }
@___asan_gen_.464 = private unnamed_addr constant [31 x i8] c"marvell_pxa3xx_nfc_legacy_caps\00", align 1
@___asan_gen_.465 = private constant [39 x i8] c"../drivers/mtd/nand/raw/marvell_nand.c\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 3088, i32 38 }
@___asan_gen_.467 = private unnamed_addr constant [36 x i8] c"switch.table.marvell_nand_chip_init\00", align 1
@llvm.compiler.used = appending global [160 x ptr] [ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_marvell_nfc_driver_exit, ptr @__initcall__kmod_marvell_nand__290_3144_marvell_nfc_driver_init6, ptr @marvell_nand_attach_chip._entry, ptr @marvell_nand_attach_chip._entry.13, ptr @marvell_nand_attach_chip._entry_ptr, ptr @marvell_nand_attach_chip._entry_ptr.15, ptr @marvell_nand_chip_init._entry, ptr @marvell_nand_chip_init._entry.100, ptr @marvell_nand_chip_init._entry.103, ptr @marvell_nand_chip_init._entry.80, ptr @marvell_nand_chip_init._entry.83, ptr @marvell_nand_chip_init._entry.86, ptr @marvell_nand_chip_init._entry.89, ptr @marvell_nand_chip_init._entry.93, ptr @marvell_nand_chip_init._entry.96, ptr @marvell_nand_chip_init._entry_ptr, ptr @marvell_nand_chip_init._entry_ptr.102, ptr @marvell_nand_chip_init._entry_ptr.105, ptr @marvell_nand_chip_init._entry_ptr.82, ptr @marvell_nand_chip_init._entry_ptr.85, ptr @marvell_nand_chip_init._entry_ptr.88, ptr @marvell_nand_chip_init._entry_ptr.91, ptr @marvell_nand_chip_init._entry_ptr.95, ptr @marvell_nand_chip_init._entry_ptr.98, ptr @marvell_nand_chips_init._entry, ptr @marvell_nand_chips_init._entry_ptr, ptr @marvell_nand_ecc_init._entry, ptr @marvell_nand_ecc_init._entry.19, ptr @marvell_nand_ecc_init._entry_ptr, ptr @marvell_nand_ecc_init._entry_ptr.21, ptr @marvell_nand_hw_ecc_controller_init._entry, ptr @marvell_nand_hw_ecc_controller_init._entry.24, ptr @marvell_nand_hw_ecc_controller_init._entry.27, ptr @marvell_nand_hw_ecc_controller_init._entry_ptr, ptr @marvell_nand_hw_ecc_controller_init._entry_ptr.26, ptr @marvell_nand_hw_ecc_controller_init._entry_ptr.29, ptr @marvell_nfc_driver_exit, ptr @marvell_nfc_end_cmd._entry, ptr @marvell_nfc_end_cmd._entry_ptr, ptr @marvell_nfc_init_dma._entry, ptr @marvell_nfc_init_dma._entry_ptr, ptr @marvell_nfc_prepare_cmd._entry, ptr @marvell_nfc_prepare_cmd._entry.33, ptr @marvell_nfc_prepare_cmd._entry_ptr, ptr @marvell_nfc_prepare_cmd._entry_ptr.35, ptr @marvell_nfc_probe._entry, ptr @marvell_nfc_probe._entry_ptr, ptr @marvell_nfc_wait_ndrun._entry, ptr @marvell_nfc_wait_ndrun._entry_ptr, ptr @marvell_nfc_wait_op._entry, ptr @marvell_nfc_wait_op._entry_ptr, ptr @marvell_nfc_xfer_data_dma._entry, ptr @marvell_nfc_xfer_data_dma._entry.45, ptr @marvell_nfc_xfer_data_dma._entry_ptr, ptr @marvell_nfc_xfer_data_dma._entry_ptr.47, ptr @marvell_nfc_driver, ptr @.str, ptr @marvell_nfc_of_ids, ptr @marvell_nfc_pm_ops, ptr @marvell_nfc_platform_ids, ptr @marvell_nand_controller_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @nand_controller_init.__key, ptr @.str.8, ptr @bbt_main_descr, ptr @bbt_mirror_descr, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @bbt_pattern, ptr @bbt_mirror_pattern, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @marvell_nfc_layouts, ptr @.str.25, ptr @.str.28, ptr @marvell_nand_ooblayout_ops, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @init_completion.__key, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @marvell_nfcv2_op_parser, ptr @marvell_nfcv1_op_parser, ptr @.compoundliteral, ptr @.compoundliteral.55, ptr @.compoundliteral.56, ptr @.compoundliteral.57, ptr @.compoundliteral.58, ptr @.compoundliteral.59, ptr @.compoundliteral.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.compoundliteral.64, ptr @.compoundliteral.65, ptr @.compoundliteral.66, ptr @.compoundliteral.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @marvell_armada_8k_nfc_caps, ptr @marvell_armada370_nfc_caps, ptr @marvell_pxa3xx_nfc_caps, ptr @marvell_armada_8k_nfc_legacy_caps, ptr @marvell_armada370_nfc_legacy_caps, ptr @marvell_pxa3xx_nfc_legacy_caps, ptr @switch.table.marvell_nand_chip_init], section "llvm.metadata"
@0 = internal global [128 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nfc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nfc_of_ids to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nfc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nfc_platform_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nfc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_main_descr to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_mirror_descr to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_attach_chip._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_pattern to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_mirror_pattern to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_ecc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_ecc_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_hw_ecc_controller_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nfc_layouts to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_hw_ecc_controller_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_hw_ecc_controller_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nfc_prepare_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nfc_prepare_cmd._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nfc_wait_ndrun._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nfc_end_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nfc_xfer_data_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nfc_xfer_data_dma._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nfc_wait_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nfcv2_op_parser to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nfcv1_op_parser to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nfc_init_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_chips_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_chip_init._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_chip_init._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_chip_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_chip_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_chip_init._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_chip_init._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_chip_init._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_nand_chip_init._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_armada_8k_nfc_caps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_armada370_nfc_caps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_pxa3xx_nfc_caps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_armada_8k_nfc_legacy_caps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_armada370_nfc_legacy_caps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @marvell_pxa3xx_nfc_legacy_caps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.marvell_nand_chip_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @marvell_nfc_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @marvell_nfc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @marvell_nfc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 200, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.marvell_nfc, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev3, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @nand_controller_init.__key) #9
  %ops = getelementptr inbounds %struct.nand_controller, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @marvell_nand_controller_ops, ptr %ops, align 4
  %chips = getelementptr inbounds %struct.marvell_nfc, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %chips to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %chips, ptr %chips, align 4
  %prev.i = getelementptr inbounds %struct.marvell_nfc, ptr %call.i, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %chips, ptr %prev.i, align 4
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %regs = getelementptr inbounds %struct.marvell_nfc, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %core_clk = getelementptr inbounds %struct.marvell_nfc, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %core_clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call16, ptr %core_clk, align 4
  %cmp19 = icmp eq ptr %call16, inttoptr (i32 -2 to ptr)
  br i1 %cmp19, label %if.then20, label %if.end14.if.end24_crit_edge

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #9
  %7 = ptrtoint ptr %core_clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call22, ptr %core_clk, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end14.if.end24_crit_edge
  %8 = phi ptr [ %call22, %if.then20 ], [ %call16, %if.end14.if.end24_crit_edge ]
  %cmp.i140 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %call.i141 = tail call i32 @clk_prepare(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool.not.i = icmp eq i32 %call.i141, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end30
  %call1.i = tail call i32 @clk_enable(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end35, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %8) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end.i
  %call37 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  %reg_clk = getelementptr inbounds %struct.marvell_nfc, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %reg_clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call37, ptr %reg_clk, align 4
  %cmp.i142 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then40, label %if.end35.if.end49_crit_edge

if.end35.if.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then40:                                        ; preds = %if.end35
  %11 = ptrtoint ptr %call37 to i32
  %cmp43.not = icmp eq ptr %call37, inttoptr (i32 -2 to ptr)
  br i1 %cmp43.not, label %if.end47, label %if.then40.unprepare_core_clk_crit_edge

if.then40.unprepare_core_clk_crit_edge:           ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %unprepare_core_clk

if.end47:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %reg_clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %reg_clk, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end47, %if.end35.if.end49_crit_edge
  %13 = ptrtoint ptr %reg_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_clk, align 4
  %call.i143 = tail call i32 @clk_prepare(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %tobool.not.i144 = icmp eq i32 %call.i143, 0
  br i1 %tobool.not.i144, label %if.end.i147, label %if.end49.unprepare_core_clk_crit_edge

if.end49.unprepare_core_clk_crit_edge:            ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %unprepare_core_clk

if.end.i147:                                      ; preds = %if.end49
  %call1.i145 = tail call i32 @clk_enable(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i145)
  %tobool2.not.i146 = icmp eq i32 %call1.i145, 0
  br i1 %tobool2.not.i146, label %if.end54, label %if.end.i147.unprepare_core_clk.sink.split_crit_edge

if.end.i147.unprepare_core_clk.sink.split_crit_edge: ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #11
  br label %unprepare_core_clk.sink.split

if.end54:                                         ; preds = %if.end.i147
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !226
  %18 = or i32 %17, -15794176
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !227
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 20
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !226
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr2.i = getelementptr i8, ptr %25, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -15794176) #9, !srcloc !227
  %call.i152 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call12, ptr noundef nonnull @marvell_nfc_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool57.not = icmp eq i32 %call.i152, 0
  br i1 %tobool57.not, label %if.end59, label %if.end54.unprepare_reg_clk_crit_edge

if.end54.unprepare_reg_clk_crit_edge:             ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %unprepare_reg_clk

if.end59:                                         ; preds = %if.end54
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %26 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %id_entry, align 4
  %tobool60.not = icmp eq ptr %27, null
  br i1 %tobool60.not, label %if.else, label %if.then61

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %driver_data, align 4
  %30 = inttoptr i32 %29 to ptr
  br label %if.end66

if.else:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then61
  %.sink = phi ptr [ %call64, %if.else ], [ %30, %if.then61 ]
  %31 = getelementptr inbounds %struct.marvell_nfc, ptr %call.i, i32 0, i32 9
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %.sink, ptr %31, align 4
  %tobool68.not = icmp eq ptr %.sink, null
  br i1 %tobool68.not, label %do.end, label %if.end70

do.end:                                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #12
  br label %unprepare_reg_clk

if.end70:                                         ; preds = %if.end66
  %call71 = tail call fastcc i32 @marvell_nfc_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end70.unprepare_reg_clk_crit_edge

if.end70.unprepare_reg_clk_crit_edge:             ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %unprepare_reg_clk

if.end74:                                         ; preds = %if.end70
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call75 = tail call fastcc i32 @marvell_nand_chips_init(ptr noundef %dev1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end74.cleanup_crit_edge, label %release_dma

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

release_dma:                                      ; preds = %if.end74
  %use_dma = getelementptr inbounds %struct.marvell_nfc, ptr %call.i, i32 0, i32 10
  %34 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %use_dma, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool79.not = icmp eq i8 %35, 0
  br i1 %tobool79.not, label %release_dma.unprepare_reg_clk_crit_edge, label %if.then80

release_dma.unprepare_reg_clk_crit_edge:          ; preds = %release_dma
  call void @__sanitizer_cov_trace_pc() #11
  br label %unprepare_reg_clk

if.then80:                                        ; preds = %release_dma
  call void @__sanitizer_cov_trace_pc() #11
  %dma_chan = getelementptr inbounds %struct.marvell_nfc, ptr %call.i, i32 0, i32 11
  %36 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma_chan, align 4
  tail call void @dma_release_channel(ptr noundef %37) #9
  br label %unprepare_reg_clk

unprepare_reg_clk:                                ; preds = %if.then80, %release_dma.unprepare_reg_clk_crit_edge, %if.end70.unprepare_reg_clk_crit_edge, %do.end, %if.end54.unprepare_reg_clk_crit_edge
  %ret.0 = phi i32 [ %call.i152, %if.end54.unprepare_reg_clk_crit_edge ], [ %call71, %if.end70.unprepare_reg_clk_crit_edge ], [ %call75, %if.then80 ], [ %call75, %release_dma.unprepare_reg_clk_crit_edge ], [ -22, %do.end ]
  %38 = ptrtoint ptr %reg_clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_clk, align 4
  tail call void @clk_disable(ptr noundef %39) #9
  br label %unprepare_core_clk.sink.split

unprepare_core_clk.sink.split:                    ; preds = %unprepare_reg_clk, %if.end.i147.unprepare_core_clk.sink.split_crit_edge
  %.sink157 = phi ptr [ %39, %unprepare_reg_clk ], [ %14, %if.end.i147.unprepare_core_clk.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %unprepare_reg_clk ], [ %call1.i145, %if.end.i147.unprepare_core_clk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink157) #9
  br label %unprepare_core_clk

unprepare_core_clk:                               ; preds = %unprepare_core_clk.sink.split, %if.end49.unprepare_core_clk_crit_edge, %if.then40.unprepare_core_clk_crit_edge
  %ret.1 = phi i32 [ %11, %if.then40.unprepare_core_clk_crit_edge ], [ %call.i143, %if.end49.unprepare_core_clk_crit_edge ], [ %ret.1.ph, %unprepare_core_clk.sink.split ]
  %40 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %41) #9
  tail call void @clk_unprepare(ptr noundef %41) #9
  br label %cleanup

cleanup:                                          ; preds = %unprepare_core_clk, %if.end74.cleanup_crit_edge, %if.then3.i, %if.end30.cleanup_crit_edge, %if.then27, %if.end11.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then8 ], [ %9, %if.then27 ], [ %ret.1, %unprepare_core_clk ], [ -12, %entry.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ 0, %if.end74.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i141, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chips.i = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %chips.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chips.i, align 4
  %cmp.not47.i = icmp eq ptr %3, %chips.i
  br i1 %cmp.not47.i, label %entry.marvell_nand_chips_cleanup.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.marvell_nand_chips_cleanup.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nand_chips_cleanup.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in48.i = phi ptr [ %.pn51.i, %list_del.exit.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %entry1.050.i = getelementptr i8, ptr %.pn.in48.i, i32 -2168
  %4 = ptrtoint ptr %.pn.in48.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn51.i = load ptr, ptr %.pn.in48.i, align 8
  %call9.i = tail call i32 @mtd_device_unregister(ptr noundef %entry1.050.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %do.end.i, !prof !229

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2721, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.if.end.i_crit_edge
  tail call void @nand_cleanup(ptr noundef %entry1.050.i) #9
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in48.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in48.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %.pn.in48.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in48.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %.pn.in48.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in48.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in48.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.not.i = icmp eq ptr %.pn51.i, %chips.i
  br i1 %cmp.not.i, label %list_del.exit.i.marvell_nand_chips_cleanup.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.marvell_nand_chips_cleanup.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nand_chips_cleanup.exit

marvell_nand_chips_cleanup.exit:                  ; preds = %list_del.exit.i.marvell_nand_chips_cleanup.exit_crit_edge, %entry.marvell_nand_chips_cleanup.exit_crit_edge
  %use_dma = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %use_dma, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %marvell_nand_chips_cleanup.exit.if.end_crit_edge, label %if.then

marvell_nand_chips_cleanup.exit.if.end_crit_edge: ; preds = %marvell_nand_chips_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %marvell_nand_chips_cleanup.exit
  %dma_chan = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_chan, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 47
  %19 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i8 = icmp eq ptr %20, null
  br i1 %tobool.not.i8, label %if.then.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

if.then.dmaengine_terminate_all.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %20(ptr noundef %16) #9
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.then.dmaengine_terminate_all.exit_crit_edge
  %21 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_chan, align 4
  tail call void @dma_release_channel(ptr noundef %22) #9
  br label %if.end

if.end:                                           ; preds = %dmaengine_terminate_all.exit, %marvell_nand_chips_cleanup.exit.if.end_crit_edge
  %reg_clk = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %reg_clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_clk, align 4
  tail call void @clk_disable(ptr noundef %24) #9
  tail call void @clk_unprepare(ptr noundef %24) #9
  %core_clk = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %26) #9
  tail call void @clk_unprepare(ptr noundef %26) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.marvell_nfc, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !226
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !226
  %7 = and i32 %6, -15794176
  %8 = xor i32 %7, -15794176
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and6 = lshr i32 %3, 1
  %10 = and i32 %and6, 2048
  %11 = or i32 %10, %3
  %and7 = and i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %entry.cleanup_crit_edge, label %if.end10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %entry
  %and11 = and i32 %11, 4095
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !226
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %or.i = or i32 %15, %and11
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #9, !srcloc !227
  %and12 = and i32 %11, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.then14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %complete = getelementptr inbounds %struct.marvell_nfc, ptr %dev_id, i32 0, i32 5
  tail call void @complete(ptr noundef %complete) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then14 ], [ 1, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @marvell_nfc_init(ptr nocapture noundef %nfc) unnamed_addr #2 align 64 {
entry:
  %config.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 9
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 4
  %need_system_controller = getelementptr inbounds %struct.marvell_nfc_caps, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %need_system_controller to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %need_system_controller, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %7, ptr noundef nonnull @.str.71) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call to i32
  br label %cleanup13

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @regmap_write(ptr noundef %call, i32 noundef 520, i32 noundef 36700161) #9
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 544, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 1792, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end7

if.end7:                                          ; preds = %cleanup, %entry.if.end7_crit_edge
  %9 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %caps, align 4
  %is_nfcv2 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %is_nfcv2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_nfcv2, align 2, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  %dev.i = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 -16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config.i) #9
  %15 = call ptr @memset(ptr %config.i, i32 0, i32 48)
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %14, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i, label %if.then10.marvell_nfc_init_dma.exit_crit_edge

if.then10.marvell_nfc_init_dma.exit_crit_edge:    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_init_dma.exit

if.end.i:                                         ; preds = %if.then10
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %14, i64 noundef 4294967295) #9
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %call3.i = tail call ptr @dma_request_chan(ptr noundef %17, ptr noundef nonnull @.str.72) #9
  %dma_chan.i = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 11
  %18 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call3.i, ptr %dma_chan.i, align 4
  %cmp.i1.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %if.then6.i, label %if.end12.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call3.i to i32
  %20 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %dma_chan.i, align 4
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %22, i32 noundef %19, ptr noundef nonnull @.str.73) #9
  br label %marvell_nfc_init_dma.exit

if.end12.i:                                       ; preds = %if.end.i
  %call13.i = tail call ptr @platform_get_resource(ptr noundef %add.ptr.i, i32 noundef 512, i32 noundef 0) #9
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %if.end12.i.release_channel.i_crit_edge, label %if.end16.i

if.end12.i.release_channel.i_crit_edge:           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_channel.i

if.end16.i:                                       ; preds = %if.end12.i
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 3
  %23 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %src_addr_width.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 4
  %24 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %dst_addr_width.i, align 4
  %25 = ptrtoint ptr %call13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call13.i, align 4
  %add.i = add i32 %26, 64
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 1
  %27 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add.i, ptr %src_addr.i, align 4
  %28 = load i32, ptr %call13.i, align 4
  %add18.i = add i32 %28, 64
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 2
  %29 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add18.i, ptr %dst_addr.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 5
  %30 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 32, ptr %src_maxburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %config.i, i32 0, i32 6
  %31 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 32, ptr %dst_maxburst.i, align 4
  %32 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_chan.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 44
  %36 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.end16.i.do.end.i_crit_edge, label %dmaengine_slave_config.exit.i

if.end16.i.do.end.i_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

dmaengine_slave_config.exit.i:                    ; preds = %if.end16.i
  %call.i2.i = call i32 %37(ptr noundef %33, ptr noundef nonnull %config.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %cmp.i23 = icmp slt i32 %call.i2.i, 0
  br i1 %cmp.i23, label %dmaengine_slave_config.exit.i.do.end.i_crit_edge, label %if.end23.i

dmaengine_slave_config.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %dmaengine_slave_config.exit.i.do.end.i_crit_edge, %if.end16.i.do.end.i_crit_edge
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.74) #12
  br label %release_channel.i

if.end23.i:                                       ; preds = %dmaengine_slave_config.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 12) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 12), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3265, i32 noundef 2112) #13
  %dma_buf.i = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 12
  %41 = ptrtoint ptr %dma_buf.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %dma_buf.i, align 4
  %tobool26.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool26.not.i, label %if.end23.i.release_channel.i_crit_edge, label %if.end28.i

if.end23.i.release_channel.i_crit_edge:           ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_channel.i

if.end28.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %use_dma.i = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 10
  %42 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %use_dma.i, align 4
  br label %marvell_nfc_init_dma.exit

release_channel.i:                                ; preds = %if.end23.i.release_channel.i_crit_edge, %do.end.i, %if.end12.i.release_channel.i_crit_edge
  %43 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dma_chan.i, align 4
  call void @dma_release_channel(ptr noundef %44) #9
  %45 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %dma_chan.i, align 4
  br label %marvell_nfc_init_dma.exit

marvell_nfc_init_dma.exit:                        ; preds = %release_channel.i, %if.end28.i, %if.then6.i, %if.then10.marvell_nfc_init_dma.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config.i) #9
  br label %if.end12

if.end12:                                         ; preds = %marvell_nfc_init_dma.exit, %if.end7.if.end12_crit_edge
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 2
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 -14743680) #9, !srcloc !227
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %49, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -1) #9, !srcloc !227
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %51, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #9, !srcloc !227
  br label %cleanup13

cleanup13:                                        ; preds = %if.end12, %cleanup.thread
  %retval.1 = phi i32 [ 0, %if.end12 ], [ %8, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @marvell_nand_chips_init(ptr noundef %dev, ptr noundef %nfc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %caps = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 9
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef null) #9
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %if.else.if.end_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.else.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef nonnull %child.06.i) #9
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %nchips.0 = phi i32 [ 1, %entry.if.end_crit_edge ], [ 0, %if.else.if.end_crit_edge ], [ %inc.i, %for.body.i.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nchips.0, i32 %5)
  %cmp = icmp sgt i32 %nchips.0, %5
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76, i32 noundef %nchips.0, i32 noundef %5) #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %caps, align 4
  %legacy_of_bindings = getelementptr inbounds %struct.marvell_nfc_caps, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %legacy_of_bindings to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %legacy_of_bindings, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call fastcc i32 @marvell_nand_chip_init(ptr noundef %dev, ptr noundef %nfc, ptr noundef %1)
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %call8 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #9
  %cmp9.not42 = icmp eq ptr %call8, null
  br i1 %cmp9.not42, label %if.end7.cleanup_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.for.body_crit_edge
  %nand_np.043 = phi ptr [ %call14, %for.inc.for.body_crit_edge ], [ %call8, %if.end7.for.body_crit_edge ]
  %call10 = tail call fastcc i32 @marvell_nand_chip_init(ptr noundef %dev, ptr noundef %nfc, ptr noundef nonnull %nand_np.043)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.inc, label %if.then12

if.then12:                                        ; preds = %for.body
  tail call void @of_node_put(ptr noundef nonnull %nand_np.043) #9
  %chips.i = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 7
  %10 = ptrtoint ptr %chips.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chips.i, align 4
  %cmp.not47.i = icmp eq ptr %11, %chips.i
  br i1 %cmp.not47.i, label %if.then12.cleanup_crit_edge, label %if.then12.for.body.i38_crit_edge

if.then12.for.body.i38_crit_edge:                 ; preds = %if.then12
  br label %for.body.i38

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i38:                                     ; preds = %list_del.exit.i.for.body.i38_crit_edge, %if.then12.for.body.i38_crit_edge
  %.pn.in48.i = phi ptr [ %.pn51.i, %list_del.exit.i.for.body.i38_crit_edge ], [ %11, %if.then12.for.body.i38_crit_edge ]
  %entry1.050.i = getelementptr i8, ptr %.pn.in48.i, i32 -2168
  %12 = ptrtoint ptr %.pn.in48.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn51.i = load ptr, ptr %.pn.in48.i, align 8
  %call9.i = tail call i32 @mtd_device_unregister(ptr noundef %entry1.050.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %for.body.i38.if.end.i_crit_edge, label %do.end.i, !prof !229

for.body.i38.if.end.i_crit_edge:                  ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2721, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i38.if.end.i_crit_edge
  tail call void @nand_cleanup(ptr noundef %entry1.050.i) #9
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in48.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in48.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %.pn.in48.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.in48.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %19 = ptrtoint ptr %.pn.in48.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in48.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in48.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.not.i39 = icmp eq ptr %.pn51.i, %chips.i
  br i1 %cmp.not.i39, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i38_crit_edge

list_del.exit.i.for.body.i38_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i38

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %call14 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %nand_np.043) #9
  %cmp9.not = icmp eq ptr %call14, null
  br i1 %cmp9.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %list_del.exit.i.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call6, %if.then5 ], [ %call10, %if.then12.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %call10, %list_del.exit.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nand_attach_chip(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %dev = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flash_bbt = getelementptr inbounds %struct.pxa3xx_nand_platform_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %flash_bbt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flash_bbt, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 10
  %8 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bbt_options, align 8
  %or = or i32 %9, 131072
  store i32 %or, ptr %bbt_options, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %bbt_options5 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 10
  %10 = ptrtoint ptr %bbt_options5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bbt_options5, align 8
  %and = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or9 = or i32 %11, 524288
  %12 = ptrtoint ptr %bbt_options5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or9, ptr %bbt_options5, align 8
  %bbt_td = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 13
  %13 = ptrtoint ptr %bbt_td to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bbt_main_descr, ptr %bbt_td, align 4
  %bbt_md = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 14
  %14 = ptrtoint ptr %bbt_md to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @bbt_mirror_descr, ptr %bbt_md, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %15 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %16)
  %cmp = icmp ugt i32 %16, 2047
  %cond = select i1 %cmp, i32 16777216, i32 0
  %ndcr = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 3
  %17 = ptrtoint ptr %ndcr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %ndcr, align 4
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %18 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %options, align 8
  %and11 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end16_crit_edge, label %if.then13

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %or15 = or i32 %cond, 201326592
  %20 = ptrtoint ptr %ndcr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or15, ptr %ndcr, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end10.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %16)
  %cmp18 = icmp ult i32 %16, 513
  br i1 %cmp18, label %if.end16.if.end23_crit_edge, label %if.else

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %ndcr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ndcr, align 4
  %or22 = or i32 %22, 32768
  store i32 %or22, ptr %ndcr, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end16.if.end23_crit_edge
  %.sink = phi i32 [ 2, %if.else ], [ 1, %if.end16.if.end23_crit_edge ]
  %23 = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 6
  %and25 = and i32 %19, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %. = select i1 %tobool26.not, i32 2, i32 3
  %add31 = add nuw nsw i32 %.sink, %.
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add31, ptr %23, align 8
  br i1 %tobool.not, label %if.end23.if.end36_crit_edge, label %if.then34

if.end23.if.end36_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %ecc_step_size = getelementptr inbounds %struct.pxa3xx_nand_platform_data, ptr %5, i32 0, i32 3
  %25 = ptrtoint ptr %ecc_step_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ecc_step_size, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %27 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %size, align 8
  %ecc_strength = getelementptr inbounds %struct.pxa3xx_nand_platform_data, ptr %5, i32 0, i32 2
  %28 = ptrtoint ptr %ecc_strength to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ecc_strength, align 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %30 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %strength, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end23.if.end36_crit_edge
  %ecc37 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %31 = ptrtoint ptr %ecc37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ecc37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.not.i = icmp eq i32 %32, 1
  br i1 %cmp.not.i, label %if.end36.sw.bb21.i_crit_edge, label %land.lhs.true.i

if.end36.sw.bb21.i_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21.i

land.lhs.true.i:                                  ; preds = %if.end36
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.then.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %35 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %strength.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool3.not.i = icmp eq i32 %36, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end15.i_crit_edge

lor.lhs.false.i.if.end15.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %step_size.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 4
  %37 = ptrtoint ptr %step_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %step_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool4.not.i = icmp eq i32 %38, 0
  br i1 %tobool4.not.i, label %if.then.i.do.end.i_crit_edge, label %land.lhs.true5.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true5.i:                                 ; preds = %if.then.i
  %strength6.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 3
  %39 = ptrtoint ptr %strength6.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %strength6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool7.not.i = icmp eq i32 %40, 0
  br i1 %tobool7.not.i, label %land.lhs.true5.i.do.end.i_crit_edge, label %land.lhs.true5.i.if.end15.sink.split.i_crit_edge

land.lhs.true5.i.if.end15.sink.split.i_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i

land.lhs.true5.i.do.end.i_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true5.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.16) #12
  br label %if.end15.sink.split.i

if.end15.sink.split.i:                            ; preds = %do.end.i, %land.lhs.true5.i.if.end15.sink.split.i_crit_edge
  %storemerge = phi i32 [ 512, %do.end.i ], [ %38, %land.lhs.true5.i.if.end15.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 1, %do.end.i ], [ %40, %land.lhs.true5.i.if.end15.sink.split.i_crit_edge ]
  %43 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %storemerge, ptr %size.i, align 4
  %strength12.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %44 = ptrtoint ptr %strength12.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink.i, ptr %strength12.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end15.sink.split.i, %lor.lhs.false.i.if.end15.i_crit_edge
  %45 = ptrtoint ptr %ecc37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr.i = load i32, ptr %ecc37, align 4
  %46 = zext i32 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr.i, label %if.end15.i.do.end_crit_edge [
    i32 3, label %sw.bb.i
    i32 1, label %if.end15.i.sw.bb21.i_crit_edge
    i32 2, label %if.end15.i.sw.bb21.i_crit_edge121
    i32 4, label %if.end15.i.sw.bb21.i_crit_edge122
  ]

if.end15.i.sw.bb21.i_crit_edge122:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21.i

if.end15.i.sw.bb21.i_crit_edge121:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21.i

if.end15.i.sw.bb21.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21.i

if.end15.i.do.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

sw.bb.i:                                          ; preds = %if.end15.i
  %47 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %controller, align 4
  %caps.i.i = getelementptr inbounds %struct.marvell_nfc, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %caps.i.i, align 4
  %is_nfcv2.i.i = getelementptr inbounds %struct.marvell_nfc_caps, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %is_nfcv2.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %is_nfcv2.i.i, align 2, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i.i = icmp eq i8 %52, 0
  %53 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %writesize, align 4
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %sw.bb.i.if.end.i.i_crit_edge

sw.bb.i.if.end.i.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb.i
  %oobsize.i.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %55 = ptrtoint ptr %oobsize.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %oobsize.i.i, align 4
  %add.i.i = add i32 %56, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 2112, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 2112
  br i1 %cmp.i.i, label %do.end.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.marvell_nfc, ptr %48, i32 0, i32 1
  %57 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i.i, align 4
  %sub.i.i = sub i32 2112, %56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.22, i32 noundef %54, i32 noundef %sub.i.i) #12
  br label %do.end

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %sw.bb.i.if.end.i.i_crit_edge
  %layout.i.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 2
  %59 = ptrtoint ptr %layout.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %layout.i.i, align 8
  %strength.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %60 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %54, label %if.end.i.i.do.end30.i.i_crit_edge [
    i32 512, label %land.lhs.true9.i.i
    i32 2048, label %land.lhs.true9.1.i.i
    i32 4096, label %land.lhs.true9.4.i.i
    i32 8192, label %land.lhs.true9.6.i.i
  ]

if.end.i.i.do.end30.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i.i

land.lhs.true9.i.i:                               ; preds = %if.end.i.i
  %61 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %62)
  %cmp10.i.i = icmp eq i32 %62, 512
  br i1 %cmp10.i.i, label %land.lhs.true11.i.i, label %land.lhs.true9.i.i.do.end30.i.i_crit_edge

land.lhs.true9.i.i.do.end30.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true9.i.i
  %63 = ptrtoint ptr %strength.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %strength.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp13.i.i = icmp eq i32 %64, 1
  br i1 %cmp13.i.i, label %land.lhs.true11.i.i.lor.lhs.false.i.i_crit_edge, label %land.lhs.true11.i.i.do.end30.i.i_crit_edge

land.lhs.true11.i.i.do.end30.i.i_crit_edge:       ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i.i

land.lhs.true11.i.i.lor.lhs.false.i.i_crit_edge:  ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

land.lhs.true9.1.i.i:                             ; preds = %if.end.i.i
  %65 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %66)
  %cmp10.1.i.i = icmp eq i32 %66, 512
  br i1 %cmp10.1.i.i, label %land.lhs.true11.1.i.i, label %land.lhs.true9.1.i.i.do.end30.i.i_crit_edge

land.lhs.true9.1.i.i.do.end30.i.i_crit_edge:      ; preds = %land.lhs.true9.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i.i

land.lhs.true11.1.i.i:                            ; preds = %land.lhs.true9.1.i.i
  %67 = ptrtoint ptr %strength.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %strength.i.i, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %68, label %land.lhs.true11.1.i.i.do.end30.i.i_crit_edge [
    i32 1, label %land.lhs.true11.1.i.i.lor.lhs.false.i.i_crit_edge
    i32 4, label %lor.lhs.false.i.fold.split.i
    i32 8, label %lor.lhs.false.i.fold.split60.i
  ]

land.lhs.true11.1.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %land.lhs.true11.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

land.lhs.true11.1.i.i.do.end30.i.i_crit_edge:     ; preds = %land.lhs.true11.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i.i

land.lhs.true9.4.i.i:                             ; preds = %if.end.i.i
  %70 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %71)
  %cmp10.4.i.i = icmp eq i32 %71, 512
  br i1 %cmp10.4.i.i, label %land.lhs.true11.4.i.i, label %land.lhs.true9.4.i.i.do.end30.i.i_crit_edge

land.lhs.true9.4.i.i.do.end30.i.i_crit_edge:      ; preds = %land.lhs.true9.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i.i

land.lhs.true11.4.i.i:                            ; preds = %land.lhs.true9.4.i.i
  %72 = ptrtoint ptr %strength.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %strength.i.i, align 4
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %73, label %land.lhs.true11.4.i.i.do.end30.i.i_crit_edge [
    i32 4, label %land.lhs.true11.4.i.i.lor.lhs.false.i.i_crit_edge
    i32 8, label %lor.lhs.false.i.fold.split61.i
  ]

land.lhs.true11.4.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %land.lhs.true11.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

land.lhs.true11.4.i.i.do.end30.i.i_crit_edge:     ; preds = %land.lhs.true11.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i.i

land.lhs.true9.6.i.i:                             ; preds = %if.end.i.i
  %75 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %76)
  %cmp10.6.i.i = icmp eq i32 %76, 512
  br i1 %cmp10.6.i.i, label %land.lhs.true11.6.i.i, label %land.lhs.true9.6.i.i.do.end30.i.i_crit_edge

land.lhs.true9.6.i.i.do.end30.i.i_crit_edge:      ; preds = %land.lhs.true9.6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i.i

land.lhs.true11.6.i.i:                            ; preds = %land.lhs.true9.6.i.i
  %77 = ptrtoint ptr %strength.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %strength.i.i, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %78, label %land.lhs.true11.6.i.i.do.end30.i.i_crit_edge [
    i32 4, label %land.lhs.true11.6.i.i.lor.lhs.false.i.i_crit_edge
    i32 8, label %lor.lhs.false.i.fold.split62.i
  ]

land.lhs.true11.6.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %land.lhs.true11.6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

land.lhs.true11.6.i.i.do.end30.i.i_crit_edge:     ; preds = %land.lhs.true11.6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i.i

lor.lhs.false.i.fold.split.i:                     ; preds = %land.lhs.true11.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

lor.lhs.false.i.fold.split60.i:                   ; preds = %land.lhs.true11.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

lor.lhs.false.i.fold.split61.i:                   ; preds = %land.lhs.true11.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

lor.lhs.false.i.fold.split62.i:                   ; preds = %land.lhs.true11.6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %lor.lhs.false.i.fold.split62.i, %lor.lhs.false.i.fold.split61.i, %lor.lhs.false.i.fold.split60.i, %lor.lhs.false.i.fold.split.i, %land.lhs.true11.6.i.i.lor.lhs.false.i.i_crit_edge, %land.lhs.true11.4.i.i.lor.lhs.false.i.i_crit_edge, %land.lhs.true11.1.i.i.lor.lhs.false.i.i_crit_edge, %land.lhs.true11.i.i.lor.lhs.false.i.i_crit_edge
  %i.0126.lcssa.i.i = phi i32 [ 0, %land.lhs.true11.i.i.lor.lhs.false.i.i_crit_edge ], [ %68, %land.lhs.true11.1.i.i.lor.lhs.false.i.i_crit_edge ], [ %73, %land.lhs.true11.4.i.i.lor.lhs.false.i.i_crit_edge ], [ 6, %land.lhs.true11.6.i.i.lor.lhs.false.i.i_crit_edge ], [ 2, %lor.lhs.false.i.fold.split.i ], [ 3, %lor.lhs.false.i.fold.split60.i ], [ 5, %lor.lhs.false.i.fold.split61.i ], [ 7, %lor.lhs.false.i.fold.split62.i ]
  %arrayidx.lcssa.i.i = phi ptr [ @marvell_nfc_layouts, %land.lhs.true11.i.i.lor.lhs.false.i.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.marvell_hw_ecc_layout], ptr @marvell_nfc_layouts, i32 0, i32 1), %land.lhs.true11.1.i.i.lor.lhs.false.i.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.marvell_hw_ecc_layout], ptr @marvell_nfc_layouts, i32 0, i32 4), %land.lhs.true11.4.i.i.lor.lhs.false.i.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.marvell_hw_ecc_layout], ptr @marvell_nfc_layouts, i32 0, i32 6), %land.lhs.true11.6.i.i.lor.lhs.false.i.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.marvell_hw_ecc_layout], ptr @marvell_nfc_layouts, i32 0, i32 2), %lor.lhs.false.i.fold.split.i ], [ getelementptr inbounds ([8 x %struct.marvell_hw_ecc_layout], ptr @marvell_nfc_layouts, i32 0, i32 3), %lor.lhs.false.i.fold.split60.i ], [ getelementptr inbounds ([8 x %struct.marvell_hw_ecc_layout], ptr @marvell_nfc_layouts, i32 0, i32 5), %lor.lhs.false.i.fold.split61.i ], [ getelementptr inbounds ([8 x %struct.marvell_hw_ecc_layout], ptr @marvell_nfc_layouts, i32 0, i32 7), %lor.lhs.false.i.fold.split62.i ]
  %80 = ptrtoint ptr %layout.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %arrayidx.lcssa.i.i, ptr %layout.i.i, align 8
  %81 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %caps.i.i, align 4
  %is_nfcv222.i.i = getelementptr inbounds %struct.marvell_nfc_caps, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %is_nfcv222.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %is_nfcv222.i.i, align 2, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool23.not.i.i = icmp eq i8 %84, 0
  br i1 %tobool23.not.i.i, label %land.lhs.true24.i.i, label %lor.lhs.false.i.i.if.end34.i.i_crit_edge

lor.lhs.false.i.i.if.end34.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i

land.lhs.true24.i.i:                              ; preds = %lor.lhs.false.i.i
  %85 = ptrtoint ptr %strength.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %strength.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp26.i.i = icmp sgt i32 %86, 1
  br i1 %cmp26.i.i, label %land.lhs.true24.i.i.do.end30.i.i_crit_edge, label %land.lhs.true24.i.i.if.end34.i.i_crit_edge

land.lhs.true24.i.i.if.end34.i.i_crit_edge:       ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i

land.lhs.true24.i.i.do.end30.i.i_crit_edge:       ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %land.lhs.true24.i.i.do.end30.i.i_crit_edge, %land.lhs.true11.6.i.i.do.end30.i.i_crit_edge, %land.lhs.true9.6.i.i.do.end30.i.i_crit_edge, %land.lhs.true11.4.i.i.do.end30.i.i_crit_edge, %land.lhs.true9.4.i.i.do.end30.i.i_crit_edge, %land.lhs.true11.1.i.i.do.end30.i.i_crit_edge, %land.lhs.true9.1.i.i.do.end30.i.i_crit_edge, %land.lhs.true11.i.i.do.end30.i.i_crit_edge, %land.lhs.true9.i.i.do.end30.i.i_crit_edge, %if.end.i.i.do.end30.i.i_crit_edge
  %dev31.i.i = getelementptr inbounds %struct.marvell_nfc, ptr %48, i32 0, i32 1
  %87 = ptrtoint ptr %dev31.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev31.i.i, align 4
  %89 = ptrtoint ptr %strength.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %strength.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.25, i32 noundef %90, i32 noundef %54) #12
  br label %do.end

if.end34.i.i:                                     ; preds = %land.lhs.true24.i.i.if.end34.i.i_crit_edge, %lor.lhs.false.i.i.if.end34.i.i_crit_edge
  %91 = ptrtoint ptr %arrayidx.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.lcssa.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %92)
  %cmp36.i.i = icmp eq i32 %92, 2048
  br i1 %cmp36.i.i, label %land.lhs.true37.i.i, label %if.end34.i.i.if.end49.i.i_crit_edge

if.end34.i.i.if.end49.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i.i

land.lhs.true37.i.i:                              ; preds = %if.end34.i.i
  %93 = lshr i32 168, %i.0126.lcssa.i.i
  %94 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp39.not.i.i = icmp eq i32 %94, 0
  br i1 %cmp39.not.i.i, label %land.lhs.true37.i.i.if.end49.i.i_crit_edge, label %if.then40.i.i

land.lhs.true37.i.i.if.end49.i.i_crit_edge:       ; preds = %land.lhs.true37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i.i

if.then40.i.i:                                    ; preds = %land.lhs.true37.i.i
  %oobsize41.i.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %95 = ptrtoint ptr %oobsize41.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %oobsize41.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %96)
  %cmp42.i.i = icmp ult i32 %96, 128
  br i1 %cmp42.i.i, label %do.end46.i.i, label %if.else.i.i

do.end46.i.i:                                     ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev47.i.i = getelementptr inbounds %struct.marvell_nfc, ptr %48, i32 0, i32 1
  %97 = ptrtoint ptr %dev47.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev47.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.28) #12
  br label %do.end

if.else.i.i:                                      ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %bbt_options5 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bbt_options5, align 8
  %or.i.i = or i32 %100, 524288
  store i32 %or.i.i, ptr %bbt_options5, align 8
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.else.i.i, %land.lhs.true37.i.i.if.end49.i.i_crit_edge, %if.end34.i.i.if.end49.i.i_crit_edge
  %ooblayout1.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %101 = ptrtoint ptr %ooblayout1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @marvell_nand_ooblayout_ops, ptr %ooblayout1.i.i.i, align 8
  %nchunks.i.i = getelementptr [8 x %struct.marvell_hw_ecc_layout], ptr @marvell_nfc_layouts, i32 0, i32 %i.0126.lcssa.i.i, i32 3
  %102 = ptrtoint ptr %nchunks.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nchunks.i.i, align 4
  %steps.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %104 = ptrtoint ptr %steps.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %steps.i.i, align 4
  %data_bytes.i.i = getelementptr [8 x %struct.marvell_hw_ecc_layout], ptr @marvell_nfc_layouts, i32 0, i32 %i.0126.lcssa.i.i, i32 5
  %105 = ptrtoint ptr %data_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %data_bytes.i.i, align 4
  %107 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %size.i, align 4
  %108 = ptrtoint ptr %strength.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %strength.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp52.i.i = icmp eq i32 %109, 1
  %algo.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  br i1 %cmp52.i.i, label %if.then53.i.i, label %if.else57.i.i

if.then53.i.i:                                    ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %algo.i.i, align 8
  br label %if.end42.sink.split

if.else57.i.i:                                    ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 2, ptr %algo.i.i, align 8
  %112 = ptrtoint ptr %strength.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 16, ptr %strength.i.i, align 4
  br label %if.end42.sink.split

sw.bb21.i:                                        ; preds = %if.end15.i.sw.bb21.i_crit_edge, %if.end15.i.sw.bb21.i_crit_edge121, %if.end15.i.sw.bb21.i_crit_edge122, %if.end36.sw.bb21.i_crit_edge
  %caps.i = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 9
  %113 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %caps.i, align 4
  %is_nfcv2.i = getelementptr inbounds %struct.marvell_nfc_caps, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %is_nfcv2.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %is_nfcv2.i, align 2, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool22.not.i = icmp eq i8 %116, 0
  br i1 %tobool22.not.i, label %land.lhs.true23.i, label %sw.bb21.i.if.end42_crit_edge

sw.bb21.i.if.end42_crit_edge:                     ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.lhs.true23.i:                                ; preds = %sw.bb21.i
  %117 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %writesize, align 4
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %118, label %do.end31.i [
    i32 512, label %land.lhs.true23.i.if.end42_crit_edge
    i32 2048, label %land.lhs.true23.i.if.end42_crit_edge123
  ]

land.lhs.true23.i.if.end42_crit_edge123:          ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.lhs.true23.i.if.end42_crit_edge:             ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.end31.i:                                       ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.20, i32 noundef %118) #12
  br label %do.end

do.end:                                           ; preds = %do.end31.i, %do.end46.i.i, %do.end30.i.i, %do.end.i.i, %if.end15.i.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -524, %do.end.i.i ], [ -524, %do.end30.i.i ], [ -524, %do.end46.i.i ], [ -22, %if.end15.i.do.end_crit_edge ], [ -22, %do.end31.i ]
  %122 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i.ph) #12
  br label %cleanup

if.end42.sink.split:                              ; preds = %if.else57.i.i, %if.then53.i.i
  %marvell_nfc_hw_ecc_bch_read_page_raw.sink = phi ptr [ @marvell_nfc_hw_ecc_bch_read_page_raw, %if.else57.i.i ], [ @marvell_nfc_hw_ecc_hmg_read_page_raw, %if.then53.i.i ]
  %marvell_nfc_hw_ecc_bch_read_page.sink = phi ptr [ @marvell_nfc_hw_ecc_bch_read_page, %if.else57.i.i ], [ @marvell_nfc_hw_ecc_hmg_read_page, %if.then53.i.i ]
  %marvell_nfc_hw_ecc_bch_read_oob_raw.sink = phi ptr [ @marvell_nfc_hw_ecc_bch_read_oob_raw, %if.else57.i.i ], [ @marvell_nfc_hw_ecc_hmg_read_oob_raw, %if.then53.i.i ]
  %marvell_nfc_hw_ecc_bch_read_oob.sink = phi ptr [ @marvell_nfc_hw_ecc_bch_read_oob, %if.else57.i.i ], [ @marvell_nfc_hw_ecc_hmg_read_oob_raw, %if.then53.i.i ]
  %marvell_nfc_hw_ecc_bch_write_page_raw.sink = phi ptr [ @marvell_nfc_hw_ecc_bch_write_page_raw, %if.else57.i.i ], [ @marvell_nfc_hw_ecc_hmg_write_page_raw, %if.then53.i.i ]
  %marvell_nfc_hw_ecc_bch_write_page.sink = phi ptr [ @marvell_nfc_hw_ecc_bch_write_page, %if.else57.i.i ], [ @marvell_nfc_hw_ecc_hmg_write_page, %if.then53.i.i ]
  %marvell_nfc_hw_ecc_bch_write_oob_raw.sink = phi ptr [ @marvell_nfc_hw_ecc_bch_write_oob_raw, %if.else57.i.i ], [ @marvell_nfc_hw_ecc_hmg_write_oob_raw, %if.then53.i.i ]
  %marvell_nfc_hw_ecc_bch_write_oob.sink = phi ptr [ @marvell_nfc_hw_ecc_bch_write_oob, %if.else57.i.i ], [ @marvell_nfc_hw_ecc_hmg_write_oob_raw, %if.then53.i.i ]
  %read_page_raw61.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 16
  %124 = ptrtoint ptr %read_page_raw61.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %marvell_nfc_hw_ecc_bch_read_page_raw.sink, ptr %read_page_raw61.i.i, align 4
  %read_page62.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %125 = ptrtoint ptr %read_page62.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %marvell_nfc_hw_ecc_bch_read_page.sink, ptr %read_page62.i.i, align 4
  %read_oob_raw63.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 23
  %126 = ptrtoint ptr %read_oob_raw63.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %marvell_nfc_hw_ecc_bch_read_oob_raw.sink, ptr %read_oob_raw63.i.i, align 4
  %read_oob64.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 24
  %127 = ptrtoint ptr %read_oob64.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %marvell_nfc_hw_ecc_bch_read_oob.sink, ptr %read_oob64.i.i, align 4
  %write_page_raw65.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 17
  %128 = ptrtoint ptr %write_page_raw65.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %marvell_nfc_hw_ecc_bch_write_page_raw.sink, ptr %write_page_raw65.i.i, align 4
  %write_page66.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %129 = ptrtoint ptr %write_page66.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %marvell_nfc_hw_ecc_bch_write_page.sink, ptr %write_page66.i.i, align 4
  %write_oob_raw67.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 22
  %130 = ptrtoint ptr %write_oob_raw67.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %marvell_nfc_hw_ecc_bch_write_oob_raw.sink, ptr %write_oob_raw67.i.i, align 4
  %write_oob68.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 25
  %131 = ptrtoint ptr %write_oob68.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %marvell_nfc_hw_ecc_bch_write_oob.sink, ptr %write_oob68.i.i, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %land.lhs.true23.i.if.end42_crit_edge, %land.lhs.true23.i.if.end42_crit_edge123, %sw.bb21.i.if.end42_crit_edge
  %132 = ptrtoint ptr %ecc37 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ecc37, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %133)
  %cmp44 = icmp eq i32 %133, 3
  br i1 %cmp44, label %if.then45, label %if.end42.if.end48_crit_edge

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %134 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %options, align 8
  %or47 = or i32 %135, 512
  store i32 %or47, ptr %options, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end42.if.end48_crit_edge
  br i1 %tobool.not, label %lor.lhs.false, label %if.end48.if.then51_crit_edge

if.end48.if.then51_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51

lor.lhs.false:                                    ; preds = %if.end48
  %caps = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 9
  %136 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %caps, align 4
  %legacy_of_bindings = getelementptr inbounds %struct.marvell_nfc_caps, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %legacy_of_bindings to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %legacy_of_bindings, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool50.not = icmp eq i8 %139, 0
  br i1 %tobool50.not, label %if.else52, label %lor.lhs.false.if.then51_crit_edge

lor.lhs.false.if.then51_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51

if.then51:                                        ; preds = %lor.lhs.false.if.then51_crit_edge, %if.end48.if.then51_crit_edge
  %name = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 13
  %140 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @.str.11, ptr %name, align 8
  br label %cleanup

if.else52:                                        ; preds = %lor.lhs.false
  %name53 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 13
  %141 = ptrtoint ptr %name53 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %name53, align 8
  %tobool54.not = icmp eq ptr %142, null
  br i1 %tobool54.not, label %if.then55, label %if.else52.cleanup_crit_edge

if.else52.cleanup_crit_edge:                      ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then55:                                        ; preds = %if.else52
  %143 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i114 = icmp eq ptr %146, null
  br i1 %tobool.not.i114, label %if.end.i, label %if.then55.dev_name.exit_crit_edge

if.then55.dev_name.exit_crit_edge:                ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %144, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then55.dev_name.exit_crit_edge
  %retval.0.i115 = phi ptr [ %148, %if.end.i ], [ %146, %if.then55.dev_name.exit_crit_edge ]
  %sels = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 9
  %149 = ptrtoint ptr %sels to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %sels, align 4
  %call59 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %144, i32 noundef 3264, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i115, i32 noundef %150) #9
  %151 = ptrtoint ptr %name53 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call59, ptr %name53, align 8
  %tobool62.not = icmp eq ptr %call59, null
  br i1 %tobool62.not, label %do.end66, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end66:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.14) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %dev_name.exit.cleanup_crit_edge, %if.else52.cleanup_crit_edge, %if.then51, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ -12, %do.end66 ], [ 0, %if.else52.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ], [ 0, %if.then51 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_exec_op(ptr noundef %chip, ptr noundef %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  br i1 %check_only, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op, align 4
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !226
  %7 = and i32 %6, -8388638
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %ndcr.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 3
  %9 = ptrtoint ptr %ndcr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ndcr.i, align 4
  %or.i = or i32 %8, %10
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #9, !srcloc !227
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !226
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 -15794176) #9, !srcloc !227
  %selected_chip.i = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %selected_chip.i, align 4
  %cmp.i = icmp eq ptr %20, %chip
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %selected_die.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %21 = ptrtoint ptr %selected_die.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %selected_die.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %3)
  %cmp7.i = icmp eq i32 %22, %3
  br i1 %cmp7.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %ndtr0.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 4
  %23 = ptrtoint ptr %ndtr0.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ndtr0.i, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %25) #9, !srcloc !227
  %ndtr1.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 5
  %28 = ptrtoint ptr %ndtr1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ndtr1.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %30) #9, !srcloc !227
  %33 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %chip, ptr %selected_chip.i, align 4
  %selected_die13.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %34 = ptrtoint ptr %selected_die13.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %3, ptr %selected_die13.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %caps = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 9
  %35 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %caps, align 4
  %is_nfcv2 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %is_nfcv2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_nfcv2, align 2, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool1.not = icmp eq i8 %38, 0
  %marvell_nfcv1_op_parser.marvell_nfcv2_op_parser = select i1 %tobool1.not, ptr @marvell_nfcv1_op_parser, ptr @marvell_nfcv2_op_parser
  %call6 = tail call i32 @nand_op_parser_exec_op(ptr noundef %chip, ptr noundef nonnull %marvell_nfcv1_op_parser.marvell_nfcv2_op_parser, ptr noundef %op, i1 noundef zeroext %check_only) #9
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_setup_interface(ptr nocapture noundef %chip, i32 noundef %chipnr, ptr noundef %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %core_clk = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core_clk, align 4
  %call2 = tail call i32 @clk_get_rate(ptr noundef %3) #9
  %div = udiv i32 1000000000, %call2
  %mul = shl nuw nsw i32 %div, 1
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  %6 = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1
  %retval.0.i = select i1 %cmp.i.i, ptr %6, ptr inttoptr (i32 -22 to ptr)
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tRC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 22
  %8 = ptrtoint ptr %tRC_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tRC_min, align 8
  %sub = add i32 %9, 1
  %div7 = udiv i32 %sub, 2000
  %add8 = add nsw i32 %mul, -1
  %sub9 = add nsw i32 %add8, %div7
  %div10 = udiv i32 %sub9, %mul
  %sub11 = add i32 %div10, -1
  %tWC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 33
  %10 = ptrtoint ptr %tWC_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tWC_min, align 4
  %sub14 = add i32 %11, 1
  %div16 = udiv i32 %sub14, 2000
  %sub18 = add nsw i32 %add8, %div16
  %div19 = udiv i32 %sub18, %mul
  %sub20 = add i32 %div19, -1
  %tCS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 16
  %12 = ptrtoint ptr %tCS_min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tCS_min, align 8
  %div22 = udiv i32 %13, 1000
  %sub24 = add nsw i32 %add8, %div22
  %div25 = udiv i32 %sub24, %mul
  %tCH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 10
  %14 = ptrtoint ptr %tCH_min to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tCH_min, align 8
  %div26 = udiv i32 %15, 1000
  %sub28 = add nsw i32 %add8, %div26
  %div29 = udiv i32 %sub28, %mul
  %sub30 = add i32 %div29, -1
  %tADL_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 5
  %16 = ptrtoint ptr %tADL_min to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tADL_min, align 4
  %div31 = udiv i32 %17, 1000
  %sub33 = add nsw i32 %add8, %div31
  %div34 = udiv i32 %sub33, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 29999, i32 %9)
  %cmp = icmp ugt i32 %9, 29999
  %add37 = add i32 %div10, 2
  %tAR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 7
  %18 = ptrtoint ptr %tAR_min to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tAR_min, align 4
  %div38 = udiv i32 %19, 1000
  %sub40 = add nsw i32 %add8, %div38
  %div41 = udiv i32 %sub40, %mul
  %tWHR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 35
  %20 = ptrtoint ptr %tWHR_min to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tWHR_min, align 4
  %tCCS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %tCCS_min to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tCCS_min, align 8
  %24 = tail call i32 @llvm.smax.i32(i32 %21, i32 %23)
  %div47 = sdiv i32 %24, 1000
  %sub49 = add nsw i32 %add8, %div47
  %div50 = udiv i32 %sub49, %mul
  %sub51 = add i32 %div50, -2
  %tRHW_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 26
  %25 = ptrtoint ptr %tRHW_min to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tRHW_min, align 8
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 %23)
  %div59 = sdiv i32 %27, 1000
  %sub61 = add nsw i32 %add8, %div59
  %div62 = udiv i32 %sub61, %mul
  %caps = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 9
  %28 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %caps, align 4
  %is_nfcv2 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %is_nfcv2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_nfcv2, align 2, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  %tWB_max68 = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 32
  %32 = ptrtoint ptr %tWB_max68 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tWB_max68, align 8
  br i1 %tobool.not, label %if.else, label %if.then63

if.then63:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %div64 = udiv i32 %33, 1000
  %sub66 = add nsw i32 %add8, %div64
  %div67 = udiv i32 %sub66, %mul
  br label %if.end285

if.else:                                          ; preds = %if.end
  %conv = zext i32 %33 to i64
  %tR_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 3
  %34 = ptrtoint ptr %tR_max to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %tR_max, align 8
  %add69 = add i64 %35, %conv
  %36 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %add69, i32 0) #14, !srcloc !230
  %asmresult.i.i.i = extractvalue { i64, i32 } %36, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %36, 1
  %37 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %add69, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #14, !srcloc !231
  %asmresult10.i.i.i = extractvalue { i64, i32 } %37, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 9
  %conv71 = zext i32 %mul to i64
  %add72 = add nsw i64 %conv71, -1
  %sub73 = add nsw i64 %add72, %div1581.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub73)
  %cmp254 = icmp ult i64 %sub73, 4294967296
  br i1 %cmp254, label %if.then258, label %if.else264, !prof !229

if.then258:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv259 = trunc i64 %sub73 to i32
  %div262 = udiv i32 %conv259, %mul
  br label %if.end268

if.else264:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %38 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %sub73) #14, !srcloc !232
  %asmresult1.i = extractvalue { i64, i64 } %38, 1
  %extract.t635 = trunc i64 %asmresult1.i to i32
  br label %if.end268

if.end268:                                        ; preds = %if.else264, %if.then258
  %_tmp.0.off0 = phi i32 [ %div262, %if.then258 ], [ %extract.t635, %if.else264 ]
  %add274 = add i32 %_tmp.0.off0, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add274, i32 %sub30)
  %cmp276 = icmp ugt i32 %add274, %sub30
  %sub280 = add i32 %div29, -4
  %spec.select610 = select i1 %cmp276, i32 %sub280, i32 0
  br label %if.end285

if.end285:                                        ; preds = %if.end268, %if.then63
  %nfc_tmg.sroa.29.0 = phi i32 [ %div67, %if.then63 ], [ %spec.select610, %if.end268 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chipnr)
  %cmp286 = icmp slt i32 %chipnr, 0
  br i1 %cmp286, label %if.end285.cleanup_crit_edge, label %if.end289

if.end285.cleanup_crit_edge:                      ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end289:                                        ; preds = %if.end285
  %39 = tail call i32 @llvm.umin.i32(i32 %sub11, i32 15)
  %and298 = and i32 %39, 7
  %40 = tail call i32 @llvm.umin.i32(i32 %sub11, i32 7)
  %shl308 = shl nuw nsw i32 %40, 3
  %or309 = or i32 %and298, %shl308
  %and318 = shl nuw nsw i32 %39, 3
  %shl319 = and i32 %and318, 64
  %or320 = or i32 %or309, %shl319
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub20)
  %cmp323 = icmp ult i32 %sub20, 7
  %phi.bo = shl i32 %sub20, 8
  %cond328 = select i1 %cmp323, i32 %phi.bo, i32 1792
  %or330 = or i32 %or320, %cond328
  %phi.bo601 = shl i32 %sub20, 11
  %cond338 = select i1 %cmp323, i32 %phi.bo601, i32 14336
  %or340 = or i32 %or330, %cond338
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %div25)
  %cmp343 = icmp ult i32 %div25, 7
  %phi.bo602 = shl i32 %div25, 16
  %cond348 = select i1 %cmp343, i32 %phi.bo602, i32 458752
  %or350 = or i32 %or340, %cond348
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub30)
  %cmp353 = icmp ult i32 %sub30, 7
  %phi.bo603 = shl i32 %sub30, 19
  %cond358 = select i1 %cmp353, i32 %phi.bo603, i32 3670016
  %or360 = or i32 %or350, %cond358
  %ndtr0 = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 4
  %41 = ptrtoint ptr %ndtr0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or360, ptr %ndtr0, align 8
  %42 = tail call i32 @llvm.umin.i32(i32 %div41, i32 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub51)
  %cmp372 = icmp ult i32 %sub51, 15
  %phi.bo604 = shl i32 %sub51, 4
  %cond377 = select i1 %cmp372, i32 %phi.bo604, i32 240
  %or379 = or i32 %cond377, %42
  %43 = tail call i32 @llvm.umin.i32(i32 %nfc_tmg.sroa.29.0, i32 65535)
  %shl388 = shl nuw i32 %43, 16
  %or389 = or i32 %or379, %shl388
  %ndtr1 = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 5
  %44 = ptrtoint ptr %ndtr1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or389, ptr %ndtr1, align 4
  %45 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %caps, align 4
  %is_nfcv2391 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %is_nfcv2391 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %is_nfcv2391, align 2, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool392.not = icmp eq i8 %48, 0
  br i1 %tobool392.not, label %if.end289.cleanup_crit_edge, label %if.then393

if.end289.cleanup_crit_edge:                      ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then393:                                       ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #11
  %49 = tail call i32 @llvm.umin.i32(i32 %add37, i32 15)
  %.op = shl nuw nsw i32 %49, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %div34)
  %cmp405 = icmp ult i32 %div34, 31
  %phi.bo605 = shl i32 %div34, 27
  %cond410 = select i1 %cmp405, i32 %phi.bo605, i32 -134217728
  %.op.op = or i32 %.op, 67108864
  %or402 = select i1 %cmp, i32 79691776, i32 %.op.op
  %or412 = or i32 %or402, %cond410
  %or414 = or i32 %or412, %or360
  %50 = ptrtoint ptr %ndtr0 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or414, ptr %ndtr0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %div62)
  %cmp418 = icmp ult i32 %div62, 48
  %51 = shl i32 %div62, 4
  %phi.bo607 = and i32 %51, -33024
  %phi.bo608 = or i32 %phi.bo607, 32768
  %cond423 = select i1 %cmp418, i32 %phi.bo608, i32 33536
  %or427 = or i32 %or389, %cond423
  %52 = ptrtoint ptr %ndtr1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or427, ptr %ndtr1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then393, %if.end289.cleanup_crit_edge, %if.end285.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ 0, %if.end285.cleanup_crit_edge ], [ 0, %if.then393 ], [ 0, %if.end289.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_hmg_read_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_cs, align 4
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %2 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i, align 4
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !226
  %7 = and i32 %6, -8388638
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %ndcr.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 3
  %9 = ptrtoint ptr %ndcr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ndcr.i, align 4
  %or.i = or i32 %8, %10
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #9, !srcloc !227
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !226
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 -15794176) #9, !srcloc !227
  %selected_chip.i = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %selected_chip.i, align 4
  %cmp.i = icmp eq ptr %20, %chip
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %selected_die.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %21 = ptrtoint ptr %selected_die.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %selected_die.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %1)
  %cmp7.i = icmp eq i32 %22, %1
  br i1 %cmp7.i, label %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_select_target.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %ndtr0.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 4
  %23 = ptrtoint ptr %ndtr0.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ndtr0.i, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %25) #9, !srcloc !227
  %ndtr1.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 5
  %28 = ptrtoint ptr %ndtr1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ndtr1.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %30) #9, !srcloc !227
  %33 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %chip, ptr %selected_chip.i, align 4
  %selected_die13.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %34 = ptrtoint ptr %selected_die13.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %1, ptr %selected_die13.i, align 4
  br label %marvell_nfc_select_target.exit

marvell_nfc_select_target.exit:                   ; preds = %if.end.i, %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %35 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %oob_poi, align 4
  %call = tail call fastcc i32 @marvell_nfc_hw_ecc_hmg_do_read_page(ptr noundef %chip, ptr noundef %buf, ptr noundef %36, i1 noundef zeroext true, i32 noundef %page)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_hmg_read_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %layout = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout, align 8
  %data_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %data_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_bytes, align 4
  %spare_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %spare_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spare_bytes, align 4
  %add = add i32 %5, %3
  %ecc_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %ecc_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ecc_bytes, align 4
  %add1 = add i32 %add, %7
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %8 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_cs, align 4
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %10 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %controller.i, align 4
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !226
  %15 = and i32 %14, -8388638
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %ndcr.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 3
  %17 = ptrtoint ptr %ndcr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ndcr.i, align 4
  %or.i = or i32 %16, %18
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #9, !srcloc !227
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !226
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %26, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 -15794176) #9, !srcloc !227
  %selected_chip.i = getelementptr inbounds %struct.marvell_nfc, ptr %11, i32 0, i32 8
  %27 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %selected_chip.i, align 4
  %cmp.i32 = icmp eq ptr %28, %chip
  br i1 %cmp.i32, label %land.lhs.true.i, label %entry.if.end.i33_crit_edge

entry.if.end.i33_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i33

land.lhs.true.i:                                  ; preds = %entry
  %selected_die.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %29 = ptrtoint ptr %selected_die.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %selected_die.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %9)
  %cmp7.i = icmp eq i32 %30, %9
  br i1 %cmp7.i, label %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge, label %land.lhs.true.i.if.end.i33_crit_edge

land.lhs.true.i.if.end.i33_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i33

land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_select_target.exit

if.end.i33:                                       ; preds = %land.lhs.true.i.if.end.i33_crit_edge, %entry.if.end.i33_crit_edge
  %ndtr0.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 4
  %31 = ptrtoint ptr %ndtr0.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ndtr0.i, align 8
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %33) #9, !srcloc !227
  %ndtr1.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 5
  %36 = ptrtoint ptr %ndtr1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ndtr1.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %40, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %38) #9, !srcloc !227
  %41 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %chip, ptr %selected_chip.i, align 4
  %selected_die13.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %42 = ptrtoint ptr %selected_die13.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %9, ptr %selected_die13.i, align 4
  br label %marvell_nfc_select_target.exit

marvell_nfc_select_target.exit:                   ; preds = %if.end.i33, %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge
  %43 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %controller.i, align 4
  %regs.i35 = getelementptr inbounds %struct.marvell_nfc, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %regs.i35 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i35, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #9, !srcloc !226
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  %and.i = and i32 %48, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i38, label %marvell_nfc_select_target.exit.marvell_nfc_enable_hw_ecc.exit_crit_edge

marvell_nfc_select_target.exit.marvell_nfc_enable_hw_ecc.exit_crit_edge: ; preds = %marvell_nfc_select_target.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_enable_hw_ecc.exit

if.then.i38:                                      ; preds = %marvell_nfc_select_target.exit
  %or.i36 = or i32 %48, 1073741824
  %49 = tail call i32 @llvm.bswap.i32(i32 %or.i36) #9
  %50 = ptrtoint ptr %regs.i35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i35, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #9, !srcloc !227
  %algo.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %52 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %algo.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp.i37 = icmp eq i32 %53, 2
  br i1 %cmp.i37, label %if.then4.i, label %if.then.i38.marvell_nfc_enable_hw_ecc.exit_crit_edge

if.then.i38.marvell_nfc_enable_hw_ecc.exit_crit_edge: ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_enable_hw_ecc.exit

if.then4.i:                                       ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %regs.i35 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i35, align 4
  %add.ptr6.i = getelementptr i8, ptr %55, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 16777216) #9, !srcloc !227
  br label %marvell_nfc_enable_hw_ecc.exit

marvell_nfc_enable_hw_ecc.exit:                   ; preds = %if.then4.i, %if.then.i38.marvell_nfc_enable_hw_ecc.exit_crit_edge, %marvell_nfc_select_target.exit.marvell_nfc_enable_hw_ecc.exit_crit_edge
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %56 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %oob_poi, align 4
  %call2 = tail call fastcc i32 @marvell_nfc_hw_ecc_hmg_do_read_page(ptr noundef %chip, ptr noundef %buf, ptr noundef %57, i1 noundef zeroext false, i32 noundef %page)
  %58 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %controller.i, align 4
  %regs.i40 = getelementptr inbounds %struct.marvell_nfc, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %regs.i40 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i40, align 4
  %add.ptr.i = getelementptr i8, ptr %61, i32 20
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !226
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #9
  %and.i41 = and i32 %63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %tobool.not.i42 = icmp eq i32 %and.i41, 0
  br i1 %tobool.not.i42, label %if.end.i44, label %if.then.i43

if.then.i43:                                      ; preds = %marvell_nfc_enable_hw_ecc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %regs.i40 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i40, align 4
  %add.ptr4.i = getelementptr i8, ptr %65, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %62) #9, !srcloc !227
  br label %marvell_nfc_hw_ecc_check_bitflips.exit

if.end.i44:                                       ; preds = %marvell_nfc_enable_hw_ecc.exit
  %and5.i = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i44.if.end13.i_crit_edge, label %if.then7.i

if.end.i44.if.end13.i_crit_edge:                  ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then7.i:                                       ; preds = %if.end.i44
  %66 = ptrtoint ptr %regs.i40 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i40, align 4
  %add.ptr9.i45 = getelementptr i8, ptr %67, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i45, i32 %62) #9, !srcloc !227
  %algo.i46 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %68 = ptrtoint ptr %algo.i46 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %algo.i46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %cmp.i47 = icmp eq i32 %69, 2
  br i1 %cmp.i47, label %if.then10.i, label %if.then7.i.if.end13.i_crit_edge

if.then7.i.if.end13.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i = lshr i32 %63, 16
  %and11.i = and i32 %shr.i, 31
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.then7.i.if.end13.i_crit_edge, %if.end.i44.if.end13.i_crit_edge
  %bf.0.i = phi i32 [ %and11.i, %if.then10.i ], [ 0, %if.end.i44.if.end13.i_crit_edge ], [ 1, %if.then7.i.if.end13.i_crit_edge ]
  %ecc_stats.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %70 = ptrtoint ptr %ecc_stats.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ecc_stats.i, align 4
  %add.i = add i32 %71, %bf.0.i
  store i32 %add.i, ptr %ecc_stats.i, align 4
  br label %marvell_nfc_hw_ecc_check_bitflips.exit

marvell_nfc_hw_ecc_check_bitflips.exit:           ; preds = %if.end13.i, %if.then.i43
  %max_bitflips.0 = phi i32 [ %bf.0.i, %if.end13.i ], [ 0, %if.then.i43 ]
  %72 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %controller.i, align 4
  %regs.i49 = getelementptr inbounds %struct.marvell_nfc, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %regs.i49 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i49, align 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #9, !srcloc !226
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #9
  %and.i50 = and i32 %77, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool.not.i51 = icmp eq i32 %and.i50, 0
  br i1 %tobool.not.i51, label %marvell_nfc_hw_ecc_check_bitflips.exit.marvell_nfc_disable_hw_ecc.exit_crit_edge, label %if.then.i54

marvell_nfc_hw_ecc_check_bitflips.exit.marvell_nfc_disable_hw_ecc.exit_crit_edge: ; preds = %marvell_nfc_hw_ecc_check_bitflips.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_disable_hw_ecc.exit

if.then.i54:                                      ; preds = %marvell_nfc_hw_ecc_check_bitflips.exit
  %and2.i = and i32 %77, -1073741825
  %78 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #9
  %79 = ptrtoint ptr %regs.i49 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i49, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #9, !srcloc !227
  %algo.i52 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %81 = ptrtoint ptr %algo.i52 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %algo.i52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %cmp.i53 = icmp eq i32 %82, 2
  br i1 %cmp.i53, label %if.then5.i, label %if.then.i54.marvell_nfc_disable_hw_ecc.exit_crit_edge

if.then.i54.marvell_nfc_disable_hw_ecc.exit_crit_edge: ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_disable_hw_ecc.exit

if.then5.i:                                       ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %regs.i49 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i49, align 4
  %add.ptr7.i = getelementptr i8, ptr %84, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 0) #9, !srcloc !227
  br label %marvell_nfc_disable_hw_ecc.exit

marvell_nfc_disable_hw_ecc.exit:                  ; preds = %if.then5.i, %if.then.i54.marvell_nfc_disable_hw_ecc.exit_crit_edge, %marvell_nfc_hw_ecc_check_bitflips.exit.marvell_nfc_disable_hw_ecc.exit_crit_edge
  br i1 %tobool.not.i42, label %marvell_nfc_disable_hw_ecc.exit.cleanup_crit_edge, label %if.end8.i

marvell_nfc_disable_hw_ecc.exit.cleanup_crit_edge: ; preds = %marvell_nfc_disable_hw_ecc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i:                                        ; preds = %marvell_nfc_disable_hw_ecc.exit
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1, i32 noundef 3264) #15
  %tobool5.not = icmp eq ptr %call9.i, null
  br i1 %tobool5.not, label %if.end8.i.cleanup_crit_edge, label %if.end7

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end8.i
  %85 = ptrtoint ptr %data_bytes to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_bytes, align 4
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %86
  %call9 = tail call fastcc i32 @marvell_nfc_hw_ecc_hmg_do_read_page(ptr noundef %chip, ptr noundef nonnull %call9.i, ptr noundef %add.ptr, i1 noundef zeroext true, i32 noundef %page)
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %87 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %strength.i, align 4
  %call8.i = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef nonnull %call9.i, i32 noundef %add1, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %88) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i57 = icmp slt i32 %call8.i, 0
  br i1 %cmp.i57, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %failed.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  %89 = ptrtoint ptr %failed.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %failed.i, align 4
  %inc.i = add i32 %90, 1
  store i32 %inc.i, ptr %failed.i, align 4
  br label %marvell_nfc_check_empty_chunk.exit

if.end10.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %ecc_stats11.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %91 = ptrtoint ptr %ecc_stats11.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ecc_stats11.i, align 4
  %add.i58 = add i32 %92, %call8.i
  store i32 %add.i58, ptr %ecc_stats11.i, align 4
  %93 = tail call i32 @llvm.umax.i32(i32 %max_bitflips.0, i32 %call8.i) #9
  br label %marvell_nfc_check_empty_chunk.exit

marvell_nfc_check_empty_chunk.exit:               ; preds = %if.end10.i, %if.then9.i
  %max_bitflips.1 = phi i32 [ %max_bitflips.0, %if.then9.i ], [ %93, %if.end10.i ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %marvell_nfc_check_empty_chunk.exit, %if.end8.i.cleanup_crit_edge, %marvell_nfc_disable_hw_ecc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %max_bitflips.1, %marvell_nfc_check_empty_chunk.exit ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %max_bitflips.0, %marvell_nfc_disable_hw_ecc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_hmg_read_oob_raw(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %page.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 24, i32 1
  %0 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %page.i, align 4
  %data_buf.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 22
  %1 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data_buf.i, align 8
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %3 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cur_cs, align 4
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %5 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %controller.i, align 4
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !226
  %10 = and i32 %9, -8388638
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  %ndcr.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 3
  %12 = ptrtoint ptr %ndcr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ndcr.i, align 4
  %or.i = or i32 %11, %13
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #9, !srcloc !227
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !226
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 -15794176) #9, !srcloc !227
  %selected_chip.i = getelementptr inbounds %struct.marvell_nfc, ptr %6, i32 0, i32 8
  %22 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %selected_chip.i, align 4
  %cmp.i = icmp eq ptr %23, %chip
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %selected_die.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %24 = ptrtoint ptr %selected_die.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %selected_die.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %4)
  %cmp7.i = icmp eq i32 %25, %4
  br i1 %cmp7.i, label %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_select_target.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %ndtr0.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 4
  %26 = ptrtoint ptr %ndtr0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ndtr0.i, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %28) #9, !srcloc !227
  %ndtr1.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 5
  %31 = ptrtoint ptr %ndtr1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ndtr1.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %35, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %33) #9, !srcloc !227
  %36 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %chip, ptr %selected_chip.i, align 4
  %selected_die13.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %37 = ptrtoint ptr %selected_die13.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %4, ptr %selected_die13.i, align 4
  br label %marvell_nfc_select_target.exit

marvell_nfc_select_target.exit:                   ; preds = %if.end.i, %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %38 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %oob_poi, align 4
  %call1 = tail call fastcc i32 @marvell_nfc_hw_ecc_hmg_do_read_page(ptr noundef %chip, ptr noundef %2, ptr noundef %39, i1 noundef zeroext true, i32 noundef %page)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_hmg_write_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_cs, align 4
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %2 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i, align 4
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !226
  %7 = and i32 %6, -8388638
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %ndcr.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 3
  %9 = ptrtoint ptr %ndcr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ndcr.i, align 4
  %or.i = or i32 %8, %10
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #9, !srcloc !227
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !226
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 -15794176) #9, !srcloc !227
  %selected_chip.i = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %selected_chip.i, align 4
  %cmp.i = icmp eq ptr %20, %chip
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %selected_die.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %21 = ptrtoint ptr %selected_die.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %selected_die.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %1)
  %cmp7.i = icmp eq i32 %22, %1
  br i1 %cmp7.i, label %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_select_target.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %ndtr0.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 4
  %23 = ptrtoint ptr %ndtr0.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ndtr0.i, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %25) #9, !srcloc !227
  %ndtr1.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 5
  %28 = ptrtoint ptr %ndtr1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ndtr1.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %30) #9, !srcloc !227
  %33 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %chip, ptr %selected_chip.i, align 4
  %selected_die13.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %34 = ptrtoint ptr %selected_die13.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %1, ptr %selected_die13.i, align 4
  br label %marvell_nfc_select_target.exit

marvell_nfc_select_target.exit:                   ; preds = %if.end.i, %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %35 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %oob_poi, align 4
  %call = tail call fastcc i32 @marvell_nfc_hw_ecc_hmg_do_write_page(ptr noundef %chip, ptr noundef %buf, ptr noundef %36, i1 noundef zeroext true, i32 noundef %page)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_hmg_write_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_cs, align 4
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %2 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i, align 4
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !226
  %7 = and i32 %6, -8388638
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %ndcr.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 3
  %9 = ptrtoint ptr %ndcr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ndcr.i, align 4
  %or.i = or i32 %8, %10
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #9, !srcloc !227
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !226
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 -15794176) #9, !srcloc !227
  %selected_chip.i = getelementptr inbounds %struct.marvell_nfc, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %selected_chip.i, align 4
  %cmp.i = icmp eq ptr %20, %chip
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %selected_die.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %21 = ptrtoint ptr %selected_die.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %selected_die.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %1)
  %cmp7.i = icmp eq i32 %22, %1
  br i1 %cmp7.i, label %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_select_target.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %ndtr0.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 4
  %23 = ptrtoint ptr %ndtr0.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ndtr0.i, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %25) #9, !srcloc !227
  %ndtr1.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 5
  %28 = ptrtoint ptr %ndtr1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ndtr1.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %30) #9, !srcloc !227
  %33 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %chip, ptr %selected_chip.i, align 4
  %selected_die13.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %34 = ptrtoint ptr %selected_die13.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %1, ptr %selected_die13.i, align 4
  br label %marvell_nfc_select_target.exit

marvell_nfc_select_target.exit:                   ; preds = %if.end.i, %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge
  %35 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %controller.i, align 4
  %regs.i7 = getelementptr inbounds %struct.marvell_nfc, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %regs.i7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i7, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !226
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  %and.i = and i32 %40, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %marvell_nfc_select_target.exit.marvell_nfc_enable_hw_ecc.exit_crit_edge

marvell_nfc_select_target.exit.marvell_nfc_enable_hw_ecc.exit_crit_edge: ; preds = %marvell_nfc_select_target.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_enable_hw_ecc.exit

if.then.i:                                        ; preds = %marvell_nfc_select_target.exit
  %or.i8 = or i32 %40, 1073741824
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i8) #9
  %42 = ptrtoint ptr %regs.i7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #9, !srcloc !227
  %algo.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %44 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %algo.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp.i9 = icmp eq i32 %45, 2
  br i1 %cmp.i9, label %if.then4.i, label %if.then.i.marvell_nfc_enable_hw_ecc.exit_crit_edge

if.then.i.marvell_nfc_enable_hw_ecc.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_enable_hw_ecc.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %regs.i7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i7, align 4
  %add.ptr6.i = getelementptr i8, ptr %47, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 16777216) #9, !srcloc !227
  br label %marvell_nfc_enable_hw_ecc.exit

marvell_nfc_enable_hw_ecc.exit:                   ; preds = %if.then4.i, %if.then.i.marvell_nfc_enable_hw_ecc.exit_crit_edge, %marvell_nfc_select_target.exit.marvell_nfc_enable_hw_ecc.exit_crit_edge
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %48 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %oob_poi, align 4
  %call = tail call fastcc i32 @marvell_nfc_hw_ecc_hmg_do_write_page(ptr noundef %chip, ptr noundef %buf, ptr noundef %49, i1 noundef zeroext false, i32 noundef %page)
  %50 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %controller.i, align 4
  %regs.i11 = getelementptr inbounds %struct.marvell_nfc, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %regs.i11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i11, align 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #9, !srcloc !226
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #9
  %and.i12 = and i32 %55, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %tobool.not.i13 = icmp eq i32 %and.i12, 0
  br i1 %tobool.not.i13, label %marvell_nfc_enable_hw_ecc.exit.marvell_nfc_disable_hw_ecc.exit_crit_edge, label %if.then.i16

marvell_nfc_enable_hw_ecc.exit.marvell_nfc_disable_hw_ecc.exit_crit_edge: ; preds = %marvell_nfc_enable_hw_ecc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_disable_hw_ecc.exit

if.then.i16:                                      ; preds = %marvell_nfc_enable_hw_ecc.exit
  %and2.i = and i32 %55, -1073741825
  %56 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #9
  %57 = ptrtoint ptr %regs.i11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #9, !srcloc !227
  %algo.i14 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %59 = ptrtoint ptr %algo.i14 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %algo.i14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp.i15 = icmp eq i32 %60, 2
  br i1 %cmp.i15, label %if.then5.i, label %if.then.i16.marvell_nfc_disable_hw_ecc.exit_crit_edge

if.then.i16.marvell_nfc_disable_hw_ecc.exit_crit_edge: ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_disable_hw_ecc.exit

if.then5.i:                                       ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %regs.i11 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i11, align 4
  %add.ptr7.i = getelementptr i8, ptr %62, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 0) #9, !srcloc !227
  br label %marvell_nfc_disable_hw_ecc.exit

marvell_nfc_disable_hw_ecc.exit:                  ; preds = %if.then5.i, %if.then.i16.marvell_nfc_disable_hw_ecc.exit_crit_edge, %marvell_nfc_enable_hw_ecc.exit.marvell_nfc_disable_hw_ecc.exit_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_hmg_write_oob_raw(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %page.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 24, i32 1
  %0 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %page.i, align 4
  %data_buf.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 22
  %1 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data_buf.i, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %3 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %writesize, align 4
  %5 = call ptr @memset(ptr %2, i32 255, i32 %4)
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %6 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_cs, align 4
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %8 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %controller.i, align 4
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !226
  %13 = and i32 %12, -8388638
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  %ndcr.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 3
  %15 = ptrtoint ptr %ndcr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ndcr.i, align 4
  %or.i = or i32 %14, %16
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #9, !srcloc !227
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !226
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %24, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 -15794176) #9, !srcloc !227
  %selected_chip.i = getelementptr inbounds %struct.marvell_nfc, ptr %9, i32 0, i32 8
  %25 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %selected_chip.i, align 4
  %cmp.i = icmp eq ptr %26, %chip
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %selected_die.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %27 = ptrtoint ptr %selected_die.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %selected_die.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %7)
  %cmp7.i = icmp eq i32 %28, %7
  br i1 %cmp7.i, label %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_select_target.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %ndtr0.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 4
  %29 = ptrtoint ptr %ndtr0.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ndtr0.i, align 8
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %31) #9, !srcloc !227
  %ndtr1.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 5
  %34 = ptrtoint ptr %ndtr1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ndtr1.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %38, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %36) #9, !srcloc !227
  %39 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %chip, ptr %selected_chip.i, align 4
  %selected_die13.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %40 = ptrtoint ptr %selected_die13.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %7, ptr %selected_die13.i, align 4
  br label %marvell_nfc_select_target.exit

marvell_nfc_select_target.exit:                   ; preds = %if.end.i, %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %41 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %oob_poi, align 4
  %call2 = tail call fastcc i32 @marvell_nfc_hw_ecc_hmg_do_write_page(ptr noundef %chip, ptr noundef %2, ptr noundef %42, i1 noundef zeroext true, i32 noundef %page)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_bch_read_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %layout = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout, align 8
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi, align 4
  %data_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %data_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_bytes, align 4
  %spare_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %spare_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spare_bytes, align 4
  %add = add i32 %7, %5
  %ecc_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %ecc_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ecc_bytes, align 4
  %add2 = add i32 %add, %9
  %full_chunk_cnt = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %full_chunk_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %full_chunk_cnt, align 4
  %mul = mul i32 %11, %7
  %last_spare_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %last_spare_bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_spare_bytes, align 4
  %add4 = add i32 %mul, %13
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %14 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur_cs, align 4
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %16 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %controller.i, align 4
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !226
  %21 = and i32 %20, -8388638
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  %ndcr.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 3
  %23 = ptrtoint ptr %ndcr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ndcr.i, align 4
  %or.i = or i32 %22, %24
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #9, !srcloc !227
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 20
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !226
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %32, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 -15794176) #9, !srcloc !227
  %selected_chip.i = getelementptr inbounds %struct.marvell_nfc, ptr %17, i32 0, i32 8
  %33 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %selected_chip.i, align 4
  %cmp.i = icmp eq ptr %34, %chip
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %selected_die.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %35 = ptrtoint ptr %selected_die.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %selected_die.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %15)
  %cmp7.i = icmp eq i32 %36, %15
  br i1 %cmp7.i, label %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_select_target.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %ndtr0.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 4
  %37 = ptrtoint ptr %ndtr0.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ndtr0.i, align 8
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %39) #9, !srcloc !227
  %ndtr1.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 5
  %42 = ptrtoint ptr %ndtr1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ndtr1.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %46, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %44) #9, !srcloc !227
  %47 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %chip, ptr %selected_chip.i, align 4
  %selected_die13.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %48 = ptrtoint ptr %selected_die13.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %15, ptr %selected_die13.i, align 4
  br label %marvell_nfc_select_target.exit

marvell_nfc_select_target.exit:                   ; preds = %if.end.i, %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  br i1 %tobool.not, label %marvell_nfc_select_target.exit.if.end_crit_edge, label %if.then

marvell_nfc_select_target.exit.if.end_crit_edge:  ; preds = %marvell_nfc_select_target.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %marvell_nfc_select_target.exit
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %51 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %oobsize, align 4
  %53 = call ptr @memset(ptr %50, i32 255, i32 %52)
  br label %if.end

if.end:                                           ; preds = %if.then, %marvell_nfc_select_target.exit.if.end_crit_edge
  %call9 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %nchunks = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %nchunks to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nchunks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp61 = icmp sgt i32 %55, 0
  br i1 %cmp61, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %last_data_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 8
  %last_ecc_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 10
  %add.ptr23 = getelementptr i8, ptr %3, i32 %add4
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %chunk.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end14.for.body_crit_edge ]
  %ecc_len.064 = phi i32 [ %9, %for.body.lr.ph ], [ %ecc_len.1, %if.end14.for.body_crit_edge ]
  %spare_len.063 = phi i32 [ %7, %for.body.lr.ph ], [ %spare_len.1, %if.end14.for.body_crit_edge ]
  %data_len.062 = phi i32 [ %5, %for.body.lr.ph ], [ %data_len.1, %if.end14.for.body_crit_edge ]
  %56 = ptrtoint ptr %full_chunk_cnt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %full_chunk_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chunk.065, i32 %57)
  %cmp11.not = icmp slt i32 %chunk.065, %57
  br i1 %cmp11.not, label %for.body.if.end14_crit_edge, label %if.then12

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %last_data_bytes to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %last_data_bytes, align 4
  %60 = ptrtoint ptr %last_spare_bytes to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %last_spare_bytes, align 4
  %62 = ptrtoint ptr %last_ecc_bytes to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %last_ecc_bytes, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %for.body.if.end14_crit_edge
  %data_len.1 = phi i32 [ %59, %if.then12 ], [ %data_len.062, %for.body.if.end14_crit_edge ]
  %spare_len.1 = phi i32 [ %61, %if.then12 ], [ %spare_len.063, %for.body.if.end14_crit_edge ]
  %ecc_len.1 = phi i32 [ %63, %if.then12 ], [ %ecc_len.064, %for.body.if.end14_crit_edge ]
  %mul15 = mul i32 %chunk.065, %add2
  %64 = ptrtoint ptr %data_bytes to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_bytes, align 4
  %mul17 = mul i32 %65, %chunk.065
  %add.ptr = getelementptr i8, ptr %buf, i32 %mul17
  %call18 = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %mul15, ptr noundef %add.ptr, i32 noundef %data_len.1, i1 noundef zeroext false) #9
  %66 = ptrtoint ptr %spare_bytes to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %spare_bytes, align 4
  %mul20 = mul i32 %67, %chunk.065
  %add.ptr21 = getelementptr i8, ptr %3, i32 %mul20
  %call22 = tail call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef %add.ptr21, i32 noundef %spare_len.1, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %68 = ptrtoint ptr %ecc_bytes to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ecc_bytes, align 4
  %add25 = add i32 %69, 31
  %and = and i32 %add25, -32
  %mul26 = mul i32 %and, %chunk.065
  %add.ptr27 = getelementptr i8, ptr %add.ptr23, i32 %mul26
  %call28 = tail call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef %add.ptr27, i32 noundef %ecc_len.1, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %inc = add nuw nsw i32 %chunk.065, 1
  %70 = ptrtoint ptr %nchunks to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nchunks, align 4
  %cmp = icmp slt i32 %inc, %71
  br i1 %cmp, label %if.end14.for.body_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %if.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_bch_read_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  %nfc_op.i = alloca %struct.marvell_nfc_op, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %layout = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout, align 8
  %data_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %data_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_bytes, align 4
  %spare_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %spare_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spare_bytes, align 4
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %6 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %oob_poi, align 4
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %8 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_cs, align 4
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %10 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %controller.i, align 4
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !226
  %15 = and i32 %14, -8388638
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %ndcr.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 3
  %17 = ptrtoint ptr %ndcr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ndcr.i, align 4
  %or.i = or i32 %16, %18
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #9, !srcloc !227
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !226
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %26, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 -15794176) #9, !srcloc !227
  %selected_chip.i = getelementptr inbounds %struct.marvell_nfc, ptr %11, i32 0, i32 8
  %27 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %selected_chip.i, align 4
  %cmp.i = icmp eq ptr %28, %chip
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %selected_die.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %29 = ptrtoint ptr %selected_die.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %selected_die.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %9)
  %cmp7.i = icmp eq i32 %30, %9
  br i1 %cmp7.i, label %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_select_target.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %ndtr0.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 4
  %31 = ptrtoint ptr %ndtr0.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ndtr0.i, align 8
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %33) #9, !srcloc !227
  %ndtr1.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 5
  %36 = ptrtoint ptr %ndtr1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ndtr1.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %40, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %38) #9, !srcloc !227
  %41 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %chip, ptr %selected_chip.i, align 4
  %selected_die13.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %42 = ptrtoint ptr %selected_die13.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %9, ptr %selected_die13.i, align 4
  br label %marvell_nfc_select_target.exit

marvell_nfc_select_target.exit:                   ; preds = %if.end.i, %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  br i1 %tobool.not, label %marvell_nfc_select_target.exit.if.end_crit_edge, label %if.then

marvell_nfc_select_target.exit.if.end_crit_edge:  ; preds = %marvell_nfc_select_target.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %marvell_nfc_select_target.exit
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %45 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %oobsize, align 4
  %47 = call ptr @memset(ptr %44, i32 255, i32 %46)
  br label %if.end

if.end:                                           ; preds = %if.then, %marvell_nfc_select_target.exit.if.end_crit_edge
  %48 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %controller.i, align 4
  %regs.i197 = getelementptr inbounds %struct.marvell_nfc, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %regs.i197 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i197, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9, !srcloc !226
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #9
  %and.i = and i32 %53, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.marvell_nfc_enable_hw_ecc.exit_crit_edge

if.end.marvell_nfc_enable_hw_ecc.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_enable_hw_ecc.exit

if.then.i:                                        ; preds = %if.end
  %or.i198 = or i32 %53, 1073741824
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i198) #9
  %55 = ptrtoint ptr %regs.i197 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i197, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #9, !srcloc !227
  %algo.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %57 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %algo.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp.i199 = icmp eq i32 %58, 2
  br i1 %cmp.i199, label %if.then4.i, label %if.then.i.marvell_nfc_enable_hw_ecc.exit_crit_edge

if.then.i.marvell_nfc_enable_hw_ecc.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_enable_hw_ecc.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %regs.i197 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i197, align 4
  %add.ptr6.i = getelementptr i8, ptr %60, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 16777216) #9, !srcloc !227
  br label %marvell_nfc_enable_hw_ecc.exit

marvell_nfc_enable_hw_ecc.exit:                   ; preds = %if.then4.i, %if.then.i.marvell_nfc_enable_hw_ecc.exit_crit_edge, %if.end.marvell_nfc_enable_hw_ecc.exit_crit_edge
  %nchunks = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 3
  %61 = ptrtoint ptr %nchunks to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nchunks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp237 = icmp sgt i32 %62, 0
  br i1 %cmp237, label %for.body.lr.ph, label %marvell_nfc_enable_hw_ecc.exit.for.end_crit_edge

marvell_nfc_enable_hw_ecc.exit.for.end_crit_edge: ; preds = %marvell_nfc_enable_hw_ecc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %marvell_nfc_enable_hw_ecc.exit
  %full_chunk_cnt = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 4
  %last_data_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 8
  %last_spare_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 9
  %addr_cyc.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 6
  %arrayinit.element.i = getelementptr inbounds i32, ptr %nfc_op.i, i32 1
  %shl4.i = shl i32 %page, 16
  %arrayinit.element5.i = getelementptr inbounds i32, ptr %nfc_op.i, i32 2
  %63 = lshr i32 %page, 16
  %and6.i = and i32 %63, 255
  %arrayinit.element8.i = getelementptr inbounds i32, ptr %nfc_op.i, i32 3
  %cle_ale_delay_ns.i = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op.i, i32 0, i32 1
  %algo.i214 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %ecc_stats.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %chunk.0247 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %failure_mask.0246 = phi i32 [ 0, %for.body.lr.ph ], [ %117, %for.cond.for.body_crit_edge ]
  %spare.0244 = phi ptr [ %7, %for.body.lr.ph ], [ %add.ptr10, %for.cond.for.body_crit_edge ]
  %data.0241 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr, %for.cond.for.body_crit_edge ]
  %spare_len.0240 = phi i32 [ %5, %for.body.lr.ph ], [ %spare_len.1, %for.cond.for.body_crit_edge ]
  %data_len.0239 = phi i32 [ %3, %for.body.lr.ph ], [ %data_len.1, %for.cond.for.body_crit_edge ]
  %max_bitflips.0238 = phi i32 [ 0, %for.body.lr.ph ], [ %max_bitflips.1235, %for.cond.for.body_crit_edge ]
  %64 = ptrtoint ptr %full_chunk_cnt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %full_chunk_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chunk.0247, i32 %65)
  %cmp3.not = icmp slt i32 %chunk.0247, %65
  br i1 %cmp3.not, label %for.body.if.end5_crit_edge, label %if.then4

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %last_data_bytes to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %last_data_bytes, align 4
  %68 = ptrtoint ptr %last_spare_bytes to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %last_spare_bytes, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.body.if.end5_crit_edge
  %data_len.1 = phi i32 [ %67, %if.then4 ], [ %data_len.0239, %for.body.if.end5_crit_edge ]
  %spare_len.1 = phi i32 [ %69, %if.then4 ], [ %spare_len.0240, %for.body.if.end5_crit_edge ]
  %70 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %controller.i, align 4
  %72 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %layout, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nfc_op.i) #9
  %74 = ptrtoint ptr %addr_cyc.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %addr_cyc.i, align 8
  %and.i201 = shl i32 %75, 16
  %shl.i = and i32 %and.i201, 458752
  %76 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %shl4.i, ptr %arrayinit.element.i, align 4
  %77 = ptrtoint ptr %arrayinit.element5.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and6.i, ptr %arrayinit.element5.i, align 4
  %add.i = add i32 %spare_len.1, %data_len.1
  %78 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add.i, ptr %arrayinit.element8.i, align 4
  %79 = call ptr @memset(ptr %cle_ale_delay_ns.i, i32 0, i32 24)
  %call9.i = tail call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i202 = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i202, label %if.end.i204, label %if.end5.marvell_nfc_hw_ecc_bch_read_chunk.exit_crit_edge

if.end5.marvell_nfc_hw_ecc_bch_read_chunk.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_hw_ecc_bch_read_chunk.exit

if.end.i204:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chunk.0247)
  %cmp.i203 = icmp eq i32 %chunk.0247, 0
  br i1 %cmp.i203, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.end.i204
  call void @__sanitizer_cov_trace_pc() #11
  %or12.i = or i32 %shl.i, 268972032
  %80 = ptrtoint ptr %nfc_op.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or12.i, ptr %nfc_op.i, align 4
  br label %if.end29.i

if.else.i:                                        ; preds = %if.end.i204
  %nchunks.i = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %73, i32 0, i32 3
  %81 = ptrtoint ptr %nchunks.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nchunks.i, align 4
  %sub.i = add i32 %82, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %chunk.0247)
  %cmp19.i = icmp sgt i32 %sub.i, %chunk.0247
  br i1 %cmp19.i, label %if.then20.i, label %if.else24.i

if.then20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %or23.i = or i32 %shl.i, -1342177280
  %83 = ptrtoint ptr %nfc_op.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or23.i, ptr %nfc_op.i, align 4
  br label %if.end29.i

if.else24.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %or27.i = or i32 %shl.i, 805306368
  %84 = ptrtoint ptr %nfc_op.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or27.i, ptr %nfc_op.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else24.i, %if.then20.i, %if.then10.i
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %chip, ptr noundef nonnull %nfc_op.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.1)
  %cmp3073.not.i = icmp eq i32 %data_len.1, 0
  br i1 %cmp3073.not.i, label %if.end29.i.for.cond34.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end29.i.for.cond34.preheader.i_crit_edge:      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond34.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end29.i
  %regs.i.i = getelementptr inbounds %struct.marvell_nfc, ptr %71, i32 0, i32 2
  br label %for.body.i

for.cond34.preheader.i:                           ; preds = %for.body.i.for.cond34.preheader.i_crit_edge, %if.end29.i.for.cond34.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spare_len.1)
  %cmp3576.not.i = icmp eq i32 %spare_len.1, 0
  br i1 %cmp3576.not.i, label %for.cond34.preheader.i.marvell_nfc_hw_ecc_bch_read_chunk.exit_crit_edge, label %for.body36.lr.ph.i

for.cond34.preheader.i.marvell_nfc_hw_ecc_bch_read_chunk.exit_crit_edge: ; preds = %for.cond34.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_hw_ecc_bch_read_chunk.exit

for.body36.lr.ph.i:                               ; preds = %for.cond34.preheader.i
  %regs.i65.i = getelementptr inbounds %struct.marvell_nfc, ptr %71, i32 0, i32 2
  br label %for.body36.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %data.addr.075.i = phi ptr [ %data.0241, %for.body.lr.ph.i ], [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %i.074.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add33.i, %for.body.i.for.body.i_crit_edge ]
  %call31.i = tail call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %chip, i32 noundef 2, ptr noundef nonnull @.str.53) #9
  %85 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i205 = getelementptr i8, ptr %86, i32 64
  tail call void @__raw_readsl(ptr noundef %add.ptr.i.i205, ptr noundef %data.addr.075.i, i32 noundef 2) #9
  %87 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %88, i32 64
  %add.ptr1.i.1.i = getelementptr i8, ptr %data.addr.075.i, i32 8
  tail call void @__raw_readsl(ptr noundef %add.ptr.i.1.i, ptr noundef %add.ptr1.i.1.i, i32 noundef 2) #9
  %89 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %90, i32 64
  %add.ptr1.i.2.i = getelementptr i8, ptr %data.addr.075.i, i32 16
  tail call void @__raw_readsl(ptr noundef %add.ptr.i.2.i, ptr noundef %add.ptr1.i.2.i, i32 noundef 2) #9
  %91 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.3.i = getelementptr i8, ptr %92, i32 64
  %add.ptr1.i.3.i = getelementptr i8, ptr %data.addr.075.i, i32 24
  tail call void @__raw_readsl(ptr noundef %add.ptr.i.3.i, ptr noundef %add.ptr1.i.3.i, i32 noundef 2) #9
  %add.ptr.i = getelementptr i8, ptr %data.addr.075.i, i32 32
  %add33.i = add i32 %i.074.i, 32
  %cmp30.i = icmp ult i32 %add33.i, %data_len.1
  br i1 %cmp30.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond34.preheader.i_crit_edge

for.body.i.for.cond34.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond34.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body36.i:                                     ; preds = %for.body36.i.for.body36.i_crit_edge, %for.body36.lr.ph.i
  %i.178.i = phi i32 [ 0, %for.body36.lr.ph.i ], [ %add41.i, %for.body36.i.for.body36.i_crit_edge ]
  %spare.addr.077.i = phi ptr [ %spare.0244, %for.body36.lr.ph.i ], [ %add.ptr39.i, %for.body36.i.for.body36.i_crit_edge ]
  %call37.i = tail call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %chip, i32 noundef 2, ptr noundef nonnull @.str.54) #9
  %93 = ptrtoint ptr %regs.i65.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i65.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %94, i32 64
  tail call void @__raw_readsl(ptr noundef %add.ptr.i67.i, ptr noundef %spare.addr.077.i, i32 noundef 2) #9
  %95 = ptrtoint ptr %regs.i65.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i65.i, align 4
  %add.ptr.i67.1.i = getelementptr i8, ptr %96, i32 64
  %add.ptr1.i68.1.i = getelementptr i8, ptr %spare.addr.077.i, i32 8
  tail call void @__raw_readsl(ptr noundef %add.ptr.i67.1.i, ptr noundef %add.ptr1.i68.1.i, i32 noundef 2) #9
  %97 = ptrtoint ptr %regs.i65.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i65.i, align 4
  %add.ptr.i67.2.i = getelementptr i8, ptr %98, i32 64
  %add.ptr1.i68.2.i = getelementptr i8, ptr %spare.addr.077.i, i32 16
  tail call void @__raw_readsl(ptr noundef %add.ptr.i67.2.i, ptr noundef %add.ptr1.i68.2.i, i32 noundef 2) #9
  %99 = ptrtoint ptr %regs.i65.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i65.i, align 4
  %add.ptr.i67.3.i = getelementptr i8, ptr %100, i32 64
  %add.ptr1.i68.3.i = getelementptr i8, ptr %spare.addr.077.i, i32 24
  tail call void @__raw_readsl(ptr noundef %add.ptr.i67.3.i, ptr noundef %add.ptr1.i68.3.i, i32 noundef 2) #9
  %add.ptr39.i = getelementptr i8, ptr %spare.addr.077.i, i32 32
  %add41.i = add i32 %i.178.i, 32
  %cmp35.i = icmp ult i32 %add41.i, %spare_len.1
  br i1 %cmp35.i, label %for.body36.i.for.body36.i_crit_edge, label %for.body36.i.marvell_nfc_hw_ecc_bch_read_chunk.exit_crit_edge

for.body36.i.marvell_nfc_hw_ecc_bch_read_chunk.exit_crit_edge: ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_hw_ecc_bch_read_chunk.exit

for.body36.i.for.body36.i_crit_edge:              ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body36.i

marvell_nfc_hw_ecc_bch_read_chunk.exit:           ; preds = %for.body36.i.marvell_nfc_hw_ecc_bch_read_chunk.exit_crit_edge, %for.cond34.preheader.i.marvell_nfc_hw_ecc_bch_read_chunk.exit_crit_edge, %if.end5.marvell_nfc_hw_ecc_bch_read_chunk.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nfc_op.i) #9
  %101 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %controller.i, align 4
  %regs.i207 = getelementptr inbounds %struct.marvell_nfc, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %regs.i207 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs.i207, align 4
  %add.ptr.i208 = getelementptr i8, ptr %104, i32 20
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i208) #9, !srcloc !226
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #9
  %and.i209 = and i32 %106, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i209)
  %tobool.not.i210 = icmp eq i32 %and.i209, 0
  br i1 %tobool.not.i210, label %if.end.i212, label %marvell_nfc_hw_ecc_check_bitflips.exit

if.end.i212:                                      ; preds = %marvell_nfc_hw_ecc_bch_read_chunk.exit
  %and5.i = and i32 %106, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i212._crit_edge, label %if.then7.i

if.end.i212._crit_edge:                           ; preds = %if.end.i212
  call void @__sanitizer_cov_trace_pc() #11
  br label %113

if.then7.i:                                       ; preds = %if.end.i212
  %107 = ptrtoint ptr %regs.i207 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i207, align 4
  %add.ptr9.i213 = getelementptr i8, ptr %108, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i213, i32 %105) #9, !srcloc !227
  %109 = ptrtoint ptr %algo.i214 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %algo.i214, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %110)
  %cmp.i215 = icmp eq i32 %110, 2
  br i1 %cmp.i215, label %if.then10.i216, label %if.then7.i._crit_edge

if.then7.i._crit_edge:                            ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %113

if.then10.i216:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i = lshr i32 %106, 16
  %and11.i = and i32 %shr.i, 31
  br label %113

marvell_nfc_hw_ecc_check_bitflips.exit:           ; preds = %marvell_nfc_hw_ecc_bch_read_chunk.exit
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %regs.i207 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs.i207, align 4
  %add.ptr4.i = getelementptr i8, ptr %112, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %105) #9, !srcloc !227
  %shl = shl nuw i32 1, %chunk.0247
  %or = or i32 %shl, %failure_mask.0246
  br label %for.cond

113:                                              ; preds = %if.then10.i216, %if.then7.i._crit_edge, %if.end.i212._crit_edge
  %bf.0.i = phi i32 [ %and11.i, %if.then10.i216 ], [ 0, %if.end.i212._crit_edge ], [ 1, %if.then7.i._crit_edge ]
  %114 = ptrtoint ptr %ecc_stats.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ecc_stats.i, align 4
  %add.i217 = add i32 %115, %bf.0.i
  store i32 %add.i217, ptr %ecc_stats.i, align 4
  %116 = tail call i32 @llvm.umax.i32(i32 %max_bitflips.0238, i32 %bf.0.i) #9
  br label %for.cond

for.cond:                                         ; preds = %113, %marvell_nfc_hw_ecc_check_bitflips.exit
  %max_bitflips.1235 = phi i32 [ %116, %113 ], [ %max_bitflips.0238, %marvell_nfc_hw_ecc_check_bitflips.exit ]
  %117 = phi i32 [ %failure_mask.0246, %113 ], [ %or, %marvell_nfc_hw_ecc_check_bitflips.exit ]
  %add.ptr = getelementptr i8, ptr %data.0241, i32 %data_len.1
  %add.ptr10 = getelementptr i8, ptr %spare.0244, i32 %spare_len.1
  %inc = add nuw nsw i32 %chunk.0247, 1
  %118 = ptrtoint ptr %nchunks to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %nchunks, align 4
  %cmp = icmp slt i32 %inc, %119
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %marvell_nfc_enable_hw_ecc.exit.for.end_crit_edge
  %max_bitflips.0.lcssa = phi i32 [ 0, %marvell_nfc_enable_hw_ecc.exit.for.end_crit_edge ], [ %max_bitflips.1235, %for.cond.for.end_crit_edge ]
  %failure_mask.0.lcssa = phi i32 [ 0, %marvell_nfc_enable_hw_ecc.exit.for.end_crit_edge ], [ %117, %for.cond.for.end_crit_edge ]
  %120 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %controller.i, align 4
  %regs.i219 = getelementptr inbounds %struct.marvell_nfc, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %regs.i219 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i219, align 4
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #9, !srcloc !226
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #9
  %and.i220 = and i32 %125, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i220)
  %tobool.not.i221 = icmp eq i32 %and.i220, 0
  br i1 %tobool.not.i221, label %for.end.marvell_nfc_disable_hw_ecc.exit_crit_edge, label %if.then.i224

for.end.marvell_nfc_disable_hw_ecc.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_disable_hw_ecc.exit

if.then.i224:                                     ; preds = %for.end
  %and2.i = and i32 %125, -1073741825
  %126 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #9
  %127 = ptrtoint ptr %regs.i219 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs.i219, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %126) #9, !srcloc !227
  %algo.i222 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %129 = ptrtoint ptr %algo.i222 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %algo.i222, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %130)
  %cmp.i223 = icmp eq i32 %130, 2
  br i1 %cmp.i223, label %if.then5.i, label %if.then.i224.marvell_nfc_disable_hw_ecc.exit_crit_edge

if.then.i224.marvell_nfc_disable_hw_ecc.exit_crit_edge: ; preds = %if.then.i224
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_disable_hw_ecc.exit

if.then5.i:                                       ; preds = %if.then.i224
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %regs.i219 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs.i219, align 4
  %add.ptr7.i = getelementptr i8, ptr %132, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 0) #9, !srcloc !227
  br label %marvell_nfc_disable_hw_ecc.exit

marvell_nfc_disable_hw_ecc.exit:                  ; preds = %if.then5.i, %if.then.i224.marvell_nfc_disable_hw_ecc.exit_crit_edge, %for.end.marvell_nfc_disable_hw_ecc.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %failure_mask.0.lcssa)
  %tobool11.not = icmp eq i32 %failure_mask.0.lcssa, 0
  br i1 %tobool11.not, label %marvell_nfc_disable_hw_ecc.exit.cleanup105_crit_edge, label %for.cond14.preheader

marvell_nfc_disable_hw_ecc.exit.cleanup105_crit_edge: ; preds = %marvell_nfc_disable_hw_ecc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup105

for.cond14.preheader:                             ; preds = %marvell_nfc_disable_hw_ecc.exit
  %133 = ptrtoint ptr %nchunks to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %nchunks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp16252 = icmp sgt i32 %134, 0
  br i1 %cmp16252, label %for.body17.lr.ph, label %for.cond14.preheader.cleanup105_crit_edge

for.cond14.preheader.cleanup105_crit_edge:        ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup105

for.body17.lr.ph:                                 ; preds = %for.cond14.preheader
  %ecc_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 7
  %full_chunk_cnt27 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 4
  %last_data_bytes30 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 8
  %last_spare_bytes37 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 9
  %last_ecc_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 10
  %strength = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 2
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %ecc_stats11.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %failed.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %for.body17

for.body17:                                       ; preds = %cleanup.for.body17_crit_edge, %for.body17.lr.ph
  %chunk.1254 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc103, %cleanup.for.body17_crit_edge ]
  %max_bitflips.2253 = phi i32 [ %max_bitflips.0.lcssa, %for.body17.lr.ph ], [ %max_bitflips.4, %cleanup.for.body17_crit_edge ]
  %shl20 = shl nuw i32 1, %chunk.1254
  %and = and i32 %shl20, %failure_mask.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %for.body17.cleanup_crit_edge, label %if.end23

for.body17.cleanup_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %for.body17
  %135 = ptrtoint ptr %data_bytes to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %data_bytes, align 4
  %137 = ptrtoint ptr %spare_bytes to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %spare_bytes, align 4
  %add = add i32 %138, %136
  %139 = ptrtoint ptr %ecc_bytes to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ecc_bytes, align 4
  %add26 = add i32 %add, %140
  %mul = mul i32 %add26, %chunk.1254
  %141 = ptrtoint ptr %full_chunk_cnt27 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %full_chunk_cnt27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chunk.1254, i32 %142)
  %cmp28 = icmp slt i32 %chunk.1254, %142
  br i1 %cmp28, label %if.end23.cond.end_crit_edge, label %cond.false

if.end23.cond.end_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %last_data_bytes30 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %last_data_bytes30, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end23.cond.end_crit_edge
  %cond39.in = phi ptr [ %spare_bytes, %if.end23.cond.end_crit_edge ], [ %last_spare_bytes37, %cond.false ]
  %cond = phi i32 [ %136, %if.end23.cond.end_crit_edge ], [ %144, %cond.false ]
  %add31 = add i32 %cond, %mul
  %145 = ptrtoint ptr %cond39.in to i32
  call void @__asan_load4_noabort(i32 %145)
  %cond39 = load i32, ptr %cond39.in, align 4
  %add40 = add i32 %add31, %cond39
  %mul42 = mul i32 %136, %chunk.1254
  %mul44 = mul i32 %138, %chunk.1254
  %mul47 = mul i32 %142, %138
  %146 = ptrtoint ptr %last_spare_bytes37 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %last_spare_bytes37, align 4
  %add51 = add i32 %140, 2
  %mul52 = mul i32 %add51, %chunk.1254
  %add49 = add i32 %mul52, %mul47
  %add53 = add i32 %add49, %147
  br i1 %cmp28, label %cond.end.cond.end60_crit_edge, label %cond.false58

cond.end.cond.end60_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end60

cond.false58:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %148 = ptrtoint ptr %last_data_bytes30 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %last_data_bytes30, align 4
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false58, %cond.end.cond.end60_crit_edge
  %cond76.in = phi ptr [ %ecc_bytes, %cond.end.cond.end60_crit_edge ], [ %last_ecc_bytes, %cond.false58 ]
  %cond61 = phi i32 [ %136, %cond.end.cond.end60_crit_edge ], [ %149, %cond.false58 ]
  %150 = ptrtoint ptr %cond76.in to i32
  call void @__asan_load4_noabort(i32 %150)
  %cond76 = load i32, ptr %cond76.in, align 4
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %152)
  %cmp77 = icmp eq i32 %152, 2048
  br i1 %cmp77, label %land.lhs.true, label %cond.end60.if.end85_crit_edge

cond.end60.if.end85_crit_edge:                    ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

land.lhs.true:                                    ; preds = %cond.end60
  %153 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %154)
  %cmp78 = icmp eq i32 %154, 8
  br i1 %cmp78, label %if.then79, label %land.lhs.true.if.end85_crit_edge

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then79:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr80 = getelementptr i8, ptr %buf, i32 %mul42
  %call81 = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %mul, ptr noundef %add.ptr80, i32 noundef %cond61, i1 noundef zeroext false) #9
  %155 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %oob_poi, align 4
  %add.ptr83 = getelementptr i8, ptr %156, i32 %mul44
  %call84 = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %add31, ptr noundef %add.ptr83, i32 noundef %cond39, i1 noundef zeroext false) #9
  br label %if.end85

if.end85:                                         ; preds = %if.then79, %land.lhs.true.if.end85_crit_edge, %cond.end60.if.end85_crit_edge
  %157 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %oob_poi, align 4
  %add.ptr87 = getelementptr i8, ptr %158, i32 %add53
  %call88 = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %add40, ptr noundef %add.ptr87, i32 noundef %cond76, i1 noundef zeroext false) #9
  %add.ptr89 = getelementptr i8, ptr %buf, i32 %mul42
  %159 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %oob_poi, align 4
  %add.ptr91 = getelementptr i8, ptr %160, i32 %mul44
  %add.ptr93 = getelementptr i8, ptr %160, i32 %add53
  %tobool.not.i225 = icmp eq ptr %add.ptr89, null
  %spec.select.i = select i1 %tobool.not.i225, i32 0, i32 %cond61
  %tobool1.not.i = icmp eq ptr %add.ptr91, null
  %spare_len.addr.0.i = select i1 %tobool1.not.i, i32 0, i32 %cond39
  %tobool4.not.i = icmp eq ptr %add.ptr93, null
  %ecc_len.addr.0.i = select i1 %tobool4.not.i, i32 0, i32 %cond76
  %161 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %strength.i, align 4
  %call8.i = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef %add.ptr89, i32 noundef %spec.select.i, ptr noundef %add.ptr93, i32 noundef %ecc_len.addr.0.i, ptr noundef %add.ptr91, i32 noundef %spare_len.addr.0.i, i32 noundef %162) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i226 = icmp slt i32 %call8.i, 0
  br i1 %cmp.i226, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %163 = ptrtoint ptr %failed.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %failed.i, align 4
  %inc.i = add i32 %164, 1
  store i32 %inc.i, ptr %failed.i, align 4
  br label %cleanup

if.end10.i:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %165 = ptrtoint ptr %ecc_stats11.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %ecc_stats11.i, align 4
  %add.i227 = add i32 %166, %call8.i
  store i32 %add.i227, ptr %ecc_stats11.i, align 4
  %167 = tail call i32 @llvm.umax.i32(i32 %max_bitflips.2253, i32 %call8.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end10.i, %if.then9.i, %for.body17.cleanup_crit_edge
  %max_bitflips.4 = phi i32 [ %max_bitflips.2253, %for.body17.cleanup_crit_edge ], [ %max_bitflips.2253, %if.then9.i ], [ %167, %if.end10.i ]
  %inc103 = add nuw nsw i32 %chunk.1254, 1
  %168 = ptrtoint ptr %nchunks to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %nchunks, align 4
  %cmp16 = icmp slt i32 %inc103, %169
  br i1 %cmp16, label %cleanup.for.body17_crit_edge, label %cleanup.cleanup105_crit_edge

cleanup.cleanup105_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup105

cleanup.for.body17_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17

cleanup105:                                       ; preds = %cleanup.cleanup105_crit_edge, %for.cond14.preheader.cleanup105_crit_edge, %marvell_nfc_disable_hw_ecc.exit.cleanup105_crit_edge
  %max_bitflips.5 = phi i32 [ %max_bitflips.0.lcssa, %marvell_nfc_disable_hw_ecc.exit.cleanup105_crit_edge ], [ %max_bitflips.0.lcssa, %for.cond14.preheader.cleanup105_crit_edge ], [ %max_bitflips.4, %cleanup.cleanup105_crit_edge ]
  ret i32 %max_bitflips.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_bch_read_oob_raw(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %page.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 24, i32 1
  %0 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %page.i, align 4
  %data_buf.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 22
  %1 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data_buf.i, align 8
  %read_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 16
  %3 = ptrtoint ptr %read_page_raw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_page_raw, align 8
  %call1 = tail call i32 %4(ptr noundef %chip, ptr noundef %2, i32 noundef 1, i32 noundef %page) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_bch_read_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %page.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 24, i32 1
  %0 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %page.i, align 4
  %data_buf.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 22
  %1 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data_buf.i, align 8
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %3 = ptrtoint ptr %read_page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_page, align 8
  %call1 = tail call i32 %4(ptr noundef %chip, ptr noundef %2, i32 noundef 1, i32 noundef %page) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_bch_write_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %layout = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout, align 8
  %data_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %data_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_bytes, align 4
  %spare_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %spare_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spare_bytes, align 4
  %add = add i32 %5, %3
  %ecc_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %ecc_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ecc_bytes, align 4
  %add1 = add i32 %add, %7
  %full_chunk_cnt = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %full_chunk_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %full_chunk_cnt, align 4
  %mul = mul i32 %9, %5
  %last_spare_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %last_spare_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_spare_bytes, align 4
  %add6 = add i32 %mul, %11
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %12 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_cs, align 4
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %14 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %controller.i, align 4
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !226
  %19 = and i32 %18, -8388638
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %ndcr.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 3
  %21 = ptrtoint ptr %ndcr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ndcr.i, align 4
  %or.i = or i32 %20, %22
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #9, !srcloc !227
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 20
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !226
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %30, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 -15794176) #9, !srcloc !227
  %selected_chip.i = getelementptr inbounds %struct.marvell_nfc, ptr %15, i32 0, i32 8
  %31 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %selected_chip.i, align 4
  %cmp.i = icmp eq ptr %32, %chip
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %selected_die.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %33 = ptrtoint ptr %selected_die.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %selected_die.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %13)
  %cmp7.i = icmp eq i32 %34, %13
  br i1 %cmp7.i, label %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_select_target.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %ndtr0.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 4
  %35 = ptrtoint ptr %ndtr0.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ndtr0.i, align 8
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %37) #9, !srcloc !227
  %ndtr1.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 5
  %40 = ptrtoint ptr %ndtr1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ndtr1.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %44, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %42) #9, !srcloc !227
  %45 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %chip, ptr %selected_chip.i, align 4
  %selected_die13.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %46 = ptrtoint ptr %selected_die13.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %13, ptr %selected_die13.i, align 4
  br label %marvell_nfc_select_target.exit

marvell_nfc_select_target.exit:                   ; preds = %if.end.i, %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge
  %call7 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  %nchunks = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %nchunks to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nchunks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp67 = icmp sgt i32 %48, 0
  br i1 %cmp67, label %for.body.lr.ph, label %marvell_nfc_select_target.exit.for.end_crit_edge

marvell_nfc_select_target.exit.for.end_crit_edge: ; preds = %marvell_nfc_select_target.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %marvell_nfc_select_target.exit
  %last_data_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 8
  %last_ecc_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %chunk.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ecc_offset.072 = phi i32 [ %add6, %for.body.lr.ph ], [ %ecc_offset.1, %for.inc.for.body_crit_edge ]
  %spare_offset.071 = phi i32 [ 0, %for.body.lr.ph ], [ %spare_offset.1, %for.inc.for.body_crit_edge ]
  %ecc_len.070 = phi i32 [ %7, %for.body.lr.ph ], [ %ecc_len.1, %for.inc.for.body_crit_edge ]
  %spare_len.069 = phi i32 [ %5, %for.body.lr.ph ], [ %spare_len.1, %for.inc.for.body_crit_edge ]
  %data_len.068 = phi i32 [ %3, %for.body.lr.ph ], [ %data_len.1, %for.inc.for.body_crit_edge ]
  %49 = ptrtoint ptr %full_chunk_cnt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %full_chunk_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chunk.073, i32 %50)
  %cmp9.not = icmp slt i32 %chunk.073, %50
  br i1 %cmp9.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %last_data_bytes to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %last_data_bytes, align 4
  %53 = ptrtoint ptr %last_spare_bytes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %last_spare_bytes, align 4
  %55 = ptrtoint ptr %last_ecc_bytes to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %last_ecc_bytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %data_len.1 = phi i32 [ %52, %if.then ], [ %data_len.068, %for.body.if.end_crit_edge ]
  %spare_len.1 = phi i32 [ %54, %if.then ], [ %spare_len.069, %for.body.if.end_crit_edge ]
  %ecc_len.1 = phi i32 [ %56, %if.then ], [ %ecc_len.070, %for.body.if.end_crit_edge ]
  %mul11 = mul i32 %chunk.073, %add1
  %call12 = tail call i32 @nand_change_write_column_op(ptr noundef %chip, i32 noundef %mul11, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #9
  %57 = ptrtoint ptr %data_bytes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data_bytes, align 4
  %mul14 = mul i32 %58, %chunk.073
  %add.ptr = getelementptr i8, ptr %buf, i32 %mul14
  %call15 = tail call i32 @nand_write_data_op(ptr noundef %chip, ptr noundef %add.ptr, i32 noundef %data_len.1, i1 noundef zeroext false) #9
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.end17

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spare_len.1)
  %tobool18.not = icmp eq i32 %spare_len.1, 0
  br i1 %tobool18.not, label %if.end17.if.end22_crit_edge, label %if.then19

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %oob_poi, align 4
  %add.ptr20 = getelementptr i8, ptr %60, i32 %spare_offset.071
  %call21 = tail call i32 @nand_write_data_op(ptr noundef %chip, ptr noundef %add.ptr20, i32 noundef %spare_len.1, i1 noundef zeroext false) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end17.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ecc_len.1)
  %tobool23.not = icmp eq i32 %ecc_len.1, 0
  br i1 %tobool23.not, label %if.end22.if.end28_crit_edge, label %if.then24

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %oob_poi, align 4
  %add.ptr26 = getelementptr i8, ptr %62, i32 %ecc_offset.072
  %call27 = tail call i32 @nand_write_data_op(ptr noundef %chip, ptr noundef %add.ptr26, i32 noundef %ecc_len.1, i1 noundef zeroext false) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end22.if.end28_crit_edge
  %add29 = add i32 %spare_len.1, %spare_offset.071
  %add30 = add i32 %ecc_len.1, 31
  %and = and i32 %add30, -32
  %add31 = add i32 %and, %ecc_offset.072
  br label %for.inc

for.inc:                                          ; preds = %if.end28, %if.end.for.inc_crit_edge
  %spare_offset.1 = phi i32 [ %add29, %if.end28 ], [ %spare_offset.071, %if.end.for.inc_crit_edge ]
  %ecc_offset.1 = phi i32 [ %add31, %if.end28 ], [ %ecc_offset.072, %if.end.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %chunk.073, 1
  %63 = ptrtoint ptr %nchunks to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nchunks, align 4
  %cmp = icmp slt i32 %inc, %64
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %marvell_nfc_select_target.exit.for.end_crit_edge
  %call32 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #9
  ret i32 %call32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_bch_write_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  %nfc_op.i = alloca %struct.marvell_nfc_op, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_interface_config.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %current_interface_config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_interface_config.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  %4 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1
  %retval.0.i = select i1 %cmp.i.i, ptr %4, ptr inttoptr (i32 -22 to ptr)
  %layout = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 2
  %5 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %layout, align 8
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %7 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %oob_poi, align 4
  %data_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 5
  %9 = ptrtoint ptr %data_bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_bytes, align 4
  %spare_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 6
  %11 = ptrtoint ptr %spare_bytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %spare_bytes, align 4
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %13 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_cs, align 4
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %15 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %controller.i, align 4
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !226
  %20 = and i32 %19, -8388638
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  %ndcr.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 3
  %22 = ptrtoint ptr %ndcr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ndcr.i, align 4
  %or.i = or i32 %21, %23
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #9, !srcloc !227
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 20
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !226
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %31, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 -15794176) #9, !srcloc !227
  %selected_chip.i = getelementptr inbounds %struct.marvell_nfc, ptr %16, i32 0, i32 8
  %32 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %selected_chip.i, align 4
  %cmp.i = icmp eq ptr %33, %chip
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %selected_die.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %34 = ptrtoint ptr %selected_die.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %selected_die.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %14)
  %cmp7.i = icmp eq i32 %35, %14
  br i1 %cmp7.i, label %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_select_target.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %ndtr0.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 4
  %36 = ptrtoint ptr %ndtr0.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ndtr0.i, align 8
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %38) #9, !srcloc !227
  %ndtr1.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 5
  %41 = ptrtoint ptr %ndtr1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ndtr1.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %45, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %43) #9, !srcloc !227
  %46 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %chip, ptr %selected_chip.i, align 4
  %selected_die13.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %47 = ptrtoint ptr %selected_die13.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %14, ptr %selected_die13.i, align 4
  br label %marvell_nfc_select_target.exit

marvell_nfc_select_target.exit:                   ; preds = %if.end.i, %land.lhs.true.i.marvell_nfc_select_target.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  br i1 %tobool.not, label %if.then, label %marvell_nfc_select_target.exit.if.end_crit_edge

marvell_nfc_select_target.exit.if.end_crit_edge:  ; preds = %marvell_nfc_select_target.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %marvell_nfc_select_target.exit
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %50 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %oobsize, align 4
  %52 = call ptr @memset(ptr %49, i32 255, i32 %51)
  br label %if.end

if.end:                                           ; preds = %if.then, %marvell_nfc_select_target.exit.if.end_crit_edge
  %53 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %controller.i, align 4
  %regs.i319 = getelementptr inbounds %struct.marvell_nfc, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %regs.i319 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i319, align 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #9, !srcloc !226
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #9
  %and.i = and i32 %58, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.marvell_nfc_enable_hw_ecc.exit_crit_edge

if.end.marvell_nfc_enable_hw_ecc.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_enable_hw_ecc.exit

if.then.i:                                        ; preds = %if.end
  %or.i320 = or i32 %58, 1073741824
  %59 = tail call i32 @llvm.bswap.i32(i32 %or.i320) #9
  %60 = ptrtoint ptr %regs.i319 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i319, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #9, !srcloc !227
  %algo.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %62 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %algo.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp.i321 = icmp eq i32 %63, 2
  br i1 %cmp.i321, label %if.then4.i, label %if.then.i.marvell_nfc_enable_hw_ecc.exit_crit_edge

if.then.i.marvell_nfc_enable_hw_ecc.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_enable_hw_ecc.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %regs.i319 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i319, align 4
  %add.ptr6.i = getelementptr i8, ptr %65, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 16777216) #9, !srcloc !227
  br label %marvell_nfc_enable_hw_ecc.exit

marvell_nfc_enable_hw_ecc.exit:                   ; preds = %if.then4.i, %if.then.i.marvell_nfc_enable_hw_ecc.exit_crit_edge, %if.end.marvell_nfc_enable_hw_ecc.exit_crit_edge
  %nchunks = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 3
  %66 = ptrtoint ptr %nchunks to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nchunks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp339 = icmp sgt i32 %67, 0
  br i1 %cmp339, label %for.body.lr.ph, label %marvell_nfc_enable_hw_ecc.exit.if.end196_crit_edge

marvell_nfc_enable_hw_ecc.exit.if.end196_crit_edge: ; preds = %marvell_nfc_enable_hw_ecc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

for.body.lr.ph:                                   ; preds = %marvell_nfc_enable_hw_ecc.exit
  %full_chunk_cnt = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 4
  %last_data_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 8
  %last_spare_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %6, i32 0, i32 9
  %arrayinit.element4.i = getelementptr inbounds i32, ptr %nfc_op.i, i32 3
  %addr_cyc.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 6
  %shl12.i = shl i32 %page, 16
  %arrayidx14.i = getelementptr inbounds [4 x i32], ptr %nfc_op.i, i32 0, i32 1
  %68 = lshr i32 %page, 16
  %and16.i = and i32 %68, 255
  %arrayidx19.i = getelementptr inbounds [4 x i32], ptr %nfc_op.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %marvell_nfc_wait_ndrun.exit.for.body_crit_edge, %for.body.lr.ph
  %chunk.0346 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %marvell_nfc_wait_ndrun.exit.for.body_crit_edge ]
  %spare_len.0345 = phi i32 [ %12, %for.body.lr.ph ], [ %spare_len.1, %marvell_nfc_wait_ndrun.exit.for.body_crit_edge ]
  %data_len.0344 = phi i32 [ %10, %for.body.lr.ph ], [ %data_len.1, %marvell_nfc_wait_ndrun.exit.for.body_crit_edge ]
  %spare.0342 = phi ptr [ %8, %for.body.lr.ph ], [ %add.ptr9, %marvell_nfc_wait_ndrun.exit.for.body_crit_edge ]
  %data.0340 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr, %marvell_nfc_wait_ndrun.exit.for.body_crit_edge ]
  %69 = ptrtoint ptr %full_chunk_cnt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %full_chunk_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chunk.0346, i32 %70)
  %cmp5.not = icmp slt i32 %chunk.0346, %70
  br i1 %cmp5.not, label %for.body.if.end7_crit_edge, label %if.then6

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %last_data_bytes to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %last_data_bytes, align 4
  %73 = ptrtoint ptr %last_spare_bytes to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %last_spare_bytes, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %for.body.if.end7_crit_edge
  %data_len.1 = phi i32 [ %72, %if.then6 ], [ %data_len.0344, %for.body.if.end7_crit_edge ]
  %spare_len.1 = phi i32 [ %74, %if.then6 ], [ %spare_len.0345, %for.body.if.end7_crit_edge ]
  %75 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %controller.i, align 4
  %77 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %layout, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nfc_op.i) #9
  %79 = call ptr @memset(ptr %nfc_op.i, i32 0, i32 40)
  %add.i = add i32 %spare_len.1, %data_len.1
  %80 = ptrtoint ptr %arrayinit.element4.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add.i, ptr %arrayinit.element4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chunk.0346)
  %cmp.i323 = icmp eq i32 %chunk.0346, 0
  %nchunks.i = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %78, i32 0, i32 3
  %81 = ptrtoint ptr %nchunks.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nchunks.i, align 4
  br i1 %cmp.i323, label %if.then.i325, label %if.else21.i

if.then.i325:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp5.i = icmp eq i32 %82, 1
  %83 = ptrtoint ptr %addr_cyc.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %addr_cyc.i, align 8
  %and7.i = shl i32 %84, 16
  %shl8.i = and i32 %and7.i, 458752
  %or.i324 = select i1 %cmp5.i, i32 270532736, i32 -1876950912
  %or11.i = or i32 %shl8.i, %or.i324
  %85 = ptrtoint ptr %nfc_op.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or11.i, ptr %nfc_op.i, align 4
  %86 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx14.i, align 4
  %or15.i = or i32 %87, %shl12.i
  store i32 %or15.i, ptr %arrayidx14.i, align 4
  %88 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx19.i, align 4
  %or20.i = or i32 %89, %and16.i
  store i32 %or20.i, ptr %arrayidx19.i, align 4
  %.pre = add i32 %82, -1
  br label %if.end33.i

if.else21.i:                                      ; preds = %if.end7
  %sub.i = add i32 %82, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %chunk.0346)
  %cmp23.i = icmp sgt i32 %sub.i, %chunk.0346
  br i1 %cmp23.i, label %if.then24.i, label %if.else28.i

if.then24.i:                                      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %nfc_op.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1340080128, ptr %nfc_op.i, align 4
  br label %if.end33.i

if.else28.i:                                      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %nfc_op.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 807403520, ptr %nfc_op.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else28.i, %if.then24.i, %if.then.i325
  %sub35.i.pre-phi = phi i32 [ %sub.i, %if.else28.i ], [ %sub.i, %if.then24.i ], [ %.pre, %if.then.i325 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub35.i.pre-phi, i32 %chunk.0346)
  %cmp36.i = icmp eq i32 %sub35.i.pre-phi, %chunk.0346
  br i1 %cmp36.i, label %if.then37.i, label %if.end33.i.if.end41.i_crit_edge

if.end33.i.if.end41.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i

if.then37.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %nfc_op.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nfc_op.i, align 4
  %or40.i = or i32 %93, 528384
  store i32 %or40.i, ptr %nfc_op.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then37.i, %if.end33.i.if.end41.i_crit_edge
  %call42.i = tail call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool.not.i326 = icmp eq i32 %call42.i, 0
  br i1 %tobool.not.i326, label %if.end44.i, label %if.end41.i.marvell_nfc_hw_ecc_bch_write_chunk.exit_crit_edge

if.end41.i.marvell_nfc_hw_ecc_bch_write_chunk.exit_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_hw_ecc_bch_write_chunk.exit

if.end44.i:                                       ; preds = %if.end41.i
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %chip, ptr noundef nonnull %nfc_op.i) #9
  %call45.i = tail call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %chip, i32 noundef 4, ptr noundef nonnull @.str.49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %if.end44.i.marvell_nfc_hw_ecc_bch_write_chunk.exit_crit_edge

if.end44.i.marvell_nfc_hw_ecc_bch_write_chunk.exit_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_hw_ecc_bch_write_chunk.exit

if.end48.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  %regs.i327 = getelementptr inbounds %struct.marvell_nfc, ptr %76, i32 0, i32 2
  %94 = ptrtoint ptr %regs.i327 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i327, align 4
  %add.ptr.i = getelementptr i8, ptr %95, i32 64
  %div1.i = lshr i32 %data_len.1, 2
  tail call void @__raw_writesl(ptr noundef %add.ptr.i, ptr noundef %data.0340, i32 noundef %div1.i) #9
  %96 = ptrtoint ptr %regs.i327 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i327, align 4
  %add.ptr50.i = getelementptr i8, ptr %97, i32 64
  %div512.i = lshr i32 %spare_len.1, 2
  tail call void @__raw_writesl(ptr noundef %add.ptr50.i, ptr noundef %spare.0342, i32 noundef %div512.i) #9
  br label %marvell_nfc_hw_ecc_bch_write_chunk.exit

marvell_nfc_hw_ecc_bch_write_chunk.exit:          ; preds = %if.end48.i, %if.end44.i.marvell_nfc_hw_ecc_bch_write_chunk.exit_crit_edge, %if.end41.i.marvell_nfc_hw_ecc_bch_write_chunk.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nfc_op.i) #9
  %add.ptr = getelementptr i8, ptr %data.0340, i32 %data_len.1
  %add.ptr9 = getelementptr i8, ptr %spare.0342, i32 %spare_len.1
  %98 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %controller.i, align 4
  %call1.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call1.i, 100000000
  %regs.i329 = getelementptr inbounds %struct.marvell_nfc, ptr %99, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i330.for.cond.i_crit_edge, %marvell_nfc_hw_ecc_bch_write_chunk.exit
  %100 = ptrtoint ptr %regs.i329 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs.i329, align 4
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #9, !srcloc !226
  %103 = and i32 %102, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp10.i = icmp eq i32 %103, 0
  br i1 %cmp10.i, label %for.cond.i.marvell_nfc_wait_ndrun.exit_crit_edge, label %land.lhs.true.i330

for.cond.i.marvell_nfc_wait_ndrun.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_wait_ndrun.exit

land.lhs.true.i330:                               ; preds = %for.cond.i
  %call13.i = tail call i64 @ktime_get() #9
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i330.for.cond.i_crit_edge

land.lhs.true.i330.for.cond.i_crit_edge:          ; preds = %land.lhs.true.i330
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i330
  %104 = ptrtoint ptr %regs.i329 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs.i329, align 4
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #9, !srcloc !226
  %107 = and i32 %106, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %phi.cmp.i = icmp eq i32 %107, 0
  br i1 %phi.cmp.i, label %for.end.i.marvell_nfc_wait_ndrun.exit_crit_edge, label %do.end33.i

for.end.i.marvell_nfc_wait_ndrun.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_wait_ndrun.exit

do.end33.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.marvell_nfc, ptr %99, i32 0, i32 1
  %108 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.36) #12
  %110 = ptrtoint ptr %regs.i329 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs.i329, align 4
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !233
  %113 = and i32 %112, -17
  %114 = ptrtoint ptr %regs.i329 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs.i329, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %113) #9, !srcloc !227
  br label %marvell_nfc_wait_ndrun.exit

marvell_nfc_wait_ndrun.exit:                      ; preds = %do.end33.i, %for.end.i.marvell_nfc_wait_ndrun.exit_crit_edge, %for.cond.i.marvell_nfc_wait_ndrun.exit_crit_edge
  %inc = add nuw nsw i32 %chunk.0346, 1
  %116 = ptrtoint ptr %nchunks to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %nchunks, align 4
  %cmp = icmp slt i32 %inc, %117
  br i1 %cmp, label %marvell_nfc_wait_ndrun.exit.for.body_crit_edge, label %marvell_nfc_wait_ndrun.exit.if.end196_crit_edge

marvell_nfc_wait_ndrun.exit.if.end196_crit_edge:  ; preds = %marvell_nfc_wait_ndrun.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

marvell_nfc_wait_ndrun.exit.for.body_crit_edge:   ; preds = %marvell_nfc_wait_ndrun.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end196:                                        ; preds = %marvell_nfc_wait_ndrun.exit.if.end196_crit_edge, %marvell_nfc_enable_hw_ecc.exit.if.end196_crit_edge
  %tPROG_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 2
  %118 = ptrtoint ptr %tPROG_max to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %tPROG_max, align 8
  %sub = add i64 %119, 999999999
  %120 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %sub, i32 0) #14, !srcloc !230
  %asmresult.i = extractvalue { i64, i32 } %120, 0
  %asmresult4.i = extractvalue { i64, i32 } %120, 1
  %121 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %sub, i64 %asmresult.i, i32 %asmresult4.i) #14, !srcloc !231
  %asmresult10.i = extractvalue { i64, i32 } %121, 0
  %extract316 = lshr i64 %asmresult10.i, 29
  %extract.t317 = trunc i64 %extract316 to i32
  %call200 = tail call fastcc i32 @marvell_nfc_wait_op(ptr noundef %chip, i32 noundef %extract.t317)
  %122 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %controller.i, align 4
  %regs.i333 = getelementptr inbounds %struct.marvell_nfc, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %regs.i333 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs.i333, align 4
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #9, !srcloc !226
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #9
  %and.i334 = and i32 %127, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i334)
  %tobool.not.i335 = icmp eq i32 %and.i334, 0
  br i1 %tobool.not.i335, label %if.end196.marvell_nfc_disable_hw_ecc.exit_crit_edge, label %if.then.i338

if.end196.marvell_nfc_disable_hw_ecc.exit_crit_edge: ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_disable_hw_ecc.exit

if.then.i338:                                     ; preds = %if.end196
  %and2.i = and i32 %127, -1073741825
  %128 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #9
  %129 = ptrtoint ptr %regs.i333 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regs.i333, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #9, !srcloc !227
  %algo.i336 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %131 = ptrtoint ptr %algo.i336 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %algo.i336, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %132)
  %cmp.i337 = icmp eq i32 %132, 2
  br i1 %cmp.i337, label %if.then5.i, label %if.then.i338.marvell_nfc_disable_hw_ecc.exit_crit_edge

if.then.i338.marvell_nfc_disable_hw_ecc.exit_crit_edge: ; preds = %if.then.i338
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_disable_hw_ecc.exit

if.then5.i:                                       ; preds = %if.then.i338
  call void @__sanitizer_cov_trace_pc() #11
  %133 = ptrtoint ptr %regs.i333 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regs.i333, align 4
  %add.ptr7.i = getelementptr i8, ptr %134, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 0) #9, !srcloc !227
  br label %marvell_nfc_disable_hw_ecc.exit

marvell_nfc_disable_hw_ecc.exit:                  ; preds = %if.then5.i, %if.then.i338.marvell_nfc_disable_hw_ecc.exit_crit_edge, %if.end196.marvell_nfc_disable_hw_ecc.exit_crit_edge
  ret i32 %call200
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_bch_write_oob_raw(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %page.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 24, i32 1
  %0 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %page.i, align 4
  %data_buf.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 22
  %1 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data_buf.i, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %3 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %writesize, align 4
  %5 = call ptr @memset(ptr %2, i32 255, i32 %4)
  %write_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 17
  %6 = ptrtoint ptr %write_page_raw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_page_raw, align 4
  %call2 = tail call i32 %7(ptr noundef %chip, ptr noundef %2, i32 noundef 1, i32 noundef %page) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_hw_ecc_bch_write_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %page.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 24, i32 1
  %0 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %page.i, align 4
  %data_buf.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 22
  %1 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data_buf.i, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %3 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %writesize, align 4
  %5 = call ptr @memset(ptr %2, i32 255, i32 %4)
  %write_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %6 = ptrtoint ptr %write_page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_page, align 4
  %call2 = tail call i32 %7(ptr noundef %chip, ptr noundef %2, i32 noundef 1, i32 noundef %page) #9
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @marvell_nand_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %layout = getelementptr inbounds %struct.marvell_nand_chip, ptr %mtd, i32 0, i32 2
  %0 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout, align 8
  %full_chunk_cnt = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %full_chunk_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %full_chunk_cnt, align 4
  %ecc_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %ecc_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ecc_bytes, align 4
  %mul = mul i32 %5, %3
  %last_ecc_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %last_ecc_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_ecc_bytes, align 4
  %add = add i32 %mul, %7
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %length, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %9 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oobsize, align 4
  %sub = sub i32 %10, %add
  %11 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %oobregion, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @marvell_nand_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef %oobregion) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %layout = getelementptr inbounds %struct.marvell_nand_chip, ptr %mtd, i32 0, i32 2
  %0 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %3)
  %cmp = icmp eq i32 %3, 4096
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %data_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %data_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %5)
  %cmp2 = icmp eq i32 %5, 2048
  br i1 %cmp2, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  br label %if.end5

if.end5:                                          ; preds = %if.else, %land.lhs.true.if.end5_crit_edge
  %storemerge = phi i32 [ 2, %if.else ], [ 6, %land.lhs.true.if.end5_crit_edge ]
  %6 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge, ptr %oobregion, align 4
  %full_chunk_cnt = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %full_chunk_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %full_chunk_cnt, align 4
  %spare_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %spare_bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %spare_bytes, align 4
  %mul = mul i32 %10, %8
  %last_spare_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %last_spare_bytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last_spare_bytes, align 4
  %add = sub i32 %12, %storemerge
  %sub = add i32 %add, %mul
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %13 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @marvell_nfc_hw_ecc_hmg_do_read_page(ptr nocapture noundef readonly %chip, ptr noundef %data_buf, ptr noundef %oob_buf, i1 noundef zeroext %raw, i32 noundef %page) unnamed_addr #2 align 64 {
entry:
  %tmp_buf.i65 = alloca [8 x i8], align 8
  %tmp_buf.i = alloca [8 x i8], align 8
  %nfc_op = alloca %struct.marvell_nfc_op, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %layout = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layout, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nfc_op) #9
  %addr_cyc = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 6
  %4 = ptrtoint ptr %addr_cyc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr_cyc, align 8
  %and = shl i32 %5, 16
  %shl = and i32 %and, 458752
  %or5 = or i32 %shl, 536576
  %6 = ptrtoint ptr %nfc_op to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or5, ptr %nfc_op, align 4
  %arrayinit.element = getelementptr inbounds i32, ptr %nfc_op, i32 1
  %shl6 = shl i32 %page, 16
  %7 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl6, ptr %arrayinit.element, align 4
  %arrayinit.element7 = getelementptr inbounds i32, ptr %nfc_op, i32 2
  %8 = lshr i32 %page, 16
  %and8 = and i32 %8, 255
  %9 = ptrtoint ptr %arrayinit.element7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and8, ptr %arrayinit.element7, align 4
  %arrayinit.cur.ptr = getelementptr inbounds i32, ptr %nfc_op, i32 3
  %spare_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %3, i32 0, i32 6
  %10 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 28)
  %11 = ptrtoint ptr %spare_bytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %spare_bytes, align 4
  br i1 %raw, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ecc_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %ecc_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ecc_bytes, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %14, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %add = add i32 %cond, %12
  %call14 = tail call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %cond.end
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %chip, ptr noundef nonnull %nfc_op)
  %call18 = tail call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %chip, i32 noundef 2, ptr noundef nonnull @.str.30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %use_dma = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %use_dma, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool22.not = icmp eq i8 %16, 0
  %data_bytes29 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %data_bytes29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_bytes29, align 4
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %add24 = add i32 %18, %add
  tail call fastcc void @marvell_nfc_xfer_data_dma(ptr noundef %1, i32 noundef 2, i32 noundef %add24)
  %dma_buf = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_buf, align 4
  %21 = ptrtoint ptr %data_bytes29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_bytes29, align 4
  %23 = call ptr @memcpy(ptr %data_buf, ptr %20, i32 %22)
  %24 = load ptr, ptr %dma_buf, align 4
  %25 = load i32, ptr %data_bytes29, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 %25
  %26 = call ptr @memcpy(ptr %oob_buf, ptr %add.ptr, i32 %add)
  br label %if.end32

if.else:                                          ; preds = %if.end21
  %rem.i = and i32 %18, 7
  %and.i = and i32 %18, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.not.i, label %if.else.for.end.i_crit_edge, label %for.body.lr.ph.i

if.else.for.end.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.else
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 64
  %add.ptr1.i = getelementptr i8, ptr %data_buf, i32 %i.02.i
  tail call void @__raw_readsl(ptr noundef %add.ptr.i, ptr noundef %add.ptr1.i, i32 noundef 2) #9
  %add.i = add nuw i32 %i.02.i, 8
  %cmp.i = icmp ult i32 %add.i, %and.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.else.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %for.end.i.marvell_nfc_xfer_data_in_pio.exit_crit_edge, label %if.then.i

for.end.i.marvell_nfc_xfer_data_in_pio.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_xfer_data_in_pio.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_buf.i) #9
  %regs2.i = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %tmp_buf.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 -1, ptr %tmp_buf.i, align 8
  %30 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %31, i32 64
  call void @__raw_readsl(ptr noundef %add.ptr3.i, ptr noundef nonnull %tmp_buf.i, i32 noundef 2) #9
  %add.ptr4.i = getelementptr i8, ptr %data_buf, i32 %and.i
  %32 = call ptr @memcpy(ptr %add.ptr4.i, ptr %tmp_buf.i, i32 %rem.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_buf.i) #9
  br label %marvell_nfc_xfer_data_in_pio.exit

marvell_nfc_xfer_data_in_pio.exit:                ; preds = %if.then.i, %for.end.i.marvell_nfc_xfer_data_in_pio.exit_crit_edge
  %rem.i66 = and i32 %add, 7
  %and.i67 = and i32 %add, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67)
  %cmp1.not.i68 = icmp eq i32 %and.i67, 0
  br i1 %cmp1.not.i68, label %marvell_nfc_xfer_data_in_pio.exit.for.end.i78_crit_edge, label %for.body.lr.ph.i70

marvell_nfc_xfer_data_in_pio.exit.for.end.i78_crit_edge: ; preds = %marvell_nfc_xfer_data_in_pio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i78

for.body.lr.ph.i70:                               ; preds = %marvell_nfc_xfer_data_in_pio.exit
  %regs.i69 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  br label %for.body.i76

for.body.i76:                                     ; preds = %for.body.i76.for.body.i76_crit_edge, %for.body.lr.ph.i70
  %i.02.i71 = phi i32 [ 0, %for.body.lr.ph.i70 ], [ %add.i74, %for.body.i76.for.body.i76_crit_edge ]
  %33 = ptrtoint ptr %regs.i69 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i69, align 4
  %add.ptr.i72 = getelementptr i8, ptr %34, i32 64
  %add.ptr1.i73 = getelementptr i8, ptr %oob_buf, i32 %i.02.i71
  call void @__raw_readsl(ptr noundef %add.ptr.i72, ptr noundef %add.ptr1.i73, i32 noundef 2) #9
  %add.i74 = add nuw i32 %i.02.i71, 8
  %cmp.i75 = icmp ult i32 %add.i74, %and.i67
  br i1 %cmp.i75, label %for.body.i76.for.body.i76_crit_edge, label %for.body.i76.for.end.i78_crit_edge

for.body.i76.for.end.i78_crit_edge:               ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i78

for.body.i76.for.body.i76_crit_edge:              ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i76

for.end.i78:                                      ; preds = %for.body.i76.for.end.i78_crit_edge, %marvell_nfc_xfer_data_in_pio.exit.for.end.i78_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i66)
  %tobool.not.i77 = icmp eq i32 %rem.i66, 0
  br i1 %tobool.not.i77, label %for.end.i78.if.end32_crit_edge, label %if.then.i82

for.end.i78.if.end32_crit_edge:                   ; preds = %for.end.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then.i82:                                      ; preds = %for.end.i78
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_buf.i65) #9
  %regs2.i79 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %tmp_buf.i65 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 -1, ptr %tmp_buf.i65, align 8
  %36 = ptrtoint ptr %regs2.i79 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs2.i79, align 4
  %add.ptr3.i80 = getelementptr i8, ptr %37, i32 64
  call void @__raw_readsl(ptr noundef %add.ptr3.i80, ptr noundef nonnull %tmp_buf.i65, i32 noundef 2) #9
  %add.ptr4.i81 = getelementptr i8, ptr %oob_buf, i32 %and.i67
  %38 = call ptr @memcpy(ptr %add.ptr4.i81, ptr %tmp_buf.i65, i32 %rem.i66)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_buf.i65) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then.i82, %for.end.i78.if.end32_crit_edge, %if.then23
  %selected_die.i.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %39 = ptrtoint ptr %selected_die.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %selected_die.i.i, align 4
  %ndcb0_csel.i = getelementptr %struct.marvell_nand_chip, ptr %chip, i32 0, i32 9, i32 %40, i32 1
  %41 = ptrtoint ptr %ndcb0_csel.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ndcb0_csel.i, align 4
  %sub.i = sub i32 8, %42
  %shl.i = shl nuw i32 1, %sub.i
  %call2.i = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %chip, i32 noundef %shl.i, ptr noundef nonnull @.str.48) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end17.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %if.end32 ], [ %call14, %cond.end.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nfc_op) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @marvell_nfc_prepare_cmd(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %call1.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call1.i, 100000000
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %entry
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !226
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10.i = icmp eq i32 %5, 0
  br i1 %cmp10.i, label %for.cond.i.if.end_crit_edge, label %land.lhs.true.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call13.i = tail call i64 @ktime_get() #9
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !226
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %phi.cmp.i = icmp eq i32 %9, 0
  br i1 %phi.cmp.i, label %for.end.i.if.end_crit_edge, label %do.end

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.36) #12
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !233
  %15 = and i32 %14, -17
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #9, !srcloc !227
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.31) #12
  br label %cleanup

if.end:                                           ; preds = %for.end.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !226
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr5 = getelementptr i8, ptr %24, i32 20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !234
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr10 = getelementptr i8, ptr %27, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %25) #9, !srcloc !227
  %28 = or i32 %22, 16
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #9, !srcloc !227
  %call13 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call13, 100000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %if.end
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr28 = getelementptr i8, ptr %32, i32 20
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #9, !srcloc !226
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %and = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %land.lhs.true, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call35 = tail call i64 @ktime_get() #9
  %cmp3.i = icmp sgt i64 %call35, %add.i
  br i1 %cmp3.i, label %if.then38, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %add.ptr41 = getelementptr i8, ptr %36, i32 20
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #9, !srcloc !226
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  br label %for.end

for.end:                                          ; preds = %if.then38, %for.cond.for.end_crit_edge
  %val.0 = phi i32 [ %38, %if.then38 ], [ %34, %for.cond.for.end_crit_edge ]
  %and49 = and i32 %val.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.end55, label %if.end57

do.end55:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev56 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev56, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.34) #12
  br label %cleanup

if.end57:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr59 = getelementptr i8, ptr %42, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 16777216) #9, !srcloc !227
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end55, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ -110, %do.end55 ], [ 0, %if.end57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @marvell_nfc_send_cmd(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %nfc_op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @marvell_nfc_send_cmd.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@marvell_nfc_send_cmd, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !235

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %regs = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !226
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %nfc_op to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nfc_op, align 4
  %arrayidx8 = getelementptr [4 x i32], ptr %nfc_op, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr [4 x i32], ptr %nfc_op, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr [4 x i32], ptr %nfc_op, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @marvell_nfc_send_cmd.__UNIQUE_ID_ddebug249, ptr noundef %3, ptr noundef nonnull @.str.40, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %selected_die.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %16 = ptrtoint ptr %selected_die.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %selected_die.i, align 4
  %ndcb0_csel = getelementptr %struct.marvell_nand_chip, ptr %chip, i32 0, i32 9, i32 %17, i32 1
  %18 = ptrtoint ptr %ndcb0_csel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ndcb0_csel, align 4
  %20 = ptrtoint ptr %nfc_op to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nfc_op, align 4
  %or = or i32 %21, %19
  %22 = tail call i32 @llvm.bswap.i32(i32 %or)
  %regs16 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %regs16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs16, align 4
  %add.ptr17 = getelementptr i8, ptr %24, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %22) #9, !srcloc !227
  %arrayidx19 = getelementptr [4 x i32], ptr %nfc_op, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx19, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %regs16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs16, align 4
  %add.ptr21 = getelementptr i8, ptr %29, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %27) #9, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  tail call void @arm_heavy_mb() #9
  %arrayidx26 = getelementptr [4 x i32], ptr %nfc_op, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx26, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %regs16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs16, align 4
  %add.ptr28 = getelementptr i8, ptr %34, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %32) #9, !srcloc !227
  %35 = ptrtoint ptr %nfc_op to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nfc_op, align 4
  %and = and i32 %36, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp ne i32 %and, 0
  %37 = and i32 %36, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %37)
  %cmp = icmp eq i32 %37, 393216
  %or.cond = or i1 %tobool31.not, %cmp
  br i1 %or.cond, label %if.then35, label %do.end.if.end98_crit_edge

do.end.if.end98_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then35:                                        ; preds = %do.end
  %caps = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 9
  %38 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %caps, align 4
  %is_nfcv2 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %is_nfcv2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %is_nfcv2, align 2, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool36.not = icmp eq i8 %41, 0
  br i1 %tobool36.not, label %land.rhs, label %do.body90.critedge

land.rhs:                                         ; preds = %if.then35
  %.b117 = load i1, ptr @marvell_nfc_send_cmd.__already_done, align 1
  br i1 %.b117, label %land.rhs.if.end98_crit_edge, label %if.then54, !prof !229

land.rhs.if.end98_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then54:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @marvell_nfc_send_cmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 653, i32 noundef 9, ptr noundef null) #9
  br label %if.end98

do.body90.critedge:                               ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !237
  tail call void @arm_heavy_mb() #9
  %arrayidx94 = getelementptr [4 x i32], ptr %nfc_op, i32 0, i32 3
  %42 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx94, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %regs16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs16, align 4
  %add.ptr96 = getelementptr i8, ptr %46, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 %44) #9, !srcloc !227
  br label %if.end98

if.end98:                                         ; preds = %do.body90.critedge, %if.then54, %land.rhs.if.end98_crit_edge, %do.end.if.end98_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @marvell_nfc_end_cmd(ptr nocapture noundef readonly %chip, i32 noundef %flag, ptr noundef %label) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %call1 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call1, 100000000
  %regs = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !226
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and = and i32 %5, %flag
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call13 = tail call i64 @ktime_get() #9
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr19 = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #9, !srcloc !226
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %for.end

for.end:                                          ; preds = %if.then16, %for.cond.for.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then16 ], [ %5, %for.cond.for.end_crit_edge ]
  %and27 = and i32 %val.0, %flag
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.end33, label %if.end39

do.end33:                                         ; preds = %for.end
  %dev = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.41, ptr noundef %label, i32 noundef %val.0) #12
  %dma_chan = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_chan, align 4
  %tobool34.not = icmp eq ptr %13, null
  br i1 %tobool34.not, label %do.end33.cleanup_crit_edge, label %if.then35

do.end33.cleanup_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then35:                                        ; preds = %do.end33
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 47
  %16 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then35.cleanup_crit_edge, label %if.then.i

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %17(ptr noundef nonnull %13) #9
  br label %cleanup

if.end39:                                         ; preds = %for.end
  %use_dma = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %use_dma, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool40.not = icmp eq i8 %19, 0
  br i1 %tobool40.not, label %if.end39.if.end50_crit_edge, label %land.lhs.true41

if.end39.if.end50_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

land.lhs.true41:                                  ; preds = %if.end39
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !226
  %23 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool48.not = icmp eq i32 %23, 0
  br i1 %tobool48.not, label %land.lhs.true41.if.end50_crit_edge, label %land.lhs.true41.cleanup_crit_edge

land.lhs.true41.cleanup_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true41.if.end50_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true41.if.end50_crit_edge, %if.end39.if.end50_crit_edge
  %24 = tail call i32 @llvm.bswap.i32(i32 %flag)
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr52 = getelementptr i8, ptr %26, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %24) #9, !srcloc !227
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %land.lhs.true41.cleanup_crit_edge, %if.then.i, %if.then35.cleanup_crit_edge, %do.end33.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end50 ], [ -110, %do.end33.cleanup_crit_edge ], [ 0, %land.lhs.true41.cleanup_crit_edge ], [ -110, %if.then35.cleanup_crit_edge ], [ -110, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @marvell_nfc_xfer_data_dma(ptr nocapture noundef readonly %nfc, i32 noundef %direction, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 31
  %and = and i32 %add, -32
  %0 = tail call i32 @llvm.smin.i32(i32 %and, i32 2112)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #9
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 2
  %1 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !226
  %5 = or i32 %4, 32
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #9, !srcloc !227
  %dma_buf = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 12
  %8 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_buf, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %9, i32 noundef %0) #9
  %dma_chan = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 11
  %10 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_chan, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call = call i32 @dma_map_sg_attrs(ptr noundef %15, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef %direction, i32 noundef 0) #9
  %16 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp2 = icmp eq i32 %direction, 2
  %cond3 = select i1 %cmp2, i32 2, i32 1
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %lor.lhs.false.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.i:                                  ; preds = %entry
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool1.not.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 39
  %20 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %21, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.do.end_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = call ptr %21(ptr noundef nonnull %17, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef %cond3, i32 noundef 1, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dmaengine_prep_slave_sg.exit.do.end_crit_edge, label %if.end

dmaengine_prep_slave_sg.exit.do.end_crit_edge:    ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_slave_sg.exit.do.end_crit_edge, %lor.lhs.false2.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %entry.do.end_crit_edge
  %dev5 = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 1
  %22 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.43) #12
  br label %cleanup

if.end:                                           ; preds = %dmaengine_prep_slave_sg.exit
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_submit.i, align 4
  %call.i1 = call i32 %25(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i1)
  %tobool8.not = icmp sgt i32 %call.i1, -1
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %26 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_chan, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 50
  %30 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device_issue_pending.i, align 4
  call void %31(ptr noundef %27) #9
  %selected_chip = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 8
  %32 = ptrtoint ptr %selected_chip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %selected_chip, align 4
  %selected_die.i.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %selected_die.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %selected_die.i.i, align 4
  %ndcb0_csel.i = getelementptr %struct.marvell_nand_chip, ptr %33, i32 0, i32 9, i32 %35, i32 1
  %36 = ptrtoint ptr %ndcb0_csel.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ndcb0_csel.i, align 4
  %sub.i = sub i32 8, %37
  %shl.i = shl nuw i32 1, %sub.i
  %call2.i = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %33, i32 noundef %shl.i, ptr noundef nonnull @.str.48) #9
  %38 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_chan, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %dev15 = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 15
  %42 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev15, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %43, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef %direction, i32 noundef 0) #9
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #9, !srcloc !226
  %47 = and i32 %46, -33
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #9, !srcloc !227
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool16.not = icmp eq i32 %call2.i, 0
  br i1 %tobool16.not, label %if.end10.cleanup_crit_edge, label %do.end20

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end20:                                         ; preds = %if.end10
  %dev21 = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 1
  %50 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev21, align 4
  %52 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dma_chan, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %55, i32 0, i32 49
  %56 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device_tx_status.i, align 4
  %call.i3 = call i32 %57(ptr noundef %53, i32 noundef %call.i1, ptr noundef null) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.46, i32 noundef %call.i3) #12
  %58 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dma_chan, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %61, i32 0, i32 47
  %62 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i4 = icmp eq ptr %63, null
  br i1 %tobool.not.i4, label %do.end20.cleanup_crit_edge, label %if.then.i

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #11
  %call.i5 = call i32 %63(ptr noundef %59) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %do.end20.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @marvell_nfc_hw_ecc_hmg_do_write_page(ptr nocapture noundef readonly %chip, ptr noundef %data_buf, ptr noundef %oob_buf, i1 noundef zeroext %raw, i32 noundef %page) unnamed_addr #2 align 64 {
entry:
  %tmp_buf.i360 = alloca [8 x i8], align 1
  %tmp_buf.i = alloca [8 x i8], align 1
  %nfc_op = alloca %struct.marvell_nfc_op, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_interface_config.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %current_interface_config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_interface_config.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %4 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %5 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %controller, align 4
  %layout = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 2
  %7 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %layout, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nfc_op) #9
  %addr_cyc = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 6
  %9 = ptrtoint ptr %addr_cyc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr_cyc, align 8
  %and = shl i32 %10, 16
  %shl = and i32 %and, 458752
  %or7 = or i32 %shl, 2625664
  %11 = ptrtoint ptr %nfc_op to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or7, ptr %nfc_op, align 4
  %arrayinit.element = getelementptr inbounds i32, ptr %nfc_op, i32 1
  %shl8 = shl i32 %page, 16
  %12 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shl8, ptr %arrayinit.element, align 4
  %arrayinit.element9 = getelementptr inbounds i32, ptr %nfc_op, i32 2
  %13 = lshr i32 %page, 16
  %and10 = and i32 %13, 255
  %14 = ptrtoint ptr %arrayinit.element9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and10, ptr %arrayinit.element9, align 4
  %arrayinit.cur.ptr = getelementptr inbounds i32, ptr %nfc_op, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  %retval.0.i = select i1 %cmp.i.i, ptr %4, ptr inttoptr (i32 -22 to ptr)
  %spare_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %8, i32 0, i32 6
  %15 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 28)
  %16 = ptrtoint ptr %spare_bytes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %spare_bytes, align 4
  br i1 %raw, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ecc_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %8, i32 0, i32 7
  %18 = ptrtoint ptr %ecc_bytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ecc_bytes, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %19, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %add = add i32 %cond, %17
  %call16 = tail call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %cond.end
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %chip, ptr noundef nonnull %nfc_op)
  %call20 = tail call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %chip, i32 noundef 4, ptr noundef nonnull @.str.49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %use_dma = getelementptr inbounds %struct.marvell_nfc, ptr %6, i32 0, i32 10
  %20 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_dma, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool24.not = icmp eq i8 %21, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %dma_buf = getelementptr inbounds %struct.marvell_nfc, ptr %6, i32 0, i32 12
  %22 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_buf, align 4
  %data_bytes = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %8, i32 0, i32 5
  %24 = ptrtoint ptr %data_bytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_bytes, align 4
  %26 = call ptr @memcpy(ptr %23, ptr %data_buf, i32 %25)
  %27 = load ptr, ptr %dma_buf, align 4
  %28 = load i32, ptr %data_bytes, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 %28
  %29 = call ptr @memcpy(ptr %add.ptr, ptr %oob_buf, i32 %add)
  %30 = load i32, ptr %data_bytes, align 4
  %ecc_bytes29 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %8, i32 0, i32 7
  %31 = ptrtoint ptr %ecc_bytes29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ecc_bytes29, align 4
  %add30 = add i32 %32, %30
  %33 = ptrtoint ptr %spare_bytes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %spare_bytes, align 4
  %add32 = add i32 %add30, %34
  tail call fastcc void @marvell_nfc_xfer_data_dma(ptr noundef %6, i32 noundef 1, i32 noundef %add32)
  br label %if.end37

if.else:                                          ; preds = %if.end23
  %data_bytes34 = getelementptr inbounds %struct.marvell_hw_ecc_layout, ptr %8, i32 0, i32 5
  %35 = ptrtoint ptr %data_bytes34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_bytes34, align 4
  %rem.i = and i32 %36, 7
  %and.i = and i32 %36, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.not.i, label %if.else.for.end.i_crit_edge, label %for.body.lr.ph.i

if.else.for.end.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.else
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %6, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 64
  %add.ptr1.i = getelementptr i8, ptr %data_buf, i32 %i.02.i
  tail call void @__raw_writesl(ptr noundef %add.ptr.i, ptr noundef %add.ptr1.i, i32 noundef 2) #9
  %add.i = add nuw i32 %i.02.i, 8
  %cmp.i = icmp ult i32 %add.i, %and.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.else.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %for.end.i.marvell_nfc_xfer_data_out_pio.exit_crit_edge, label %if.then.i

for.end.i.marvell_nfc_xfer_data_out_pio.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_xfer_data_out_pio.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_buf.i) #9
  %add.ptr2.i = getelementptr i8, ptr %data_buf, i32 %and.i
  %narrow.i = sub nuw nsw i32 8, %rem.i
  %39 = zext i32 %narrow.i to i64
  %40 = getelementptr i8, ptr %tmp_buf.i, i32 %rem.i
  %41 = trunc i64 %39 to i32
  %42 = call ptr @memset(ptr %40, i32 255, i32 %41)
  %43 = call ptr @memcpy(ptr %tmp_buf.i, ptr %add.ptr2.i, i32 %rem.i)
  %regs3.i = getelementptr inbounds %struct.marvell_nfc, ptr %6, i32 0, i32 2
  %44 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %45, i32 64
  call void @__raw_writesl(ptr noundef %add.ptr4.i, ptr noundef nonnull %tmp_buf.i, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_buf.i) #9
  br label %marvell_nfc_xfer_data_out_pio.exit

marvell_nfc_xfer_data_out_pio.exit:               ; preds = %if.then.i, %for.end.i.marvell_nfc_xfer_data_out_pio.exit_crit_edge
  %rem.i361 = and i32 %add, 7
  %and.i362 = and i32 %add, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i362)
  %cmp1.not.i363 = icmp eq i32 %and.i362, 0
  br i1 %cmp1.not.i363, label %marvell_nfc_xfer_data_out_pio.exit.for.end.i373_crit_edge, label %for.body.lr.ph.i365

marvell_nfc_xfer_data_out_pio.exit.for.end.i373_crit_edge: ; preds = %marvell_nfc_xfer_data_out_pio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i373

for.body.lr.ph.i365:                              ; preds = %marvell_nfc_xfer_data_out_pio.exit
  %regs.i364 = getelementptr inbounds %struct.marvell_nfc, ptr %6, i32 0, i32 2
  br label %for.body.i371

for.body.i371:                                    ; preds = %for.body.i371.for.body.i371_crit_edge, %for.body.lr.ph.i365
  %i.02.i366 = phi i32 [ 0, %for.body.lr.ph.i365 ], [ %add.i369, %for.body.i371.for.body.i371_crit_edge ]
  %46 = ptrtoint ptr %regs.i364 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i364, align 4
  %add.ptr.i367 = getelementptr i8, ptr %47, i32 64
  %add.ptr1.i368 = getelementptr i8, ptr %oob_buf, i32 %i.02.i366
  call void @__raw_writesl(ptr noundef %add.ptr.i367, ptr noundef %add.ptr1.i368, i32 noundef 2) #9
  %add.i369 = add nuw i32 %i.02.i366, 8
  %cmp.i370 = icmp ult i32 %add.i369, %and.i362
  br i1 %cmp.i370, label %for.body.i371.for.body.i371_crit_edge, label %for.body.i371.for.end.i373_crit_edge

for.body.i371.for.end.i373_crit_edge:             ; preds = %for.body.i371
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i373

for.body.i371.for.body.i371_crit_edge:            ; preds = %for.body.i371
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i371

for.end.i373:                                     ; preds = %for.body.i371.for.end.i373_crit_edge, %marvell_nfc_xfer_data_out_pio.exit.for.end.i373_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i361)
  %tobool.not.i372 = icmp eq i32 %rem.i361, 0
  br i1 %tobool.not.i372, label %for.end.i373.if.end37_crit_edge, label %if.then.i378

for.end.i373.if.end37_crit_edge:                  ; preds = %for.end.i373
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then.i378:                                     ; preds = %for.end.i373
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_buf.i360) #9
  %add.ptr2.i374 = getelementptr i8, ptr %oob_buf, i32 %and.i362
  %narrow.i375 = sub nuw nsw i32 8, %rem.i361
  %48 = zext i32 %narrow.i375 to i64
  %49 = getelementptr i8, ptr %tmp_buf.i360, i32 %rem.i361
  %50 = trunc i64 %48 to i32
  %51 = call ptr @memset(ptr %49, i32 255, i32 %50)
  %52 = call ptr @memcpy(ptr %tmp_buf.i360, ptr %add.ptr2.i374, i32 %rem.i361)
  %regs3.i376 = getelementptr inbounds %struct.marvell_nfc, ptr %6, i32 0, i32 2
  %53 = ptrtoint ptr %regs3.i376 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs3.i376, align 4
  %add.ptr4.i377 = getelementptr i8, ptr %54, i32 64
  call void @__raw_writesl(ptr noundef %add.ptr4.i377, ptr noundef nonnull %tmp_buf.i360, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_buf.i360) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then.i378, %for.end.i373.if.end37_crit_edge, %if.then25
  %selected_die.i.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %55 = ptrtoint ptr %selected_die.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %selected_die.i.i, align 4
  %ndcb0_csel.i = getelementptr %struct.marvell_nand_chip, ptr %chip, i32 0, i32 9, i32 %56, i32 1
  %57 = ptrtoint ptr %ndcb0_csel.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ndcb0_csel.i, align 4
  %sub.i = sub i32 8, %58
  %shl.i = shl nuw i32 1, %sub.i
  %call2.i = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %chip, i32 noundef %shl.i, ptr noundef nonnull @.str.48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool39.not = icmp eq i32 %call2.i, 0
  br i1 %tobool39.not, label %if.end236, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end236:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %tPROG_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 2
  %59 = ptrtoint ptr %tPROG_max to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %tPROG_max, align 8
  %sub = add i64 %60, 999999999
  %61 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %sub, i32 0) #14, !srcloc !230
  %asmresult.i = extractvalue { i64, i32 } %61, 0
  %asmresult4.i = extractvalue { i64, i32 } %61, 1
  %62 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %sub, i64 %asmresult.i, i32 %asmresult4.i) #14, !srcloc !231
  %asmresult10.i = extractvalue { i64, i32 } %62, 0
  %extract358 = lshr i64 %asmresult10.i, 29
  %extract.t359 = trunc i64 %extract358 to i32
  %call240 = call fastcc i32 @marvell_nfc_wait_op(ptr noundef %chip, i32 noundef %extract.t359)
  br label %cleanup

cleanup:                                          ; preds = %if.end236, %if.end37.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call240, %if.end236 ], [ %call16, %cond.end.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call2.i, %if.end37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nfc_op) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @marvell_nfc_wait_op(ptr nocapture noundef readonly %chip, i32 noundef %timeout_ms) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout_ms)
  %tobool.not = icmp eq i32 %timeout_ms, 0
  %spec.store.select = select i1 %tobool.not, i32 1000, i32 %timeout_ms
  %oops_panic_write = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 50
  %2 = ptrtoint ptr %oops_panic_write to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %oops_panic_write, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %spec.store.select) #9
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  %5 = add i32 %call2.i.i, %4
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %if.then3
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !226
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %and.i = lshr i32 %9, 1
  %10 = or i32 %and.i, %9
  %and2.i = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp.not.i = icmp eq i32 %and2.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %do.body.i.if.end8.loopexit_crit_edge

do.body.i.if.end8.loopexit_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.loopexit

do.end.i:                                         ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !238
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !239
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %11, %5
  %cmp13.i = icmp slt i32 %sub.i, 0
  br i1 %cmp13.i, label %do.end.i.do.body.i_crit_edge, label %do.end.i.if.end8.loopexit_crit_edge

do.end.i.if.end8.loopexit_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.loopexit

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %complete = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @init_completion.__key) #9
  %regs.i27 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %regs.i27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i27, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !226
  %16 = and i32 %15, -524289
  %17 = ptrtoint ptr %regs.i27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i27, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #9, !srcloc !227
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %spec.store.select) #9
  %call7 = tail call i32 @wait_for_completion_timeout(ptr noundef %complete, i32 noundef %call2.i) #9
  %19 = ptrtoint ptr %regs.i27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i27, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !226
  %22 = or i32 %21, 524288
  %23 = ptrtoint ptr %regs.i27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i27, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #9, !srcloc !227
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %phi.cmp = icmp eq i32 %call7, 0
  br label %if.end8

if.end8.loopexit:                                 ; preds = %do.end.i.if.end8.loopexit_crit_edge, %do.body.i.if.end8.loopexit_crit_edge
  %25 = xor i1 %cmp.not.i, true
  br label %if.end8

if.end8:                                          ; preds = %if.end8.loopexit, %if.else
  %ret.0 = phi i1 [ %phi.cmp, %if.else ], [ %25, %if.end8.loopexit ]
  %regs.i29 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %regs.i29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i29, align 4
  %add.ptr.i30 = getelementptr i8, ptr %27, i32 20
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #9, !srcloc !226
  %29 = ptrtoint ptr %regs.i29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i29, align 4
  %add.ptr2.i = getelementptr i8, ptr %30, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 1572864) #9, !srcloc !227
  %31 = and i32 %28, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool11.not = icmp eq i32 %31, 0
  %or.cond = select i1 %ret.0, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %do.end, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.50) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_write_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_write_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_op_parser_exec_op(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_monolithic_access_exec(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  %nfc_op = alloca %struct.marvell_nfc_op, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nfc_op) #9
  %0 = call ptr @memset(ptr %nfc_op, i32 255, i32 40)
  call fastcc void @marvell_nfc_parse_instructions(ptr noundef %chip, ptr noundef %subop, ptr noundef nonnull %nfc_op)
  %data_instr = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 6
  %1 = ptrtoint ptr %data_instr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data_instr, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  %call = call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %chip, ptr noundef nonnull %nfc_op)
  %call1 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %chip, i32 noundef 6, ptr noundef nonnull @.str.62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cle_ale_delay_ns = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 1
  %5 = ptrtoint ptr %cle_ale_delay_ns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cle_ale_delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end4.cond_delay.exit_crit_edge, label %if.end.i

if.end4.cond_delay.exit_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond_delay.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %6)
  %cmp.i = icmp ult i32 %6, 10000
  br i1 %cmp.i, label %cond.false8.i.i, label %cond.false10.i

cond.false8.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = trunc i32 %6 to i16
  %div.i.lhs.trunc.i = add nuw nsw i16 %7, 999
  %div.i22.i = udiv i16 %div.i.lhs.trunc.i, 1000
  %div.i.zext.i = zext i16 %div.i22.i to i32
  br label %cond_delay.exit.sink.split

cond.false10.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %6, 999
  %div.i = udiv i32 %sub.i, 1000
  br label %cond_delay.exit.sink.split

cond_delay.exit.sink.split:                       ; preds = %cond.false10.i, %cond.false8.i.i
  %div.i.zext.i.sink = phi i32 [ %div.i.zext.i, %cond.false8.i.i ], [ %div.i, %cond.false10.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %8(i32 noundef %div.i.zext.i.sink) #9
  br label %cond_delay.exit

cond_delay.exit:                                  ; preds = %cond_delay.exit.sink.split, %if.end4.cond_delay.exit_crit_edge
  br i1 %cmp, label %if.then6, label %cond_delay.exit.if.end15_crit_edge

cond_delay.exit.if.end15_crit_edge:               ; preds = %cond_delay.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then6:                                         ; preds = %cond_delay.exit
  %rdy_timeout_ms = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 2
  %9 = ptrtoint ptr %rdy_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rdy_timeout_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %if.then6.if.end14_crit_edge, label %if.then8

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then8:                                         ; preds = %if.then6
  %call10 = call fastcc i32 @marvell_nfc_wait_op(ptr noundef %chip, i32 noundef %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then8.if.end14_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %if.then6.if.end14_crit_edge
  %rdy_delay_ns = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 3
  %11 = ptrtoint ptr %rdy_delay_ns to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rdy_delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i66 = icmp eq i32 %12, 0
  br i1 %tobool.not.i66, label %if.end14.if.end15_crit_edge, label %if.end.i68

if.end14.if.end15_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end.i68:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %12)
  %cmp.i67 = icmp ult i32 %12, 10000
  br i1 %cmp.i67, label %cond.false8.i.i75, label %cond.false10.i84

cond.false8.i.i75:                                ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #11
  %13 = trunc i32 %12 to i16
  %div.i.lhs.trunc.i69 = add nuw nsw i16 %13, 999
  %div.i22.i70 = udiv i16 %div.i.lhs.trunc.i69, 1000
  %div.i.zext.i71 = zext i16 %div.i22.i70 to i32
  br label %if.end15.sink.split

cond.false10.i84:                                 ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i76 = add i32 %12, 999
  %div.i77 = udiv i32 %sub.i76, 1000
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %cond.false10.i84, %cond.false8.i.i75
  %div.i77.sink = phi i32 [ %div.i77, %cond.false10.i84 ], [ %div.i.zext.i71, %cond.false8.i.i75 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %14(i32 noundef %div.i77.sink) #9
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.end14.if.end15_crit_edge, %cond_delay.exit.if.end15_crit_edge
  call fastcc void @marvell_nfc_xfer_data_pio(ptr noundef %chip, ptr noundef %subop, ptr noundef nonnull %nfc_op)
  %selected_die.i.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %15 = ptrtoint ptr %selected_die.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %selected_die.i.i, align 4
  %ndcb0_csel.i = getelementptr %struct.marvell_nand_chip, ptr %chip, i32 0, i32 9, i32 %16, i32 1
  %17 = ptrtoint ptr %ndcb0_csel.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ndcb0_csel.i, align 4
  %sub.i86 = sub i32 8, %18
  %shl.i = shl nuw i32 1, %sub.i86
  %call2.i = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %chip, i32 noundef %shl.i, ptr noundef nonnull @.str.48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool18.not = icmp eq i32 %call2.i, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %data_delay_ns = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 4
  %19 = ptrtoint ptr %data_delay_ns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i87 = icmp eq i32 %20, 0
  br i1 %tobool.not.i87, label %if.end20.cond_delay.exit106_crit_edge, label %if.end.i89

if.end20.cond_delay.exit106_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond_delay.exit106

if.end.i89:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %20)
  %cmp.i88 = icmp ult i32 %20, 10000
  br i1 %cmp.i88, label %cond.false8.i.i96, label %cond.false10.i105

cond.false8.i.i96:                                ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #11
  %21 = trunc i32 %20 to i16
  %div.i.lhs.trunc.i90 = add nuw nsw i16 %21, 999
  %div.i22.i91 = udiv i16 %div.i.lhs.trunc.i90, 1000
  %div.i.zext.i92 = zext i16 %div.i22.i91 to i32
  br label %cond_delay.exit106.sink.split

cond.false10.i105:                                ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i97 = add i32 %20, 999
  %div.i98 = udiv i32 %sub.i97, 1000
  br label %cond_delay.exit106.sink.split

cond_delay.exit106.sink.split:                    ; preds = %cond.false10.i105, %cond.false8.i.i96
  %div.i.zext.i92.sink = phi i32 [ %div.i.zext.i92, %cond.false8.i.i96 ], [ %div.i98, %cond.false10.i105 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %22(i32 noundef %div.i.zext.i92.sink) #9
  br label %cond_delay.exit106

cond_delay.exit106:                               ; preds = %cond_delay.exit106.sink.split, %if.end20.cond_delay.exit106_crit_edge
  br i1 %cmp, label %cond_delay.exit106.cleanup_crit_edge, label %if.then22

cond_delay.exit106.cleanup_crit_edge:             ; preds = %cond_delay.exit106
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22:                                        ; preds = %cond_delay.exit106
  %rdy_timeout_ms23 = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 2
  %23 = ptrtoint ptr %rdy_timeout_ms23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rdy_timeout_ms23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool24.not = icmp eq i32 %24, 0
  br i1 %tobool24.not, label %if.then22.if.end31_crit_edge, label %if.then25

if.then22.if.end31_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then25:                                        ; preds = %if.then22
  %call27 = call fastcc i32 @marvell_nfc_wait_op(ptr noundef %chip, i32 noundef %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then25.if.end31_crit_edge, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25.if.end31_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31:                                         ; preds = %if.then25.if.end31_crit_edge, %if.then22.if.end31_crit_edge
  %rdy_delay_ns32 = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 3
  %25 = ptrtoint ptr %rdy_delay_ns32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rdy_delay_ns32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i107 = icmp eq i32 %26, 0
  br i1 %tobool.not.i107, label %if.end31.cond_delay.exit126_crit_edge, label %if.end.i109

if.end31.cond_delay.exit126_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond_delay.exit126

if.end.i109:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %26)
  %cmp.i108 = icmp ult i32 %26, 10000
  br i1 %cmp.i108, label %cond.false8.i.i116, label %cond.false10.i125

cond.false8.i.i116:                               ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #11
  %27 = trunc i32 %26 to i16
  %div.i.lhs.trunc.i110 = add nuw nsw i16 %27, 999
  %div.i22.i111 = udiv i16 %div.i.lhs.trunc.i110, 1000
  %div.i.zext.i112 = zext i16 %div.i22.i111 to i32
  br label %cond_delay.exit126.sink.split

cond.false10.i125:                                ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i117 = add i32 %26, 999
  %div.i118 = udiv i32 %sub.i117, 1000
  br label %cond_delay.exit126.sink.split

cond_delay.exit126.sink.split:                    ; preds = %cond.false10.i125, %cond.false8.i.i116
  %div.i.zext.i112.sink = phi i32 [ %div.i.zext.i112, %cond.false8.i.i116 ], [ %div.i118, %cond.false10.i125 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %28(i32 noundef %div.i.zext.i112.sink) #9
  br label %cond_delay.exit126

cond_delay.exit126:                               ; preds = %cond_delay.exit126.sink.split, %if.end31.cond_delay.exit126_crit_edge
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %29 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %controller, align 4
  %regs = getelementptr inbounds %struct.marvell_nfc, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  %34 = and i32 %33, -17
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #9, !srcloc !227
  br label %cleanup

cleanup:                                          ; preds = %cond_delay.exit126, %if.then25.cleanup_crit_edge, %cond_delay.exit106.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call10, %if.then8.cleanup_crit_edge ], [ %call2.i, %if.end15.cleanup_crit_edge ], [ %call27, %if.then25.cleanup_crit_edge ], [ 0, %cond_delay.exit106.cleanup_crit_edge ], [ 0, %cond_delay.exit126 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nfc_op) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_naked_access_exec(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  %nfc_op = alloca %struct.marvell_nfc_op, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nfc_op) #9
  %0 = call ptr @memset(ptr %nfc_op, i32 255, i32 40)
  call fastcc void @marvell_nfc_parse_instructions(ptr noundef %chip, ptr noundef %subop, ptr noundef nonnull %nfc_op)
  %1 = ptrtoint ptr %nfc_op to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nfc_op, align 4
  %and = and i32 %2, 522190847
  store i32 %and, ptr %nfc_op, align 4
  %instrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  %3 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %instrs, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %6, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb8
    i32 3, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %and, 12582912
  %8 = ptrtoint ptr %nfc_op to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %nfc_op, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or7 = or i32 %and, 14680064
  %9 = ptrtoint ptr %nfc_op to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or7, ptr %nfc_op, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or11 = or i32 %and, 536870912
  %10 = ptrtoint ptr %nfc_op to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or11, ptr %nfc_op, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or15 = or i32 %and, 538968064
  %11 = ptrtoint ptr %nfc_op to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or15, ptr %nfc_op, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb8, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %call = call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %chip, ptr noundef nonnull %nfc_op)
  %data_instr = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 6
  %12 = ptrtoint ptr %data_instr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data_instr, align 4
  %tobool16.not = icmp eq ptr %13, null
  br i1 %tobool16.not, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end
  %selected_die.i.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %14 = ptrtoint ptr %selected_die.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %selected_die.i.i, align 4
  %ndcb0_csel.i = getelementptr %struct.marvell_nand_chip, ptr %chip, i32 0, i32 9, i32 %15, i32 1
  %16 = ptrtoint ptr %ndcb0_csel.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ndcb0_csel.i, align 4
  %sub.i = sub i32 8, %17
  %shl.i = shl nuw i32 1, %sub.i
  %call2.i = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %chip, i32 noundef %shl.i, ptr noundef nonnull @.str.48) #9
  %cle_ale_delay_ns = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 1
  %18 = ptrtoint ptr %cle_ale_delay_ns to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cle_ale_delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.then17.cleanup_crit_edge, label %if.end.i

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %19)
  %cmp.i = icmp ult i32 %19, 10000
  br i1 %cmp.i, label %cond.false8.i.i, label %cond.false10.i

cond.false8.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = trunc i32 %19 to i16
  %div.i.lhs.trunc.i = add nuw nsw i16 %20, 999
  %div.i22.i = udiv i16 %div.i.lhs.trunc.i, 1000
  %div.i.zext.i = zext i16 %div.i22.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %21(i32 noundef %div.i.zext.i) #9
  br label %cleanup

cond.false10.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i58 = add i32 %19, 999
  %div.i = udiv i32 %sub.i58, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %22(i32 noundef %div.i) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %call20 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %chip, i32 noundef 6, ptr noundef nonnull @.str.62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call fastcc void @marvell_nfc_xfer_data_pio(ptr noundef %chip, ptr noundef %subop, ptr noundef nonnull %nfc_op)
  %selected_die.i.i59 = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %23 = ptrtoint ptr %selected_die.i.i59 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %selected_die.i.i59, align 4
  %ndcb0_csel.i60 = getelementptr %struct.marvell_nand_chip, ptr %chip, i32 0, i32 9, i32 %24, i32 1
  %25 = ptrtoint ptr %ndcb0_csel.i60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ndcb0_csel.i60, align 4
  %sub.i61 = sub i32 8, %26
  %shl.i62 = shl nuw i32 1, %sub.i61
  %call2.i63 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %chip, i32 noundef %shl.i62, ptr noundef nonnull @.str.48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i63)
  %tobool26.not = icmp eq i32 %call2.i63, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %27 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %instrs, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp = icmp eq i32 %30, 3
  br i1 %cmp, label %if.then32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %31 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %controller, align 4
  %regs = getelementptr inbounds %struct.marvell_nfc, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #9, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !241
  %36 = and i32 %35, -17
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #9, !srcloc !227
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end28.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %cond.false10.i, %cond.false8.i.i, %if.then17.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call2.i63, %if.end23.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %if.end28.cleanup_crit_edge ], [ %call2.i, %if.then17.cleanup_crit_edge ], [ %call2.i, %cond.false8.i.i ], [ %call2.i, %cond.false10.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nfc_op) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_naked_waitrdy_exec(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  %nfc_op = alloca %struct.marvell_nfc_op, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nfc_op) #9
  %0 = call ptr @memset(ptr %nfc_op, i32 255, i32 40)
  call fastcc void @marvell_nfc_parse_instructions(ptr noundef %chip, ptr noundef %subop, ptr noundef nonnull %nfc_op)
  %rdy_timeout_ms = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 2
  %1 = ptrtoint ptr %rdy_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rdy_timeout_ms, align 4
  %call = call fastcc i32 @marvell_nfc_wait_op(ptr noundef %chip, i32 noundef %2)
  %rdy_delay_ns = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 3
  %3 = ptrtoint ptr %rdy_delay_ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rdy_delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.cond_delay.exit_crit_edge, label %if.end.i

entry.cond_delay.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond_delay.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %4)
  %cmp.i = icmp ult i32 %4, 10000
  br i1 %cmp.i, label %cond.false8.i.i, label %cond.false10.i

cond.false8.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = trunc i32 %4 to i16
  %div.i.lhs.trunc.i = add nuw nsw i16 %5, 999
  %div.i22.i = udiv i16 %div.i.lhs.trunc.i, 1000
  %div.i.zext.i = zext i16 %div.i22.i to i32
  br label %cond_delay.exit.sink.split

cond.false10.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %4, 999
  %div.i = udiv i32 %sub.i, 1000
  br label %cond_delay.exit.sink.split

cond_delay.exit.sink.split:                       ; preds = %cond.false10.i, %cond.false8.i.i
  %div.i.zext.i.sink = phi i32 [ %div.i.zext.i, %cond.false8.i.i ], [ %div.i, %cond.false10.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %6(i32 noundef %div.i.zext.i.sink) #9
  br label %cond_delay.exit

cond_delay.exit:                                  ; preds = %cond_delay.exit.sink.split, %entry.cond_delay.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nfc_op) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @marvell_nfc_parse_instructions(ptr nocapture noundef readonly %chip, ptr noundef %subop, ptr noundef %nfc_op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %2 = call ptr @memset(ptr %nfc_op, i32 0, i32 40)
  %ninstrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 2
  %3 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp184.not = icmp eq i32 %4, 0
  br i1 %cmp184.not, label %entry.for.end113_crit_edge, label %for.body.lr.ph

entry.for.end113_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end113

for.body.lr.ph:                                   ; preds = %entry
  %instrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  %rdy_timeout_ms = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 2
  %rdy_delay_ns = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 3
  %data_instr86 = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 6
  %data_instr_idx87 = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 5
  %caps91 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 9
  %arrayidx103 = getelementptr [4 x i32], ptr %nfc_op, i32 0, i32 3
  %data_delay_ns107 = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 4
  %arrayidx32 = getelementptr [4 x i32], ptr %nfc_op, i32 0, i32 1
  %arrayidx42 = getelementptr [4 x i32], ptr %nfc_op, i32 0, i32 2
  %cle_ale_delay_ns68 = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %op_id.0186 = phi i32 [ 0, %for.body.lr.ph ], [ %inc112, %sw.epilog.for.body_crit_edge ]
  %first_cmd.0.off0185 = phi i1 [ true, %for.body.lr.ph ], [ %first_cmd.1.off0, %sw.epilog.for.body_crit_edge ]
  %5 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %6, i32 %op_id.0186
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %8, label %for.body.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb69
    i32 3, label %sw.bb85
    i32 4, label %sw.bb108
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  %ctx = getelementptr %struct.nand_op_instr, ptr %6, i32 %op_id.0186, i32 1
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctx, align 4
  %conv = zext i8 %11 to i32
  br i1 %first_cmd.0.off0185, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %nfc_op to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nfc_op, align 4
  %or = or i32 %13, %conv
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %shl6 = shl nuw nsw i32 %conv, 8
  %14 = ptrtoint ptr %nfc_op to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nfc_op, align 4
  %or7 = or i32 %shl6, %15
  %or10 = or i32 %or7, 524288
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %or10, %if.else ], [ %or, %if.then ]
  %16 = ptrtoint ptr %nfc_op to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %nfc_op, align 4
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %for.body
  %call12 = tail call i32 @nand_subop_get_addr_start_off(ptr noundef %subop, i32 noundef %op_id.0186) #9
  %call13 = tail call i32 @nand_subop_get_num_addr_cyc(ptr noundef %subop, i32 noundef %op_id.0186) #9
  %addrs15 = getelementptr %struct.nand_op_instr, ptr %6, i32 %op_id.0186, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %addrs15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addrs15, align 4
  %arrayidx16 = getelementptr i8, ptr %18, i32 %call12
  %and17 = shl i32 %call13, 16
  %shl18 = and i32 %and17, 458752
  %19 = ptrtoint ptr %nfc_op to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nfc_op, align 4
  %or21 = or i32 %20, %shl18
  store i32 %or21, ptr %nfc_op, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %call13, i32 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp25182.not = icmp eq i32 %21, 0
  br i1 %cmp25182.not, label %sw.bb11.for.end_crit_edge, label %for.body27

sw.bb11.for.end_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body27:                                       ; preds = %sw.bb11
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx16, align 1
  %conv29 = zext i8 %23 to i32
  %24 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx32, align 4
  %or33 = or i32 %25, %conv29
  store i32 %or33, ptr %arrayidx32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %exitcond.not = icmp eq i32 %21, 1
  br i1 %exitcond.not, label %for.body27.for.end_crit_edge, label %for.body27.1

for.body27.for.end_crit_edge:                     ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body27.1:                                     ; preds = %for.body27
  %arrayidx28.1 = getelementptr i8, ptr %arrayidx16, i32 1
  %26 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx28.1, align 1
  %conv29.1 = zext i8 %27 to i32
  %shl30.1 = shl nuw nsw i32 %conv29.1, 8
  %28 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx32, align 4
  %or33.1 = or i32 %shl30.1, %29
  store i32 %or33.1, ptr %arrayidx32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %exitcond.not.1 = icmp eq i32 %21, 2
  br i1 %exitcond.not.1, label %for.body27.1.for.end_crit_edge, label %for.body27.2

for.body27.1.for.end_crit_edge:                   ; preds = %for.body27.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body27.2:                                     ; preds = %for.body27.1
  %arrayidx28.2 = getelementptr i8, ptr %arrayidx16, i32 2
  %30 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx28.2, align 1
  %conv29.2 = zext i8 %31 to i32
  %shl30.2 = shl nuw nsw i32 %conv29.2, 16
  %32 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx32, align 4
  %or33.2 = or i32 %shl30.2, %33
  store i32 %or33.2, ptr %arrayidx32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %exitcond.not.2 = icmp eq i32 %21, 3
  br i1 %exitcond.not.2, label %for.body27.2.for.end_crit_edge, label %for.body27.3

for.body27.2.for.end_crit_edge:                   ; preds = %for.body27.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body27.3:                                     ; preds = %for.body27.2
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx28.3 = getelementptr i8, ptr %arrayidx16, i32 3
  %34 = ptrtoint ptr %arrayidx28.3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx28.3, align 1
  %conv29.3 = zext i8 %35 to i32
  %shl30.3 = shl nuw i32 %conv29.3, 24
  %36 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx32, align 4
  %or33.3 = or i32 %shl30.3, %37
  store i32 %or33.3, ptr %arrayidx32, align 4
  br label %for.end

for.end:                                          ; preds = %for.body27.3, %for.body27.2.for.end_crit_edge, %for.body27.1.for.end_crit_edge, %for.body27.for.end_crit_edge, %sw.bb11.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call13)
  %cmp23 = icmp ugt i32 %call13, 4
  br i1 %cmp23, label %if.end44, label %for.end.sw.epilog.sink.split_crit_edge

for.end.sw.epilog.sink.split_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end44:                                         ; preds = %for.end
  %arrayidx37 = getelementptr i8, ptr %arrayidx16, i32 4
  %38 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %39 to i32
  %40 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx42, align 4
  %or43 = or i32 %41, %conv38
  store i32 %or43, ptr %arrayidx42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call13)
  %cmp45.not = icmp eq i32 %call13, 5
  br i1 %cmp45.not, label %if.end44.sw.epilog.sink.split_crit_edge, label %if.end55

if.end44.sw.epilog.sink.split_crit_edge:          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end55:                                         ; preds = %if.end44
  %arrayidx48 = getelementptr i8, ptr %arrayidx16, i32 5
  %42 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %43 to i32
  %shl51 = shl nuw nsw i32 %conv49, 16
  %44 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx103, align 4
  %or54 = or i32 %shl51, %45
  store i32 %or54, ptr %arrayidx103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call13)
  %cmp56 = icmp eq i32 %call13, 7
  br i1 %cmp56, label %if.then58, label %if.end55.sw.epilog.sink.split_crit_edge

if.end55.sw.epilog.sink.split_crit_edge:          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx59 = getelementptr i8, ptr %arrayidx16, i32 6
  %46 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %47 to i32
  %shl62 = shl nuw i32 %conv60, 24
  %48 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx103, align 4
  %or65 = or i32 %shl62, %49
  store i32 %or65, ptr %arrayidx103, align 4
  br label %sw.epilog.sink.split

sw.bb69:                                          ; preds = %for.body
  %50 = ptrtoint ptr %data_instr86 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %arrayidx, ptr %data_instr86, align 4
  %51 = ptrtoint ptr %data_instr_idx87 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %op_id.0186, ptr %data_instr_idx87, align 4
  %52 = ptrtoint ptr %caps91 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %caps91, align 4
  %is_nfcv2 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %is_nfcv2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %is_nfcv2, align 2, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool73.not = icmp eq i8 %55, 0
  br i1 %tobool73.not, label %sw.bb69.sw.epilog.sink.split_crit_edge, label %if.then74

sw.bb69.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.then74:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %nfc_op to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nfc_op, align 4
  %or77 = or i32 %57, 268435456
  store i32 %or77, ptr %nfc_op, align 4
  %call78 = tail call i32 @nand_subop_get_data_len(ptr noundef %subop, i32 noundef %op_id.0186) #9
  %sub = add i32 %call78, -1
  %or79 = or i32 %sub, 7
  %add = add i32 %or79, 1
  %58 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx103, align 4
  %or82 = or i32 %add, %59
  store i32 %or82, ptr %arrayidx103, align 4
  br label %sw.epilog.sink.split

sw.bb85:                                          ; preds = %for.body
  %60 = ptrtoint ptr %data_instr86 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx, ptr %data_instr86, align 4
  %61 = ptrtoint ptr %data_instr_idx87 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %op_id.0186, ptr %data_instr_idx87, align 4
  %62 = ptrtoint ptr %nfc_op to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nfc_op, align 4
  %or90 = or i32 %63, 2097152
  store i32 %or90, ptr %nfc_op, align 4
  %64 = ptrtoint ptr %caps91 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %caps91, align 4
  %is_nfcv292 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %is_nfcv292 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %is_nfcv292, align 2, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool93.not = icmp eq i8 %67, 0
  br i1 %tobool93.not, label %sw.bb85.sw.epilog.sink.split_crit_edge, label %if.then94

sw.bb85.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.then94:                                        ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #11
  %or97 = or i32 %63, 270532608
  %68 = ptrtoint ptr %nfc_op to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or97, ptr %nfc_op, align 4
  %call98 = tail call i32 @nand_subop_get_data_len(ptr noundef %subop, i32 noundef %op_id.0186) #9
  %sub99 = add i32 %call98, -1
  %or100 = or i32 %sub99, 7
  %add101 = add i32 %or100, 1
  %69 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx103, align 4
  %or104 = or i32 %add101, %70
  store i32 %or104, ptr %arrayidx103, align 4
  br label %sw.epilog.sink.split

sw.bb108:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %ctx109 = getelementptr %struct.nand_op_instr, ptr %6, i32 %op_id.0186, i32 1
  %71 = ptrtoint ptr %ctx109 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ctx109, align 4
  %73 = ptrtoint ptr %rdy_timeout_ms to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %rdy_timeout_ms, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb108, %if.then94, %sw.bb85.sw.epilog.sink.split_crit_edge, %if.then74, %sw.bb69.sw.epilog.sink.split_crit_edge, %if.then58, %if.end55.sw.epilog.sink.split_crit_edge, %if.end44.sw.epilog.sink.split_crit_edge, %for.end.sw.epilog.sink.split_crit_edge, %if.end
  %rdy_delay_ns.sink = phi ptr [ %rdy_delay_ns, %sw.bb108 ], [ %cle_ale_delay_ns68, %if.end ], [ %cle_ale_delay_ns68, %for.end.sw.epilog.sink.split_crit_edge ], [ %cle_ale_delay_ns68, %if.end44.sw.epilog.sink.split_crit_edge ], [ %cle_ale_delay_ns68, %if.then58 ], [ %cle_ale_delay_ns68, %if.end55.sw.epilog.sink.split_crit_edge ], [ %data_delay_ns107, %if.then74 ], [ %data_delay_ns107, %sw.bb69.sw.epilog.sink.split_crit_edge ], [ %data_delay_ns107, %if.then94 ], [ %data_delay_ns107, %sw.bb85.sw.epilog.sink.split_crit_edge ]
  %first_cmd.1.off0.ph = phi i1 [ %first_cmd.0.off0185, %sw.bb108 ], [ false, %if.end ], [ %first_cmd.0.off0185, %for.end.sw.epilog.sink.split_crit_edge ], [ %first_cmd.0.off0185, %if.end44.sw.epilog.sink.split_crit_edge ], [ %first_cmd.0.off0185, %if.then58 ], [ %first_cmd.0.off0185, %if.end55.sw.epilog.sink.split_crit_edge ], [ %first_cmd.0.off0185, %if.then74 ], [ %first_cmd.0.off0185, %sw.bb69.sw.epilog.sink.split_crit_edge ], [ %first_cmd.0.off0185, %if.then94 ], [ %first_cmd.0.off0185, %sw.bb85.sw.epilog.sink.split_crit_edge ]
  %delay_ns110 = getelementptr %struct.nand_op_instr, ptr %6, i32 %op_id.0186, i32 2
  %74 = ptrtoint ptr %delay_ns110 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %delay_ns110, align 4
  %76 = ptrtoint ptr %rdy_delay_ns.sink to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %rdy_delay_ns.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body.sw.epilog_crit_edge
  %first_cmd.1.off0 = phi i1 [ %first_cmd.0.off0185, %for.body.sw.epilog_crit_edge ], [ %first_cmd.1.off0.ph, %sw.epilog.sink.split ]
  %inc112 = add nuw i32 %op_id.0186, 1
  %77 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc112, %78
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %sw.epilog.for.end113_crit_edge

sw.epilog.for.end113_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end113

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end113:                                       ; preds = %sw.epilog.for.end113_crit_edge, %entry.for.end113_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @marvell_nfc_xfer_data_pio(ptr nocapture noundef readonly %chip, ptr noundef %subop, ptr nocapture noundef readonly %nfc_op) unnamed_addr #2 align 64 {
entry:
  %tmp_buf.i5 = alloca [8 x i8], align 1
  %tmp_buf.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %data_instr = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 6
  %2 = ptrtoint ptr %data_instr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_instr, align 4
  %data_instr_idx = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 5
  %4 = ptrtoint ptr %data_instr_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_instr_idx, align 4
  %call1 = tail call i32 @nand_subop_get_data_len(ptr noundef %subop, i32 noundef %5) #9
  %call2 = tail call i32 @nand_subop_get_data_start_off(ptr noundef %subop, i32 noundef %5) #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %force_8bit = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %force_8bit to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %force_8bit, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %10 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %options.i, align 8
  %and.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %controller, align 4
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !226
  %17 = and i32 %16, -13
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #9, !srcloc !227
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %buf = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %call2
  %rem.i = and i32 %call1, 7
  %and.i1 = and i32 %call1, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1)
  %cmp1.not.i = icmp eq i32 %and.i1, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  br i1 %cmp1.not.i, label %if.then4.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then4.for.end.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then4
  %regs.i2 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %regs.i2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i2, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 64
  %add.ptr1.i = getelementptr i8, ptr %add.ptr, i32 %i.02.i
  tail call void @__raw_readsl(ptr noundef %add.ptr.i, ptr noundef %add.ptr1.i, i32 noundef 2) #9
  %add.i = add nuw i32 %i.02.i, 8
  %cmp.i = icmp ult i32 %add.i, %and.i1
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then4.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i3 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i3, label %for.end.i.if.end11_crit_edge, label %if.then.i

for.end.i.if.end11_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_buf.i) #9
  %regs2.i = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %tmp_buf.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 -1, ptr %tmp_buf.i, align 8
  %25 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %26, i32 64
  call void @__raw_readsl(ptr noundef %add.ptr3.i, ptr noundef nonnull %tmp_buf.i, i32 noundef 2) #9
  %add.ptr4.i = getelementptr i8, ptr %add.ptr, i32 %and.i1
  %27 = call ptr @memcpy(ptr %add.ptr4.i, ptr %tmp_buf.i, i32 %rem.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_buf.i) #9
  br label %if.end11

if.else:                                          ; preds = %if.end
  br i1 %cmp1.not.i, label %if.else.for.end.i18_crit_edge, label %for.body.lr.ph.i10

if.else.for.end.i18_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i18

for.body.lr.ph.i10:                               ; preds = %if.else
  %regs.i9 = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  br label %for.body.i16

for.body.i16:                                     ; preds = %for.body.i16.for.body.i16_crit_edge, %for.body.lr.ph.i10
  %i.02.i11 = phi i32 [ 0, %for.body.lr.ph.i10 ], [ %add.i14, %for.body.i16.for.body.i16_crit_edge ]
  %28 = ptrtoint ptr %regs.i9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i9, align 4
  %add.ptr.i12 = getelementptr i8, ptr %29, i32 64
  %add.ptr1.i13 = getelementptr i8, ptr %add.ptr, i32 %i.02.i11
  tail call void @__raw_writesl(ptr noundef %add.ptr.i12, ptr noundef %add.ptr1.i13, i32 noundef 2) #9
  %add.i14 = add nuw i32 %i.02.i11, 8
  %cmp.i15 = icmp ult i32 %add.i14, %and.i1
  br i1 %cmp.i15, label %for.body.i16.for.body.i16_crit_edge, label %for.body.i16.for.end.i18_crit_edge

for.body.i16.for.end.i18_crit_edge:               ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i18

for.body.i16.for.body.i16_crit_edge:              ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i16

for.end.i18:                                      ; preds = %for.body.i16.for.end.i18_crit_edge, %if.else.for.end.i18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i17 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i17, label %for.end.i18.if.end11_crit_edge, label %if.then.i20

for.end.i18.if.end11_crit_edge:                   ; preds = %for.end.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then.i20:                                      ; preds = %for.end.i18
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_buf.i5) #9
  %add.ptr2.i = getelementptr i8, ptr %add.ptr, i32 %and.i1
  %narrow.i = sub nuw nsw i32 8, %rem.i
  %30 = zext i32 %narrow.i to i64
  %31 = getelementptr i8, ptr %tmp_buf.i5, i32 %rem.i
  %32 = trunc i64 %30 to i32
  %33 = call ptr @memset(ptr %31, i32 255, i32 %32)
  %34 = call ptr @memcpy(ptr %tmp_buf.i5, ptr %add.ptr2.i, i32 %rem.i)
  %regs3.i = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs3.i, align 4
  %add.ptr4.i19 = getelementptr i8, ptr %36, i32 64
  call void @__raw_writesl(ptr noundef %add.ptr4.i19, ptr noundef nonnull %tmp_buf.i5, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_buf.i5) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then.i20, %for.end.i18.if.end11_crit_edge, %if.then.i, %for.end.i.if.end11_crit_edge
  %37 = ptrtoint ptr %force_8bit to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %force_8bit, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool14.not = icmp eq i8 %38, 0
  br i1 %tobool14.not, label %if.end11.if.end16_crit_edge, label %if.then15

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then15:                                        ; preds = %if.end11
  %options.i22 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %39 = ptrtoint ptr %options.i22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %options.i22, align 8
  %and.i23 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23)
  %tobool.not.i24 = icmp eq i32 %and.i23, 0
  br i1 %tobool.not.i24, label %if.then15.if.end16_crit_edge, label %if.end.i27

if.then15.if.end16_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end.i27:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %controller, align 4
  %regs.i26 = getelementptr inbounds %struct.marvell_nfc, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %regs.i26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i26, align 4
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !226
  %46 = or i32 %45, 12
  %47 = ptrtoint ptr %regs.i26 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i26, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #9, !srcloc !227
  br label %if.end16

if.end16:                                         ; preds = %if.end.i27, %if.then15.if.end16_crit_edge, %if.end11.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_addr_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_num_addr_cyc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_data_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_data_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_read_id_type_exec(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  %nfc_op = alloca %struct.marvell_nfc_op, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nfc_op) #9
  %0 = call ptr @memset(ptr %nfc_op, i32 255, i32 40)
  call fastcc void @marvell_nfc_parse_instructions(ptr noundef %chip, ptr noundef %subop, ptr noundef nonnull %nfc_op)
  %1 = ptrtoint ptr %nfc_op to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nfc_op, align 4
  %or = or i32 %2, 6291456
  store i32 %or, ptr %nfc_op, align 4
  %call = call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %chip, ptr noundef nonnull %nfc_op)
  %call3 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %chip, i32 noundef 2, ptr noundef nonnull @.str.69)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cle_ale_delay_ns = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 1
  %3 = ptrtoint ptr %cle_ale_delay_ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cle_ale_delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end6.cond_delay.exit_crit_edge, label %if.end.i

if.end6.cond_delay.exit_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond_delay.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %4)
  %cmp.i = icmp ult i32 %4, 10000
  br i1 %cmp.i, label %cond.false8.i.i, label %cond.false10.i

cond.false8.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = trunc i32 %4 to i16
  %div.i.lhs.trunc.i = add nuw nsw i16 %5, 999
  %div.i22.i = udiv i16 %div.i.lhs.trunc.i, 1000
  %div.i.zext.i = zext i16 %div.i22.i to i32
  br label %cond_delay.exit.sink.split

cond.false10.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %4, 999
  %div.i = udiv i32 %sub.i, 1000
  br label %cond_delay.exit.sink.split

cond_delay.exit.sink.split:                       ; preds = %cond.false10.i, %cond.false8.i.i
  %div.i.zext.i.sink = phi i32 [ %div.i.zext.i, %cond.false8.i.i ], [ %div.i, %cond.false10.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %6(i32 noundef %div.i.zext.i.sink) #9
  br label %cond_delay.exit

cond_delay.exit:                                  ; preds = %cond_delay.exit.sink.split, %if.end6.cond_delay.exit_crit_edge
  %rdy_timeout_ms = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 2
  %7 = ptrtoint ptr %rdy_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rdy_timeout_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %cond_delay.exit.if.end14_crit_edge, label %if.then8

cond_delay.exit.if.end14_crit_edge:               ; preds = %cond_delay.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then8:                                         ; preds = %cond_delay.exit
  %call10 = call fastcc i32 @marvell_nfc_wait_op(ptr noundef %chip, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then8.if.end14_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %cond_delay.exit.if.end14_crit_edge
  %rdy_delay_ns = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 3
  %9 = ptrtoint ptr %rdy_delay_ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rdy_delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i35 = icmp eq i32 %10, 0
  br i1 %tobool.not.i35, label %if.end14.cond_delay.exit54_crit_edge, label %if.end.i37

if.end14.cond_delay.exit54_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond_delay.exit54

if.end.i37:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %10)
  %cmp.i36 = icmp ult i32 %10, 10000
  br i1 %cmp.i36, label %cond.false8.i.i44, label %cond.false10.i53

cond.false8.i.i44:                                ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #11
  %11 = trunc i32 %10 to i16
  %div.i.lhs.trunc.i38 = add nuw nsw i16 %11, 999
  %div.i22.i39 = udiv i16 %div.i.lhs.trunc.i38, 1000
  %div.i.zext.i40 = zext i16 %div.i22.i39 to i32
  br label %cond_delay.exit54.sink.split

cond.false10.i53:                                 ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i45 = add i32 %10, 999
  %div.i46 = udiv i32 %sub.i45, 1000
  br label %cond_delay.exit54.sink.split

cond_delay.exit54.sink.split:                     ; preds = %cond.false10.i53, %cond.false8.i.i44
  %div.i.zext.i40.sink = phi i32 [ %div.i.zext.i40, %cond.false8.i.i44 ], [ %div.i46, %cond.false10.i53 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %12(i32 noundef %div.i.zext.i40.sink) #9
  br label %cond_delay.exit54

cond_delay.exit54:                                ; preds = %cond_delay.exit54.sink.split, %if.end14.cond_delay.exit54_crit_edge
  call fastcc void @marvell_nfc_xfer_data_pio(ptr noundef %chip, ptr noundef %subop, ptr noundef nonnull %nfc_op)
  %selected_die.i.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %13 = ptrtoint ptr %selected_die.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %selected_die.i.i, align 4
  %ndcb0_csel.i = getelementptr %struct.marvell_nand_chip, ptr %chip, i32 0, i32 9, i32 %14, i32 1
  %15 = ptrtoint ptr %ndcb0_csel.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ndcb0_csel.i, align 4
  %sub.i55 = sub i32 8, %16
  %shl.i = shl nuw i32 1, %sub.i55
  %call2.i = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %chip, i32 noundef %shl.i, ptr noundef nonnull @.str.48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool17.not = icmp eq i32 %call2.i, 0
  br i1 %tobool17.not, label %if.end19, label %cond_delay.exit54.cleanup_crit_edge

cond_delay.exit54.cleanup_crit_edge:              ; preds = %cond_delay.exit54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %cond_delay.exit54
  %data_delay_ns = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 4
  %17 = ptrtoint ptr %data_delay_ns to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i56 = icmp eq i32 %18, 0
  br i1 %tobool.not.i56, label %if.end19.cleanup_crit_edge, label %if.end.i58

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i58:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %18)
  %cmp.i57 = icmp ult i32 %18, 10000
  br i1 %cmp.i57, label %cond.false8.i.i65, label %cond.false10.i74

cond.false8.i.i65:                                ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #11
  %19 = trunc i32 %18 to i16
  %div.i.lhs.trunc.i59 = add nuw nsw i16 %19, 999
  %div.i22.i60 = udiv i16 %div.i.lhs.trunc.i59, 1000
  %div.i.zext.i61 = zext i16 %div.i22.i60 to i32
  br label %cleanup.sink.split

cond.false10.i74:                                 ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i66 = add i32 %18, 999
  %div.i67 = udiv i32 %sub.i66, 1000
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cond.false10.i74, %cond.false8.i.i65
  %div.i67.sink = phi i32 [ %div.i67, %cond.false10.i74 ], [ %div.i.zext.i61, %cond.false8.i.i65 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %20(i32 noundef %div.i67.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end19.cleanup_crit_edge, %cond_delay.exit54.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call10, %if.then8.cleanup_crit_edge ], [ %call2.i, %cond_delay.exit54.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nfc_op) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_erase_cmd_type_exec(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  %nfc_op = alloca %struct.marvell_nfc_op, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nfc_op) #9
  %0 = call ptr @memset(ptr %nfc_op, i32 255, i32 40)
  call fastcc void @marvell_nfc_parse_instructions(ptr noundef %chip, ptr noundef %subop, ptr noundef nonnull %nfc_op)
  %1 = ptrtoint ptr %nfc_op to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nfc_op, align 4
  %or = or i32 %2, 4194304
  store i32 %or, ptr %nfc_op, align 4
  %call = call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %chip, ptr noundef nonnull %nfc_op)
  %selected_die.i.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %3 = ptrtoint ptr %selected_die.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %selected_die.i.i, align 4
  %ndcb0_csel.i = getelementptr %struct.marvell_nand_chip, ptr %chip, i32 0, i32 9, i32 %4, i32 1
  %5 = ptrtoint ptr %ndcb0_csel.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ndcb0_csel.i, align 4
  %sub.i = sub i32 8, %6
  %shl.i = shl nuw i32 1, %sub.i
  %call2.i = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %chip, i32 noundef %shl.i, ptr noundef nonnull @.str.48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool2.not = icmp eq i32 %call2.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cle_ale_delay_ns = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 1
  %7 = ptrtoint ptr %cle_ale_delay_ns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cle_ale_delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end4.cond_delay.exit_crit_edge, label %if.end.i

if.end4.cond_delay.exit_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond_delay.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %8)
  %cmp.i = icmp ult i32 %8, 10000
  br i1 %cmp.i, label %cond.false8.i.i, label %cond.false10.i

cond.false8.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = trunc i32 %8 to i16
  %div.i.lhs.trunc.i = add nuw nsw i16 %9, 999
  %div.i22.i = udiv i16 %div.i.lhs.trunc.i, 1000
  %div.i.zext.i = zext i16 %div.i22.i to i32
  br label %cond_delay.exit.sink.split

cond.false10.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i19 = add i32 %8, 999
  %div.i = udiv i32 %sub.i19, 1000
  br label %cond_delay.exit.sink.split

cond_delay.exit.sink.split:                       ; preds = %cond.false10.i, %cond.false8.i.i
  %div.i.zext.i.sink = phi i32 [ %div.i.zext.i, %cond.false8.i.i ], [ %div.i, %cond.false10.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %10(i32 noundef %div.i.zext.i.sink) #9
  br label %cond_delay.exit

cond_delay.exit:                                  ; preds = %cond_delay.exit.sink.split, %if.end4.cond_delay.exit_crit_edge
  %rdy_timeout_ms = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 2
  %11 = ptrtoint ptr %rdy_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rdy_timeout_ms, align 4
  %call5 = call fastcc i32 @marvell_nfc_wait_op(ptr noundef %chip, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %cond_delay.exit.cleanup_crit_edge

cond_delay.exit.cleanup_crit_edge:                ; preds = %cond_delay.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %cond_delay.exit
  %rdy_delay_ns = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 3
  %13 = ptrtoint ptr %rdy_delay_ns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rdy_delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i20 = icmp eq i32 %14, 0
  br i1 %tobool.not.i20, label %if.end8.cleanup_crit_edge, label %if.end.i22

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i22:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %14)
  %cmp.i21 = icmp ult i32 %14, 10000
  br i1 %cmp.i21, label %cond.false8.i.i29, label %cond.false10.i38

cond.false8.i.i29:                                ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #11
  %15 = trunc i32 %14 to i16
  %div.i.lhs.trunc.i23 = add nuw nsw i16 %15, 999
  %div.i22.i24 = udiv i16 %div.i.lhs.trunc.i23, 1000
  %div.i.zext.i25 = zext i16 %div.i22.i24 to i32
  br label %cleanup.sink.split

cond.false10.i38:                                 ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i30 = add i32 %14, 999
  %div.i31 = udiv i32 %sub.i30, 1000
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cond.false10.i38, %cond.false8.i.i29
  %div.i31.sink = phi i32 [ %div.i31, %cond.false10.i38 ], [ %div.i.zext.i25, %cond.false8.i.i29 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %16(i32 noundef %div.i31.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %cond_delay.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ %call5, %cond_delay.exit.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nfc_op) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_read_status_exec(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  %nfc_op = alloca %struct.marvell_nfc_op, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nfc_op) #9
  %0 = call ptr @memset(ptr %nfc_op, i32 255, i32 40)
  call fastcc void @marvell_nfc_parse_instructions(ptr noundef %chip, ptr noundef %subop, ptr noundef nonnull %nfc_op)
  %1 = ptrtoint ptr %nfc_op to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nfc_op, align 4
  %or = or i32 %2, 8388608
  store i32 %or, ptr %nfc_op, align 4
  %call = call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %chip, ptr noundef nonnull %nfc_op)
  %call3 = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %chip, i32 noundef 2, ptr noundef nonnull @.str.70)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cle_ale_delay_ns = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 1
  %3 = ptrtoint ptr %cle_ale_delay_ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cle_ale_delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end6.cond_delay.exit_crit_edge, label %if.end.i

if.end6.cond_delay.exit_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond_delay.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %4)
  %cmp.i = icmp ult i32 %4, 10000
  br i1 %cmp.i, label %cond.false8.i.i, label %cond.false10.i

cond.false8.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = trunc i32 %4 to i16
  %div.i.lhs.trunc.i = add nuw nsw i16 %5, 999
  %div.i22.i = udiv i16 %div.i.lhs.trunc.i, 1000
  %div.i.zext.i = zext i16 %div.i22.i to i32
  br label %cond_delay.exit.sink.split

cond.false10.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %4, 999
  %div.i = udiv i32 %sub.i, 1000
  br label %cond_delay.exit.sink.split

cond_delay.exit.sink.split:                       ; preds = %cond.false10.i, %cond.false8.i.i
  %div.i.zext.i.sink = phi i32 [ %div.i.zext.i, %cond.false8.i.i ], [ %div.i, %cond.false10.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %6(i32 noundef %div.i.zext.i.sink) #9
  br label %cond_delay.exit

cond_delay.exit:                                  ; preds = %cond_delay.exit.sink.split, %if.end6.cond_delay.exit_crit_edge
  %rdy_timeout_ms = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 2
  %7 = ptrtoint ptr %rdy_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rdy_timeout_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %cond_delay.exit.if.end14_crit_edge, label %if.then8

cond_delay.exit.if.end14_crit_edge:               ; preds = %cond_delay.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then8:                                         ; preds = %cond_delay.exit
  %call10 = call fastcc i32 @marvell_nfc_wait_op(ptr noundef %chip, i32 noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then8.if.end14_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %cond_delay.exit.if.end14_crit_edge
  %rdy_delay_ns = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 3
  %9 = ptrtoint ptr %rdy_delay_ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rdy_delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i35 = icmp eq i32 %10, 0
  br i1 %tobool.not.i35, label %if.end14.cond_delay.exit54_crit_edge, label %if.end.i37

if.end14.cond_delay.exit54_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond_delay.exit54

if.end.i37:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %10)
  %cmp.i36 = icmp ult i32 %10, 10000
  br i1 %cmp.i36, label %cond.false8.i.i44, label %cond.false10.i53

cond.false8.i.i44:                                ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #11
  %11 = trunc i32 %10 to i16
  %div.i.lhs.trunc.i38 = add nuw nsw i16 %11, 999
  %div.i22.i39 = udiv i16 %div.i.lhs.trunc.i38, 1000
  %div.i.zext.i40 = zext i16 %div.i22.i39 to i32
  br label %cond_delay.exit54.sink.split

cond.false10.i53:                                 ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i45 = add i32 %10, 999
  %div.i46 = udiv i32 %sub.i45, 1000
  br label %cond_delay.exit54.sink.split

cond_delay.exit54.sink.split:                     ; preds = %cond.false10.i53, %cond.false8.i.i44
  %div.i.zext.i40.sink = phi i32 [ %div.i.zext.i40, %cond.false8.i.i44 ], [ %div.i46, %cond.false10.i53 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %12(i32 noundef %div.i.zext.i40.sink) #9
  br label %cond_delay.exit54

cond_delay.exit54:                                ; preds = %cond_delay.exit54.sink.split, %if.end14.cond_delay.exit54_crit_edge
  call fastcc void @marvell_nfc_xfer_data_pio(ptr noundef %chip, ptr noundef %subop, ptr noundef nonnull %nfc_op)
  %selected_die.i.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %13 = ptrtoint ptr %selected_die.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %selected_die.i.i, align 4
  %ndcb0_csel.i = getelementptr %struct.marvell_nand_chip, ptr %chip, i32 0, i32 9, i32 %14, i32 1
  %15 = ptrtoint ptr %ndcb0_csel.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ndcb0_csel.i, align 4
  %sub.i55 = sub i32 8, %16
  %shl.i = shl nuw i32 1, %sub.i55
  %call2.i = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %chip, i32 noundef %shl.i, ptr noundef nonnull @.str.48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool17.not = icmp eq i32 %call2.i, 0
  br i1 %tobool17.not, label %if.end19, label %cond_delay.exit54.cleanup_crit_edge

cond_delay.exit54.cleanup_crit_edge:              ; preds = %cond_delay.exit54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %cond_delay.exit54
  %data_delay_ns = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 4
  %17 = ptrtoint ptr %data_delay_ns to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i56 = icmp eq i32 %18, 0
  br i1 %tobool.not.i56, label %if.end19.cleanup_crit_edge, label %if.end.i58

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i58:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %18)
  %cmp.i57 = icmp ult i32 %18, 10000
  br i1 %cmp.i57, label %cond.false8.i.i65, label %cond.false10.i74

cond.false8.i.i65:                                ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #11
  %19 = trunc i32 %18 to i16
  %div.i.lhs.trunc.i59 = add nuw nsw i16 %19, 999
  %div.i22.i60 = udiv i16 %div.i.lhs.trunc.i59, 1000
  %div.i.zext.i61 = zext i16 %div.i22.i60 to i32
  br label %cleanup.sink.split

cond.false10.i74:                                 ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i66 = add i32 %18, 999
  %div.i67 = udiv i32 %sub.i66, 1000
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cond.false10.i74, %cond.false8.i.i65
  %div.i67.sink = phi i32 [ %div.i67, %cond.false10.i74 ], [ %div.i.zext.i61, %cond.false8.i.i65 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %20(i32 noundef %div.i67.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end19.cleanup_crit_edge, %cond_delay.exit54.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call10, %if.then8.cleanup_crit_edge ], [ %call2.i, %cond_delay.exit54.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nfc_op) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_reset_cmd_type_exec(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  %nfc_op = alloca %struct.marvell_nfc_op, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nfc_op) #9
  %0 = call ptr @memset(ptr %nfc_op, i32 255, i32 40)
  call fastcc void @marvell_nfc_parse_instructions(ptr noundef %chip, ptr noundef %subop, ptr noundef nonnull %nfc_op)
  %1 = ptrtoint ptr %nfc_op to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nfc_op, align 4
  %or = or i32 %2, 10485760
  store i32 %or, ptr %nfc_op, align 4
  %call = call fastcc i32 @marvell_nfc_prepare_cmd(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @marvell_nfc_send_cmd(ptr noundef %chip, ptr noundef nonnull %nfc_op)
  %selected_die.i.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %chip, i32 0, i32 7
  %3 = ptrtoint ptr %selected_die.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %selected_die.i.i, align 4
  %ndcb0_csel.i = getelementptr %struct.marvell_nand_chip, ptr %chip, i32 0, i32 9, i32 %4, i32 1
  %5 = ptrtoint ptr %ndcb0_csel.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ndcb0_csel.i, align 4
  %sub.i = sub i32 8, %6
  %shl.i = shl nuw i32 1, %sub.i
  %call2.i = call fastcc i32 @marvell_nfc_end_cmd(ptr noundef %chip, i32 noundef %shl.i, ptr noundef nonnull @.str.48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool2.not = icmp eq i32 %call2.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cle_ale_delay_ns = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 1
  %7 = ptrtoint ptr %cle_ale_delay_ns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cle_ale_delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end4.cond_delay.exit_crit_edge, label %if.end.i

if.end4.cond_delay.exit_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond_delay.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %8)
  %cmp.i = icmp ult i32 %8, 10000
  br i1 %cmp.i, label %cond.false8.i.i, label %cond.false10.i

cond.false8.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = trunc i32 %8 to i16
  %div.i.lhs.trunc.i = add nuw nsw i16 %9, 999
  %div.i22.i = udiv i16 %div.i.lhs.trunc.i, 1000
  %div.i.zext.i = zext i16 %div.i22.i to i32
  br label %cond_delay.exit.sink.split

cond.false10.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i19 = add i32 %8, 999
  %div.i = udiv i32 %sub.i19, 1000
  br label %cond_delay.exit.sink.split

cond_delay.exit.sink.split:                       ; preds = %cond.false10.i, %cond.false8.i.i
  %div.i.zext.i.sink = phi i32 [ %div.i.zext.i, %cond.false8.i.i ], [ %div.i, %cond.false10.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %10(i32 noundef %div.i.zext.i.sink) #9
  br label %cond_delay.exit

cond_delay.exit:                                  ; preds = %cond_delay.exit.sink.split, %if.end4.cond_delay.exit_crit_edge
  %rdy_timeout_ms = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 2
  %11 = ptrtoint ptr %rdy_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rdy_timeout_ms, align 4
  %call5 = call fastcc i32 @marvell_nfc_wait_op(ptr noundef %chip, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %cond_delay.exit.cleanup_crit_edge

cond_delay.exit.cleanup_crit_edge:                ; preds = %cond_delay.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %cond_delay.exit
  %rdy_delay_ns = getelementptr inbounds %struct.marvell_nfc_op, ptr %nfc_op, i32 0, i32 3
  %13 = ptrtoint ptr %rdy_delay_ns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rdy_delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i20 = icmp eq i32 %14, 0
  br i1 %tobool.not.i20, label %if.end8.cleanup_crit_edge, label %if.end.i22

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i22:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %14)
  %cmp.i21 = icmp ult i32 %14, 10000
  br i1 %cmp.i21, label %cond.false8.i.i29, label %cond.false10.i38

cond.false8.i.i29:                                ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #11
  %15 = trunc i32 %14 to i16
  %div.i.lhs.trunc.i23 = add nuw nsw i16 %15, 999
  %div.i22.i24 = udiv i16 %div.i.lhs.trunc.i23, 1000
  %div.i.zext.i25 = zext i16 %div.i22.i24 to i32
  br label %cleanup.sink.split

cond.false10.i38:                                 ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i30 = add i32 %14, 999
  %div.i31 = udiv i32 %sub.i30, 1000
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cond.false10.i38, %cond.false8.i.i29
  %div.i31.sink = phi i32 [ %div.i31, %cond.false10.i38 ], [ %div.i.zext.i25, %cond.false8.i.i29 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %16(i32 noundef %div.i31.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %cond_delay.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ %call5, %cond_delay.exit.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nfc_op) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @marvell_nand_chip_init(ptr noundef %dev, ptr noundef %nfc, ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  %cs = alloca i32, align 4
  %rb = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs) #9
  %2 = ptrtoint ptr %cs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cs, align 4, !annotation !242
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rb) #9
  %3 = ptrtoint ptr %rb to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %rb, align 4, !annotation !242
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

lor.lhs.false:                                    ; preds = %entry
  %caps = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 9
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps, align 4
  %legacy_of_bindings = getelementptr inbounds %struct.marvell_nfc_caps, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %legacy_of_bindings to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %legacy_of_bindings, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.else, label %lor.lhs.false.if.end4_crit_edge

lor.lhs.false.if.end4_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.else:                                          ; preds = %lor.lhs.false
  %call2 = tail call i32 @of_property_count_elems_of_size(ptr noundef %np, ptr noundef nonnull @.str.2, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %do.end, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.78) #12
  br label %cleanup

if.end4:                                          ; preds = %if.else.if.end4_crit_edge, %lor.lhs.false.if.end4_crit_edge, %entry.if.end4_crit_edge
  %nsels.0 = phi i32 [ %call2, %if.else.if.end4_crit_edge ], [ 1, %lor.lhs.false.if.end4_crit_edge ], [ 1, %entry.if.end4_crit_edge ]
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nsels.0, i32 12) #9
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %10, i32 2208) #9
  %retval.0.i = select i1 %9, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i, i32 noundef 3520) #9
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %do.end11, label %for.body.lr.ph

do.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.81) #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end4
  %nsels13 = getelementptr inbounds %struct.marvell_nand_chip, ptr %call.i, i32 0, i32 8
  %11 = ptrtoint ptr %nsels13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %nsels.0, ptr %nsels13, align 8
  %selected_die = getelementptr inbounds %struct.marvell_nand_chip, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %selected_die to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %selected_die, align 4
  %caps17 = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 9
  %assigned_cs = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end76.for.body_crit_edge, %for.body.lr.ph
  %i.0213 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end76.for.body_crit_edge ]
  br i1 %tobool.not, label %lor.lhs.false16, label %for.body.if.then20_crit_edge

for.body.if.then20_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

lor.lhs.false16:                                  ; preds = %for.body
  %13 = ptrtoint ptr %caps17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %caps17, align 4
  %legacy_of_bindings18 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %legacy_of_bindings18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %legacy_of_bindings18, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool19.not = icmp eq i8 %16, 0
  br i1 %tobool19.not, label %if.else21, label %lor.lhs.false16.if.then20_crit_edge

lor.lhs.false16.if.then20_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false16.if.then20_crit_edge, %for.body.if.then20_crit_edge
  %17 = ptrtoint ptr %cs to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.0213, ptr %cs, align 4
  br label %if.end29

if.else21:                                        ; preds = %lor.lhs.false16
  %call22 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.2, i32 noundef %i.0213, ptr noundef nonnull %cs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.else21.if.end29_crit_edge, label %do.end27

if.else21.if.end29_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.end27:                                         ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.84, i32 noundef %call22) #12
  br label %cleanup

if.end29:                                         ; preds = %if.else21.if.end29_crit_edge, %if.then20
  %18 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cs, align 4
  %20 = ptrtoint ptr %caps17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %caps17, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %23)
  %cmp31.not = icmp ult i32 %19, %23
  br i1 %cmp31.not, label %if.end38, label %do.end35

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.87, i32 noundef %19, i32 noundef %23) #12
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  %call39 = call i32 @_test_and_set_bit(i32 noundef %19, ptr noundef %assigned_cs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  %24 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cs, align 4
  br i1 %tobool40.not, label %if.end45, label %do.end44

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.90, i32 noundef %25) #12
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  %arrayidx = getelementptr %struct.marvell_nand_chip, ptr %call.i, i32 0, i32 9, i32 %i.0213
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %27 = icmp ult i32 %25, 4
  br i1 %27, label %switch.lookup, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %if.end45
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.marvell_nand_chip_init, i32 0, i32 %25
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  %ndcb0_csel52 = getelementptr %struct.marvell_nand_chip, ptr %call.i, i32 0, i32 9, i32 %i.0213, i32 1
  %29 = ptrtoint ptr %ndcb0_csel52 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %switch.load, ptr %ndcb0_csel52, align 4
  br i1 %tobool.not, label %lor.lhs.false54, label %switch.lookup.if.then58_crit_edge

switch.lookup.if.then58_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then58

lor.lhs.false54:                                  ; preds = %switch.lookup
  %30 = ptrtoint ptr %caps17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %caps17, align 4
  %legacy_of_bindings56 = getelementptr inbounds %struct.marvell_nfc_caps, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %legacy_of_bindings56 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %legacy_of_bindings56, align 1, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool57.not = icmp eq i8 %33, 0
  br i1 %tobool57.not, label %if.else59, label %lor.lhs.false54.if.then58_crit_edge

lor.lhs.false54.if.then58_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then58

if.then58:                                        ; preds = %lor.lhs.false54.if.then58_crit_edge, %switch.lookup.if.then58_crit_edge
  %34 = ptrtoint ptr %rb to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %rb, align 4
  br label %if.end67

if.else59:                                        ; preds = %lor.lhs.false54
  %call60 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.92, i32 noundef %i.0213, ptr noundef nonnull %rb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.else59.if.end67_crit_edge, label %do.end65

if.else59.if.end67_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

do.end65:                                         ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.94, i32 noundef %call60) #12
  br label %cleanup

if.end67:                                         ; preds = %if.else59.if.end67_crit_edge, %if.then58
  %35 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rb, align 4
  %37 = ptrtoint ptr %caps17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %caps17, align 4
  %max_rb_nb = getelementptr inbounds %struct.marvell_nfc_caps, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %max_rb_nb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_rb_nb, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %40)
  %cmp69.not = icmp ult i32 %36, %40
  br i1 %cmp69.not, label %if.end76, label %do.end73

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.97, i32 noundef %36, i32 noundef %40) #12
  br label %cleanup

if.end76:                                         ; preds = %if.end67
  %rb79 = getelementptr %struct.marvell_nand_chip, ptr %call.i, i32 0, i32 9, i32 %i.0213, i32 2
  %41 = ptrtoint ptr %rb79 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %36, ptr %rb79, align 4
  %inc = add nuw nsw i32 %i.0213, 1
  %exitcond.not = icmp eq i32 %inc, %nsels.0
  br i1 %exitcond.not, label %for.end, label %if.end76.for.body_crit_edge

if.end76.for.body_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end76
  %controller81 = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 32
  %42 = ptrtoint ptr %controller81 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %nfc, ptr %controller81, align 4
  %of_node.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 27
  %43 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %np, ptr %of_node.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 13
  %44 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.end.nand_set_flash_node.exit_crit_edge

for.end.nand_set_flash_node.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nand_set_flash_node.exit

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.106, ptr noundef %name.i.i) #9
  br label %nand_set_flash_node.exit

nand_set_flash_node.exit:                         ; preds = %if.then.i.i, %for.end.nand_set_flash_node.exit_crit_edge
  %call.i198 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.99, ptr noundef null) #9
  %tobool.i.not = icmp eq ptr %call.i198, null
  br i1 %tobool.i.not, label %if.then83, label %nand_set_flash_node.exit.if.end84_crit_edge

nand_set_flash_node.exit.if.end84_crit_edge:      ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then83:                                        ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  %options = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 6
  %46 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %options, align 8
  %or = or i32 %47, 8388608
  store i32 %or, ptr %options, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %nand_set_flash_node.exit.if.end84_crit_edge
  %parent = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 1
  %48 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dev, ptr %parent, align 8
  %regs = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 2
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %50, i32 4
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !226
  %52 = call i32 @llvm.bswap.i32(i32 %51)
  %ndtr0 = getelementptr inbounds %struct.marvell_nand_chip, ptr %call.i, i32 0, i32 4
  %53 = ptrtoint ptr %ndtr0 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %ndtr0, align 8
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %add.ptr90 = getelementptr i8, ptr %55, i32 12
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #9, !srcloc !226
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %ndtr1 = getelementptr inbounds %struct.marvell_nand_chip, ptr %call.i, i32 0, i32 5
  %58 = ptrtoint ptr %ndtr1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %ndtr1, align 4
  %options93 = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 6
  %59 = ptrtoint ptr %options93 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %options93, align 8
  %or94 = or i32 %60, 524288
  store i32 %or94, ptr %options93, align 8
  %61 = ptrtoint ptr %nsels13 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nsels13, align 8
  %call.i199 = call i32 @nand_scan_with_ids(ptr noundef nonnull %call.i, i32 noundef %62, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool97.not = icmp eq i32 %call.i199, 0
  br i1 %tobool97.not, label %if.end102, label %do.end101

do.end101:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.101) #12
  br label %cleanup

if.end102:                                        ; preds = %if.end84
  br i1 %tobool.not, label %if.else106, label %if.then104

if.then104:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  %parts = getelementptr inbounds %struct.pxa3xx_nand_platform_data, ptr %1, i32 0, i32 4
  %63 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %parts, align 4
  %nr_parts = getelementptr inbounds %struct.pxa3xx_nand_platform_data, ptr %1, i32 0, i32 5
  %65 = ptrtoint ptr %nr_parts to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nr_parts, align 4
  %call105 = call i32 @mtd_device_parse_register(ptr noundef nonnull %call.i, ptr noundef null, ptr noundef null, ptr noundef %64, i32 noundef %66) #9
  br label %if.end108

if.else106:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  %call107 = call i32 @mtd_device_parse_register(ptr noundef nonnull %call.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #9
  br label %if.end108

if.end108:                                        ; preds = %if.else106, %if.then104
  %ret.0 = phi i32 [ %call105, %if.then104 ], [ %call107, %if.else106 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool109.not = icmp eq i32 %ret.0, 0
  br i1 %tobool109.not, label %if.end114, label %do.end113

do.end113:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.104, i32 noundef %ret.0) #12
  call void @nand_cleanup(ptr noundef nonnull %call.i) #9
  br label %cleanup

if.end114:                                        ; preds = %if.end108
  %node = getelementptr inbounds %struct.marvell_nand_chip, ptr %call.i, i32 0, i32 1
  %chips = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.marvell_nfc, ptr %nfc, i32 0, i32 7, i32 1
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i, align 4
  %call.i.i200 = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %68, ptr noundef %chips) #9
  br i1 %call.i.i200, label %if.end.i.i, label %if.end114.cleanup_crit_edge

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %node, ptr %prev.i, align 4
  %70 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %chips, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.marvell_nand_chip, ptr %call.i, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %node, ptr %68, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end114.cleanup_crit_edge, %do.end113, %do.end101, %do.end73, %do.end65, %if.end45.cleanup_crit_edge, %do.end44, %do.end35, %do.end27, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end35 ], [ -22, %do.end44 ], [ -22, %do.end73 ], [ %call60, %do.end65 ], [ %call22, %do.end27 ], [ %call.i199, %do.end101 ], [ %ret.0, %do.end113 ], [ -12, %do.end11 ], [ -22, %do.end ], [ 0, %if.end114.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ -22, %if.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rb) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %chips = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %chips to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn14 = load ptr, ptr %chips, align 4
  %cmp.not15 = icmp eq ptr %.pn14, %chips
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %marvell_nfc_wait_ndrun.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn16 = phi ptr [ %.pn, %marvell_nfc_wait_ndrun.exit.for.body_crit_edge ], [ %.pn14, %entry.for.body_crit_edge ]
  %controller.i = getelementptr i8, ptr %.pn16, i32 -116
  %3 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controller.i, align 4
  %call1.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call1.i, 100000000
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %4, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %for.body
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !226
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp10.i = icmp eq i32 %8, 0
  br i1 %cmp10.i, label %for.cond.i.marvell_nfc_wait_ndrun.exit_crit_edge, label %land.lhs.true.i

for.cond.i.marvell_nfc_wait_ndrun.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_wait_ndrun.exit

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call13.i = tail call i64 @ktime_get() #9
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !226
  %12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %phi.cmp.i = icmp eq i32 %12, 0
  br i1 %phi.cmp.i, label %for.end.i.marvell_nfc_wait_ndrun.exit_crit_edge, label %do.end33.i

for.end.i.marvell_nfc_wait_ndrun.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %marvell_nfc_wait_ndrun.exit

do.end33.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.marvell_nfc, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.36) #12
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !233
  %18 = and i32 %17, -17
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !227
  br label %marvell_nfc_wait_ndrun.exit

marvell_nfc_wait_ndrun.exit:                      ; preds = %do.end33.i, %for.end.i.marvell_nfc_wait_ndrun.exit_crit_edge, %for.cond.i.marvell_nfc_wait_ndrun.exit_crit_edge
  %21 = ptrtoint ptr %.pn16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn16, align 4
  %cmp.not = icmp eq ptr %.pn, %chips
  br i1 %cmp.not, label %marvell_nfc_wait_ndrun.exit.for.end_crit_edge, label %marvell_nfc_wait_ndrun.exit.for.body_crit_edge

marvell_nfc_wait_ndrun.exit.for.body_crit_edge:   ; preds = %marvell_nfc_wait_ndrun.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

marvell_nfc_wait_ndrun.exit.for.end_crit_edge:    ; preds = %marvell_nfc_wait_ndrun.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %marvell_nfc_wait_ndrun.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %reg_clk = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %reg_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_clk, align 4
  tail call void @clk_disable(ptr noundef %23) #9
  tail call void @clk_unprepare(ptr noundef %23) #9
  %core_clk = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %25) #9
  tail call void @clk_unprepare(ptr noundef %25) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @marvell_nfc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %core_clk = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %reg_clk = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %reg_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_clk, align 4
  %call.i15 = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not.i16, label %if.end.i19, label %if.end.clk_prepare_enable.exit22_crit_edge

if.end.clk_prepare_enable.exit22_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit22

if.end.i19:                                       ; preds = %if.end
  %call1.i17 = tail call i32 @clk_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool2.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool2.not.i18, label %if.end.i19.if.end6_crit_edge, label %if.then3.i20

if.end.i19.if.end6_crit_edge:                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then3.i20:                                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %clk_prepare_enable.exit22

clk_prepare_enable.exit22:                        ; preds = %if.then3.i20, %if.end.clk_prepare_enable.exit22_crit_edge
  %retval.0.i21 = phi i32 [ %call.i15, %if.end.clk_prepare_enable.exit22_crit_edge ], [ %call1.i17, %if.then3.i20 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i21)
  %cmp3 = icmp slt i32 %retval.0.i21, 0
  br i1 %cmp3, label %if.then4, label %clk_prepare_enable.exit22.if.end6_crit_edge

clk_prepare_enable.exit22.if.end6_crit_edge:      ; preds = %clk_prepare_enable.exit22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %clk_prepare_enable.exit22
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %cleanup

if.end6:                                          ; preds = %clk_prepare_enable.exit22.if.end6_crit_edge, %if.end.i19.if.end6_crit_edge
  %selected_chip = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %selected_chip to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %selected_chip, align 4
  %regs.i = getelementptr inbounds %struct.marvell_nfc, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 -14743680) #9, !srcloc !227
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -1) #9, !srcloc !227
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #9, !srcloc !227
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %clk_prepare_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i21, %if.then4 ], [ 0, %if.end6 ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !34, !36, !38, !40, !41, !42, !44, !46, !48, !50, !52, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !118, !120, !121, !122, !123, !125, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !181, !182, !183, !185, !186, !187, !189, !191, !192, !193, !195, !196, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215}
!llvm.module.flags = !{!217, !218, !219, !220, !221, !222, !223, !224}
!llvm.ident = !{!225}

!0 = !{ptr @__initcall__kmod_marvell_nand__290_3144_marvell_nfc_driver_init6, !1, !"__initcall__kmod_marvell_nand__290_3144_marvell_nfc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 3144, i32 1}
!2 = !{ptr @__exitcall_marvell_nfc_driver_exit, !1, !"__exitcall_marvell_nfc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file291, !4, !"__UNIQUE_ID_file291", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 3146, i32 1}
!5 = !{ptr @__UNIQUE_ID_license292, !4, !"__UNIQUE_ID_license292", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description293, !7, !"__UNIQUE_ID_description293", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 3147, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 3136, i32 12}
!10 = !{ptr @marvell_nfc_driver, !11, !"marvell_nfc_driver", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 3134, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2922, i32 43}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2935, i32 42}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2963, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @marvell_nfc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @marvell_nfc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @nand_controller_init.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @marvell_nand_controller_ops, !28, !"marvell_nand_controller_ops", i1 false, i1 false}
!28 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2550, i32 41}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2506, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @marvell_nand_attach_chip._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @marvell_nand_attach_chip._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2526, i32 15}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2539, i32 9}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2542, i32 4}
!40 = !{ptr @marvell_nand_attach_chip._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @marvell_nand_attach_chip._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @bbt_main_descr, !43, !"bbt_main_descr", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2331, i32 30}
!44 = !{ptr @bbt_pattern, !45, !"bbt_pattern", i1 false, i1 false}
!45 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2328, i32 11}
!46 = !{ptr @bbt_mirror_descr, !47, !"bbt_mirror_descr", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2341, i32 30}
!48 = !{ptr @bbt_mirror_pattern, !49, !"bbt_mirror_pattern", i1 false, i1 false}
!49 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2329, i32 11}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2298, i32 4}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @marvell_nand_ecc_init._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @marvell_nand_ecc_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2316, i32 4}
!58 = !{ptr @marvell_nand_ecc_init._entry.19, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @marvell_nand_ecc_init._entry_ptr.21, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2219, i32 3}
!62 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @marvell_nand_hw_ecc_controller_init._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @marvell_nand_hw_ecc_controller_init._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2237, i32 3}
!67 = !{ptr @marvell_nand_hw_ecc_controller_init._entry.24, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @marvell_nand_hw_ecc_controller_init._entry_ptr.26, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2246, i32 4}
!71 = !{ptr @marvell_nand_hw_ecc_controller_init._entry.27, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @marvell_nand_hw_ecc_controller_init._entry_ptr.29, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @marvell_nfc_layouts, !74, !"marvell_nfc_layouts", i1 false, i1 false}
!74 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 285, i32 43}
!75 = !{ptr @marvell_nand_ooblayout_ops, !76, !"marvell_nand_ooblayout_ops", i1 false, i1 false}
!76 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2204, i32 39}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 1049, i32 7}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 608, i32 3}
!81 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @marvell_nfc_prepare_cmd._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @marvell_nfc_prepare_cmd._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 621, i32 3}
!86 = !{ptr @marvell_nfc_prepare_cmd._entry.33, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @marvell_nfc_prepare_cmd._entry_ptr.35, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 575, i32 3}
!90 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @marvell_nfc_wait_ndrun._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @marvell_nfc_wait_ndrun._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 637, i32 2}
!95 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @marvell_nfc_send_cmd.__UNIQUE_ID_ddebug249, !94, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 653, i32 8}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 670, i32 3}
!102 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @marvell_nfc_end_cmd._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @marvell_nfc_end_cmd._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 874, i32 3}
!107 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @marvell_nfc_xfer_data_dma._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @marvell_nfc_xfer_data_dma._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 889, i32 3}
!112 = !{ptr @marvell_nfc_xfer_data_dma._entry.45, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @marvell_nfc_xfer_data_dma._entry_ptr.47, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 694, i32 44}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 1163, i32 7}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 748, i32 3}
!120 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @marvell_nfc_wait_op._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @marvell_nfc_wait_op._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @init_completion.__key, !124, !"__key", i1 false, i1 false}
!124 = !{!"../include/linux/completion.h", i32 87, i32 2}
!125 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 1329, i32 9}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 1337, i32 9}
!130 = !{ptr @marvell_nfcv2_op_parser, !131, !"marvell_nfcv2_op_parser", i1 false, i1 false}
!131 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2083, i32 36}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 1811, i32 7}
!134 = !{ptr @marvell_nfcv1_op_parser, !135, !"marvell_nfcv1_op_parser", i1 false, i1 false}
!135 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2117, i32 36}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 1961, i32 7}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2001, i32 7}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2868, i32 8}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2792, i32 45}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2796, i32 39}
!146 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2813, i32 3}
!148 = !{ptr @.str.75, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @marvell_nfc_init_dma._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @marvell_nfc_init_dma._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2741, i32 3}
!153 = !{ptr @.str.77, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @marvell_nand_chips_init._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @marvell_nand_chips_init._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2580, i32 4}
!158 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @marvell_nand_chip_init._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @marvell_nand_chip_init._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2590, i32 3}
!163 = !{ptr @marvell_nand_chip_init._entry.80, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @marvell_nand_chip_init._entry_ptr.82, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.84, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2608, i32 5}
!167 = !{ptr @marvell_nand_chip_init._entry.83, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @marvell_nand_chip_init._entry_ptr.85, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.87, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2615, i32 4}
!171 = !{ptr @marvell_nand_chip_init._entry.86, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @marvell_nand_chip_init._entry_ptr.88, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.90, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2621, i32 4}
!175 = !{ptr @marvell_nand_chip_init._entry.89, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @marvell_nand_chip_init._entry_ptr.91, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.92, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2652, i32 41}
!179 = !{ptr @.str.94, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2655, i32 5}
!181 = !{ptr @marvell_nand_chip_init._entry.93, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @marvell_nand_chip_init._entry_ptr.95, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.97, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2663, i32 4}
!185 = !{ptr @marvell_nand_chip_init._entry.96, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @marvell_nand_chip_init._entry_ptr.98, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.99, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2675, i32 33}
!189 = !{ptr @.str.101, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2692, i32 3}
!191 = !{ptr @marvell_nand_chip_init._entry.100, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @marvell_nand_chip_init._entry_ptr.102, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.104, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 2702, i32 3}
!195 = !{ptr @marvell_nand_chip_init._entry.103, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @marvell_nand_chip_init._entry_ptr.105, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.106, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!199 = !{ptr @marvell_nfc_of_ids, !200, !"marvell_nfc_of_ids", i1 false, i1 false}
!200 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 3104, i32 34}
!201 = !{ptr @marvell_armada_8k_nfc_caps, !202, !"marvell_armada_8k_nfc_caps", i1 false, i1 false}
!202 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 3054, i32 38}
!203 = !{ptr @marvell_armada370_nfc_caps, !204, !"marvell_armada370_nfc_caps", i1 false, i1 false}
!204 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 3061, i32 38}
!205 = !{ptr @marvell_pxa3xx_nfc_caps, !206, !"marvell_pxa3xx_nfc_caps", i1 false, i1 false}
!206 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 3067, i32 38}
!207 = !{ptr @marvell_armada_8k_nfc_legacy_caps, !208, !"marvell_armada_8k_nfc_legacy_caps", i1 false, i1 false}
!208 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 3073, i32 38}
!209 = !{ptr @marvell_armada370_nfc_legacy_caps, !210, !"marvell_armada370_nfc_legacy_caps", i1 false, i1 false}
!210 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 3081, i32 38}
!211 = !{ptr @marvell_pxa3xx_nfc_legacy_caps, !212, !"marvell_pxa3xx_nfc_legacy_caps", i1 false, i1 false}
!212 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 3088, i32 38}
!213 = !{ptr @marvell_nfc_pm_ops, !214, !"marvell_nfc_pm_ops", i1 false, i1 false}
!214 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 3050, i32 32}
!215 = !{ptr @marvell_nfc_platform_ids, !216, !"marvell_nfc_platform_ids", i1 false, i1 false}
!216 = !{!"../drivers/mtd/nand/raw/marvell_nand.c", i32 3095, i32 40}
!217 = !{i32 1, !"wchar_size", i32 2}
!218 = !{i32 1, !"min_enum_size", i32 4}
!219 = !{i32 8, !"branch-target-enforcement", i32 0}
!220 = !{i32 8, !"sign-return-address", i32 0}
!221 = !{i32 8, !"sign-return-address-all", i32 0}
!222 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!223 = !{i32 7, !"uwtable", i32 1}
!224 = !{i32 7, !"frame-pointer", i32 2}
!225 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!226 = !{i64 5373057}
!227 = !{i64 5372639}
!228 = !{i8 0, i8 2}
!229 = !{!"branch_weights", i32 2000, i32 1}
!230 = !{i64 790099, i64 790126, i64 790148, i64 790176}
!231 = !{i64 790507, i64 790534, i64 790567, i64 790588, i64 790615, i64 790641}
!232 = !{i64 2148275643, i64 2148275923, i64 2148276257, i64 2148276591}
!233 = !{i64 2154826769}
!234 = !{i64 2154830191}
!235 = !{i64 2149042596, i64 2149042601, i64 2149042614, i64 2149042658, i64 2149042692, i64 2149042713}
!236 = !{i64 2154838708}
!237 = !{i64 2154840292}
!238 = !{i64 2154845475}
!239 = !{i64 2154845317}
!240 = !{i64 2154886151}
!241 = !{i64 2154888069}
!242 = !{!"auto-init"}
