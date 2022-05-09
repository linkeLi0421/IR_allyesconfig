; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/sunxi_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/sunxi_nand.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.nand_op_parser = type { ptr, i32 }
%struct.nand_op_parser_pattern_elem = type { i32, i8, %union.anon.81 }
%union.anon.81 = type { %struct.nand_op_parser_addr_constraints }
%struct.nand_op_parser_addr_constraints = type { i32 }
%struct.nand_op_parser_data_constraints = type { i32 }
%struct.nand_op_parser_pattern = type { ptr, i32, ptr }
%struct.sunxi_nfc_caps = type { i8, i32, i32 }
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
%struct.sunxi_nfc = type { %struct.nand_controller, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.completion, ptr, ptr }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.sunxi_nand_chip = type { %struct.list_head, %struct.nand_chip, ptr, i32, i32, i32, i32, [0 x %struct.sunxi_nand_chip_sel] }
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
%struct.sunxi_nand_chip_sel = type { i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.nand_subop = type { i32, ptr, i32, i32, i32 }
%struct.nand_op_instr = type { i32, %union.anon.75, i32 }
%union.anon.75 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.76, i8 }
%union.anon.76 = type { ptr }

@__initcall__kmod_sunxi_nand__257_2262_sunxi_nfc_driver_init6 = internal global ptr @sunxi_nfc_driver_init, section ".initcall6.init", align 4
@sunxi_nfc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sunxi_nfc_probe, ptr @sunxi_nfc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sunxi_nfc_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sunxi_nfc_driver_exit = internal global ptr @sunxi_nfc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file258 = internal constant [48 x i8] c"sunxi_nand.file=drivers/mtd/nand/raw/sunxi_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [23 x i8] c"sunxi_nand.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author260 = internal constant [34 x i8] c"sunxi_nand.author=Boris BREZILLON\00", section ".modinfo", align 1
@__UNIQUE_ID_description261 = internal constant [62 x i8] c"sunxi_nand.description=Allwinner NAND Flash Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias262 = internal constant [37 x i8] c"sunxi_nand.alias=platform:sunxi_nand\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sunxi_nand\00", [21 x i8] zeroinitializer }, align 32
@sunxi_nfc_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_nfc_a10_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sunxi_nfc_a23_caps }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@sunxi_nfc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 2139, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to retrieve ahb clk\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sunxi_nfc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mtd/nand/raw/sunxi_nand.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sunxi_nfc_probe._entry_ptr = internal global ptr @sunxi_nfc_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@sunxi_nfc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 2149, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to retrieve mod clk\0A\00", [36 x i8] zeroinitializer }, align 32
@sunxi_nfc_probe._entry_ptr.10 = internal global ptr @sunxi_nfc_probe._entry.8, section ".printk_index", align 4
@sunxi_nfc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 2166, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reset err %d\0A\00", [18 x i8] zeroinitializer }, align 32
@sunxi_nfc_probe._entry_ptr.13 = internal global ptr @sunxi_nfc_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sunxi-nand\00", [21 x i8] zeroinitializer }, align 32
@sunxi_nfc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 2195, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to init nand chips\0A\00", [37 x i8] zeroinitializer }, align 32
@sunxi_nfc_probe._entry_ptr.17 = internal global ptr @sunxi_nfc_probe._entry.15, section ".printk_index", align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@sunxi_nfc_rst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 345, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"wait for NAND controller reset timedout\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sunxi_nfc_rst\00", [18 x i8] zeroinitializer }, align 32
@sunxi_nfc_rst._entry_ptr = internal global ptr @sunxi_nfc_rst._entry, section ".printk_index", align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rxtx\00", [27 x i8] zeroinitializer }, align 32
@sunxi_nfc_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 2096, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to request rxtx DMA channel: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sunxi_nfc_dma_init\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sunxi_nfc_dma_init._entry_ptr = internal global ptr @sunxi_nfc_dma_init._entry, section ".printk_index", align 4
@sunxi_nand_chips_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 2048, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"too many NAND chips: %d (max = 8)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sunxi_nand_chips_init\00", [42 x i8] zeroinitializer }, align 32
@sunxi_nand_chips_init._entry_ptr = internal global ptr @sunxi_nand_chips_init._entry, section ".printk_index", align 4
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@sunxi_nand_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 1969, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid reg property size\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sunxi_nand_chip_init\00", [43 x i8] zeroinitializer }, align 32
@sunxi_nand_chip_init._entry_ptr = internal global ptr @sunxi_nand_chip_init._entry, section ".printk_index", align 4
@sunxi_nand_chip_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 1984, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not retrieve reg property: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@sunxi_nand_chip_init._entry_ptr.32 = internal global ptr @sunxi_nand_chip_init._entry.30, section ".printk_index", align 4
@sunxi_nand_chip_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.4, i32 1991, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"invalid reg value: %u (max CS = 7)\0A\00", [60 x i8] zeroinitializer }, align 32
@sunxi_nand_chip_init._entry_ptr.35 = internal global ptr @sunxi_nand_chip_init._entry.33, section ".printk_index", align 4
@sunxi_nand_chip_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.4, i32 1996, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CS %d already assigned\0A\00", [40 x i8] zeroinitializer }, align 32
@sunxi_nand_chip_init._entry_ptr.38 = internal global ptr @sunxi_nand_chip_init._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"allwinner,rb\00", [19 x i8] zeroinitializer }, align 32
@sunxi_nand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @sunxi_nand_attach_chip, ptr null, ptr @sunxi_nfc_exec_op, ptr @sunxi_nfc_setup_interface }, [16 x i8] zeroinitializer }, align 32
@sunxi_nand_chip_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.29, ptr @.str.4, i32 2030, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register mtd device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sunxi_nand_chip_init._entry_ptr.42 = internal global ptr @sunxi_nand_chip_init._entry.40, section ".printk_index", align 4
@sunxi_nand_hw_ecc_ctrl_init.strengths = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\10\18\1C (08<@", [23 x i8] zeroinitializer }, align 32
@sunxi_nand_hw_ecc_ctrl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 1695, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unsupported strength\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sunxi_nand_hw_ecc_ctrl_init\00", [36 x i8] zeroinitializer }, align 32
@sunxi_nand_hw_ecc_ctrl_init._entry_ptr = internal global ptr @sunxi_nand_hw_ecc_ctrl_init._entry, section ".printk_index", align 4
@sunxi_nand_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @sunxi_nand_ooblayout_ecc, ptr @sunxi_nand_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sunxi_nfc_wait_cmd_fifo_empty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 328, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wait for empty cmd FIFO timedout\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sunxi_nfc_wait_cmd_fifo_empty\00", [34 x i8] zeroinitializer }, align 32
@sunxi_nfc_wait_cmd_fifo_empty._entry_ptr = internal global ptr @sunxi_nfc_wait_cmd_fifo_empty._entry, section ".printk_index", align 4
@sunxi_nfc_randomizer_page_seeds = internal constant { [128 x i16], [64 x i8] } { [128 x i16] [i16 11125, i16 3024, i16 23715, i16 25297, i16 7315, i16 2025, i16 8546, i16 14962, i16 3431, i16 26617, i16 7143, i16 1917, i16 815, i16 3500, i16 10006, i16 9270, i16 31010, i16 5392, i16 14432, i16 21127, i16 18447, i16 16978, i16 6025, i16 23085, i16 10825, i16 24080, i16 17279, i16 19278, i16 12101, i16 8558, i16 23735, i16 28976, i16 10815, i16 24804, i16 19913, i16 3824, i16 3922, i16 7097, i16 25105, i16 31318, i16 8813, i16 20135, i16 28470, i16 13970, i16 14527, i16 3170, i16 1515, i16 19541, i16 24820, i16 29324, i16 15215, i16 8247, i16 32617, i16 2358, i16 25882, i16 19691, i16 25112, i16 31219, i16 14399, i16 6361, i16 20229, i16 23682, i16 10514, i16 28439, i16 26710, i16 22840, i16 4103, i16 25003, i16 15999, i16 22466, i16 21551, i16 20322, i16 29780, i16 11948, i16 30521, i16 17108, i16 12176, i16 17242, i16 11858, i16 8292, i16 25468, i16 26285, i16 11408, i16 2989, i16 30108, i16 41, i16 2438, i16 28966, i16 7335, i16 5637, i16 14442, i16 10229, i16 4992, i16 28021, i16 9411, i16 3982, i16 11130, i16 5144, i16 8145, i16 32193, i16 11662, i16 17327, i16 8807, i16 32163, i16 20029, i16 4920, i16 20699, i16 17741, i16 30285, i16 16547, i16 17126, i16 9771, i16 11566, i16 6890, i16 11799, i16 5949, i16 14958, i16 29119, i16 9721, i16 2653, i16 31831, i16 4030, i16 18126, i16 18745, i16 27415, i16 14267, i16 16017, i16 30427], [64 x i8] zeroinitializer }, align 32
@sunxi_nfc_randomizer_ecc512_seeds = internal constant { [128 x i16], [64 x i8] } { [128 x i16] [i16 13126, i16 13951, i16 7960, i16 30362, i16 20324, i16 1676, i16 12017, i16 27492, i16 10409, i16 5591, i16 12536, i16 13913, i16 21467, i16 31839, i16 29140, i16 17417, i16 9963, i16 972, i16 25949, i16 18388, i16 19882, i16 2167, i16 28973, i16 13847, i16 12900, i16 18858, i16 32670, i16 22670, i16 20412, i16 29046, i16 32657, i16 27757, i16 19349, i16 24503, i16 14404, i16 16439, i16 388, i16 2075, i16 3816, i16 23441, i16 10557, i16 8049, i16 3695, i16 16427, i16 20770, i16 7762, i16 8894, i16 15661, i16 30140, i16 31840, i16 25233, i16 6703, i16 25044, i16 29866, i16 16704, i16 10667, i16 18221, i16 10322, i16 382, i16 5608, i16 24258, i16 6095, i16 32015, i16 1720, i16 4474, i16 27540, i16 30875, i16 12582, i16 27333, i16 23527, i16 5391, i16 20984, i16 30857, i16 2725, i16 26173, i16 30696, i16 2951, i16 15819, i16 13837, i16 8587, i16 20783, i16 32201, i16 27213, i16 25354, i16 13639, i16 7634, i16 23274, i16 27045, i16 31738, i16 24143, i16 5401, i16 25648, i16 14862, i16 24243, i16 21541, i16 3194, i16 21824, i16 13936, i16 25537, i16 12777, i16 23097, i16 11751, i16 22905, i16 10385, i16 5474, i16 331, i16 23301, i16 10070, i16 23092, i16 5034, i16 27829, i16 11318, i16 24178, i16 4870, i16 2145, i16 5615, i16 7912, i16 23095, i16 31428, i16 17885, i16 17604, i16 29286, i16 12097, i16 15564, i16 1118, i16 32064, i16 31846, i16 4000], [64 x i8] zeroinitializer }, align 32
@sunxi_nfc_randomizer_ecc1024_seeds = internal constant { [128 x i16], [64 x i8] } { [128 x i16] [i16 11509, i16 13809, i16 25508, i16 21108, i16 11218, i16 30603, i16 29317, i16 12982, i16 27228, i16 28886, i16 30077, i16 26473, i16 21365, i16 7809, i16 3315, i16 14722, i16 26503, i16 1066, i16 27721, i16 6437, i16 22184, i16 16553, i16 1598, i16 31705, i16 19903, i16 21996, i16 26414, i16 29492, i16 20869, i16 19712, i16 9002, i16 32263, i16 17501, i16 27538, i16 21135, i16 16981, i16 21434, i16 32130, i16 10798, i16 14926, i16 30187, i16 17676, i16 26692, i16 7005, i16 22554, i16 19654, i16 889, i16 14258, i16 16799, i16 3730, i16 27431, i16 22052, i16 483, i16 1985, i16 17573, i16 4876, i16 5096, i16 22800, i16 2166, i16 24773, i16 21731, i16 23423, i16 8809, i16 20639, i16 30309, i16 14077, i16 16026, i16 1401, i16 25237, i16 5359, i16 2689, i16 7116, i16 19222, i16 25819, i16 1300, i16 20231, i16 1425, i16 13686, i16 26707, i16 3486, i16 9631, i16 14519, i16 25851, i16 12436, i16 18067, i16 28125, i16 10683, i16 3016, i16 16199, i16 18702, i16 3086, i16 31027, i16 15518, i16 22592, i16 14733, i16 15976, i16 19185, i16 29173, i16 22479, i16 4385, i16 25835, i16 13689, i16 5548, i16 22605, i16 24362, i16 18402, i16 25896, i16 28332, i16 6510, i16 27542, i16 1104, i16 377, i16 24732, i16 1761, i16 17958, i16 17095, i16 10046, i16 18543, i16 1797, i16 5633, i16 5211, i16 16510, i16 1579, i16 22437, i16 21497, i16 22105, i16 17424, i16 15565], [64 x i8] zeroinitializer }, align 32
@sunxi_nfc_wait_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 314, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wait interrupt timedout\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sunxi_nfc_wait_events\00", [42 x i8] zeroinitializer }, align 32
@sunxi_nfc_wait_events._entry_ptr = internal global ptr @sunxi_nfc_wait_events._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sunxi_nfc_op_parser = internal constant { %struct.nand_op_parser, [24 x i8] } { %struct.nand_op_parser { ptr @.compoundliteral.51, i32 2 }, [24 x i8] zeroinitializer }, align 32
@sunxi_nfc_norb_op_parser = internal constant { %struct.nand_op_parser, [24 x i8] } { %struct.nand_op_parser { ptr @.compoundliteral.55, i32 3 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }>, [36 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }> <{ %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.81 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 1, i8 1, %union.anon.81 { %struct.nand_op_parser_addr_constraints { i32 8 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.81 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.81 zeroinitializer }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 1, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 1024 } } } }>, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem }>, [36 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem }> <{ %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.81 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 1, i8 1, %union.anon.81 { %struct.nand_op_parser_addr_constraints { i32 8 } } }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 1, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 1024 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.81 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.81 zeroinitializer } }>, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal constant { [2 x %struct.nand_op_parser_pattern], [40 x i8] } { [2 x %struct.nand_op_parser_pattern] [%struct.nand_op_parser_pattern { ptr @.compoundliteral, i32 5, ptr @sunxi_nfc_exec_subop }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.50, i32 5, ptr @sunxi_nfc_exec_subop }], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }>, [48 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }> <{ %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.81 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 1, i8 1, %union.anon.81 { %struct.nand_op_parser_addr_constraints { i32 8 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.81 zeroinitializer }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 1, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 1024 } } } }>, [48 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem }>, [48 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem }> <{ %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.81 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 1, i8 1, %union.anon.81 { %struct.nand_op_parser_addr_constraints { i32 8 } } }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 1, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 1024 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.81 zeroinitializer } }>, [48 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal constant { [1 x %struct.nand_op_parser_pattern_elem], [20 x i8] } { [1 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem { i32 4, i8 0, %union.anon.81 zeroinitializer }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal constant { [3 x %struct.nand_op_parser_pattern], [60 x i8] } { [3 x %struct.nand_op_parser_pattern] [%struct.nand_op_parser_pattern { ptr @.compoundliteral.52, i32 4, ptr @sunxi_nfc_exec_subop }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.53, i32 4, ptr @sunxi_nfc_exec_subop }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.54, i32 1, ptr @sunxi_nfc_soft_waitrdy }], [60 x i8] zeroinitializer }, align 32
@sunxi_nfc_setup_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 1505, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unsupported tWB\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sunxi_nfc_setup_interface\00", [38 x i8] zeroinitializer }, align 32
@sunxi_nfc_setup_interface._entry_ptr = internal global ptr @sunxi_nfc_setup_interface._entry, section ".printk_index", align 4
@sunxi_nfc_setup_interface._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.4, i32 1511, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unsupported tADL\0A\00", [46 x i8] zeroinitializer }, align 32
@sunxi_nfc_setup_interface._entry_ptr.60 = internal global ptr @sunxi_nfc_setup_interface._entry.58, section ".printk_index", align 4
@sunxi_nfc_setup_interface._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.4, i32 1517, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unsupported tWHR\0A\00", [46 x i8] zeroinitializer }, align 32
@sunxi_nfc_setup_interface._entry_ptr.63 = internal global ptr @sunxi_nfc_setup_interface._entry.61, section ".printk_index", align 4
@sunxi_nfc_setup_interface._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.4, i32 1524, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unsupported tRHW\0A\00", [46 x i8] zeroinitializer }, align 32
@sunxi_nfc_setup_interface._entry_ptr.66 = internal global ptr @sunxi_nfc_setup_interface._entry.64, section ".printk_index", align 4
@sunxi_nfc_setup_interface._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.57, ptr @.str.4, i32 1553, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to round clk %lu\0A\00", [39 x i8] zeroinitializer }, align 32
@sunxi_nfc_setup_interface._entry_ptr.69 = internal global ptr @sunxi_nfc_setup_interface._entry.67, section ".printk_index", align 4
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@sunxi_nfc_a10_caps = internal constant { %struct.sunxi_nfc_caps, [20 x i8] } { %struct.sunxi_nfc_caps { i8 0, i32 48, i32 4 }, [20 x i8] zeroinitializer }, align 32
@sunxi_nfc_a23_caps = internal constant { %struct.sunxi_nfc_caps, [20 x i8] } { %struct.sunxi_nfc_caps { i8 1, i32 768, i32 8 }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.72 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"sunxi_nfc_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2254, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2256, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [14 x i8] c"sunxi_nfc_ids\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2241, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2137, i32 35 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2139, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2147, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2149, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2166, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2182, i32 14 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2195, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1105, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 345, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2089, i32 41 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2096, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2048, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1964, i32 27 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1969, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1983, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1989, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1996, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2002, i32 39 }
@___asan_gen_.199 = private unnamed_addr constant [26 x i8] c"sunxi_nand_controller_ops\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1947, i32 41 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2030, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [10 x i8] c"strengths\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1631, i32 18 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1695, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [25 x i8] c"sunxi_nand_ooblayout_ops\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1617, i32 39 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 328, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [32 x i8] c"sunxi_nfc_randomizer_page_seeds\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 522, i32 18 }
@___asan_gen_.235 = private unnamed_addr constant [34 x i8] c"sunxi_nfc_randomizer_ecc512_seeds\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 550, i32 18 }
@___asan_gen_.238 = private unnamed_addr constant [35 x i8] c"sunxi_nfc_randomizer_ecc1024_seeds\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 569, i32 18 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 314, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 87, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [20 x i8] c"sunxi_nfc_op_parser\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1900, i32 36 }
@___asan_gen_.259 = private unnamed_addr constant [25 x i8] c"sunxi_nfc_norb_op_parser\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1915, i32 36 }
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1505, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1511, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1517, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1524, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 1552, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 464, i32 31 }
@___asan_gen_.305 = private unnamed_addr constant [19 x i8] c"sunxi_nfc_a10_caps\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2230, i32 36 }
@___asan_gen_.308 = private unnamed_addr constant [19 x i8] c"sunxi_nfc_a23_caps\00", align 1
@___asan_gen_.309 = private constant [37 x i8] c"../drivers/mtd/nand/raw/sunxi_nand.c\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 2235, i32 36 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_alias262, ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_license259, ptr @__exitcall_sunxi_nfc_driver_exit, ptr @__initcall__kmod_sunxi_nand__257_2262_sunxi_nfc_driver_init6, ptr @sunxi_nand_chip_init._entry, ptr @sunxi_nand_chip_init._entry.30, ptr @sunxi_nand_chip_init._entry.33, ptr @sunxi_nand_chip_init._entry.36, ptr @sunxi_nand_chip_init._entry.40, ptr @sunxi_nand_chip_init._entry_ptr, ptr @sunxi_nand_chip_init._entry_ptr.32, ptr @sunxi_nand_chip_init._entry_ptr.35, ptr @sunxi_nand_chip_init._entry_ptr.38, ptr @sunxi_nand_chip_init._entry_ptr.42, ptr @sunxi_nand_chips_init._entry, ptr @sunxi_nand_chips_init._entry_ptr, ptr @sunxi_nand_hw_ecc_ctrl_init._entry, ptr @sunxi_nand_hw_ecc_ctrl_init._entry_ptr, ptr @sunxi_nfc_dma_init._entry, ptr @sunxi_nfc_dma_init._entry_ptr, ptr @sunxi_nfc_driver_exit, ptr @sunxi_nfc_probe._entry, ptr @sunxi_nfc_probe._entry.11, ptr @sunxi_nfc_probe._entry.15, ptr @sunxi_nfc_probe._entry.8, ptr @sunxi_nfc_probe._entry_ptr, ptr @sunxi_nfc_probe._entry_ptr.10, ptr @sunxi_nfc_probe._entry_ptr.13, ptr @sunxi_nfc_probe._entry_ptr.17, ptr @sunxi_nfc_rst._entry, ptr @sunxi_nfc_rst._entry_ptr, ptr @sunxi_nfc_setup_interface._entry, ptr @sunxi_nfc_setup_interface._entry.58, ptr @sunxi_nfc_setup_interface._entry.61, ptr @sunxi_nfc_setup_interface._entry.64, ptr @sunxi_nfc_setup_interface._entry.67, ptr @sunxi_nfc_setup_interface._entry_ptr, ptr @sunxi_nfc_setup_interface._entry_ptr.60, ptr @sunxi_nfc_setup_interface._entry_ptr.63, ptr @sunxi_nfc_setup_interface._entry_ptr.66, ptr @sunxi_nfc_setup_interface._entry_ptr.69, ptr @sunxi_nfc_wait_cmd_fifo_empty._entry, ptr @sunxi_nfc_wait_cmd_fifo_empty._entry_ptr, ptr @sunxi_nfc_wait_events._entry, ptr @sunxi_nfc_wait_events._entry_ptr, ptr @sunxi_nfc_driver, ptr @.str, ptr @sunxi_nfc_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @nand_controller_init.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @sunxi_nand_controller_ops, ptr @.str.41, ptr @sunxi_nand_hw_ecc_ctrl_init.strengths, ptr @.str.43, ptr @.str.44, ptr @sunxi_nand_ooblayout_ops, ptr @.str.45, ptr @.str.46, ptr @sunxi_nfc_randomizer_page_seeds, ptr @sunxi_nfc_randomizer_ecc512_seeds, ptr @sunxi_nfc_randomizer_ecc1024_seeds, ptr @.str.47, ptr @.str.48, ptr @init_completion.__key, ptr @.str.49, ptr @sunxi_nfc_op_parser, ptr @sunxi_nfc_norb_op_parser, ptr @.compoundliteral, ptr @.compoundliteral.50, ptr @.compoundliteral.51, ptr @.compoundliteral.52, ptr @.compoundliteral.53, ptr @.compoundliteral.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @sunxi_nfc_a10_caps, ptr @sunxi_nfc_a23_caps], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_rst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nand_chips_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nand_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nand_chip_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nand_chip_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nand_chip_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nand_chip_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nand_hw_ecc_ctrl_init.strengths to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nand_hw_ecc_ctrl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nand_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_wait_cmd_fifo_empty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_randomizer_page_seeds to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_randomizer_ecc512_seeds to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_randomizer_ecc1024_seeds to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_wait_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_op_parser to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_norb_op_parser to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_setup_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_setup_interface._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_setup_interface._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_setup_interface._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_setup_interface._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_a10_caps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_nfc_a23_caps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_nfc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sunxi_nfc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_nfc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @sunxi_nfc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_nfc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 196, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.sunxi_nfc, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @nand_controller_init.__key) #8
  %chips = getelementptr inbounds %struct.sunxi_nfc, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %chips to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %chips, ptr %chips, align 4
  %prev.i = getelementptr inbounds %struct.sunxi_nfc, ptr %call.i, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %chips, ptr %prev.i, align 4
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call3) #8
  %regs = getelementptr inbounds %struct.sunxi_nfc, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %ahb_clk = getelementptr inbounds %struct.sunxi_nfc, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call14, ptr %ahb_clk, align 4
  %cmp.i155 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  %6 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ahb_clk, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %call.i156 = tail call i32 @clk_prepare(ptr noundef %call14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool.not.i = icmp eq i32 %call.i156, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end20
  %call1.i = tail call i32 @clk_enable(ptr noundef %call14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end25, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call14) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end.i
  %call26 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  %mod_clk = getelementptr inbounds %struct.sunxi_nfc, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %mod_clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call26, ptr %mod_clk, align 4
  %cmp.i157 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157, label %do.end32, label %if.end35

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #11
  %10 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mod_clk, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %out_ahb_clk_unprepare

if.end35:                                         ; preds = %if.end25
  %call.i158 = tail call i32 @clk_prepare(ptr noundef %call26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool.not.i159 = icmp eq i32 %call.i158, 0
  br i1 %tobool.not.i159, label %if.end.i162, label %if.end35.out_ahb_clk_unprepare_crit_edge

if.end35.out_ahb_clk_unprepare_crit_edge:         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ahb_clk_unprepare

if.end.i162:                                      ; preds = %if.end35
  %call1.i160 = tail call i32 @clk_enable(ptr noundef %call26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i160)
  %tobool2.not.i161 = icmp eq i32 %call1.i160, 0
  br i1 %tobool2.not.i161, label %if.end40, label %if.then3.i163

if.then3.i163:                                    ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call26) #8
  br label %out_ahb_clk_unprepare

if.end40:                                         ; preds = %if.end.i162
  %call.i166 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %reset = getelementptr inbounds %struct.sunxi_nfc, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i166, ptr %reset, align 4
  %cmp.i167 = icmp ugt ptr %call.i166, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call.i166 to i32
  br label %out_mod_clk_unprepare

if.end47:                                         ; preds = %if.end40
  %call49 = tail call i32 @reset_control_deassert(ptr noundef %call.i166) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end55, label %do.end54

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call49) #11
  br label %out_mod_clk_unprepare

if.end55:                                         ; preds = %if.end47
  %call57 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %caps = getelementptr inbounds %struct.sunxi_nfc, ptr %call.i, i32 0, i32 11
  %15 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call57, ptr %caps, align 4
  %tobool59.not = icmp eq ptr %call57, null
  br i1 %tobool59.not, label %if.end55.out_ahb_reset_reassert_crit_edge, label %if.end61

if.end55.out_ahb_reset_reassert_crit_edge:        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ahb_reset_reassert

if.end61:                                         ; preds = %if.end55
  %call62 = tail call fastcc i32 @sunxi_nfc_rst(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %do.body66, label %if.end61.out_ahb_reset_reassert_crit_edge

if.end61.out_ahb_reset_reassert_crit_edge:        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ahb_reset_reassert

do.body66:                                        ; preds = %if.end61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !165
  %call.i168 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call11, ptr noundef nonnull @sunxi_nfc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool71.not = icmp eq i32 %call.i168, 0
  br i1 %tobool71.not, label %if.end73, label %do.body66.out_ahb_reset_reassert_crit_edge

do.body66.out_ahb_reset_reassert_crit_edge:       ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ahb_reset_reassert

if.end73:                                         ; preds = %do.body66
  %call74 = tail call fastcc i32 @sunxi_nfc_dma_init(ptr noundef nonnull %call.i, ptr noundef %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end73.out_ahb_reset_reassert_crit_edge

if.end73.out_ahb_reset_reassert_crit_edge:        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ahb_reset_reassert

if.end77:                                         ; preds = %if.end73
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call78 = tail call fastcc i32 @sunxi_nand_chips_init(ptr noundef %dev1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end77.cleanup_crit_edge, label %do.end83

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end83:                                         ; preds = %if.end77
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #11
  %dmac = getelementptr inbounds %struct.sunxi_nfc, ptr %call.i, i32 0, i32 10
  %19 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dmac, align 4
  %tobool85.not = icmp eq ptr %20, null
  br i1 %tobool85.not, label %do.end83.out_ahb_reset_reassert_crit_edge, label %if.then86

do.end83.out_ahb_reset_reassert_crit_edge:        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ahb_reset_reassert

if.then86:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %20) #8
  br label %out_ahb_reset_reassert

out_ahb_reset_reassert:                           ; preds = %if.then86, %do.end83.out_ahb_reset_reassert_crit_edge, %if.end73.out_ahb_reset_reassert_crit_edge, %do.body66.out_ahb_reset_reassert_crit_edge, %if.end61.out_ahb_reset_reassert_crit_edge, %if.end55.out_ahb_reset_reassert_crit_edge
  %ret.0 = phi i32 [ %call62, %if.end61.out_ahb_reset_reassert_crit_edge ], [ %call.i168, %do.body66.out_ahb_reset_reassert_crit_edge ], [ %call74, %if.end73.out_ahb_reset_reassert_crit_edge ], [ %call78, %if.then86 ], [ %call78, %do.end83.out_ahb_reset_reassert_crit_edge ], [ -22, %if.end55.out_ahb_reset_reassert_crit_edge ]
  %21 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reset, align 4
  %call90 = tail call i32 @reset_control_assert(ptr noundef %22) #8
  br label %out_mod_clk_unprepare

out_mod_clk_unprepare:                            ; preds = %out_ahb_reset_reassert, %do.end54, %if.then44
  %ret.1 = phi i32 [ %14, %if.then44 ], [ %call49, %do.end54 ], [ %ret.0, %out_ahb_reset_reassert ]
  %23 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mod_clk, align 4
  tail call void @clk_disable(ptr noundef %24) #8
  tail call void @clk_unprepare(ptr noundef %24) #8
  br label %out_ahb_clk_unprepare

out_ahb_clk_unprepare:                            ; preds = %out_mod_clk_unprepare, %if.then3.i163, %if.end35.out_ahb_clk_unprepare_crit_edge, %do.end32
  %ret.2 = phi i32 [ %12, %do.end32 ], [ %ret.1, %out_mod_clk_unprepare ], [ %call1.i160, %if.then3.i163 ], [ %call.i158, %if.end35.out_ahb_clk_unprepare_crit_edge ]
  %25 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ahb_clk, align 4
  tail call void @clk_disable(ptr noundef %26) #8
  tail call void @clk_unprepare(ptr noundef %26) #8
  br label %cleanup

cleanup:                                          ; preds = %out_ahb_clk_unprepare, %if.end77.cleanup_crit_edge, %if.then3.i, %if.end20.cleanup_crit_edge, %do.end, %if.end10.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then7 ], [ %8, %do.end ], [ %ret.2, %out_ahb_clk_unprepare ], [ -12, %entry.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ 0, %if.end77.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i156, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_nfc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chips.i = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %chips.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %chips.i, align 4
  %cmp.i.not31.i = icmp eq ptr %3, %chips.i
  br i1 %cmp.i.not31.i, label %entry.sunxi_nand_chips_cleanup.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.sunxi_nand_chips_cleanup.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nand_chips_cleanup.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %4 = phi ptr [ %18, %list_del.exit.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %nand.i = getelementptr inbounds %struct.sunxi_nand_chip, ptr %4, i32 0, i32 1
  %call3.i = tail call i32 @mtd_device_unregister(ptr noundef %nand.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %while.body.i.if.end.i_crit_edge, label %do.end.i, !prof !166

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2075, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %while.body.i.if.end.i_crit_edge
  tail call void @nand_cleanup(ptr noundef %nand.i) #8
  %ecc1.i.i = getelementptr inbounds %struct.sunxi_nand_chip, ptr %4, i32 0, i32 1, i32 33
  %5 = ptrtoint ptr %ecc1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ecc1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cond.i.i = icmp eq i32 %6, 3
  br i1 %cond.i.i, label %sw.bb.i.i, label %if.end.i.sunxi_nand_ecc_cleanup.exit.i_crit_edge

if.end.i.sunxi_nand_ecc_cleanup.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nand_ecc_cleanup.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %ecc.i.i.i = getelementptr inbounds %struct.sunxi_nand_chip, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %ecc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ecc.i.i.i, align 8
  tail call void @kfree(ptr noundef %8) #8
  br label %sunxi_nand_ecc_cleanup.exit.i

sunxi_nand_ecc_cleanup.exit.i:                    ; preds = %sw.bb.i.i, %if.end.i.sunxi_nand_ecc_cleanup.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %sunxi_nand_ecc_cleanup.exit.i.list_del.exit.i_crit_edge

sunxi_nand_ecc_cleanup.exit.i.list_del.exit.i_crit_edge: ; preds = %sunxi_nand_ecc_cleanup.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %sunxi_nand_ecc_cleanup.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %sunxi_nand_ecc_cleanup.exit.i.list_del.exit.i_crit_edge
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %chips.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %chips.i, align 4
  %cmp.i.not.i = icmp eq ptr %18, %chips.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.sunxi_nand_chips_cleanup.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

list_del.exit.i.sunxi_nand_chips_cleanup.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nand_chips_cleanup.exit

sunxi_nand_chips_cleanup.exit:                    ; preds = %list_del.exit.i.sunxi_nand_chips_cleanup.exit_crit_edge, %entry.sunxi_nand_chips_cleanup.exit_crit_edge
  %reset = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reset, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %20) #8
  %dmac = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dmac, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %sunxi_nand_chips_cleanup.exit.if.end_crit_edge, label %if.then

sunxi_nand_chips_cleanup.exit.if.end_crit_edge:   ; preds = %sunxi_nand_chips_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sunxi_nand_chips_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %22) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %sunxi_nand_chips_cleanup.exit.if.end_crit_edge
  %mod_clk = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mod_clk, align 4
  tail call void @clk_disable(ptr noundef %24) #8
  tail call void @clk_unprepare(ptr noundef %24) #8
  %ahb_clk = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ahb_clk, align 4
  tail call void @clk_disable(ptr noundef %26) #8
  tail call void @clk_unprepare(ptr noundef %26) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_nfc_rst(ptr nocapture noundef readonly %nfc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 33554432) #8, !srcloc !165
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 343) #8
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  %7 = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not59 = icmp eq i32 %7, 0
  br i1 %tobool.not59, label %entry.if.end46_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

land.lhs.true:                                    ; preds = %if.then36.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call23 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call23, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call23, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then36

if.then36:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  %11 = and i32 %10, 33554432
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then36.if.end46_crit_edge, label %if.then36.land.lhs.true_crit_edge

if.then36.land.lhs.true_crit_edge:                ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then36.if.end46_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

for.end:                                          ; preds = %land.lhs.true
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  %15 = and i32 %14, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool40.not = icmp eq i32 %15, 0
  br i1 %tobool40.not, label %for.end.if.end46_crit_edge, label %do.end45

for.end.if.end46_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.end45:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.19) #11
  br label %if.end46

if.end46:                                         ; preds = %do.end45, %for.end.if.end46_crit_edge, %if.then36.if.end46_crit_edge, %entry.if.end46_crit_edge
  %cond = phi i32 [ -110, %do.end45 ], [ 0, %for.end.if.end46_crit_edge ], [ 0, %entry.if.end46_crit_edge ], [ 0, %if.then36.if.end46_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_nfc_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.sunxi_nfc, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !169
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !169
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  %and = and i32 %7, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %7)
  %cmp = icmp eq i32 %and, %7
  br i1 %cmp, label %if.then10, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %complete = getelementptr inbounds %struct.sunxi_nfc, ptr %dev_id, i32 0, i32 9
  tail call void @complete(ptr noundef %complete) #8
  br label %do.body

do.body:                                          ; preds = %if.then10, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %and12 = shl i32 %3, 24
  %8 = and i32 %and12, 117440512
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr14 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %8) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @arm_heavy_mb() #8
  %neg = xor i32 %3, -1
  %and18 = and i32 %7, %neg
  %and19 = shl i32 %and18, 24
  %11 = and i32 %and19, 117440512
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr21 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %11) #8, !srcloc !165
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_nfc_dma_init(ptr nocapture noundef %nfc, ptr nocapture noundef readonly %r) unnamed_addr #2 align 64 {
entry:
  %dmac_cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 11
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call = tail call ptr @dma_request_chan(ptr noundef %5, ptr noundef nonnull @.str.21) #8
  %dmac = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 10
  %6 = ptrtoint ptr %dmac to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %dmac, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %cmp = icmp eq ptr %call, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then3.cleanup_crit_edge, label %do.end

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call to i32
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.22, i32 noundef %7) #11
  %10 = ptrtoint ptr %dmac to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dmac, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dmac_cfg) #8
  %11 = call ptr @memset(ptr %dmac_cfg, i32 0, i32 48)
  %12 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %r, align 4
  %14 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %caps, align 4
  %reg_io_data = getelementptr inbounds %struct.sunxi_nfc_caps, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %reg_io_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg_io_data, align 4
  %add = add i32 %17, %13
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dmac_cfg, i32 0, i32 1
  %18 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %src_addr, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dmac_cfg, i32 0, i32 2
  %19 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add, ptr %dst_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dmac_cfg, i32 0, i32 3
  %20 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dmac_cfg, i32 0, i32 4
  %21 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %dst_addr_width, align 4
  %dma_maxburst = getelementptr inbounds %struct.sunxi_nfc_caps, ptr %15, i32 0, i32 2
  %22 = ptrtoint ptr %dma_maxburst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_maxburst, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dmac_cfg, i32 0, i32 5
  %24 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %src_maxburst, align 4
  %25 = load i32, ptr %dma_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dmac_cfg, i32 0, i32 6
  %26 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dst_maxburst, align 4
  %27 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 44
  %29 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.else.dmaengine_slave_config.exit_crit_edge, label %if.then.i

if.else.dmaengine_slave_config.exit_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_slave_config.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 %30(ptr noundef %call, ptr noundef nonnull %dmac_cfg) #8
  br label %dmaengine_slave_config.exit

dmaengine_slave_config.exit:                      ; preds = %if.then.i, %if.else.dmaengine_slave_config.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dmac_cfg) #8
  br label %cleanup

cleanup:                                          ; preds = %dmaengine_slave_config.exit, %do.end, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -517, %if.then3.cleanup_crit_edge ], [ 0, %dmaengine_slave_config.exit ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_nand_chips_init(ptr noundef %dev, ptr noundef %nfc) unnamed_addr #2 align 64 {
entry:
  %nsels.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #8
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.06.i) #8
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i)
  %cmp = icmp sgt i32 %inc.i, 8
  br i1 %cmp, label %do.end, label %of_get_child_count.exit.if.end_crit_edge

of_get_child_count.exit.if.end_crit_edge:         ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %inc.i) #11
  br label %cleanup

if.end:                                           ; preds = %of_get_child_count.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #8
  %cmp2.not41 = icmp eq ptr %call1, null
  br i1 %cmp2.not41, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %assigned_cs.i = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 6
  %ops.i = getelementptr inbounds %struct.nand_controller, ptr %nfc, i32 0, i32 1
  %chips.i = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 8, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nand_np.042 = phi ptr [ %call1, %for.body.lr.ph ], [ %call6, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nsels.i) #8
  %2 = ptrtoint ptr %nsels.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %nsels.i, align 4, !annotation !177
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp.i, align 4, !annotation !177
  %call.i19 = call ptr @of_get_property(ptr noundef nonnull %nand_np.042, ptr noundef nonnull @.str.27, ptr noundef nonnull %nsels.i) #8
  %tobool.not.i = icmp eq ptr %call.i19, null
  br i1 %tobool.not.i, label %for.body.if.then4_crit_edge, label %if.end.i

for.body.if.then4_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end.i:                                         ; preds = %for.body
  %4 = ptrtoint ptr %nsels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nsels.i, align 4
  %div102.i = lshr i32 %5, 2
  store i32 %div102.i, ptr %nsels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %tobool1.not.i = icmp ult i32 %5, 4
  br i1 %tobool1.not.i, label %do.end.i, label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #11
  br label %if.then4

if.end3.i:                                        ; preds = %if.end.i
  %6 = shl nuw nsw i32 %div102.i, 1
  %spec.select.i105.i = add nuw i32 %6, 2200
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %spec.select.i105.i, i32 noundef 3520) #8
  %tobool6.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i, label %if.end3.i.if.then4_crit_edge, label %if.end8.i

if.end3.i.if.then4_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end8.i:                                        ; preds = %if.end3.i
  %7 = ptrtoint ptr %nsels.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nsels.i, align 4
  %nsels9.i = getelementptr inbounds %struct.sunxi_nand_chip, ptr %call.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %nsels9.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %nsels9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp109.i = icmp sgt i32 %8, 0
  br i1 %cmp109.i, label %if.end8.i.for.body.i20_crit_edge, label %if.end8.i.for.end.i_crit_edge

if.end8.i.for.end.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end8.i.for.body.i20_crit_edge:                 ; preds = %if.end8.i
  br label %for.body.i20

for.body.i20:                                     ; preds = %for.inc.i.for.body.i20_crit_edge, %if.end8.i.for.body.i20_crit_edge
  %i.0110.i = phi i32 [ %inc.i21, %for.inc.i.for.body.i20_crit_edge ], [ 0, %if.end8.i.for.body.i20_crit_edge ]
  %call10.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %nand_np.042, ptr noundef nonnull @.str.27, i32 noundef %i.0110.i, ptr noundef nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end16.i, label %do.end15.i

do.end15.i:                                       ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call10.i) #11
  br label %if.then4

if.end16.i:                                       ; preds = %for.body.i20
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %cmp17.i = icmp ugt i32 %11, 7
  br i1 %cmp17.i, label %do.end21.i, label %if.end22.i

do.end21.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %11) #11
  br label %if.then4

if.end22.i:                                       ; preds = %if.end16.i
  %call23.i = call i32 @_test_and_set_bit(i32 noundef %11, ptr noundef %assigned_cs.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tmp.i, align 4
  br i1 %tobool24.not.i, label %if.end29.i, label %do.end28.i

do.end28.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %13) #11
  br label %if.then4

if.end29.i:                                       ; preds = %if.end22.i
  %conv.i = trunc i32 %13 to i8
  %arrayidx.i = getelementptr %struct.sunxi_nand_chip, ptr %call.i.i, i32 0, i32 7, i32 %i.0110.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %arrayidx.i, align 2
  %call30.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %nand_np.042, ptr noundef nonnull @.str.39, i32 noundef %i.0110.i, ptr noundef nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %land.lhs.true.i, label %if.end29.i.for.inc.i_crit_edge

if.end29.i.for.inc.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tmp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp32.i = icmp ult i32 %16, 2
  %conv35.i = trunc i32 %16 to i8
  %spec.select.i = select i1 %cmp32.i, i8 %conv35.i, i8 -1
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %if.end29.i.for.inc.i_crit_edge
  %conv35.sink.i = phi i8 [ -1, %if.end29.i.for.inc.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %rb.i = getelementptr %struct.sunxi_nand_chip, ptr %call.i.i, i32 0, i32 7, i32 %i.0110.i, i32 1
  %17 = ptrtoint ptr %rb.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv35.sink.i, ptr %rb.i, align 1
  %inc.i21 = add nuw nsw i32 %i.0110.i, 1
  %18 = ptrtoint ptr %nsels.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nsels.i, align 4
  %cmp.i = icmp slt i32 %inc.i21, %19
  br i1 %cmp.i, label %for.inc.i.for.body.i20_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i20_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i20

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end8.i.for.end.i_crit_edge
  %nand42.i = getelementptr inbounds %struct.sunxi_nand_chip, ptr %call.i.i, i32 0, i32 1
  %controller43.i = getelementptr inbounds %struct.sunxi_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 32
  %20 = ptrtoint ptr %controller43.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %nfc, ptr %controller43.i, align 4
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sunxi_nand_controller_ops, ptr %ops.i, align 4
  %ecc.i = getelementptr inbounds %struct.sunxi_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 33
  %22 = ptrtoint ptr %ecc.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %ecc.i, align 8
  %of_node.i.i.i = getelementptr inbounds %struct.sunxi_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 27
  %23 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %nand_np.042, ptr %of_node.i.i.i, align 8
  %name.i.i.i = getelementptr inbounds %struct.sunxi_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 0, i32 0, i32 13
  %24 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %for.end.i.nand_set_flash_node.exit.i_crit_edge

for.end.i.nand_set_flash_node.exit.i_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nand_set_flash_node.exit.i

if.then.i.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call i32 @of_property_read_string(ptr noundef nonnull %nand_np.042, ptr noundef nonnull @.str.70, ptr noundef %name.i.i.i) #8
  br label %nand_set_flash_node.exit.i

nand_set_flash_node.exit.i:                       ; preds = %if.then.i.i.i, %for.end.i.nand_set_flash_node.exit.i_crit_edge
  %parent.i = getelementptr inbounds %struct.sunxi_nand_chip, ptr %call.i.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  %26 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %parent.i, align 8
  %27 = ptrtoint ptr %nsels.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nsels.i, align 4
  %call.i103.i = call i32 @nand_scan_with_ids(ptr noundef %nand42.i, i32 noundef %28, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %tobool48.not.i = icmp eq i32 %call.i103.i, 0
  br i1 %tobool48.not.i, label %if.end50.i, label %nand_set_flash_node.exit.i.if.then4_crit_edge

nand_set_flash_node.exit.i.if.then4_crit_edge:    ; preds = %nand_set_flash_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end50.i:                                       ; preds = %nand_set_flash_node.exit.i
  %call51.i = call i32 @mtd_device_parse_register(ptr noundef %nand42.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end57.i, label %do.end56.i

do.end56.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %call51.i) #11
  call void @nand_cleanup(ptr noundef %nand42.i) #8
  br label %if.then4

if.end57.i:                                       ; preds = %if.end50.i
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %call.i.i104.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %30, ptr noundef %chips.i) #8
  br i1 %call.i.i104.i, label %if.end.i.i.i, label %if.end57.i.for.inc_crit_edge

if.end57.i.for.inc_crit_edge:                     ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %chips.i, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call.i.i, ptr %30, align 4
  br label %for.inc

if.then4:                                         ; preds = %do.end56.i, %nand_set_flash_node.exit.i.if.then4_crit_edge, %do.end28.i, %do.end21.i, %do.end15.i, %if.end3.i.if.then4_crit_edge, %do.end.i, %for.body.if.then4_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %do.end.i ], [ %call51.i, %do.end56.i ], [ -22, %do.end28.i ], [ -22, %do.end21.i ], [ %call10.i, %do.end15.i ], [ %call.i103.i, %nand_set_flash_node.exit.i.if.then4_crit_edge ], [ -12, %if.end3.i.if.then4_crit_edge ], [ -22, %for.body.if.then4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsels.i) #8
  call void @of_node_put(ptr noundef nonnull %nand_np.042) #8
  br label %cleanup

for.inc:                                          ; preds = %if.end.i.i.i, %if.end57.i.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nsels.i) #8
  %call6 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %nand_np.042) #8
  %cmp2.not = icmp eq ptr %call6, null
  br i1 %cmp2.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i.ph, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_nand_attach_chip(ptr nocapture noundef %nand) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc1 = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 10
  %0 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bbt_options, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %1, 262144
  %2 = ptrtoint ptr %bbt_options to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %bbt_options, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %options = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 6
  %3 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %options, align 8
  %and4 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or8 = or i32 %4, 512
  %5 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or8, ptr %options, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %6 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %options, align 8
  %or11 = or i32 %7, 4096
  store i32 %or11, ptr %options, align 8
  %size = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp eq i32 %9, 0
  br i1 %tobool12.not, label %if.end16, label %if.end9.lor.lhs.false_crit_edge

if.end9.lor.lhs.false_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end16:                                         ; preds = %if.end9
  %step_size = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 1, i32 4
  %10 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %step_size, align 4
  %12 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %size, align 4
  %strength = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 1, i32 3
  %13 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %strength, align 4
  %strength15 = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 7
  %15 = ptrtoint ptr %strength15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %strength15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool18.not = icmp eq i32 %11, 0
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end16.lor.lhs.false_crit_edge

if.end16.lor.lhs.false_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end16.lor.lhs.false_crit_edge, %if.end9.lor.lhs.false_crit_edge
  %strength19 = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 7
  %16 = ptrtoint ptr %strength19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %strength19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not = icmp eq i32 %17, 0
  br i1 %tobool20.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end22

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ecc1, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.end22.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %if.end22.sw.epilog_crit_edge
    i32 2, label %if.end22.sw.epilog_crit_edge53
  ]

if.end22.sw.epilog_crit_edge53:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end22
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 32
  %21 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %controller.i, align 4
  %flags.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 2, i32 5
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.if.end27.i_crit_edge, label %if.then.i

sw.bb.if.end27.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.then.i:                                        ; preds = %sw.bb
  %25 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1024, ptr %size, align 4
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %26 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %writesize.i, align 4
  %div1.i = lshr i32 %27, 10
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 6
  %28 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %oobsize.i, align 4
  %sub.i = add i32 %29, -2
  %div6.i = udiv i32 %sub.i, %div1.i
  %30 = and i32 %div6.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool8.not.i = icmp eq i32 %30, 0
  %spec.select.v.i = select i1 %tobool8.not.i, i32 536870908, i32 536870907
  %spec.select.i = add i32 %spec.select.v.i, %div6.i
  %mul.i = shl i32 %spec.select.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %mul.i)
  %cmp15.i = icmp slt i32 %mul.i, 224
  br i1 %cmp15.i, label %if.then.i.if.end26.i_crit_edge, label %for.inc.i

if.then.i.if.end26.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

for.inc.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 336, i32 %mul.i)
  %cmp15.1.i = icmp ult i32 %mul.i, 336
  br i1 %cmp15.1.i, label %for.inc.i.for.end.thread.i_crit_edge, label %for.inc.1.i

for.inc.i.for.end.thread.i_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 392, i32 %mul.i)
  %cmp15.2.i = icmp ult i32 %mul.i, 392
  br i1 %cmp15.2.i, label %for.inc.1.i.for.end.thread.i_crit_edge, label %for.inc.2.i

for.inc.1.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 448, i32 %mul.i)
  %cmp15.3.i = icmp ult i32 %mul.i, 448
  br i1 %cmp15.3.i, label %for.inc.2.i.for.end.thread.i_crit_edge, label %for.inc.3.i

for.inc.2.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 560, i32 %mul.i)
  %cmp15.4.i = icmp ult i32 %mul.i, 560
  br i1 %cmp15.4.i, label %for.inc.3.i.for.end.thread.i_crit_edge, label %for.inc.4.i

for.inc.3.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 672, i32 %mul.i)
  %cmp15.5.i = icmp ult i32 %mul.i, 672
  br i1 %cmp15.5.i, label %for.inc.4.i.for.end.thread.i_crit_edge, label %for.inc.5.i

for.inc.4.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 784, i32 %mul.i)
  %cmp15.6.i = icmp ult i32 %mul.i, 784
  br i1 %cmp15.6.i, label %for.inc.5.i.for.end.thread.i_crit_edge, label %for.inc.6.i

for.inc.5.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 840, i32 %mul.i)
  %cmp15.7.i = icmp ult i32 %mul.i, 840
  br i1 %cmp15.7.i, label %for.inc.6.i.for.end.thread.i_crit_edge, label %for.inc.7.i

for.inc.6.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 896, i32 %mul.i)
  %cmp15.8.i = icmp ult i32 %mul.i, 896
  br i1 %cmp15.8.i, label %for.inc.7.i.for.end.thread.i_crit_edge, label %for.inc.7.i.if.else.i_crit_edge

for.inc.7.i.if.else.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

for.inc.7.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.inc.7.i.for.end.thread.i_crit_edge, %for.inc.6.i.for.end.thread.i_crit_edge, %for.inc.5.i.for.end.thread.i_crit_edge, %for.inc.4.i.for.end.thread.i_crit_edge, %for.inc.3.i.for.end.thread.i_crit_edge, %for.inc.2.i.for.end.thread.i_crit_edge, %for.inc.1.i.for.end.thread.i_crit_edge, %for.inc.i.for.end.thread.i_crit_edge
  %i.07.lcssa.ph.i = phi i32 [ 8, %for.inc.7.i.for.end.thread.i_crit_edge ], [ 7, %for.inc.6.i.for.end.thread.i_crit_edge ], [ 6, %for.inc.5.i.for.end.thread.i_crit_edge ], [ 5, %for.inc.4.i.for.end.thread.i_crit_edge ], [ 4, %for.inc.3.i.for.end.thread.i_crit_edge ], [ 3, %for.inc.2.i.for.end.thread.i_crit_edge ], [ 2, %for.inc.1.i.for.end.thread.i_crit_edge ], [ 1, %for.inc.i.for.end.thread.i_crit_edge ]
  br label %if.else.i

if.else.i:                                        ; preds = %for.end.thread.i, %for.inc.7.i.if.else.i_crit_edge
  %i.06.i = phi i32 [ 9, %for.inc.7.i.if.else.i_crit_edge ], [ %i.07.lcssa.ph.i, %for.end.thread.i ]
  %sub22.i = add nsw i32 %i.06.i, -1
  %arrayidx23.i = getelementptr [9 x i8], ptr @sunxi_nand_hw_ecc_ctrl_init.strengths, i32 0, i32 %sub22.i
  %31 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx23.i, align 1
  %conv24.i = zext i8 %32 to i32
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else.i, %if.then.i.if.end26.i_crit_edge
  %storemerge.i = phi i32 [ %conv24.i, %if.else.i ], [ 0, %if.then.i.if.end26.i_crit_edge ]
  %33 = ptrtoint ptr %strength19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge.i, ptr %strength19, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end26.i, %sw.bb.if.end27.i_crit_edge
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %35, label %if.end27.i.cleanup_crit_edge [
    i32 512, label %if.end27.i.if.end35.i_crit_edge
    i32 1024, label %if.end27.i.if.end35.i_crit_edge54
  ]

if.end27.i.if.end35.i_crit_edge54:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.end27.i.if.end35.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35.i:                                       ; preds = %if.end27.i.if.end35.i_crit_edge, %if.end27.i.if.end35.i_crit_edge54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 4) #12
  %ecc37.i = getelementptr i8, ptr %nand, i32 2168
  %38 = ptrtoint ptr %ecc37.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i.i, ptr %ecc37.i, align 8
  %tobool39.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool39.not.i, label %if.end35.i.cleanup_crit_edge, label %if.end41.i

if.end35.i.cleanup_crit_edge:                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41.i:                                       ; preds = %if.end35.i
  %39 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %40)
  %cmp43.i = icmp eq i32 %40, 512
  br i1 %cmp43.i, label %land.lhs.true45.i, label %if.end41.i.if.end53.ithread-pre-split_crit_edge

if.end41.i.if.end53.ithread-pre-split_crit_edge:  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.ithread-pre-split

land.lhs.true45.i:                                ; preds = %if.end41.i
  %writesize46.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %41 = ptrtoint ptr %writesize46.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %writesize46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %42)
  %cmp47.i = icmp ugt i32 %42, 512
  br i1 %cmp47.i, label %if.then49.i, label %land.lhs.true45.i.if.end53.ithread-pre-split_crit_edge

land.lhs.true45.i.if.end53.ithread-pre-split_crit_edge: ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.ithread-pre-split

if.then49.i:                                      ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1024, ptr %size, align 4
  %44 = ptrtoint ptr %strength19 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %strength19, align 4
  %mul52.i = shl i32 %45, 1
  store i32 %mul52.i, ptr %strength19, align 4
  br label %if.end53.i

if.end53.ithread-pre-split:                       ; preds = %land.lhs.true45.i.if.end53.ithread-pre-split_crit_edge, %if.end41.i.if.end53.ithread-pre-split_crit_edge
  %46 = ptrtoint ptr %strength19 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr = load i32, ptr %strength19, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.end53.ithread-pre-split, %if.then49.i
  %47 = phi i32 [ %.pr, %if.end53.ithread-pre-split ], [ %mul52.i, %if.then49.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %47)
  %cmp61.not.i = icmp sgt i32 %47, 16
  br i1 %cmp61.not.i, label %for.inc68.i, label %if.end53.i.if.end74.i_crit_edge

if.end53.i.if.end74.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i

for.inc68.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %47)
  %cmp61.not.1.i = icmp ugt i32 %47, 24
  br i1 %cmp61.not.1.i, label %for.inc68.1.i, label %for.inc68.i.if.end74.i_crit_edge

for.inc68.i.if.end74.i_crit_edge:                 ; preds = %for.inc68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i

for.inc68.1.i:                                    ; preds = %for.inc68.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %47)
  %cmp61.not.2.i = icmp ugt i32 %47, 28
  br i1 %cmp61.not.2.i, label %for.inc68.2.i, label %for.inc68.1.i.if.end74.i_crit_edge

for.inc68.1.i.if.end74.i_crit_edge:               ; preds = %for.inc68.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i

for.inc68.2.i:                                    ; preds = %for.inc68.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %47)
  %cmp61.not.3.i = icmp ugt i32 %47, 32
  br i1 %cmp61.not.3.i, label %for.inc68.3.i, label %for.inc68.2.i.if.end74.i_crit_edge

for.inc68.2.i.if.end74.i_crit_edge:               ; preds = %for.inc68.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i

for.inc68.3.i:                                    ; preds = %for.inc68.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %47)
  %cmp61.not.4.i = icmp ugt i32 %47, 40
  br i1 %cmp61.not.4.i, label %for.inc68.4.i, label %for.inc68.3.i.if.end74.i_crit_edge

for.inc68.3.i.if.end74.i_crit_edge:               ; preds = %for.inc68.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i

for.inc68.4.i:                                    ; preds = %for.inc68.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %47)
  %cmp61.not.5.i = icmp ugt i32 %47, 48
  br i1 %cmp61.not.5.i, label %for.inc68.5.i, label %for.inc68.4.i.if.end74.i_crit_edge

for.inc68.4.i.if.end74.i_crit_edge:               ; preds = %for.inc68.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i

for.inc68.5.i:                                    ; preds = %for.inc68.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %47)
  %cmp61.not.6.i = icmp ugt i32 %47, 56
  br i1 %cmp61.not.6.i, label %for.inc68.6.i, label %for.inc68.5.i.if.end74.i_crit_edge

for.inc68.5.i.if.end74.i_crit_edge:               ; preds = %for.inc68.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i

for.inc68.6.i:                                    ; preds = %for.inc68.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %47)
  %cmp61.not.7.i = icmp ugt i32 %47, 60
  br i1 %cmp61.not.7.i, label %for.inc68.7.i, label %for.inc68.6.i.if.end74.i_crit_edge

for.inc68.6.i.if.end74.i_crit_edge:               ; preds = %for.inc68.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i

for.inc68.7.i:                                    ; preds = %for.inc68.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %47)
  %cmp61.not.8.i = icmp ugt i32 %47, 64
  br i1 %cmp61.not.8.i, label %for.inc68.8.i, label %for.inc68.7.i.if.end74.i_crit_edge

for.inc68.7.i.if.end74.i_crit_edge:               ; preds = %for.inc68.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74.i

for.inc68.8.i:                                    ; preds = %for.inc68.7.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.sunxi_nfc, ptr %22, i32 0, i32 1
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.43) #11
  br label %err.i

if.end74.i:                                       ; preds = %for.inc68.7.i.if.end74.i_crit_edge, %for.inc68.6.i.if.end74.i_crit_edge, %for.inc68.5.i.if.end74.i_crit_edge, %for.inc68.4.i.if.end74.i_crit_edge, %for.inc68.3.i.if.end74.i_crit_edge, %for.inc68.2.i.if.end74.i_crit_edge, %for.inc68.1.i.if.end74.i_crit_edge, %for.inc68.i.if.end74.i_crit_edge, %if.end53.i.if.end74.i_crit_edge
  %i.18.lcssa.i = phi i32 [ 0, %if.end53.i.if.end74.i_crit_edge ], [ 1, %for.inc68.i.if.end74.i_crit_edge ], [ 2, %for.inc68.1.i.if.end74.i_crit_edge ], [ 3, %for.inc68.2.i.if.end74.i_crit_edge ], [ 4, %for.inc68.3.i.if.end74.i_crit_edge ], [ 5, %for.inc68.4.i.if.end74.i_crit_edge ], [ 6, %for.inc68.5.i.if.end74.i_crit_edge ], [ 7, %for.inc68.6.i.if.end74.i_crit_edge ], [ 8, %for.inc68.7.i.if.end74.i_crit_edge ]
  %.lcssa.i = phi i32 [ 16, %if.end53.i.if.end74.i_crit_edge ], [ 24, %for.inc68.i.if.end74.i_crit_edge ], [ 28, %for.inc68.1.i.if.end74.i_crit_edge ], [ 32, %for.inc68.2.i.if.end74.i_crit_edge ], [ 40, %for.inc68.3.i.if.end74.i_crit_edge ], [ 48, %for.inc68.4.i.if.end74.i_crit_edge ], [ 56, %for.inc68.5.i.if.end74.i_crit_edge ], [ 60, %for.inc68.6.i.if.end74.i_crit_edge ], [ 64, %for.inc68.7.i.if.end74.i_crit_edge ]
  %50 = ptrtoint ptr %strength19 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.lcssa.i, ptr %strength19, align 4
  %51 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %i.18.lcssa.i, ptr %call7.i.i.i, align 8
  %52 = mul nuw nsw i32 %.lcssa.i, 14
  %div80.i505152 = lshr exact i32 %52, 3
  %bytes81.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %add83.i = add nuw nsw i32 %div80.i505152, 1
  %and84.i = and i32 %add83.i, 510
  %53 = ptrtoint ptr %bytes81.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and84.i, ptr %bytes81.i, align 4
  %writesize86.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %54 = ptrtoint ptr %writesize86.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %writesize86.i, align 4
  %56 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size, align 4
  %div88.i = udiv i32 %55, %57
  %oobsize89.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 6
  %58 = ptrtoint ptr %oobsize89.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %oobsize89.i, align 4
  %add91.i = add nuw nsw i32 %and84.i, 4
  %mul92.i = mul i32 %div88.i, %add91.i
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %mul92.i)
  %cmp93.i = icmp ult i32 %59, %mul92.i
  br i1 %cmp93.i, label %if.end74.i.err.i_crit_edge, label %if.end96.i

if.end74.i.err.i_crit_edge:                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

if.end96.i:                                       ; preds = %if.end74.i
  %read_oob.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 24
  %60 = ptrtoint ptr %read_oob.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @sunxi_nfc_hw_ecc_read_oob, ptr %read_oob.i, align 4
  %write_oob.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 25
  %61 = ptrtoint ptr %write_oob.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @sunxi_nfc_hw_ecc_write_oob, ptr %write_oob.i, align 4
  %ooblayout1.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 15
  %62 = ptrtoint ptr %ooblayout1.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @sunxi_nand_ooblayout_ops, ptr %ooblayout1.i.i, align 8
  %dmac.i = getelementptr inbounds %struct.sunxi_nfc, ptr %22, i32 0, i32 10
  %63 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dmac.i, align 4
  %tobool97.not.i = icmp eq ptr %64, null
  br i1 %tobool97.not.i, label %lor.lhs.false.i, label %if.end96.i.if.then100.i_crit_edge

if.end96.i.if.then100.i_crit_edge:                ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then100.i

lor.lhs.false.i:                                  ; preds = %if.end96.i
  %caps.i = getelementptr inbounds %struct.sunxi_nfc, ptr %22, i32 0, i32 11
  %65 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %caps.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool98.not.i = icmp eq i8 %68, 0
  br i1 %tobool98.not.i, label %if.else101.i, label %lor.lhs.false.i.if.then100.i_crit_edge

lor.lhs.false.i.if.then100.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then100.i

if.then100.i:                                     ; preds = %lor.lhs.false.i.if.then100.i_crit_edge, %if.end96.i.if.then100.i_crit_edge
  %read_page.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 18
  %69 = ptrtoint ptr %read_page.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @sunxi_nfc_hw_ecc_read_page_dma, ptr %read_page.i, align 4
  %read_subpage.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 19
  %70 = ptrtoint ptr %read_subpage.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @sunxi_nfc_hw_ecc_read_subpage_dma, ptr %read_subpage.i, align 4
  %write_page.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 21
  %71 = ptrtoint ptr %write_page.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @sunxi_nfc_hw_ecc_write_page_dma, ptr %write_page.i, align 4
  %72 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %options, align 8
  %or.i = or i32 %73, 1048576
  store i32 %or.i, ptr %options, align 8
  br label %sunxi_nand_hw_ecc_ctrl_init.exit

if.else101.i:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %read_page102.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 18
  %74 = ptrtoint ptr %read_page102.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @sunxi_nfc_hw_ecc_read_page, ptr %read_page102.i, align 4
  %read_subpage103.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 19
  %75 = ptrtoint ptr %read_subpage103.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @sunxi_nfc_hw_ecc_read_subpage, ptr %read_subpage103.i, align 4
  %write_page104.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 21
  %76 = ptrtoint ptr %write_page104.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @sunxi_nfc_hw_ecc_write_page, ptr %write_page104.i, align 4
  br label %sunxi_nand_hw_ecc_ctrl_init.exit

err.i:                                            ; preds = %if.end74.i.err.i_crit_edge, %for.inc68.8.i
  %ret.0.i = phi i32 [ -524, %for.inc68.8.i ], [ -22, %if.end74.i.err.i_crit_edge ]
  %77 = ptrtoint ptr %ecc37.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ecc37.i, align 8
  tail call void @kfree(ptr noundef %78) #8
  br label %cleanup

sunxi_nand_hw_ecc_ctrl_init.exit:                 ; preds = %if.else101.i, %if.then100.i
  %write_subpage.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 20
  %79 = ptrtoint ptr %write_subpage.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @sunxi_nfc_hw_ecc_write_subpage, ptr %write_subpage.i, align 4
  %read_oob_raw.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 23
  %80 = ptrtoint ptr %read_oob_raw.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @nand_read_oob_std, ptr %read_oob_raw.i, align 4
  %write_oob_raw.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 22
  %81 = ptrtoint ptr %write_oob_raw.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @nand_write_oob_std, ptr %write_oob_raw.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sunxi_nand_hw_ecc_ctrl_init.exit, %if.end22.sw.epilog_crit_edge, %if.end22.sw.epilog_crit_edge53
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %err.i, %if.end35.i.cleanup_crit_edge, %if.end27.i.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end16.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ -12, %if.end35.i.cleanup_crit_edge ], [ -22, %if.end27.i.cleanup_crit_edge ], [ %ret.0.i, %err.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_nfc_exec_op(ptr noundef %nand, ptr noundef %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %check_only, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op, align 4
  tail call fastcc void @sunxi_nfc_select_chip(ptr noundef %nand, i32 noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %nand, i32 -8
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op, align 4
  %rb = getelementptr %struct.sunxi_nand_chip, ptr %add.ptr.i, i32 0, i32 7, i32 %3, i32 1
  %4 = ptrtoint ptr %rb to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rb, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp = icmp sgt i8 %5, -1
  %sunxi_nfc_op_parser.sunxi_nfc_norb_op_parser = select i1 %cmp, ptr @sunxi_nfc_op_parser, ptr @sunxi_nfc_norb_op_parser
  %call6 = tail call i32 @nand_op_parser_exec_op(ptr noundef %nand, ptr noundef nonnull %sunxi_nfc_op_parser.sunxi_nfc_norb_op_parser, ptr noundef %op, i1 noundef zeroext %check_only) #8
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_nfc_setup_interface(ptr nocapture noundef %nand, i32 noundef %csline, ptr noundef readonly %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr i8, ptr %nand, i32 2052
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  %4 = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1
  %retval.0.i = select i1 %cmp.i.i, ptr %4, ptr inttoptr (i32 -22 to ptr)
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tCLS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 14
  %5 = ptrtoint ptr %tCLS_min to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tCLS_min, align 8
  %tCLH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 12
  %7 = ptrtoint ptr %tCLH_min to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tCLH_min, align 8
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 %6)
  %tCS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 16
  %10 = ptrtoint ptr %tCS_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tCS_min, align 8
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 %9)
  %tCH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 10
  %13 = ptrtoint ptr %tCH_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tCH_min, align 8
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 %12)
  %tWP_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 36
  %16 = ptrtoint ptr %tWP_min to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tWP_min, align 8
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 %15)
  %tWH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 34
  %19 = ptrtoint ptr %tWH_min to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tWH_min, align 8
  %21 = tail call i32 @llvm.umax.i32(i32 %20, i32 %18)
  %tALS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 6
  %22 = ptrtoint ptr %tALS_min to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tALS_min, align 8
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 %21)
  %tDS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 18
  %25 = ptrtoint ptr %tDS_min to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tDS_min, align 8
  %27 = tail call i32 @llvm.umax.i32(i32 %26, i32 %24)
  %tDH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 17
  %28 = ptrtoint ptr %tDH_min to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tDH_min, align 4
  %30 = tail call i32 @llvm.umax.i32(i32 %29, i32 %27)
  %tRR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 30
  %31 = ptrtoint ptr %tRR_min to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tRR_min, align 8
  %mul = mul i32 %30, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %mul)
  %cmp40 = icmp ugt i32 %32, %mul
  %sub = add i32 %32, 2
  %div = udiv i32 %sub, 3
  %min_clk_period.9 = select i1 %cmp40, i32 %div, i32 %30
  %tALH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 4
  %33 = ptrtoint ptr %tALH_min to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tALH_min, align 8
  %35 = tail call i32 @llvm.umax.i32(i32 %34, i32 %min_clk_period.9)
  %tRP_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 29
  %36 = ptrtoint ptr %tRP_min to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tRP_min, align 4
  %38 = tail call i32 @llvm.umax.i32(i32 %37, i32 %35)
  %tREH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 24
  %39 = ptrtoint ptr %tREH_min to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tREH_min, align 8
  %41 = tail call i32 @llvm.umax.i32(i32 %40, i32 %38)
  %tRC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 22
  %42 = ptrtoint ptr %tRC_min to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tRC_min, align 8
  %mul56 = shl i32 %41, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %mul56)
  %cmp57 = icmp ugt i32 %43, %mul56
  %sub61 = add i32 %43, 1
  %div62305 = lshr i32 %sub61, 1
  %min_clk_period.13 = select i1 %cmp57, i32 %div62305, i32 %41
  %tWC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 33
  %44 = ptrtoint ptr %tWC_min to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tWC_min, align 4
  %mul64 = shl i32 %min_clk_period.13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %mul64)
  %cmp65 = icmp ugt i32 %45, %mul64
  %sub69 = add i32 %45, 1
  %div70304 = lshr i32 %sub69, 1
  %min_clk_period.14 = select i1 %cmp65, i32 %div70304, i32 %min_clk_period.13
  %tWB_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 32
  %46 = ptrtoint ptr %tWB_max to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tWB_max, align 8
  %mul72 = mul i32 %min_clk_period.14, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %mul72)
  %cmp73 = icmp ugt i32 %47, %mul72
  %sub77 = add i32 %47, 19
  %div78 = udiv i32 %sub77, 20
  %min_clk_period.15 = select i1 %cmp73, i32 %div78, i32 %min_clk_period.14
  %tADL_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 5
  %48 = ptrtoint ptr %tADL_min to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tADL_min, align 4
  %mul80 = shl i32 %min_clk_period.15, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %mul80)
  %cmp81 = icmp ugt i32 %49, %mul80
  %sub85 = add i32 %49, 31
  %div86303 = lshr i32 %sub85, 5
  %min_clk_period.16 = select i1 %cmp81, i32 %div86303, i32 %min_clk_period.15
  %tWHR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 35
  %50 = ptrtoint ptr %tWHR_min to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tWHR_min, align 4
  %mul88 = shl i32 %min_clk_period.16, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %mul88)
  %cmp89 = icmp ugt i32 %51, %mul88
  %sub93 = add i32 %51, 31
  %div94302 = lshr i32 %sub93, 5
  %min_clk_period.17 = select i1 %cmp89, i32 %div94302, i32 %min_clk_period.16
  %tRHW_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 26
  %52 = ptrtoint ptr %tRHW_min to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tRHW_min, align 8
  %mul96 = mul i32 %min_clk_period.17, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %mul96)
  %cmp97 = icmp ugt i32 %53, %mul96
  %sub101 = add i32 %53, 19
  %div102 = udiv i32 %sub101, 20
  %min_clk_period.18 = select i1 %cmp97, i32 %div102, i32 %min_clk_period.17
  %tREA_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 23
  %54 = ptrtoint ptr %tREA_max to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tREA_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %min_clk_period.18)
  %cmp104 = icmp ugt i32 %55, %min_clk_period.18
  br i1 %cmp104, label %land.lhs.true, label %if.end.if.end107_crit_edge

if.end.if.end107_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tRLOH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 28
  %56 = ptrtoint ptr %tRLOH_min to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tRLOH_min, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not = icmp eq i32 %57, 0
  %spec.select306 = select i1 %tobool.not, i32 %55, i32 %min_clk_period.18
  br label %if.end107

if.end107:                                        ; preds = %land.lhs.true, %if.end.if.end107_crit_edge
  %min_clk_period.19 = phi i32 [ %min_clk_period.18, %if.end.if.end107_crit_edge ], [ %spec.select306, %land.lhs.true ]
  %add.i = add i32 %min_clk_period.19, -1
  %sub.i = add i32 %add.i, %47
  %div.i = udiv i32 %sub.i, %min_clk_period.19
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %div.i)
  %cmp1.not.i = icmp ugt i32 %div.i, 6
  br i1 %cmp1.not.i, label %for.inc.i, label %if.end107.if.end112_crit_edge

if.end107.if.end112_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

for.inc.i:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %div.i)
  %cmp1.not.1.i = icmp ugt i32 %div.i, 12
  br i1 %cmp1.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end112_crit_edge

for.inc.i.if.end112_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div.i)
  %cmp1.not.2.i = icmp ugt i32 %div.i, 16
  br i1 %cmp1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end112_crit_edge

for.inc.1.i.if.end112_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %div.i)
  %cmp1.not.3.i = icmp ugt i32 %div.i, 20
  br i1 %cmp1.not.3.i, label %do.end, label %for.inc.2.i.if.end112_crit_edge

for.inc.2.i.if.end112_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

do.end:                                           ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.56) #11
  br label %cleanup

if.end112:                                        ; preds = %for.inc.2.i.if.end112_crit_edge, %for.inc.1.i.if.end112_crit_edge, %for.inc.i.if.end112_crit_edge, %if.end107.if.end112_crit_edge
  %retval.0.i307.ph = phi i32 [ 1795, %for.inc.2.i.if.end112_crit_edge ], [ 1794, %for.inc.1.i.if.end112_crit_edge ], [ 1793, %for.inc.i.if.end112_crit_edge ], [ 1792, %if.end107.if.end112_crit_edge ]
  %sub115 = add i32 %add.i, %49
  %div116 = udiv i32 %sub115, %min_clk_period.19
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %div116)
  %cmp117 = icmp ugt i32 %div116, 31
  br i1 %cmp117, label %do.end121, label %if.end123

do.end121:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  %dev122 = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 1
  %60 = ptrtoint ptr %dev122 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev122, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.59) #11
  br label %cleanup

if.end123:                                        ; preds = %if.end112
  %sub126 = add i32 %add.i, %51
  %div127 = udiv i32 %sub126, %min_clk_period.19
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %div127)
  %cmp129 = icmp ugt i32 %div127, 31
  br i1 %cmp129, label %do.end133, label %if.end135

do.end133:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  %dev134 = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %dev134 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev134, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.62) #11
  br label %cleanup

if.end135:                                        ; preds = %if.end123
  %sub.i309 = add i32 %add.i, %53
  %div.i310 = udiv i32 %sub.i309, %min_clk_period.19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div.i310)
  %cmp1.not.i311 = icmp ugt i32 %div.i310, 4
  br i1 %cmp1.not.i311, label %for.inc.i313, label %if.end135.if.end144_crit_edge

if.end135.if.end144_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

for.inc.i313:                                     ; preds = %if.end135
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div.i310)
  %cmp1.not.1.i312 = icmp ugt i32 %div.i310, 8
  br i1 %cmp1.not.1.i312, label %for.inc.1.i315, label %for.inc.i313.if.end144_crit_edge

for.inc.i313.if.end144_crit_edge:                 ; preds = %for.inc.i313
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

for.inc.1.i315:                                   ; preds = %for.inc.i313
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %div.i310)
  %cmp1.not.2.i314 = icmp ugt i32 %div.i310, 12
  br i1 %cmp1.not.2.i314, label %for.inc.2.i318, label %for.inc.1.i315.if.end144_crit_edge

for.inc.1.i315.if.end144_crit_edge:               ; preds = %for.inc.1.i315
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

for.inc.2.i318:                                   ; preds = %for.inc.1.i315
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %div.i310)
  %cmp1.not.3.i316 = icmp ugt i32 %div.i310, 20
  br i1 %cmp1.not.3.i316, label %do.end142, label %for.inc.2.i318.if.end144_crit_edge

for.inc.2.i318.if.end144_crit_edge:               ; preds = %for.inc.2.i318
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

do.end142:                                        ; preds = %for.inc.2.i318
  call void @__sanitizer_cov_trace_pc() #10
  %dev143 = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %dev143 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev143, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.65) #11
  br label %cleanup

if.end144:                                        ; preds = %for.inc.2.i318.if.end144_crit_edge, %for.inc.1.i315.if.end144_crit_edge, %for.inc.i313.if.end144_crit_edge, %if.end135.if.end144_crit_edge
  %retval.0.i319.ph = phi i32 [ 192, %for.inc.2.i318.if.end144_crit_edge ], [ 128, %for.inc.1.i315.if.end144_crit_edge ], [ 64, %for.inc.i313.if.end144_crit_edge ], [ 0, %if.end135.if.end144_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %csline)
  %cmp145 = icmp eq i32 %csline, -1
  br i1 %cmp145, label %if.end144.cleanup_crit_edge, label %if.end147

if.end144.cleanup_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end147:                                        ; preds = %if.end144
  %66 = lshr i32 %div116, 1
  %shl = and i32 %66, 12
  %67 = shl nuw nsw i32 %div127, 1
  %shl150 = and i32 %67, 48
  %or151 = or i32 %retval.0.i307.ph, %shl
  %or154 = or i32 %or151, %shl150
  %or157 = or i32 %or154, %retval.0.i319.ph
  %timing_cfg = getelementptr i8, ptr %nand, i32 2176
  %68 = ptrtoint ptr %timing_cfg to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or157, ptr %timing_cfg, align 8
  %sub159 = add i32 %min_clk_period.19, 999
  %div160 = udiv i32 %sub159, 1000
  %div161 = udiv i32 1000000000, %div160
  %clk_rate = getelementptr i8, ptr %nand, i32 2172
  %69 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %div161, ptr %clk_rate, align 4
  %mod_clk = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 4
  %70 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mod_clk, align 4
  %call163 = tail call i32 @clk_round_rate(ptr noundef %71, i32 noundef %div161) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call163)
  %cmp164 = icmp slt i32 %call163, 1
  br i1 %cmp164, label %do.end168, label %if.end171

do.end168:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  %dev169 = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 1
  %72 = ptrtoint ptr %dev169 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev169, align 4
  %74 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %clk_rate, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.68, i32 noundef %75) #11
  br label %cleanup

if.end171:                                        ; preds = %if.end147
  %timing_ctl = getelementptr i8, ptr %nand, i32 2180
  %76 = ptrtoint ptr %timing_ctl to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %timing_ctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66666666, i32 %call163)
  %cmp174 = icmp ugt i32 %call163, 66666666
  br i1 %cmp174, label %if.end171.if.then178_crit_edge, label %lor.lhs.false

if.end171.if.then178_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then178

lor.lhs.false:                                    ; preds = %if.end171
  %div172328 = udiv i32 1000000000, %call163
  %mul175 = mul i32 %div172328, 1000
  %77 = ptrtoint ptr %tREA_max to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tREA_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul175, i32 %78)
  %cmp177 = icmp ult i32 %mul175, %78
  br i1 %cmp177, label %lor.lhs.false.if.then178_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.if.then178_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then178

if.then178:                                       ; preds = %lor.lhs.false.if.then178_crit_edge, %if.end171.if.then178_crit_edge
  %79 = ptrtoint ptr %timing_ctl to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 256, ptr %timing_ctl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then178, %lor.lhs.false.cleanup_crit_edge, %do.end168, %if.end144.cleanup_crit_edge, %do.end142, %do.end133, %do.end121, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end121 ], [ -22, %do.end133 ], [ -22, %do.end142 ], [ -22, %do.end168 ], [ -524, %entry.cleanup_crit_edge ], [ 0, %if.end144.cleanup_crit_edge ], [ 0, %if.then178 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_nfc_hw_ecc_read_oob(ptr noundef %nand, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %page.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 24, i32 1
  %0 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %page.i, align 4
  %data_buf.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 22
  %1 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data_buf.i, align 8
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 18
  %3 = ptrtoint ptr %read_page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_page, align 8
  %call1 = tail call i32 %4(ptr noundef %nand, ptr noundef %2, i32 noundef 1, i32 noundef %page) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_nfc_hw_ecc_write_oob(ptr noundef %nand, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %page.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 24, i32 1
  %0 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %page.i, align 4
  %data_buf.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 22
  %1 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data_buf.i, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %3 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %writesize, align 4
  %5 = call ptr @memset(ptr %2, i32 255, i32 %4)
  %write_page = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 21
  %6 = ptrtoint ptr %write_page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_page, align 4
  %call2 = tail call i32 %7(ptr noundef %nand, ptr noundef %2, i32 noundef 1, i32 noundef %page) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @nand_prog_page_end_op(ptr noundef %nand) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_nfc_hw_ecc_read_page_dma(ptr noundef %nand, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 28
  %0 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_cs, align 4
  tail call fastcc void @sunxi_nfc_select_chip(ptr noundef %nand, i32 noundef %1)
  %call = tail call i32 @nand_read_page_op(ptr noundef %nand, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  %steps = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 3
  %2 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %steps, align 4
  %call1 = tail call fastcc i32 @sunxi_nfc_hw_ecc_read_chunks_dma(ptr noundef %nand, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp sgt i32 %call1, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @sunxi_nfc_hw_ecc_read_page(ptr noundef %nand, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_nfc_hw_ecc_read_subpage_dma(ptr noundef %nand, i32 noundef %data_offs, i32 noundef %readlen, ptr noundef %buf, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 8
  %add = add i32 %data_offs, -1
  %add1 = add i32 %add, %readlen
  %sub = add i32 %add1, %1
  %div = udiv i32 %sub, %1
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 28
  %2 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_cs, align 4
  tail call fastcc void @sunxi_nfc_select_chip(ptr noundef %nand, i32 noundef %3)
  %call = tail call i32 @nand_read_page_op(ptr noundef %nand, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  %call4 = tail call fastcc i32 @sunxi_nfc_hw_ecc_read_chunks_dma(ptr noundef %nand, ptr noundef %buf, i32 noundef 0, i32 noundef %page, i32 noundef %div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp = icmp sgt i32 %call4, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @sunxi_nfc_hw_ecc_read_subpage(ptr noundef %nand, i32 noundef %data_offs, i32 noundef %readlen, ptr noundef %buf, i32 noundef %page)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_nfc_hw_ecc_write_page_dma(ptr noundef %nand, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 28
  %2 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %3 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cur_cs, align 4
  tail call fastcc void @sunxi_nfc_select_chip(ptr noundef %nand, i32 noundef %4)
  %call2 = tail call fastcc i32 @sunxi_nfc_wait_cmd_fifo_empty(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %steps = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 3
  %7 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %steps, align 4
  %call3 = call fastcc i32 @sunxi_nfc_dma_op_prepare(ptr noundef %1, ptr noundef %buf, i32 noundef %6, i32 noundef %8, i32 noundef 1, ptr noundef nonnull %sg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %pio_fallback

for.cond.preheader:                               ; preds = %if.end
  %9 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp143 = icmp sgt i32 %10, 0
  br i1 %cmp143, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 23
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0144 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %oob_poi, align 4
  %13 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bytes, align 4
  %add = add i32 %14, 4
  %mul = mul i32 %add, %i.0144
  %add.ptr = getelementptr i8, ptr %12, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0144)
  %tobool8.not = icmp eq i32 %i.0144, 0
  call fastcc void @sunxi_nfc_hw_ecc_set_prot_oob_bytes(ptr noundef %nand, ptr noundef %add.ptr, i32 noundef %i.0144, i1 noundef zeroext %tobool8.not, i32 noundef %page)
  %inc = add nuw nsw i32 %i.0144, 1
  %15 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %steps, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call9 = call i32 @nand_prog_page_begin_op(ptr noundef %nand, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  %17 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %controller, align 4
  %regs.i = getelementptr inbounds %struct.sunxi_nfc, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 52
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %22 = and i32 %21, -686817281
  %23 = call i32 @llvm.bswap.i32(i32 %22) #8
  %ecc.i = getelementptr i8, ptr %nand, i32 2168
  %24 = ptrtoint ptr %ecc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ecc.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %shl.i = shl i32 %27, 12
  %or5.i = or i32 %shl.i, %23
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %29)
  %cmp.i = icmp eq i32 %29, 512
  %spec.select.v.i = select i1 %cmp.i, i32 57, i32 25
  %spec.select.i = or i32 %or5.i, %spec.select.v.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @arm_heavy_mb() #8
  %30 = call i32 @llvm.bswap.i32(i32 %spec.select.i) #8
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %32, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %30) #8, !srcloc !165
  %33 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %controller, align 4
  %regs.i89 = getelementptr inbounds %struct.sunxi_nfc, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %regs.i89 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i89, align 4
  %add.ptr.i90 = getelementptr i8, ptr %36, i32 52
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 6
  %38 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %options.i, align 8
  %and.i = and i32 %39, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.end.sunxi_nfc_randomizer_config.exit_crit_edge, label %if.end.i

for.end.sunxi_nfc_randomizer_config.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_config.exit

if.end.i:                                         ; preds = %for.end
  %40 = ptrtoint ptr %regs.i89 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i89, align 4
  %add.ptr6.i = getelementptr i8, ptr %41, i32 52
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  %erasesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 3
  %43 = ptrtoint ptr %erasesize.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %erasesize.i.i, align 8
  %writesize_shift.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 9
  %45 = ptrtoint ptr %writesize_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %writesize_shift.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i.i, label %if.else170.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i32 %44 to i64
  %sh_prom.i.i.i = zext i32 %46 to i64
  %shr.i.i.i = lshr i64 %conv.i.i, %sh_prom.i.i.i
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %mtd_div_by_ws.exit.i.i

if.else170.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %writesize.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %47 = ptrtoint ptr %writesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %writesize.i.i.i, align 4
  %div180.i.i.i = udiv i32 %44, %48
  br label %mtd_div_by_ws.exit.i.i

mtd_div_by_ws.exit.i.i:                           ; preds = %if.else170.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.then.i.i.i ], [ %div180.i.i.i, %if.else170.i.i.i ]
  %49 = call i32 @llvm.umin.i32(i32 %retval.0.i.i.i, i32 128) #8
  %rem.i.i = srem i32 %page, %49
  %arrayidx.i.i = getelementptr i16, ptr @sunxi_nfc_randomizer_page_seeds, i32 %rem.i.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.i.i, align 2
  %52 = ptrtoint ptr %regs.i89 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i89, align 4
  %add.ptr15.i = getelementptr i8, ptr %53, i32 52
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  %55 = and i32 %54, -65408
  %56 = call i32 @llvm.bswap.i32(i32 %55) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  call void @arm_heavy_mb() #8
  %conv.i = zext i16 %51 to i32
  %shl.i91 = shl nuw i32 %conv.i, 16
  %or.i = or i32 %56, %shl.i91
  %57 = call i32 @llvm.bswap.i32(i32 %or.i) #8
  %58 = ptrtoint ptr %regs.i89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i89, align 4
  %add.ptr21.i = getelementptr i8, ptr %59, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %57) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_config.exit

sunxi_nfc_randomizer_config.exit:                 ; preds = %mtd_div_by_ws.exit.i.i, %for.end.sunxi_nfc_randomizer_config.exit_crit_edge
  %60 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %options.i, align 8
  %and.i93 = and i32 %61, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93)
  %tobool.not.i94 = icmp eq i32 %and.i93, 0
  br i1 %tobool.not.i94, label %sunxi_nfc_randomizer_config.exit.sunxi_nfc_randomizer_enable.exit_crit_edge, label %do.body.i

sunxi_nfc_randomizer_config.exit.sunxi_nfc_randomizer_enable.exit_crit_edge: ; preds = %sunxi_nfc_randomizer_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_enable.exit

do.body.i:                                        ; preds = %sunxi_nfc_randomizer_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %controller, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  call void @arm_heavy_mb() #8
  %regs.i96 = getelementptr inbounds %struct.sunxi_nfc, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %regs.i96 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i96, align 4
  %add.ptr.i97 = getelementptr i8, ptr %65, i32 52
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %67 = or i32 %66, 131072
  %68 = ptrtoint ptr %regs.i96 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i96, align 4
  %add.ptr4.i = getelementptr i8, ptr %69, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %67) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_enable.exit

sunxi_nfc_randomizer_enable.exit:                 ; preds = %do.body.i, %sunxi_nfc_randomizer_config.exit.sunxi_nfc_randomizer_enable.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 2
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %71, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 277151744) #8, !srcloc !165
  %caps = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 11
  %72 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %caps, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool11.not = icmp eq i8 %75, 0
  br i1 %tobool11.not, label %if.else, label %sunxi_nfc_randomizer_enable.exit.do.body14_crit_edge

sunxi_nfc_randomizer_enable.exit.do.body14_crit_edge: ; preds = %sunxi_nfc_randomizer_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

if.else:                                          ; preds = %sunxi_nfc_randomizer_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dmac = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 10
  %76 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dmac, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %79, i32 0, i32 50
  %80 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %device_issue_pending.i, align 4
  call void %81(ptr noundef %77) #8
  br label %do.body14

do.body14:                                        ; preds = %if.else, %sunxi_nfc_randomizer_enable.exit.do.body14_crit_edge
  %wait.0 = phi i32 [ 2, %if.else ], [ 6, %sunxi_nfc_randomizer_enable.exit.do.body14_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  call void @arm_heavy_mb() #8
  %82 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %83, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 12420) #8, !srcloc !165
  %call19 = call fastcc i32 @sunxi_nfc_wait_events(ptr noundef %1, i32 noundef %wait.0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end30.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body14
  %84 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %caps, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %85, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool23.not = icmp eq i8 %87, 0
  br i1 %tobool23.not, label %if.then24, label %if.then29.critedge87

if.then24:                                        ; preds = %land.lhs.true
  %dmac25 = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 10
  %88 = ptrtoint ptr %dmac25 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dmac25, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %91, i32 0, i32 47
  %92 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i98 = icmp eq ptr %93, null
  br i1 %tobool.not.i98, label %if.then24.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

if.then24.dmaengine_terminate_all.exit_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 %93(ptr noundef %89) #8
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.then24.dmaengine_terminate_all.exit_crit_edge
  %94 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %options.i, align 8
  %and.i100 = and i32 %95, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %tobool.not.i101 = icmp eq i32 %and.i100, 0
  br i1 %tobool.not.i101, label %dmaengine_terminate_all.exit.sunxi_nfc_randomizer_disable.exit_crit_edge, label %do.body.i105

dmaengine_terminate_all.exit.sunxi_nfc_randomizer_disable.exit_crit_edge: ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_disable.exit

do.body.i105:                                     ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %controller, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  call void @arm_heavy_mb() #8
  %regs.i103 = getelementptr inbounds %struct.sunxi_nfc, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %regs.i103 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs.i103, align 4
  %add.ptr.i104 = getelementptr i8, ptr %99, i32 52
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  %101 = and i32 %100, -131073
  %102 = ptrtoint ptr %regs.i103 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i103, align 4
  %add.ptr5.i = getelementptr i8, ptr %103, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %101) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_disable.exit

sunxi_nfc_randomizer_disable.exit:                ; preds = %do.body.i105, %dmaengine_terminate_all.exit.sunxi_nfc_randomizer_disable.exit_crit_edge
  %104 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %controller, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  call void @arm_heavy_mb() #8
  %regs.i107 = getelementptr inbounds %struct.sunxi_nfc, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %regs.i107 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i107, align 4
  %add.ptr.i108 = getelementptr i8, ptr %107, i32 52
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %109 = and i32 %108, -16777217
  %110 = ptrtoint ptr %regs.i107 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs.i107, align 4
  %add.ptr4.i109 = getelementptr i8, ptr %111, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i109, i32 %109) #8, !srcloc !165
  %dev.i = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 1
  %112 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %113, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  call void @arm_heavy_mb() #8
  %114 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs, align 4
  %116 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %117 = and i32 %116, -4194305
  %118 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %117) #8, !srcloc !165
  br label %cleanup

if.then29.critedge87:                             ; preds = %land.lhs.true
  %120 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %options.i, align 8
  %and.i112 = and i32 %121, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i112)
  %tobool.not.i113 = icmp eq i32 %and.i112, 0
  br i1 %tobool.not.i113, label %if.then29.critedge87.sunxi_nfc_randomizer_disable.exit119_crit_edge, label %do.body.i118

if.then29.critedge87.sunxi_nfc_randomizer_disable.exit119_crit_edge: ; preds = %if.then29.critedge87
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_disable.exit119

do.body.i118:                                     ; preds = %if.then29.critedge87
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %controller, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  call void @arm_heavy_mb() #8
  %regs.i115 = getelementptr inbounds %struct.sunxi_nfc, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %regs.i115 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs.i115, align 4
  %add.ptr.i116 = getelementptr i8, ptr %125, i32 52
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  %127 = and i32 %126, -131073
  %128 = ptrtoint ptr %regs.i115 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs.i115, align 4
  %add.ptr5.i117 = getelementptr i8, ptr %129, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i117, i32 %127) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_disable.exit119

sunxi_nfc_randomizer_disable.exit119:             ; preds = %do.body.i118, %if.then29.critedge87.sunxi_nfc_randomizer_disable.exit119_crit_edge
  %130 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %controller, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  call void @arm_heavy_mb() #8
  %regs.i121 = getelementptr inbounds %struct.sunxi_nfc, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %regs.i121 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs.i121, align 4
  %add.ptr.i122 = getelementptr i8, ptr %133, i32 52
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %135 = and i32 %134, -16777217
  %136 = ptrtoint ptr %regs.i121 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs.i121, align 4
  %add.ptr4.i123 = getelementptr i8, ptr %137, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i123, i32 %135) #8, !srcloc !165
  %dev.i124 = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 1
  %138 = ptrtoint ptr %dev.i124 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev.i124, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %139, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  call void @arm_heavy_mb() #8
  %140 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs, align 4
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %143 = and i32 %142, -4194305
  %144 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %143) #8, !srcloc !165
  br label %cleanup

if.end30.critedge:                                ; preds = %do.body14
  %146 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %options.i, align 8
  %and.i127 = and i32 %147, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i127)
  %tobool.not.i128 = icmp eq i32 %and.i127, 0
  br i1 %tobool.not.i128, label %if.end30.critedge.sunxi_nfc_randomizer_disable.exit134_crit_edge, label %do.body.i133

if.end30.critedge.sunxi_nfc_randomizer_disable.exit134_crit_edge: ; preds = %if.end30.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_disable.exit134

do.body.i133:                                     ; preds = %if.end30.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %148 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %controller, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  call void @arm_heavy_mb() #8
  %regs.i130 = getelementptr inbounds %struct.sunxi_nfc, ptr %149, i32 0, i32 2
  %150 = ptrtoint ptr %regs.i130 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regs.i130, align 4
  %add.ptr.i131 = getelementptr i8, ptr %151, i32 52
  %152 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  %153 = and i32 %152, -131073
  %154 = ptrtoint ptr %regs.i130 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs.i130, align 4
  %add.ptr5.i132 = getelementptr i8, ptr %155, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i132, i32 %153) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_disable.exit134

sunxi_nfc_randomizer_disable.exit134:             ; preds = %do.body.i133, %if.end30.critedge.sunxi_nfc_randomizer_disable.exit134_crit_edge
  %156 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %controller, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  call void @arm_heavy_mb() #8
  %regs.i136 = getelementptr inbounds %struct.sunxi_nfc, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %regs.i136 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regs.i136, align 4
  %add.ptr.i137 = getelementptr i8, ptr %159, i32 52
  %160 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %161 = and i32 %160, -16777217
  %162 = ptrtoint ptr %regs.i136 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regs.i136, align 4
  %add.ptr4.i138 = getelementptr i8, ptr %163, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i138, i32 %161) #8, !srcloc !165
  %dev.i139 = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 1
  %164 = ptrtoint ptr %dev.i139 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev.i139, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %165, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  call void @arm_heavy_mb() #8
  %166 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regs, align 4
  %168 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %169 = and i32 %168, -4194305
  %170 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %169) #8, !srcloc !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool31.not = icmp eq i32 %oob_required, 0
  br i1 %tobool31.not, label %lor.lhs.false, label %sunxi_nfc_randomizer_disable.exit134.if.then33_crit_edge

sunxi_nfc_randomizer_disable.exit134.if.then33_crit_edge: ; preds = %sunxi_nfc_randomizer_disable.exit134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

lor.lhs.false:                                    ; preds = %sunxi_nfc_randomizer_disable.exit134
  %172 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %options.i, align 8
  %and = and i32 %173, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %lor.lhs.false.if.end35_crit_edge, label %lor.lhs.false.if.then33_crit_edge

lor.lhs.false.if.then33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

lor.lhs.false.if.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then33:                                        ; preds = %lor.lhs.false.if.then33_crit_edge, %sunxi_nfc_randomizer_disable.exit134.if.then33_crit_edge
  %bytes.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %174 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %bytes.i, align 4
  %add.i = add i32 %175, 4
  %176 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %steps, align 4
  %mul.i = mul i32 %add.i, %177
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 6
  %178 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %oobsize.i, align 4
  %sub.i = sub i32 %179, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i141 = icmp slt i32 %sub.i, 1
  br i1 %cmp.i141, label %if.then33.if.end35_crit_edge, label %if.end.i142

if.then33.if.end35_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end.i142:                                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %oob_poi34 = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 23
  %180 = ptrtoint ptr %oob_poi34 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %oob_poi34, align 4
  %writesize.c32.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %182 = ptrtoint ptr %writesize.c32.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %writesize.c32.i, align 4
  %add4.c33.i = add i32 %183, %mul.i
  %call5.c34.i = call i32 @nand_change_write_column_op(ptr noundef %nand, i32 noundef %add4.c33.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #8
  %add.ptr.c35.i = getelementptr i8, ptr %181, i32 %mul.i
  call fastcc void @sunxi_nfc_randomizer_write_buf(ptr noundef %nand, ptr noundef %add.ptr.c35.i, i32 noundef %sub.i, i32 noundef %page) #8
  br label %if.end35

if.end35:                                         ; preds = %if.end.i142, %if.then33.if.end35_crit_edge, %lor.lhs.false.if.end35_crit_edge
  %call36 = call i32 @nand_prog_page_end_op(ptr noundef %nand) #8
  br label %cleanup

pio_fallback:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = call i32 @sunxi_nfc_hw_ecc_write_page(ptr noundef %nand, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page)
  br label %cleanup

cleanup:                                          ; preds = %pio_fallback, %if.end35, %sunxi_nfc_randomizer_disable.exit119, %sunxi_nfc_randomizer_disable.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %pio_fallback ], [ %call36, %if.end35 ], [ %call2, %entry.cleanup_crit_edge ], [ %call19, %sunxi_nfc_randomizer_disable.exit119 ], [ %call19, %sunxi_nfc_randomizer_disable.exit ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_nfc_hw_ecc_read_page(ptr noundef %nand, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  %max_bitflips = alloca i32, align 4
  %cur_off = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_bitflips) #8
  %0 = ptrtoint ptr %max_bitflips to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %max_bitflips, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_off) #8
  %1 = ptrtoint ptr %cur_off to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cur_off, align 4
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 28
  %2 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_cs, align 4
  tail call fastcc void @sunxi_nfc_select_chip(ptr noundef %nand, i32 noundef %3)
  %call2 = tail call i32 @nand_read_page_op(ptr noundef %nand, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 32
  %4 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller.i, align 4
  %regs.i = getelementptr inbounds %struct.sunxi_nfc, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %9 = and i32 %8, -686817281
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %ecc.i = getelementptr i8, ptr %nand, i32 2168
  %11 = ptrtoint ptr %ecc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ecc.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %shl.i = shl i32 %14, 12
  %or5.i = or i32 %shl.i, %10
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %16)
  %cmp.i = icmp eq i32 %16, 512
  %spec.select.v.i = select i1 %cmp.i, i32 57, i32 25
  %spec.select.i = or i32 %or5.i, %spec.select.v.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #8
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %19, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %17) #8, !srcloc !165
  %steps = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 3
  %20 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp62 = icmp sgt i32 %21, 0
  br i1 %cmp62, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 23
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool6 = icmp ne i32 %oob_required, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %raw_mode.0.off064 = phi i1 [ false, %for.body.lr.ph ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %22 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i, align 4
  %mul = mul i32 %23, %i.063
  %24 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bytes, align 4
  %add = add i32 %25, 4
  %mul3 = mul i32 %add, %i.063
  %add.ptr = getelementptr i8, ptr %buf, i32 %mul
  %26 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %oob_poi, align 4
  %add.ptr4 = getelementptr i8, ptr %27, i32 %mul3
  %28 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %writesize, align 4
  %add5 = add i32 %mul3, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.063)
  %tobool.not = icmp eq i32 %i.063, 0
  %call7 = call fastcc i32 @sunxi_nfc_hw_ecc_read_chunk(ptr noundef %nand, ptr noundef %add.ptr, i32 noundef %mul, ptr noundef %add.ptr4, i32 noundef %add5, ptr noundef nonnull %cur_off, ptr noundef nonnull %max_bitflips, i1 noundef zeroext %tobool.not, i1 noundef zeroext %tobool6, i32 noundef %page)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %for.body.cleanup21_crit_edge, label %for.inc

for.body.cleanup21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup21

for.inc:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool9.not = icmp ne i32 %call7, 0
  %spec.select = select i1 %tobool9.not, i1 true, i1 %raw_mode.0.off064
  %inc = add nuw nsw i32 %i.063, 1
  %30 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %steps, align 4
  %cmp = icmp slt i32 %inc, %31
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %raw_mode.0.off0.lcssa = phi i1 [ false, %entry.for.end_crit_edge ], [ %spec.select, %for.inc.for.end_crit_edge ]
  %.lcssa = phi i32 [ %21, %entry.for.end_crit_edge ], [ %31, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool15.not = icmp eq i32 %oob_required, 0
  br i1 %tobool15.not, label %for.end.if.end20_crit_edge, label %if.then16

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then16:                                        ; preds = %for.end
  %oob_poi17 = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 23
  %32 = ptrtoint ptr %oob_poi17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %oob_poi17, align 4
  %bytes.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %34 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bytes.i, align 4
  %add.i = add i32 %35, 4
  %mul.i = mul i32 %add.i, %.lcssa
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 6
  %36 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %oobsize.i, align 4
  %sub.i = sub i32 %37, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i54 = icmp slt i32 %sub.i, 1
  br i1 %cmp.i54, label %if.then16.if.end20_crit_edge, label %if.end.i

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end.i:                                         ; preds = %if.then16
  %38 = ptrtoint ptr %cur_off to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cur_off, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %mul.i)
  %cmp2.not.i = icmp eq i32 %39, %mul.i
  br i1 %cmp2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %40 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %writesize.i, align 4
  %call4.i = tail call i32 @nand_change_read_column_op(ptr noundef %nand, i32 noundef %41, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %add.ptr8.i = getelementptr i8, ptr %33, i32 %mul.i
  br i1 %raw_mode.0.off0.lcssa, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @sunxi_nfc_read_buf(ptr noundef %nand, ptr noundef %add.ptr8.i, i32 noundef %sub.i) #8
  br label %if.end20

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @sunxi_nfc_randomizer_read_buf(ptr noundef %nand, ptr noundef %add.ptr8.i, i32 noundef %sub.i, i1 noundef zeroext false, i32 noundef %page) #8
  br label %if.end20

if.end20:                                         ; preds = %if.else.i, %if.then7.i, %if.then16.if.end20_crit_edge, %for.end.if.end20_crit_edge
  %42 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %controller.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %regs.i56 = getelementptr inbounds %struct.sunxi_nfc, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %regs.i56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i56, align 4
  %add.ptr.i57 = getelementptr i8, ptr %45, i32 52
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %47 = and i32 %46, -16777217
  %48 = ptrtoint ptr %regs.i56 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i56, align 4
  %add.ptr4.i = getelementptr i8, ptr %49, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %47) #8, !srcloc !165
  %50 = ptrtoint ptr %max_bitflips to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_bitflips, align 4
  br label %cleanup21

cleanup21:                                        ; preds = %if.end20, %for.body.cleanup21_crit_edge
  %retval.2 = phi i32 [ %51, %if.end20 ], [ %call7, %for.body.cleanup21_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_off) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_bitflips) #8
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_nfc_hw_ecc_read_subpage(ptr noundef %nand, i32 noundef %data_offs, i32 noundef %readlen, ptr noundef %bufpoi, i32 noundef %page) #2 align 64 {
entry:
  %cur_off = alloca i32, align 4
  %max_bitflips = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_off) #8
  %0 = ptrtoint ptr %cur_off to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cur_off, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_bitflips) #8
  %1 = ptrtoint ptr %max_bitflips to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %max_bitflips, align 4
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 28
  %2 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_cs, align 4
  tail call fastcc void @sunxi_nfc_select_chip(ptr noundef %nand, i32 noundef %3)
  %call2 = tail call i32 @nand_read_page_op(ptr noundef %nand, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 32
  %4 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller.i, align 4
  %regs.i = getelementptr inbounds %struct.sunxi_nfc, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %9 = and i32 %8, -686817281
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %ecc.i = getelementptr i8, ptr %nand, i32 2168
  %11 = ptrtoint ptr %ecc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ecc.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %shl.i = shl i32 %14, 12
  %or5.i = or i32 %shl.i, %10
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %16)
  %cmp.i = icmp eq i32 %16, 512
  %spec.select.v.i = select i1 %cmp.i, i32 57, i32 25
  %spec.select.i = or i32 %or5.i, %spec.select.v.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #8
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %19, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %17) #8, !srcloc !165
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i, align 4
  %div = udiv i32 %data_offs, %21
  %add = add i32 %data_offs, -1
  %add4 = add i32 %add, %readlen
  %sub47 = add i32 %add4, %21
  %div648 = udiv i32 %sub47, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div648)
  %cmp49 = icmp ult i32 %div, %div648
  br i1 %cmp49, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 23
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.050, 1
  %22 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i, align 4
  %sub = add i32 %add4, %23
  %div6 = udiv i32 %sub, %23
  %cmp = icmp ult i32 %inc, %div6
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %24 = phi i32 [ %21, %for.body.lr.ph ], [ %23, %for.cond.for.body_crit_edge ]
  %i.050 = phi i32 [ %div, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %mul = mul i32 %24, %i.050
  %25 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bytes, align 4
  %add8 = add i32 %26, 4
  %mul9 = mul i32 %add8, %i.050
  %add.ptr = getelementptr i8, ptr %bufpoi, i32 %mul
  %27 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %oob_poi, align 4
  %add.ptr10 = getelementptr i8, ptr %28, i32 %mul9
  %29 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %writesize, align 4
  %add11 = add i32 %mul9, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.050)
  %tobool.not = icmp eq i32 %i.050, 0
  %call12 = call fastcc i32 @sunxi_nfc_hw_ecc_read_chunk(ptr noundef %nand, ptr noundef %add.ptr, i32 noundef %mul, ptr noundef %add.ptr10, i32 noundef %add11, ptr noundef nonnull %cur_off, ptr noundef nonnull %max_bitflips, i1 noundef zeroext %tobool.not, i1 noundef zeroext false, i32 noundef %page)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %for.body.cleanup17_crit_edge, label %for.cond

for.body.cleanup17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %31 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %controller.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %regs.i45 = getelementptr inbounds %struct.sunxi_nfc, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %regs.i45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i45, align 4
  %add.ptr.i46 = getelementptr i8, ptr %34, i32 52
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %36 = and i32 %35, -16777217
  %37 = ptrtoint ptr %regs.i45 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i45, align 4
  %add.ptr4.i = getelementptr i8, ptr %38, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %36) #8, !srcloc !165
  %39 = ptrtoint ptr %max_bitflips to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_bitflips, align 4
  br label %cleanup17

cleanup17:                                        ; preds = %for.end, %for.body.cleanup17_crit_edge
  %retval.2 = phi i32 [ %40, %for.end ], [ %call12, %for.body.cleanup17_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_bitflips) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_off) #8
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_nfc_hw_ecc_write_page(ptr noundef %nand, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  %cur_off = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_off) #8
  %0 = ptrtoint ptr %cur_off to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cur_off, align 4
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 28
  %1 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cur_cs, align 4
  tail call fastcc void @sunxi_nfc_select_chip(ptr noundef %nand, i32 noundef %2)
  %call2 = tail call i32 @nand_prog_page_begin_op(ptr noundef %nand, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 32
  %3 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controller.i, align 4
  %regs.i = getelementptr inbounds %struct.sunxi_nfc, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 52
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %8 = and i32 %7, -686817281
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %ecc.i = getelementptr i8, ptr %nand, i32 2168
  %10 = ptrtoint ptr %ecc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ecc.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %shl.i = shl i32 %13, 12
  %or5.i = or i32 %shl.i, %9
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %15)
  %cmp.i = icmp eq i32 %15, 512
  %spec.select.v.i = select i1 %cmp.i, i32 57, i32 25
  %spec.select.i = or i32 %or5.i, %spec.select.v.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #8
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %18, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %16) #8, !srcloc !165
  %steps = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 3
  %19 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp50 = icmp sgt i32 %20, 0
  br i1 %cmp50, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 23
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.051, 1
  %21 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %steps, align 4
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i, align 4
  %mul = mul i32 %24, %i.051
  %25 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bytes, align 4
  %add = add i32 %26, 4
  %mul3 = mul i32 %add, %i.051
  %add.ptr = getelementptr i8, ptr %buf, i32 %mul
  %27 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %oob_poi, align 4
  %add.ptr4 = getelementptr i8, ptr %28, i32 %mul3
  %29 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %writesize, align 4
  %add5 = add i32 %mul3, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.051)
  %tobool.not = icmp eq i32 %i.051, 0
  %call6 = call fastcc i32 @sunxi_nfc_hw_ecc_write_chunk(ptr noundef %nand, ptr noundef %add.ptr, i32 noundef %mul, ptr noundef %add.ptr4, i32 noundef %add5, ptr noundef nonnull %cur_off, i1 noundef zeroext %tobool.not, i32 noundef %page)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.cond, label %for.body.cleanup17_crit_edge

for.body.cleanup17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %20, %entry.for.end_crit_edge ], [ %22, %for.cond.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool11.not = icmp eq i32 %oob_required, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %for.end.if.then13_crit_edge

for.end.if.then13_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

lor.lhs.false:                                    ; preds = %for.end
  %options = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 6
  %31 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %options, align 8
  %and = and i32 %32, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %lor.lhs.false.if.end15_crit_edge, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %for.end.if.then13_crit_edge
  %oob_poi14 = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 23
  %33 = ptrtoint ptr %oob_poi14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %oob_poi14, align 4
  %bytes.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %35 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bytes.i, align 4
  %add.i = add i32 %36, 4
  %mul.i = mul i32 %add.i, %.lcssa
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 6
  %37 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %oobsize.i, align 4
  %sub.i = sub i32 %38, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i45 = icmp slt i32 %sub.i, 1
  br i1 %cmp.i45, label %if.then13.if.end15_crit_edge, label %if.end.i

if.then13.if.end15_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end.i:                                         ; preds = %if.then13
  %39 = ptrtoint ptr %cur_off to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cur_off, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %mul.i)
  %cmp2.not.i = icmp eq i32 %40, %mul.i
  br i1 %cmp2.not.i, label %if.end.i.if.then8.i_crit_edge, label %if.then8.critedge30.i

if.end.i.if.then8.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i

if.then8.critedge30.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %writesize.c.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %41 = ptrtoint ptr %writesize.c.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %writesize.c.i, align 4
  %add4.c.i = add i32 %42, %mul.i
  %call5.c.i = tail call i32 @nand_change_write_column_op(ptr noundef %nand, i32 noundef %add4.c.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #8
  br label %if.then8.i

if.then8.i:                                       ; preds = %if.then8.critedge30.i, %if.end.i.if.then8.i_crit_edge
  %add.ptr.c31.i = getelementptr i8, ptr %34, i32 %mul.i
  tail call fastcc void @sunxi_nfc_randomizer_write_buf(ptr noundef %nand, ptr noundef %add.ptr.c31.i, i32 noundef %sub.i, i32 noundef %page) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then8.i, %if.then13.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge
  %43 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %controller.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %regs.i47 = getelementptr inbounds %struct.sunxi_nfc, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %regs.i47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i47, align 4
  %add.ptr.i48 = getelementptr i8, ptr %46, i32 52
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %48 = and i32 %47, -16777217
  %49 = ptrtoint ptr %regs.i47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i47, align 4
  %add.ptr4.i = getelementptr i8, ptr %50, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %48) #8, !srcloc !165
  %call16 = tail call i32 @nand_prog_page_end_op(ptr noundef %nand) #8
  br label %cleanup17

cleanup17:                                        ; preds = %if.end15, %for.body.cleanup17_crit_edge
  %retval.2 = phi i32 [ %call16, %if.end15 ], [ %call6, %for.body.cleanup17_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_off) #8
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_nfc_hw_ecc_write_subpage(ptr noundef %nand, i32 noundef %data_offs, i32 noundef %data_len, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  %cur_off = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_off) #8
  %0 = ptrtoint ptr %cur_off to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cur_off, align 4
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 28
  %1 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cur_cs, align 4
  tail call fastcc void @sunxi_nfc_select_chip(ptr noundef %nand, i32 noundef %2)
  %call2 = tail call i32 @nand_prog_page_begin_op(ptr noundef %nand, i32 noundef %page, i32 noundef 0, ptr noundef null, i32 noundef 0) #8
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 32
  %3 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controller.i, align 4
  %regs.i = getelementptr inbounds %struct.sunxi_nfc, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 52
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %8 = and i32 %7, -686817281
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %ecc.i = getelementptr i8, ptr %nand, i32 2168
  %10 = ptrtoint ptr %ecc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ecc.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %shl.i = shl i32 %13, 12
  %or5.i = or i32 %shl.i, %9
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %15)
  %cmp.i = icmp eq i32 %15, 512
  %spec.select.v.i = select i1 %cmp.i, i32 57, i32 25
  %spec.select.i = or i32 %or5.i, %spec.select.v.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #8
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %18, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %16) #8, !srcloc !165
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i, align 4
  %div = udiv i32 %data_offs, %20
  %add = add i32 %data_offs, -1
  %add4 = add i32 %add, %data_len
  %sub48 = add i32 %add4, %20
  %div649 = udiv i32 %sub48, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div649)
  %cmp50 = icmp ult i32 %div, %div649
  br i1 %cmp50, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 23
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.051, 1
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i, align 4
  %sub = add i32 %add4, %22
  %div6 = udiv i32 %sub, %22
  %cmp = icmp ult i32 %inc, %div6
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %23 = phi i32 [ %20, %for.body.lr.ph ], [ %22, %for.cond.for.body_crit_edge ]
  %i.051 = phi i32 [ %div, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %mul = mul i32 %23, %i.051
  %24 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bytes, align 4
  %add8 = add i32 %25, 4
  %mul9 = mul i32 %add8, %i.051
  %add.ptr = getelementptr i8, ptr %buf, i32 %mul
  %26 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %oob_poi, align 4
  %add.ptr10 = getelementptr i8, ptr %27, i32 %mul9
  %28 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %writesize, align 4
  %add11 = add i32 %mul9, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.051)
  %tobool.not = icmp eq i32 %i.051, 0
  %call12 = call fastcc i32 @sunxi_nfc_hw_ecc_write_chunk(ptr noundef %nand, ptr noundef %add.ptr, i32 noundef %mul, ptr noundef %add.ptr10, i32 noundef %add11, ptr noundef nonnull %cur_off, i1 noundef zeroext %tobool.not, i32 noundef %page)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.cond, label %for.body.cleanup18_crit_edge

for.body.cleanup18_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %30 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %controller.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %regs.i46 = getelementptr inbounds %struct.sunxi_nfc, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %regs.i46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i46, align 4
  %add.ptr.i47 = getelementptr i8, ptr %33, i32 52
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %35 = and i32 %34, -16777217
  %36 = ptrtoint ptr %regs.i46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i46, align 4
  %add.ptr4.i = getelementptr i8, ptr %37, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %35) #8, !srcloc !165
  %call17 = tail call i32 @nand_prog_page_end_op(ptr noundef %nand) #8
  br label %cleanup18

cleanup18:                                        ; preds = %for.end, %for.body.cleanup18_crit_edge
  %retval.2 = phi i32 [ %call17, %for.end ], [ %call12, %for.body.cleanup18_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_off) #8
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_oob_std(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_write_oob_std(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sunxi_nand_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %0 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %section)
  %cmp.not = icmp sgt i32 %1, %section
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes, align 4
  %add = add i32 %3, 4
  %mul = mul i32 %add, %section
  %add2 = add i32 %mul, 4
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add2, ptr %oobregion, align 4
  %5 = load i32, ptr %bytes, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sunxi_nand_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc1 = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %0 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %section)
  %cmp = icmp slt i32 %1, %section
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecc1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %if.then3, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %length, align 4
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %6 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytes, align 4
  %add = add i32 %7, 4
  %mul = mul i32 %add, %section
  %8 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %oobregion, align 4
  %9 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %section)
  %cmp7 = icmp sgt i32 %10, %section
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %length9 = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %11 = ptrtoint ptr %length9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %length9, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %12 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oobsize, align 4
  %sub = sub i32 %13, %mul
  %14 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %oobregion, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ -34, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_nfc_select_chip(ptr nocapture noundef readonly %nand, i32 noundef %cs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %nand, i32 -8
  %controller = getelementptr i8, ptr %nand, i32 2052
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cs)
  %cmp.not = icmp eq i32 %cs, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %nsels = getelementptr i8, ptr %nand, i32 2184
  %2 = ptrtoint ptr %nsels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nsels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cs)
  %cmp4.not = icmp ugt i32 %3, %cs
  br i1 %cmp4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %regs = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  %7 = and i32 %6, -151977992
  %arrayidx = getelementptr %struct.sunxi_nand_chip, ptr %add.ptr.i, i32 0, i32 7, i32 %cs
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %shl = shl nuw i32 %conv, 24
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 17
  %10 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %cmp8 = icmp ult i32 %11, 10
  %sub = shl i32 %11, 8
  %phi.bo = add i32 %sub, -2560
  %cond = select i1 %cmp8, i32 0, i32 %phi.bo
  %rb = getelementptr %struct.sunxi_nand_chip, ptr %add.ptr.i, i32 0, i32 7, i32 %cs, i32 1
  %12 = ptrtoint ptr %rb to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rb, align 1
  %conv14 = sext i8 %13 to i32
  %shl20 = shl nsw i32 %conv14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp1577 = icmp slt i8 %13, 0
  %or21 = select i1 %cmp1577, i32 0, i32 %shl20
  %14 = or i32 %7, 16777216
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %or12 = or i32 %15, %shl
  %or13 = or i32 %or12, %cond
  %ctl.0 = or i32 %or13, %or21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  tail call void @arm_heavy_mb() #8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %16 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %writesize, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr24 = getelementptr i8, ptr %20, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %18) #8, !srcloc !165
  %clk_rate = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clk_rate, align 4
  %clk_rate25 = getelementptr i8, ptr %nand, i32 2172
  %23 = ptrtoint ptr %clk_rate25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk_rate25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp26.not = icmp eq i32 %22, %24
  br i1 %cmp26.not, label %if.end.do.body34_crit_edge, label %if.then28

if.end.do.body34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mod_clk = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mod_clk, align 4
  %call30 = tail call i32 @clk_set_rate(ptr noundef %26, i32 noundef %24) #8
  %27 = ptrtoint ptr %clk_rate25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clk_rate25, align 4
  %29 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %clk_rate, align 4
  br label %do.body34

do.body34:                                        ; preds = %if.then28, %if.end.do.body34_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  %timing_ctl = getelementptr i8, ptr %nand, i32 2180
  %30 = ptrtoint ptr %timing_ctl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %timing_ctl, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %add.ptr38 = getelementptr i8, ptr %34, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %32) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void @arm_heavy_mb() #8
  %timing_cfg = getelementptr i8, ptr %nand, i32 2176
  %35 = ptrtoint ptr %timing_cfg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %timing_cfg, align 8
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add.ptr43 = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %37) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void @arm_heavy_mb() #8
  %40 = tail call i32 @llvm.bswap.i32(i32 %ctl.0)
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #8, !srcloc !165
  br label %cleanup

cleanup:                                          ; preds = %do.body34, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_nfc_hw_ecc_read_chunks_dma(ptr noundef %nand, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page, i32 noundef %nchunks) unnamed_addr #2 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 6
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 8
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %controller = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 32
  %2 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %4 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %call3 = tail call fastcc i32 @sunxi_nfc_wait_cmd_fifo_empty(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %entry.cleanup119_crit_edge

entry.cleanup119_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %call5 = call fastcc i32 @sunxi_nfc_dma_op_prepare(ptr noundef %3, ptr noundef %buf, i32 noundef %6, i32 noundef %nchunks, i32 noundef 2, ptr noundef nonnull %sg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup119_crit_edge

if.end.cleanup119_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

if.end8:                                          ; preds = %if.end
  %7 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %controller, align 4
  %regs.i = getelementptr inbounds %struct.sunxi_nfc, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 52
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %12 = and i32 %11, -686817281
  %13 = call i32 @llvm.bswap.i32(i32 %12) #8
  %ecc.i = getelementptr i8, ptr %nand, i32 2168
  %14 = ptrtoint ptr %ecc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ecc.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %shl.i = shl i32 %17, 12
  %or5.i = or i32 %shl.i, %13
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %19)
  %cmp.i = icmp eq i32 %19, 512
  %spec.select.v.i = select i1 %cmp.i, i32 57, i32 25
  %spec.select.i = or i32 %or5.i, %spec.select.v.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  call void @arm_heavy_mb() #8
  %20 = call i32 @llvm.bswap.i32(i32 %spec.select.i) #8
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %22, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %20) #8, !srcloc !165
  %23 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %controller, align 4
  %regs.i213 = getelementptr inbounds %struct.sunxi_nfc, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %regs.i213 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i213, align 4
  %add.ptr.i214 = getelementptr i8, ptr %26, i32 52
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i214) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  %28 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %options, align 8
  %and.i = and i32 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end8.sunxi_nfc_randomizer_config.exit_crit_edge, label %if.end.i

if.end8.sunxi_nfc_randomizer_config.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_config.exit

if.end.i:                                         ; preds = %if.end8
  %30 = ptrtoint ptr %regs.i213 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i213, align 4
  %add.ptr6.i = getelementptr i8, ptr %31, i32 52
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  %erasesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 3
  %33 = ptrtoint ptr %erasesize.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %erasesize.i.i, align 8
  %writesize_shift.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 9
  %35 = ptrtoint ptr %writesize_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %writesize_shift.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i.i, label %if.else170.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i32 %34 to i64
  %sh_prom.i.i.i = zext i32 %36 to i64
  %shr.i.i.i = lshr i64 %conv.i.i, %sh_prom.i.i.i
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %mtd_div_by_ws.exit.i.i

if.else170.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %writesize.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %37 = ptrtoint ptr %writesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %writesize.i.i.i, align 4
  %div180.i.i.i = udiv i32 %34, %38
  br label %mtd_div_by_ws.exit.i.i

mtd_div_by_ws.exit.i.i:                           ; preds = %if.else170.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.then.i.i.i ], [ %div180.i.i.i, %if.else170.i.i.i ]
  %39 = call i32 @llvm.umin.i32(i32 %retval.0.i.i.i, i32 128) #8
  %rem.i.i = srem i32 %page, %39
  %arrayidx.i.i = getelementptr i16, ptr @sunxi_nfc_randomizer_page_seeds, i32 %rem.i.i
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.i.i, align 2
  %42 = ptrtoint ptr %regs.i213 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i213, align 4
  %add.ptr15.i = getelementptr i8, ptr %43, i32 52
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  %45 = and i32 %44, -65408
  %46 = call i32 @llvm.bswap.i32(i32 %45) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  call void @arm_heavy_mb() #8
  %conv.i = zext i16 %41 to i32
  %shl.i215 = shl nuw i32 %conv.i, 16
  %or.i = or i32 %46, %shl.i215
  %47 = call i32 @llvm.bswap.i32(i32 %or.i) #8
  %48 = ptrtoint ptr %regs.i213 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i213, align 4
  %add.ptr21.i = getelementptr i8, ptr %49, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %47) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_config.exit

sunxi_nfc_randomizer_config.exit:                 ; preds = %mtd_div_by_ws.exit.i.i, %if.end8.sunxi_nfc_randomizer_config.exit_crit_edge
  %50 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %options, align 8
  %and.i217 = and i32 %51, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i217)
  %tobool.not.i218 = icmp eq i32 %and.i217, 0
  br i1 %tobool.not.i218, label %sunxi_nfc_randomizer_config.exit.sunxi_nfc_randomizer_enable.exit_crit_edge, label %do.body.i

sunxi_nfc_randomizer_config.exit.sunxi_nfc_randomizer_enable.exit_crit_edge: ; preds = %sunxi_nfc_randomizer_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_enable.exit

do.body.i:                                        ; preds = %sunxi_nfc_randomizer_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %controller, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  call void @arm_heavy_mb() #8
  %regs.i220 = getelementptr inbounds %struct.sunxi_nfc, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %regs.i220 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i220, align 4
  %add.ptr.i221 = getelementptr i8, ptr %55, i32 52
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i221) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %57 = or i32 %56, 131072
  %58 = ptrtoint ptr %regs.i220 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i220, align 4
  %add.ptr4.i = getelementptr i8, ptr %59, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %57) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_enable.exit

sunxi_nfc_randomizer_enable.exit:                 ; preds = %do.body.i, %sunxi_nfc_randomizer_config.exit.sunxi_nfc_randomizer_enable.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.sunxi_nfc, ptr %3, i32 0, i32 2
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %61, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 805691392) #8, !srcloc !165
  %caps = getelementptr inbounds %struct.sunxi_nfc, ptr %3, i32 0, i32 11
  %62 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %caps, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool9.not = icmp eq i8 %65, 0
  br i1 %tobool9.not, label %if.else, label %sunxi_nfc_randomizer_enable.exit.do.body12_crit_edge

sunxi_nfc_randomizer_enable.exit.do.body12_crit_edge: ; preds = %sunxi_nfc_randomizer_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

if.else:                                          ; preds = %sunxi_nfc_randomizer_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dmac = getelementptr inbounds %struct.sunxi_nfc, ptr %3, i32 0, i32 10
  %66 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dmac, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %69, i32 0, i32 50
  %70 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device_issue_pending.i, align 4
  call void %71(ptr noundef %67) #8
  br label %do.body12

do.body12:                                        ; preds = %if.else, %sunxi_nfc_randomizer_enable.exit.do.body12_crit_edge
  %wait.0 = phi i32 [ 2, %if.else ], [ 6, %sunxi_nfc_randomizer_enable.exit.do.body12_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !200
  call void @arm_heavy_mb() #8
  %72 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs, align 4
  %add.ptr16 = getelementptr i8, ptr %73, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 8324) #8, !srcloc !165
  %call17 = call fastcc i32 @sunxi_nfc_wait_events(ptr noundef %3, i32 noundef %wait.0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end28.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body12
  %74 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %caps, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %75, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool21.not = icmp eq i8 %77, 0
  br i1 %tobool21.not, label %if.then22, label %if.then27.critedge210

if.then22:                                        ; preds = %land.lhs.true
  %dmac23 = getelementptr inbounds %struct.sunxi_nfc, ptr %3, i32 0, i32 10
  %78 = ptrtoint ptr %dmac23 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dmac23, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %81, i32 0, i32 47
  %82 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i222 = icmp eq ptr %83, null
  br i1 %tobool.not.i222, label %if.then22.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

if.then22.dmaengine_terminate_all.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 %83(ptr noundef %79) #8
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.then22.dmaengine_terminate_all.exit_crit_edge
  %84 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %options, align 8
  %and.i224 = and i32 %85, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i224)
  %tobool.not.i225 = icmp eq i32 %and.i224, 0
  br i1 %tobool.not.i225, label %dmaengine_terminate_all.exit.sunxi_nfc_randomizer_disable.exit_crit_edge, label %do.body.i229

dmaengine_terminate_all.exit.sunxi_nfc_randomizer_disable.exit_crit_edge: ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_disable.exit

do.body.i229:                                     ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %controller, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  call void @arm_heavy_mb() #8
  %regs.i227 = getelementptr inbounds %struct.sunxi_nfc, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %regs.i227 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i227, align 4
  %add.ptr.i228 = getelementptr i8, ptr %89, i32 52
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i228) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  %91 = and i32 %90, -131073
  %92 = ptrtoint ptr %regs.i227 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i227, align 4
  %add.ptr5.i = getelementptr i8, ptr %93, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %91) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_disable.exit

sunxi_nfc_randomizer_disable.exit:                ; preds = %do.body.i229, %dmaengine_terminate_all.exit.sunxi_nfc_randomizer_disable.exit_crit_edge
  %94 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %controller, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  call void @arm_heavy_mb() #8
  %regs.i231 = getelementptr inbounds %struct.sunxi_nfc, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %regs.i231 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i231, align 4
  %add.ptr.i232 = getelementptr i8, ptr %97, i32 52
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i232) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %99 = and i32 %98, -16777217
  %100 = ptrtoint ptr %regs.i231 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs.i231, align 4
  %add.ptr4.i233 = getelementptr i8, ptr %101, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i233, i32 %99) #8, !srcloc !165
  %dev.i = getelementptr inbounds %struct.sunxi_nfc, ptr %3, i32 0, i32 1
  %102 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %103, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  call void @arm_heavy_mb() #8
  %104 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs, align 4
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %107 = and i32 %106, -4194305
  %108 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %107) #8, !srcloc !165
  br label %cleanup119

if.then27.critedge210:                            ; preds = %land.lhs.true
  %110 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %options, align 8
  %and.i236 = and i32 %111, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i236)
  %tobool.not.i237 = icmp eq i32 %and.i236, 0
  br i1 %tobool.not.i237, label %if.then27.critedge210.sunxi_nfc_randomizer_disable.exit243_crit_edge, label %do.body.i242

if.then27.critedge210.sunxi_nfc_randomizer_disable.exit243_crit_edge: ; preds = %if.then27.critedge210
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_disable.exit243

do.body.i242:                                     ; preds = %if.then27.critedge210
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %controller, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  call void @arm_heavy_mb() #8
  %regs.i239 = getelementptr inbounds %struct.sunxi_nfc, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %regs.i239 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs.i239, align 4
  %add.ptr.i240 = getelementptr i8, ptr %115, i32 52
  %116 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i240) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  %117 = and i32 %116, -131073
  %118 = ptrtoint ptr %regs.i239 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i239, align 4
  %add.ptr5.i241 = getelementptr i8, ptr %119, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i241, i32 %117) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_disable.exit243

sunxi_nfc_randomizer_disable.exit243:             ; preds = %do.body.i242, %if.then27.critedge210.sunxi_nfc_randomizer_disable.exit243_crit_edge
  %120 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %controller, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  call void @arm_heavy_mb() #8
  %regs.i245 = getelementptr inbounds %struct.sunxi_nfc, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %regs.i245 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i245, align 4
  %add.ptr.i246 = getelementptr i8, ptr %123, i32 52
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i246) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %125 = and i32 %124, -16777217
  %126 = ptrtoint ptr %regs.i245 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs.i245, align 4
  %add.ptr4.i247 = getelementptr i8, ptr %127, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i247, i32 %125) #8, !srcloc !165
  %dev.i248 = getelementptr inbounds %struct.sunxi_nfc, ptr %3, i32 0, i32 1
  %128 = ptrtoint ptr %dev.i248 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev.i248, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %129, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  call void @arm_heavy_mb() #8
  %130 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs, align 4
  %132 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %133 = and i32 %132, -4194305
  %134 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %133) #8, !srcloc !165
  br label %cleanup119

if.end28.critedge:                                ; preds = %do.body12
  %136 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %options, align 8
  %and.i251 = and i32 %137, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i251)
  %tobool.not.i252 = icmp eq i32 %and.i251, 0
  br i1 %tobool.not.i252, label %if.end28.critedge.sunxi_nfc_randomizer_disable.exit258_crit_edge, label %do.body.i257

if.end28.critedge.sunxi_nfc_randomizer_disable.exit258_crit_edge: ; preds = %if.end28.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_disable.exit258

do.body.i257:                                     ; preds = %if.end28.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %138 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %controller, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  call void @arm_heavy_mb() #8
  %regs.i254 = getelementptr inbounds %struct.sunxi_nfc, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %regs.i254 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs.i254, align 4
  %add.ptr.i255 = getelementptr i8, ptr %141, i32 52
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i255) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  %143 = and i32 %142, -131073
  %144 = ptrtoint ptr %regs.i254 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs.i254, align 4
  %add.ptr5.i256 = getelementptr i8, ptr %145, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i256, i32 %143) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_disable.exit258

sunxi_nfc_randomizer_disable.exit258:             ; preds = %do.body.i257, %if.end28.critedge.sunxi_nfc_randomizer_disable.exit258_crit_edge
  %146 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %controller, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  call void @arm_heavy_mb() #8
  %regs.i260 = getelementptr inbounds %struct.sunxi_nfc, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %regs.i260 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs.i260, align 4
  %add.ptr.i261 = getelementptr i8, ptr %149, i32 52
  %150 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i261) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %151 = and i32 %150, -16777217
  %152 = ptrtoint ptr %regs.i260 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regs.i260, align 4
  %add.ptr4.i262 = getelementptr i8, ptr %153, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i262, i32 %151) #8, !srcloc !165
  %dev.i263 = getelementptr inbounds %struct.sunxi_nfc, ptr %3, i32 0, i32 1
  %154 = ptrtoint ptr %dev.i263 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev.i263, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %155, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  call void @arm_heavy_mb() #8
  %156 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs, align 4
  %158 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %159 = and i32 %158, -4194305
  %160 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %159) #8, !srcloc !165
  %162 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regs, align 4
  %add.ptr30 = getelementptr i8, ptr %163, i32 56
  %164 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #8, !srcloc !169
  %165 = call i32 @llvm.bswap.i32(i32 %164)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nchunks)
  %cmp334 = icmp sgt i32 %nchunks, 0
  br i1 %cmp334, label %for.body.lr.ph, label %sunxi_nfc_randomizer_disable.exit258.if.end112_crit_edge

sunxi_nfc_randomizer_disable.exit258.if.end112_crit_edge: ; preds = %sunxi_nfc_randomizer_disable.exit258
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

for.body.lr.ph:                                   ; preds = %sunxi_nfc_randomizer_disable.exit258
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool38.not = icmp eq i32 %oob_required, 0
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %erasesize.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 3
  %writesize_shift.i.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 9
  %ecc_step_size.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 17
  %ecc_stats1.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 52
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %raw_mode.0340 = phi i32 [ 0, %for.body.lr.ph ], [ %raw_mode.2, %cleanup.for.body_crit_edge ]
  %i.0336 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %max_bitflips.0335 = phi i32 [ 0, %for.body.lr.ph ], [ %max_bitflips.2, %cleanup.for.body_crit_edge ]
  %166 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %size, align 4
  %168 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %bytes, align 4
  %add = add i32 %169, 4
  %mul34 = mul i32 %add, %i.0336
  %170 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %oob_poi, align 4
  %add.ptr36 = getelementptr i8, ptr %171, i32 %mul34
  %mul = mul i32 %167, %i.0336
  %add.ptr35 = getelementptr i8, ptr %buf, i32 %mul
  %cond = select i1 %tobool.not, ptr null, ptr %add.ptr35
  %cond42 = select i1 %tobool38.not, ptr null, ptr %add.ptr36
  %shl.i266 = shl nuw i32 1, %i.0336
  %and.i267 = and i32 %shl.i266, %165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i267)
  %tobool.not.i268 = icmp eq i32 %and.i267, 0
  br i1 %tobool.not.i268, label %if.end.i269, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i269:                                      ; preds = %for.body
  %172 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %controller, align 4
  %shl2.i = shl i32 65536, %i.0336
  %and3.i = and i32 %shl2.i, %165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %regs27.i = getelementptr inbounds %struct.sunxi_nfc, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %regs27.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regs27.i, align 4
  br i1 %tobool4.not.i, label %if.end46.thread, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i269
  %add.ptr.i270 = getelementptr i8, ptr %175, i32 164
  %176 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i270) #8, !srcloc !169
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  %177 = and i32 %176, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool10.not.i = icmp eq i32 %177, 0
  %not.tobool10.not.i333 = xor i1 %tobool10.not.i, true
  %spec.select332 = sext i1 %not.tobool10.not.i333 to i8
  %tobool16.not.i = icmp eq ptr %cond, null
  br i1 %tobool16.not.i, label %if.then5.i.if.end18.i_crit_edge, label %if.then17.i

if.then5.i.if.end18.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %178 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %size, align 4
  %180 = zext i8 %spec.select332 to i32
  %181 = call ptr @memset(ptr %cond, i32 %180, i32 %179)
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.then5.i.if.end18.i_crit_edge
  %tobool19.not.i = icmp eq ptr %cond42, null
  br i1 %tobool19.not.i, label %if.end18.i.if.end46_crit_edge, label %if.then20.i

if.end18.i.if.end46_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %182 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %bytes, align 4
  %add22.i = add i32 %183, 4
  %184 = zext i8 %spec.select332 to i32
  %185 = call ptr @memset(ptr %cond42, i32 %184, i32 %add22.i)
  br label %if.end46

if.end46:                                         ; preds = %if.then20.i, %if.end18.i.if.end46_crit_edge
  br i1 %tobool38.not, label %if.end56, label %land.lhs.true48

if.end46.thread:                                  ; preds = %if.end.i269
  %add28.i = add nuw i32 %i.0336, 64
  %and29.i = and i32 %add28.i, -4
  %add.ptr30.i = getelementptr i8, ptr %175, i32 %and29.i
  %186 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #8, !srcloc !169
  %187 = call i32 @llvm.bswap.i32(i32 %186) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  %rem.i = shl i32 %i.0336, 3
  %mul.i = and i32 %rem.i, 24
  %shr.i = lshr i32 %187, %mul.i
  %and34.i = and i32 %shr.i, 255
  br i1 %tobool38.not, label %if.end46.thread.if.end56.thread_crit_edge, label %if.end46.thread.if.then50_crit_edge

if.end46.thread.if.then50_crit_edge:              ; preds = %if.end46.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

if.end46.thread.if.end56.thread_crit_edge:        ; preds = %if.end46.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.thread

land.lhs.true48:                                  ; preds = %if.end46
  br i1 %tobool10.not.i, label %land.lhs.true48.if.then50_crit_edge, label %land.lhs.true48.sunxi_nfc_hw_ecc_update_stats.exit_crit_edge

land.lhs.true48.sunxi_nfc_hw_ecc_update_stats.exit_crit_edge: ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_hw_ecc_update_stats.exit

land.lhs.true48.if.then50_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

if.then50:                                        ; preds = %land.lhs.true48.if.then50_crit_edge, %if.end46.thread.if.then50_crit_edge
  %retval.0.i.ph316321 = phi i32 [ 0, %land.lhs.true48.if.then50_crit_edge ], [ %and34.i, %if.end46.thread.if.then50_crit_edge ]
  %188 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %writesize, align 4
  %add51 = add i32 %189, %mul34
  %190 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %bytes, align 4
  %add53 = add i32 %191, 4
  %call54 = call i32 @nand_change_read_column_op(ptr noundef %nand, i32 noundef %add51, ptr noundef %add.ptr36, i32 noundef %add53, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0336)
  %tobool55.not = icmp eq i32 %i.0336, 0
  %192 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %controller, align 4
  %regs.i273 = getelementptr inbounds %struct.sunxi_nfc, ptr %193, i32 0, i32 2
  %194 = ptrtoint ptr %regs.i273 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regs.i273, align 4
  %mul.i274 = shl i32 %i.0336, 2
  %add.i275 = add i32 %mul.i274, 80
  %add.ptr.i276 = getelementptr i8, ptr %195, i32 %add.i275
  %196 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i276) #8, !srcloc !169
  %197 = call i32 @llvm.bswap.i32(i32 %196) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  %conv.i.i277 = trunc i32 %197 to i8
  %198 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv.i.i277, ptr %add.ptr36, align 1
  %shr.i.i = lshr i32 %197, 8
  %conv1.i.i = trunc i32 %shr.i.i to i8
  %arrayidx2.i.i = getelementptr i8, ptr %add.ptr36, i32 1
  %199 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %conv1.i.i, ptr %arrayidx2.i.i, align 1
  %shr3.i.i = lshr i32 %197, 16
  %conv4.i.i = trunc i32 %shr3.i.i to i8
  %arrayidx5.i.i = getelementptr i8, ptr %add.ptr36, i32 2
  %200 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %conv4.i.i, ptr %arrayidx5.i.i, align 1
  %shr6.i.i = lshr i32 %197, 24
  %conv7.i.i = trunc i32 %shr6.i.i to i8
  %arrayidx8.i.i = getelementptr i8, ptr %add.ptr36, i32 3
  %201 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %conv7.i.i, ptr %arrayidx8.i.i, align 1
  br i1 %tobool55.not, label %land.lhs.true.i, label %if.then50.if.end56.thread_crit_edge

if.then50.if.end56.thread_crit_edge:              ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.thread

land.lhs.true.i:                                  ; preds = %if.then50
  %202 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %options, align 8
  %and.i279 = and i32 %203, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i279)
  %tobool3.not.i = icmp eq i32 %and.i279, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end56.thread_crit_edge, label %if.then.i281

land.lhs.true.i.if.end56.thread_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.thread

if.then.i281:                                     ; preds = %land.lhs.true.i
  %204 = ptrtoint ptr %erasesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %erasesize.i.i.i, align 8
  %206 = ptrtoint ptr %writesize_shift.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %writesize_shift.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool.not.i.i.i.i = icmp eq i32 %207, 0
  br i1 %tobool.not.i.i.i.i, label %if.else170.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i281
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i280 = zext i32 %205 to i64
  %sh_prom.i.i.i.i = zext i32 %207 to i64
  %shr.i.i.i.i = lshr i64 %conv.i.i.i280, %sh_prom.i.i.i.i
  %conv.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  br label %sunxi_nfc_randomize_bbm.exit.i

if.else170.i.i.i.i:                               ; preds = %if.then.i281
  call void @__sanitizer_cov_trace_pc() #10
  %208 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %writesize, align 4
  %div180.i.i.i.i = udiv i32 %205, %209
  br label %sunxi_nfc_randomize_bbm.exit.i

sunxi_nfc_randomize_bbm.exit.i:                   ; preds = %if.else170.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.then.i.i.i.i ], [ %div180.i.i.i.i, %if.else170.i.i.i.i ]
  %210 = ptrtoint ptr %ecc_step_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %ecc_step_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %211)
  %cmp4.i.i.i = icmp eq i32 %211, 512
  %sunxi_nfc_randomizer_ecc512_seeds.sunxi_nfc_randomizer_ecc1024_seeds.i.i.i = select i1 %cmp4.i.i.i, ptr @sunxi_nfc_randomizer_ecc512_seeds, ptr @sunxi_nfc_randomizer_ecc1024_seeds
  %212 = call i32 @llvm.umin.i32(i32 %retval.0.i.i.i.i, i32 128) #8
  %rem.i.i.i282 = srem i32 %page, %212
  %arrayidx.i.i.i = getelementptr i16, ptr %sunxi_nfc_randomizer_ecc512_seeds.sunxi_nfc_randomizer_ecc1024_seeds.i.i.i, i32 %rem.i.i.i282
  %213 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i7.i = trunc i16 %214 to i8
  %xor.i.i = xor i8 %conv.i7.i, %conv.i.i277
  %215 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %xor.i.i, ptr %add.ptr36, align 1
  %216 = and i16 %214, 32767
  %conv2.i.i.i = zext i16 %216 to i32
  %217 = lshr i32 %conv2.i.i.i, 1
  %xor.i.i.i = xor i32 %217, %conv2.i.i.i
  %and6.i.i.i = shl nuw nsw i32 %xor.i.i.i, 14
  %and7.i.i.i = or i32 %and6.i.i.i, %217
  %218 = lshr i32 %and7.i.i.i, 7
  %xor7.i10.i = xor i32 %218, %shr.i.i
  %xor7.i.i = trunc i32 %xor7.i10.i to i8
  %219 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %xor7.i.i, ptr %arrayidx2.i.i, align 1
  br label %if.end56.thread

if.end56:                                         ; preds = %if.end46
  br i1 %tobool10.not.i, label %if.end56.if.end56.thread_crit_edge, label %if.end56.sunxi_nfc_hw_ecc_update_stats.exit_crit_edge

if.end56.sunxi_nfc_hw_ecc_update_stats.exit_crit_edge: ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_hw_ecc_update_stats.exit

if.end56.if.end56.thread_crit_edge:               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.thread

if.end56.thread:                                  ; preds = %if.end56.if.end56.thread_crit_edge, %sunxi_nfc_randomize_bbm.exit.i, %land.lhs.true.i.if.end56.thread_crit_edge, %if.then50.if.end56.thread_crit_edge, %if.end46.thread.if.end56.thread_crit_edge
  %retval.0.i.ph317327 = phi i32 [ 0, %if.end56.if.end56.thread_crit_edge ], [ %retval.0.i.ph316321, %sunxi_nfc_randomize_bbm.exit.i ], [ %retval.0.i.ph316321, %land.lhs.true.i.if.end56.thread_crit_edge ], [ %retval.0.i.ph316321, %if.then50.if.end56.thread_crit_edge ], [ %and34.i, %if.end46.thread.if.end56.thread_crit_edge ]
  br label %sunxi_nfc_hw_ecc_update_stats.exit

sunxi_nfc_hw_ecc_update_stats.exit:               ; preds = %if.end56.thread, %if.end56.sunxi_nfc_hw_ecc_update_stats.exit_crit_edge, %land.lhs.true48.sunxi_nfc_hw_ecc_update_stats.exit_crit_edge
  %retval.0.i.ph317326 = phi i32 [ %retval.0.i.ph317327, %if.end56.thread ], [ 0, %if.end56.sunxi_nfc_hw_ecc_update_stats.exit_crit_edge ], [ 0, %land.lhs.true48.sunxi_nfc_hw_ecc_update_stats.exit_crit_edge ]
  %220 = phi i32 [ %raw_mode.0340, %if.end56.thread ], [ 1, %if.end56.sunxi_nfc_hw_ecc_update_stats.exit_crit_edge ], [ 1, %land.lhs.true48.sunxi_nfc_hw_ecc_update_stats.exit_crit_edge ]
  %221 = ptrtoint ptr %ecc_stats1.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %ecc_stats1.i, align 4
  %add.i286 = add i32 %222, %retval.0.i.ph317326
  store i32 %add.i286, ptr %ecc_stats1.i, align 4
  %223 = call i32 @llvm.umax.i32(i32 %max_bitflips.0335, i32 %retval.0.i.ph317326) #8
  br label %cleanup

cleanup:                                          ; preds = %sunxi_nfc_hw_ecc_update_stats.exit, %for.body.cleanup_crit_edge
  %max_bitflips.2 = phi i32 [ %223, %sunxi_nfc_hw_ecc_update_stats.exit ], [ %max_bitflips.0335, %for.body.cleanup_crit_edge ]
  %raw_mode.2 = phi i32 [ %220, %sunxi_nfc_hw_ecc_update_stats.exit ], [ %raw_mode.0340, %for.body.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.0336, 1
  %exitcond.not = icmp eq i32 %inc, %nchunks
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup
  %and64 = and i32 %165, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp ne i32 %and64, 0
  %or.cond = and i1 %tobool65.not, %cmp334
  br i1 %or.cond, label %for.body69.lr.ph, label %for.end.if.end112_crit_edge

for.end.if.end112_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

for.body69.lr.ph:                                 ; preds = %for.end
  %bytes74 = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %oob_poi80 = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 23
  %writesize91 = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 7
  %ecc_stats1.i293 = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 52
  %failed.i290 = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 52, i32 1
  br label %for.body69

for.body69:                                       ; preds = %cleanup103.for.body69_crit_edge, %for.body69.lr.ph
  %raw_mode.3345 = phi i32 [ %raw_mode.2, %for.body69.lr.ph ], [ %raw_mode.5, %cleanup103.for.body69_crit_edge ]
  %i.1344 = phi i32 [ 0, %for.body69.lr.ph ], [ %inc110, %cleanup103.for.body69_crit_edge ]
  %max_bitflips.3343 = phi i32 [ %max_bitflips.2, %for.body69.lr.ph ], [ %max_bitflips.5, %cleanup103.for.body69_crit_edge ]
  %224 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %size, align 4
  %mul72 = mul i32 %225, %i.1344
  %226 = ptrtoint ptr %bytes74 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %bytes74, align 4
  %add75 = add i32 %227, 4
  %mul76 = mul i32 %add75, %i.1344
  %add.ptr78 = getelementptr i8, ptr %buf, i32 %mul72
  %228 = ptrtoint ptr %oob_poi80 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %oob_poi80, align 4
  %add.ptr81 = getelementptr i8, ptr %229, i32 %mul76
  %shl = shl nuw i32 1, %i.1344
  %and82 = and i32 %shl, %165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %for.body69.cleanup103_crit_edge, label %if.end85

for.body69.cleanup103_crit_edge:                  ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup103

if.end85:                                         ; preds = %for.body69
  br i1 %tobool.not, label %if.end85.if.end90_crit_edge, label %if.then87

if.end85.if.end90_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then87:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %call89 = call i32 @nand_change_read_column_op(ptr noundef %nand, i32 noundef %mul72, ptr noundef %add.ptr78, i32 noundef %225, i1 noundef zeroext false) #8
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.end85.if.end90_crit_edge
  %230 = ptrtoint ptr %writesize91 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %writesize91, align 4
  %add92 = add i32 %231, %mul76
  %232 = ptrtoint ptr %bytes74 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %bytes74, align 4
  %add94 = add i32 %233, 4
  %call95 = call i32 @nand_change_read_column_op(ptr noundef %nand, i32 noundef %add92, ptr noundef %add.ptr81, i32 noundef %add94, i1 noundef zeroext false) #8
  %234 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %size, align 4
  %236 = ptrtoint ptr %bytes74 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %bytes74, align 4
  %add98 = add i32 %237, 4
  %238 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %strength, align 4
  %call99 = call i32 @nand_check_erased_ecc_chunk(ptr noundef %add.ptr78, i32 noundef %235, ptr noundef %add.ptr81, i32 noundef %add98, ptr noundef null, i32 noundef 0, i32 noundef %239) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call99)
  %cmp100 = icmp sgt i32 %call99, -1
  %spec.select211 = select i1 %cmp100, i32 1, i32 %raw_mode.3345
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp.i289 = icmp slt i32 %call99, 0
  br i1 %cmp.i289, label %if.then.i292, label %if.else.i295

if.then.i292:                                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  %240 = ptrtoint ptr %failed.i290 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %failed.i290, align 4
  %inc.i291 = add i32 %241, 1
  store i32 %inc.i291, ptr %failed.i290, align 4
  br label %cleanup103

if.else.i295:                                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  %242 = ptrtoint ptr %ecc_stats1.i293 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %ecc_stats1.i293, align 4
  %add.i294 = add i32 %243, %call99
  store i32 %add.i294, ptr %ecc_stats1.i293, align 4
  %244 = call i32 @llvm.umax.i32(i32 %max_bitflips.3343, i32 %call99) #8
  br label %cleanup103

cleanup103:                                       ; preds = %if.else.i295, %if.then.i292, %for.body69.cleanup103_crit_edge
  %max_bitflips.5 = phi i32 [ %max_bitflips.3343, %for.body69.cleanup103_crit_edge ], [ %max_bitflips.3343, %if.then.i292 ], [ %244, %if.else.i295 ]
  %raw_mode.5 = phi i32 [ %raw_mode.3345, %for.body69.cleanup103_crit_edge ], [ %spec.select211, %if.then.i292 ], [ %spec.select211, %if.else.i295 ]
  %inc110 = add nuw nsw i32 %i.1344, 1
  %exitcond348.not = icmp eq i32 %inc110, %nchunks
  br i1 %exitcond348.not, label %cleanup103.if.end112_crit_edge, label %cleanup103.for.body69_crit_edge

cleanup103.for.body69_crit_edge:                  ; preds = %cleanup103
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body69

cleanup103.if.end112_crit_edge:                   ; preds = %cleanup103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.end112:                                        ; preds = %cleanup103.if.end112_crit_edge, %for.end.if.end112_crit_edge, %sunxi_nfc_randomizer_disable.exit258.if.end112_crit_edge
  %max_bitflips.6 = phi i32 [ %max_bitflips.2, %for.end.if.end112_crit_edge ], [ 0, %sunxi_nfc_randomizer_disable.exit258.if.end112_crit_edge ], [ %max_bitflips.5, %cleanup103.if.end112_crit_edge ]
  %raw_mode.6 = phi i32 [ %raw_mode.2, %for.end.if.end112_crit_edge ], [ 0, %sunxi_nfc_randomizer_disable.exit258.if.end112_crit_edge ], [ %raw_mode.5, %cleanup103.if.end112_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool113.not = icmp eq i32 %oob_required, 0
  br i1 %tobool113.not, label %if.end112.cleanup119_crit_edge, label %if.then114

if.end112.cleanup119_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

if.then114:                                       ; preds = %if.end112
  %bytes.i298 = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %245 = ptrtoint ptr %bytes.i298 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %bytes.i298, align 4
  %add.i299 = add i32 %246, 4
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 3
  %247 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %steps.i, align 4
  %mul.i300 = mul i32 %add.i299, %248
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 6
  %249 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %oobsize.i, align 4
  %sub.i = sub i32 %250, %mul.i300
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i301 = icmp slt i32 %sub.i, 1
  br i1 %cmp.i301, label %if.then114.cleanup119_crit_edge, label %if.end.i302

if.then114.cleanup119_crit_edge:                  ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup119

if.end.i302:                                      ; preds = %if.then114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %raw_mode.6)
  %tobool116.not = icmp eq i32 %raw_mode.6, 0
  %oob_poi115 = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 23
  %251 = ptrtoint ptr %oob_poi115 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %oob_poi115, align 4
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %253 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %writesize.i, align 4
  %call4.i = call i32 @nand_change_read_column_op(ptr noundef %nand, i32 noundef %254, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #8
  %add.ptr8.i = getelementptr i8, ptr %252, i32 %mul.i300
  br i1 %tobool116.not, label %if.else.i303, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i302
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @sunxi_nfc_read_buf(ptr noundef %nand, ptr noundef %add.ptr8.i, i32 noundef %sub.i) #8
  br label %cleanup119

if.else.i303:                                     ; preds = %if.end.i302
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @sunxi_nfc_randomizer_read_buf(ptr noundef %nand, ptr noundef %add.ptr8.i, i32 noundef %sub.i, i1 noundef zeroext false, i32 noundef %page) #8
  br label %cleanup119

cleanup119:                                       ; preds = %if.else.i303, %if.then7.i, %if.then114.cleanup119_crit_edge, %if.end112.cleanup119_crit_edge, %sunxi_nfc_randomizer_disable.exit243, %sunxi_nfc_randomizer_disable.exit, %if.end.cleanup119_crit_edge, %entry.cleanup119_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup119_crit_edge ], [ %call5, %if.end.cleanup119_crit_edge ], [ %call17, %sunxi_nfc_randomizer_disable.exit243 ], [ %call17, %sunxi_nfc_randomizer_disable.exit ], [ %max_bitflips.6, %if.then114.cleanup119_crit_edge ], [ %max_bitflips.6, %if.else.i303 ], [ %max_bitflips.6, %if.then7.i ], [ %max_bitflips.6, %if.end112.cleanup119_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_nfc_wait_cmd_fifo_empty(ptr nocapture noundef readonly %nfc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 326) #8
  %regs = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr47 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !205
  %3 = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not49 = icmp eq i32 %3, 0
  br i1 %tobool.not49, label %entry.if.end36_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !205
  %7 = and i32 %6, 134217728
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then26.if.end36_crit_edge, label %if.then26.land.lhs.true_crit_edge

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then26.if.end36_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

for.end:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr20 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !206
  %11 = and i32 %10, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool30.not = icmp eq i32 %11, 0
  br i1 %tobool30.not, label %for.end.if.end36_crit_edge, label %do.end35

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.45) #11
  br label %if.end36

if.end36:                                         ; preds = %do.end35, %for.end.if.end36_crit_edge, %if.then26.if.end36_crit_edge, %entry.if.end36_crit_edge
  %cond = phi i32 [ -110, %do.end35 ], [ 0, %for.end.if.end36_crit_edge ], [ 0, %entry.if.end36_crit_edge ], [ 0, %if.then26.if.end36_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_nfc_dma_op_prepare(ptr nocapture noundef readonly %nfc, ptr noundef %buf, i32 noundef %chunksize, i32 noundef %nchunks, i32 noundef %ddir, ptr noundef %sg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ddir)
  %cmp = icmp eq i32 %ddir, 2
  %. = select i1 %cmp, i32 2, i32 1
  %mul = mul i32 %nchunks, %chunksize
  tail call void @sg_init_one(ptr noundef %sg, ptr noundef %buf, i32 noundef %mul) #8
  %dev = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @dma_map_sg_attrs(ptr noundef %1, ptr noundef %sg, i32 noundef 1, i32 noundef %ddir, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %entry
  %caps = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 11
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.then4, label %if.end2.do.body_crit_edge

if.end2.do.body_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then4:                                         ; preds = %if.end2
  %dmac = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 10
  %6 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmac, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then4.err_unmap_buf_crit_edge, label %lor.lhs.false.i

if.then4.err_unmap_buf_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unmap_buf

lor.lhs.false.i:                                  ; preds = %if.then4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.err_unmap_buf_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.err_unmap_buf_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unmap_buf

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 39
  %10 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.err_unmap_buf_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.err_unmap_buf_crit_edge:         ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unmap_buf

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %11(ptr noundef nonnull %7, ptr noundef %sg, i32 noundef 1, i32 noundef %., i32 noundef 2, ptr noundef null) #8
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %dmaengine_prep_slave_sg.exit.err_unmap_buf_crit_edge, label %dmaengine_prep_slave_sg.exit.do.body_crit_edge

dmaengine_prep_slave_sg.exit.do.body_crit_edge:   ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

dmaengine_prep_slave_sg.exit.err_unmap_buf_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unmap_buf

do.body:                                          ; preds = %dmaengine_prep_slave_sg.exit.do.body_crit_edge, %if.end2.do.body_crit_edge
  %dmad.0 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end2.do.body_crit_edge ], [ %call.i, %dmaengine_prep_slave_sg.exit.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 2
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  %15 = or i32 %14, 4194304
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %nchunks)
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %20, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %18) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !210
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %chunksize)
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr23 = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %21) #8, !srcloc !165
  %24 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %caps, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool26.not = icmp eq i8 %27, 0
  br i1 %tobool26.not, label %if.else51, label %do.body28

do.body28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  %31 = and i32 %30, -8388609
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !213
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %add.ptr45 = getelementptr i8, ptr %36, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %34) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  tail call void @arm_heavy_mb() #8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 3
  %37 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_address, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %add.ptr50 = getelementptr i8, ptr %41, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %39) #8, !srcloc !165
  br label %cleanup

if.else51:                                        ; preds = %do.body
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %dmad.0, i32 0, i32 4
  %42 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_submit.i, align 4
  %call.i102 = tail call i32 %43(ptr noundef %dmad.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i102)
  %tobool54.not = icmp sgt i32 %call.i102, -1
  br i1 %tobool54.not, label %if.else51.cleanup_crit_edge, label %do.body58

if.else51.cleanup_crit_edge:                      ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body58:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !215
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  %47 = and i32 %46, -4194305
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #8, !srcloc !165
  br label %err_unmap_buf

err_unmap_buf:                                    ; preds = %do.body58, %dmaengine_prep_slave_sg.exit.err_unmap_buf_crit_edge, %lor.lhs.false2.i.err_unmap_buf_crit_edge, %lor.lhs.false.i.err_unmap_buf_crit_edge, %if.then4.err_unmap_buf_crit_edge
  %ret.0 = phi i32 [ %call.i102, %do.body58 ], [ -22, %dmaengine_prep_slave_sg.exit.err_unmap_buf_crit_edge ], [ -22, %lor.lhs.false2.i.err_unmap_buf_crit_edge ], [ -22, %lor.lhs.false.i.err_unmap_buf_crit_edge ], [ -22, %if.then4.err_unmap_buf_crit_edge ]
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %51, ptr noundef %sg, i32 noundef 1, i32 noundef %ddir, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %err_unmap_buf, %if.else51.cleanup_crit_edge, %do.body28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_unmap_buf ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.else51.cleanup_crit_edge ], [ 0, %do.body28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_nfc_randomizer_config(ptr nocapture noundef readonly %nand, i32 noundef %page, i1 noundef zeroext %ecc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %regs = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  %options = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 6
  %5 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %options, align 8
  %and = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 3
  %10 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %erasesize.i, align 8
  %writesize_shift.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 9
  %12 = ptrtoint ptr %writesize_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %writesize_shift.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %if.else170.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i32 %11 to i64
  %sh_prom.i.i = zext i32 %13 to i64
  %shr.i.i = lshr i64 %conv.i, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %mtd_div_by_ws.exit.i

if.else170.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %writesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %14 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %writesize.i.i, align 4
  %div180.i.i = udiv i32 %11, %15
  br label %mtd_div_by_ws.exit.i

mtd_div_by_ws.exit.i:                             ; preds = %if.else170.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ %div180.i.i, %if.else170.i.i ]
  br i1 %ecc, label %if.then3.i, label %mtd_div_by_ws.exit.i.sunxi_nfc_randomizer_state.exit_crit_edge

mtd_div_by_ws.exit.i.sunxi_nfc_randomizer_state.exit_crit_edge: ; preds = %mtd_div_by_ws.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_state.exit

if.then3.i:                                       ; preds = %mtd_div_by_ws.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %ecc_step_size.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 17
  %16 = ptrtoint ptr %ecc_step_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ecc_step_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %17)
  %cmp4.i = icmp eq i32 %17, 512
  %sunxi_nfc_randomizer_ecc512_seeds.sunxi_nfc_randomizer_ecc1024_seeds.i = select i1 %cmp4.i, ptr @sunxi_nfc_randomizer_ecc512_seeds, ptr @sunxi_nfc_randomizer_ecc1024_seeds
  br label %sunxi_nfc_randomizer_state.exit

sunxi_nfc_randomizer_state.exit:                  ; preds = %if.then3.i, %mtd_div_by_ws.exit.i.sunxi_nfc_randomizer_state.exit_crit_edge
  %seeds.0.i = phi ptr [ @sunxi_nfc_randomizer_page_seeds, %mtd_div_by_ws.exit.i.sunxi_nfc_randomizer_state.exit_crit_edge ], [ %sunxi_nfc_randomizer_ecc512_seeds.sunxi_nfc_randomizer_ecc1024_seeds.i, %if.then3.i ]
  %18 = tail call i32 @llvm.umin.i32(i32 %retval.0.i.i, i32 128) #8
  %rem.i = srem i32 %page, %18
  %arrayidx.i = getelementptr i16, ptr %seeds.0.i, i32 %rem.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.i, align 2
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr15 = getelementptr i8, ptr %22, i32 52
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  %24 = and i32 %23, -65408
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @arm_heavy_mb() #8
  %conv = zext i16 %20 to i32
  %shl = shl nuw i32 %conv, 16
  %or = or i32 %25, %shl
  %26 = tail call i32 @llvm.bswap.i32(i32 %or)
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr21 = getelementptr i8, ptr %28, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %26) #8, !srcloc !165
  br label %cleanup

cleanup:                                          ; preds = %sunxi_nfc_randomizer_state.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_nfc_wait_events(ptr noundef %nfc, i32 noundef %events, i1 noundef zeroext %use_polling) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %events)
  %tobool.not = icmp ult i32 %events, 8
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %use_polling, label %if.else16, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %complete = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 9
  %0 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @init_completion.__key) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  tail call void @arm_heavy_mb() #8
  %1 = tail call i32 @llvm.bswap.i32(i32 %events)
  %regs = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #8, !srcloc !165
  %call7 = tail call i32 @wait_for_completion_timeout(ptr noundef %complete, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr15 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #8, !srcloc !165
  %spec.select = select i1 %tobool8.not, i32 -110, i32 0
  br label %do.body62

if.else16:                                        ; preds = %if.end
  %call17 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call17, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 308) #8
  %regs31 = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 2
  %6 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs31, align 4
  %add.ptr325 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr325) #8, !srcloc !169
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !219
  %and356 = and i32 %9, %events
  call void @__sanitizer_cov_trace_cmp4(i32 %and356, i32 %events)
  %cmp367 = icmp eq i32 %and356, %events
  br i1 %cmp367, label %if.else16.for.end_crit_edge, label %if.else16.land.lhs.true_crit_edge

if.else16.land.lhs.true_crit_edge:                ; preds = %if.else16
  br label %land.lhs.true

if.else16.for.end_crit_edge:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true:                                    ; preds = %if.then55.land.lhs.true_crit_edge, %if.else16.land.lhs.true_crit_edge
  %call41 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call41, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call41, %add.i
  br i1 %cmp3.i, label %if.then45, label %if.then55

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs31, align 4
  %add.ptr49 = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #8, !srcloc !169
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  %.pre = and i32 %13, %events
  br label %for.end

if.then55:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %14 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs31, align 4
  %add.ptr32 = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #8, !srcloc !169
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !219
  %and35 = and i32 %17, %events
  %cmp36 = icmp eq i32 %and35, %events
  br i1 %cmp36, label %if.then55.for.end_crit_edge, label %if.then55.land.lhs.true_crit_edge

if.then55.land.lhs.true_crit_edge:                ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then55.for.end_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.then55.for.end_crit_edge, %if.then45, %if.else16.for.end_crit_edge
  %and58.pre-phi = phi i32 [ %and356, %if.else16.for.end_crit_edge ], [ %.pre, %if.then45 ], [ %and35, %if.then55.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and58.pre-phi, i32 %events)
  %cmp59 = icmp eq i32 %and58.pre-phi, %events
  %spec.select9 = select i1 %cmp59, i32 0, i32 -110
  br label %do.body62

do.body62:                                        ; preds = %for.end, %if.then5
  %ret.1 = phi i32 [ %spec.select9, %for.end ], [ %spec.select, %if.then5 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @arm_heavy_mb() #8
  %and65 = shl i32 %events, 24
  %18 = and i32 %and65, 117440512
  %regs66 = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 2
  %19 = ptrtoint ptr %regs66 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs66, align 4
  %add.ptr67 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %18) #8, !srcloc !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool68.not = icmp eq i32 %ret.1, 0
  br i1 %tobool68.not, label %do.body62.cleanup_crit_edge, label %do.end72

do.body62.cleanup_crit_edge:                      ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end72:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.sunxi_nfc, ptr %nfc, i32 0, i32 1
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.47) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end72, %do.body62.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.1, %do.end72 ], [ 0, %do.body62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_nfc_hw_ecc_get_prot_oob_bytes(ptr nocapture noundef readonly %nand, ptr nocapture noundef %oob, i32 noundef %step, i1 noundef zeroext %bbm, i32 noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %regs = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %mul = shl i32 %step, 2
  %add = add i32 %mul, 80
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !169
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  %conv.i = trunc i32 %5 to i8
  %6 = ptrtoint ptr %oob to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %oob, align 1
  %shr.i = lshr i32 %5, 8
  %conv1.i = trunc i32 %shr.i to i8
  %arrayidx2.i = getelementptr i8, ptr %oob, i32 1
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1.i, ptr %arrayidx2.i, align 1
  %shr3.i = lshr i32 %5, 16
  %conv4.i = trunc i32 %shr3.i to i8
  %arrayidx5.i = getelementptr i8, ptr %oob, i32 2
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %shr6.i = lshr i32 %5, 24
  %conv7.i = trunc i32 %shr6.i to i8
  %arrayidx8.i = getelementptr i8, ptr %oob, i32 3
  %9 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  br i1 %bbm, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %options = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 6
  %10 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %options, align 8
  %and = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %erasesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 3
  %12 = ptrtoint ptr %erasesize.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %erasesize.i.i, align 8
  %writesize_shift.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 9
  %14 = ptrtoint ptr %writesize_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %writesize_shift.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i, label %if.else170.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i32 %13 to i64
  %sh_prom.i.i.i = zext i32 %15 to i64
  %shr.i.i.i = lshr i64 %conv.i.i, %sh_prom.i.i.i
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %sunxi_nfc_randomize_bbm.exit

if.else170.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %writesize.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %16 = ptrtoint ptr %writesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %writesize.i.i.i, align 4
  %div180.i.i.i = udiv i32 %13, %17
  br label %sunxi_nfc_randomize_bbm.exit

sunxi_nfc_randomize_bbm.exit:                     ; preds = %if.else170.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.then.i.i.i ], [ %div180.i.i.i, %if.else170.i.i.i ]
  %ecc_step_size.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 17
  %18 = ptrtoint ptr %ecc_step_size.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ecc_step_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %19)
  %cmp4.i.i = icmp eq i32 %19, 512
  %sunxi_nfc_randomizer_ecc512_seeds.sunxi_nfc_randomizer_ecc1024_seeds.i.i = select i1 %cmp4.i.i, ptr @sunxi_nfc_randomizer_ecc512_seeds, ptr @sunxi_nfc_randomizer_ecc1024_seeds
  %20 = tail call i32 @llvm.umin.i32(i32 %retval.0.i.i.i, i32 128) #8
  %rem.i.i = srem i32 %page, %20
  %arrayidx.i.i = getelementptr i16, ptr %sunxi_nfc_randomizer_ecc512_seeds.sunxi_nfc_randomizer_ecc1024_seeds.i.i, i32 %rem.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i7 = trunc i16 %22 to i8
  %xor.i = xor i8 %conv.i7, %conv.i
  %23 = ptrtoint ptr %oob to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %xor.i, ptr %oob, align 1
  %24 = and i16 %22, 32767
  %conv2.i.i = zext i16 %24 to i32
  %25 = lshr i32 %conv2.i.i, 1
  %xor.i.i = xor i32 %25, %conv2.i.i
  %and6.i.i = shl nuw nsw i32 %xor.i.i, 14
  %and7.i.i = or i32 %and6.i.i, %25
  %26 = lshr i32 %and7.i.i, 7
  %xor7.i10 = xor i32 %26, %shr.i
  %xor7.i = trunc i32 %xor7.i10 to i8
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %xor7.i, ptr %arrayidx2.i, align 1
  br label %if.end

if.end:                                           ; preds = %sunxi_nfc_randomize_bbm.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_nfc_read_buf(ptr nocapture noundef readonly %nand, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr i8, ptr %nand, i32 2052
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp43 = icmp sgt i32 %len, 0
  br i1 %cmp43, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %regs = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 2
  %tobool19.not = icmp eq ptr %buf, null
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %offs.044 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %sub = sub i32 %len, %offs.044
  %2 = tail call i32 @llvm.smin.i32(i32 %sub, i32 1024)
  %call5 = tail call fastcc i32 @sunxi_nfc_wait_cmd_fifo_empty(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %do.body, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.body:                                          ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 8196) #8, !srcloc !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2)
  %cmp11 = icmp slt i32 %2, 64
  %call15 = tail call fastcc i32 @sunxi_nfc_wait_events(ptr noundef %1, i32 noundef 2, i1 noundef zeroext %cmp11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %do.body.while.end_crit_edge

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end18:                                         ; preds = %do.body
  br i1 %tobool19.not, label %if.end18.cleanup_crit_edge, label %if.then20

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr21 = getelementptr i8, ptr %buf, i32 %offs.044
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr23 = getelementptr i8, ptr %9, i32 1024
  tail call void @mmiocpy(ptr noundef %add.ptr21, ptr noundef %add.ptr23, i32 noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end18.cleanup_crit_edge
  %add = add i32 %2, %offs.044
  %cmp = icmp slt i32 %add, %len
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %do.body.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_nfc_randomizer_read_buf(ptr nocapture noundef readonly %nand, ptr noundef %buf, i32 noundef %len, i1 noundef zeroext %ecc, i32 noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_nfc_randomizer_config(ptr noundef %nand, i32 noundef %page, i1 noundef zeroext %ecc)
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 6
  %0 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options.i, align 8
  %and.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.sunxi_nfc_randomizer_enable.exit_crit_edge, label %do.body.i

entry.sunxi_nfc_randomizer_enable.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_enable.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 32
  %2 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  %regs.i = getelementptr inbounds %struct.sunxi_nfc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %7 = or i32 %6, 131072
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %9, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %7) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_enable.exit

sunxi_nfc_randomizer_enable.exit:                 ; preds = %do.body.i, %entry.sunxi_nfc_randomizer_enable.exit_crit_edge
  tail call fastcc void @sunxi_nfc_read_buf(ptr noundef %nand, ptr noundef %buf, i32 noundef %len)
  %10 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %options.i, align 8
  %and.i5 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5)
  %tobool.not.i6 = icmp eq i32 %and.i5, 0
  br i1 %tobool.not.i6, label %sunxi_nfc_randomizer_enable.exit.sunxi_nfc_randomizer_disable.exit_crit_edge, label %do.body.i10

sunxi_nfc_randomizer_enable.exit.sunxi_nfc_randomizer_disable.exit_crit_edge: ; preds = %sunxi_nfc_randomizer_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_disable.exit

do.body.i10:                                      ; preds = %sunxi_nfc_randomizer_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %controller.i7 = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 32
  %12 = ptrtoint ptr %controller.i7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %controller.i7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %regs.i8 = getelementptr inbounds %struct.sunxi_nfc, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %regs.i8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i8, align 4
  %add.ptr.i9 = getelementptr i8, ptr %15, i32 52
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  %17 = and i32 %16, -131073
  %18 = ptrtoint ptr %regs.i8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i8, align 4
  %add.ptr5.i = getelementptr i8, ptr %19, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %17) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_disable.exit

sunxi_nfc_randomizer_disable.exit:                ; preds = %do.body.i10, %sunxi_nfc_randomizer_enable.exit.sunxi_nfc_randomizer_disable.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_nfc_hw_ecc_set_prot_oob_bytes(ptr nocapture noundef readonly %nand, ptr nocapture noundef readonly %oob, i32 noundef %step, i1 noundef zeroext %bbm, i32 noundef %page) unnamed_addr #2 align 64 {
entry:
  %user_data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %user_data) #8
  %2 = getelementptr inbounds [4 x i8], ptr %user_data, i32 0, i32 1
  %3 = ptrtoint ptr %user_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %user_data, align 4
  br i1 %bbm, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %options = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 6
  %4 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %options, align 8
  %and = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.do.body_crit_edge, label %if.then

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %oob to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %oob, align 1
  %8 = ptrtoint ptr %user_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %user_data, align 4
  %erasesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 3
  %9 = ptrtoint ptr %erasesize.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %erasesize.i.i, align 8
  %writesize_shift.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 9
  %11 = ptrtoint ptr %writesize_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %writesize_shift.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i.i, label %if.else170.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i32 %10 to i64
  %sh_prom.i.i.i = zext i32 %12 to i64
  %shr.i.i.i = lshr i64 %conv.i.i, %sh_prom.i.i.i
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %sunxi_nfc_randomize_bbm.exit

if.else170.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %writesize.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %13 = ptrtoint ptr %writesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %writesize.i.i.i, align 4
  %div180.i.i.i = udiv i32 %10, %14
  br label %sunxi_nfc_randomize_bbm.exit

sunxi_nfc_randomize_bbm.exit:                     ; preds = %if.else170.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.then.i.i.i ], [ %div180.i.i.i, %if.else170.i.i.i ]
  %ecc_step_size.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 17
  %15 = ptrtoint ptr %ecc_step_size.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ecc_step_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %16)
  %cmp4.i.i = icmp eq i32 %16, 512
  %sunxi_nfc_randomizer_ecc512_seeds.sunxi_nfc_randomizer_ecc1024_seeds.i.i = select i1 %cmp4.i.i, ptr @sunxi_nfc_randomizer_ecc512_seeds, ptr @sunxi_nfc_randomizer_ecc1024_seeds
  %17 = tail call i32 @llvm.umin.i32(i32 %retval.0.i.i.i, i32 128) #8
  %rem.i.i = srem i32 %page, %17
  %arrayidx.i.i = getelementptr i16, ptr %sunxi_nfc_randomizer_ecc512_seeds.sunxi_nfc_randomizer_ecc1024_seeds.i.i, i32 %rem.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i = trunc i16 %19 to i8
  %20 = ptrtoint ptr %user_data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %user_data, align 4
  %xor.i = xor i8 %21, %conv.i
  store i8 %xor.i, ptr %user_data, align 4
  %22 = and i16 %19, 32767
  %conv2.i.i = zext i16 %22 to i32
  %23 = lshr i32 %conv2.i.i, 1
  %xor.i.i = xor i32 %23, %conv2.i.i
  %and6.i.i = shl nuw nsw i32 %xor.i.i, 14
  %and7.i.i = or i32 %and6.i.i, %23
  %24 = lshr i32 %and7.i.i, 7
  %conv4.i = trunc i32 %24 to i8
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %2, align 1
  %xor7.i = xor i8 %26, %conv4.i
  store i8 %xor7.i, ptr %2, align 1
  br label %do.body

do.body:                                          ; preds = %sunxi_nfc_randomize_bbm.exit, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %oob.addr.0 = phi ptr [ %user_data, %sunxi_nfc_randomize_bbm.exit ], [ %oob, %land.lhs.true.do.body_crit_edge ], [ %oob, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %oob.addr.0 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %oob.addr.0, align 1
  %conv.i8 = zext i8 %28 to i32
  %arrayidx1.i = getelementptr i8, ptr %oob.addr.0, i32 1
  %29 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %30 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl.i, %conv.i8
  %arrayidx3.i = getelementptr i8, ptr %oob.addr.0, i32 2
  %31 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i9 = zext i8 %32 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i9, 16
  %or6.i = or i32 %or.i, %shl5.i
  %arrayidx7.i = getelementptr i8, ptr %oob.addr.0, i32 3
  %33 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %34 to i32
  %shl9.i = shl nuw i32 %conv8.i, 24
  %or10.i = or i32 %or6.i, %shl9.i
  %35 = tail call i32 @llvm.bswap.i32(i32 %or10.i)
  %regs = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %mul = shl i32 %step, 2
  %add = add i32 %mul, 80
  %add.ptr = getelementptr i8, ptr %37, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %35) #8, !srcloc !165
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %user_data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_write_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_nfc_randomizer_write_buf(ptr nocapture noundef readonly %nand, ptr noundef %buf, i32 noundef %len, i32 noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr %struct.nand_chip, ptr %nand, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %regs.i = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 6
  %5 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %options.i, align 8
  %and.i = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.sunxi_nfc_randomizer_config.exit_crit_edge, label %if.end.i

entry.sunxi_nfc_randomizer_config.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_config.exit

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %8, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  %erasesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 3
  %10 = ptrtoint ptr %erasesize.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %erasesize.i.i, align 8
  %writesize_shift.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 9
  %12 = ptrtoint ptr %writesize_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %writesize_shift.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i, label %if.else170.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i32 %11 to i64
  %sh_prom.i.i.i = zext i32 %13 to i64
  %shr.i.i.i = lshr i64 %conv.i.i, %sh_prom.i.i.i
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %mtd_div_by_ws.exit.i.i

if.else170.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %writesize.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 4
  %14 = ptrtoint ptr %writesize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %writesize.i.i.i, align 4
  %div180.i.i.i = udiv i32 %11, %15
  br label %mtd_div_by_ws.exit.i.i

mtd_div_by_ws.exit.i.i:                           ; preds = %if.else170.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.then.i.i.i ], [ %div180.i.i.i, %if.else170.i.i.i ]
  %16 = tail call i32 @llvm.umin.i32(i32 %retval.0.i.i.i, i32 128) #8
  %rem.i.i = srem i32 %page, %16
  %arrayidx.i.i = getelementptr i16, ptr @sunxi_nfc_randomizer_page_seeds, i32 %rem.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i.i, align 2
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %20, i32 52
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  %22 = and i32 %21, -65408
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @arm_heavy_mb() #8
  %conv.i = zext i16 %18 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %or.i = or i32 %23, %shl.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %26, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %24) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_config.exit

sunxi_nfc_randomizer_config.exit:                 ; preds = %mtd_div_by_ws.exit.i.i, %entry.sunxi_nfc_randomizer_config.exit_crit_edge
  %27 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %options.i, align 8
  %and.i2 = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %tobool.not.i3 = icmp eq i32 %and.i2, 0
  br i1 %tobool.not.i3, label %sunxi_nfc_randomizer_config.exit.sunxi_nfc_randomizer_enable.exit_crit_edge, label %do.body.i

sunxi_nfc_randomizer_config.exit.sunxi_nfc_randomizer_enable.exit_crit_edge: ; preds = %sunxi_nfc_randomizer_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_enable.exit

do.body.i:                                        ; preds = %sunxi_nfc_randomizer_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %controller.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  %regs.i5 = getelementptr inbounds %struct.sunxi_nfc, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %regs.i5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %32, i32 52
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %34 = or i32 %33, 131072
  %35 = ptrtoint ptr %regs.i5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i5, align 4
  %add.ptr4.i = getelementptr i8, ptr %36, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %34) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_enable.exit

sunxi_nfc_randomizer_enable.exit:                 ; preds = %do.body.i, %sunxi_nfc_randomizer_config.exit.sunxi_nfc_randomizer_enable.exit_crit_edge
  %37 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %controller.i, align 4
  %regs.i8 = getelementptr inbounds %struct.sunxi_nfc, ptr %38, i32 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body.i11.while.cond.i_crit_edge, %sunxi_nfc_randomizer_enable.exit
  %offs.0.i = phi i32 [ 0, %sunxi_nfc_randomizer_enable.exit ], [ %add.i, %do.body.i11.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.0.i, i32 %len)
  %cmp.i = icmp slt i32 %offs.0.i, %len
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.sunxi_nfc_write_buf.exit_crit_edge

while.cond.i.sunxi_nfc_write_buf.exit_crit_edge:  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_write_buf.exit

while.body.i:                                     ; preds = %while.cond.i
  %call5.i = tail call fastcc i32 @sunxi_nfc_wait_cmd_fifo_empty(ptr noundef %38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i9 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i9, label %do.body.i11, label %while.body.i.sunxi_nfc_write_buf.exit_crit_edge

while.body.i.sunxi_nfc_write_buf.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_write_buf.exit

do.body.i11:                                      ; preds = %while.body.i
  %sub.i = sub i32 %len, %offs.0.i
  %39 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 1024) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  tail call void @arm_heavy_mb() #8
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  %41 = ptrtoint ptr %regs.i8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i8, align 4
  %add.ptr.i10 = getelementptr i8, ptr %42, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %40) #8, !srcloc !165
  %43 = ptrtoint ptr %regs.i8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i8, align 4
  %add.ptr7.i = getelementptr i8, ptr %44, i32 1024
  %add.ptr8.i = getelementptr i8, ptr %buf, i32 %offs.0.i
  tail call void @mmiocpy(ptr noundef %add.ptr7.i, ptr noundef %add.ptr8.i, i32 noundef %39) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !226
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %regs.i8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i8, align 4
  %add.ptr13.i = getelementptr i8, ptr %46, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 12292) #8, !srcloc !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %39)
  %cmp14.i = icmp slt i32 %39, 64
  %call18.i = tail call fastcc i32 @sunxi_nfc_wait_events(ptr noundef %38, i32 noundef 2, i1 noundef zeroext %cmp14.i) #8
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  %add.i = add i32 %39, %offs.0.i
  br i1 %tobool19.not.i, label %do.body.i11.while.cond.i_crit_edge, label %do.body.i11.sunxi_nfc_write_buf.exit_crit_edge

do.body.i11.sunxi_nfc_write_buf.exit_crit_edge:   ; preds = %do.body.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_write_buf.exit

do.body.i11.while.cond.i_crit_edge:               ; preds = %do.body.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

sunxi_nfc_write_buf.exit:                         ; preds = %do.body.i11.sunxi_nfc_write_buf.exit_crit_edge, %while.body.i.sunxi_nfc_write_buf.exit_crit_edge, %while.cond.i.sunxi_nfc_write_buf.exit_crit_edge
  %47 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %options.i, align 8
  %and.i13 = and i32 %48, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool.not.i14 = icmp eq i32 %and.i13, 0
  br i1 %tobool.not.i14, label %sunxi_nfc_write_buf.exit.sunxi_nfc_randomizer_disable.exit_crit_edge, label %do.body.i18

sunxi_nfc_write_buf.exit.sunxi_nfc_randomizer_disable.exit_crit_edge: ; preds = %sunxi_nfc_write_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_disable.exit

do.body.i18:                                      ; preds = %sunxi_nfc_write_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %controller.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %regs.i16 = getelementptr inbounds %struct.sunxi_nfc, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %regs.i16 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i16, align 4
  %add.ptr.i17 = getelementptr i8, ptr %52, i32 52
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  %54 = and i32 %53, -131073
  %55 = ptrtoint ptr %regs.i16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i16, align 4
  %add.ptr5.i = getelementptr i8, ptr %56, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %54) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_disable.exit

sunxi_nfc_randomizer_disable.exit:                ; preds = %do.body.i18, %sunxi_nfc_write_buf.exit.sunxi_nfc_randomizer_disable.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_nfc_hw_ecc_read_chunk(ptr noundef %nand, ptr noundef %data, i32 noundef %data_off, ptr noundef %oob, i32 noundef %oob_off, ptr nocapture noundef %cur_off, ptr nocapture noundef %max_bitflips, i1 noundef zeroext %bbm, i1 noundef zeroext %oob_required, i32 noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %2 = ptrtoint ptr %cur_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_off, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %data_off)
  %cmp.not = icmp eq i32 %3, %data_off
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @nand_change_read_column_op(ptr noundef %nand, i32 noundef %data_off, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %size = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  tail call fastcc void @sunxi_nfc_randomizer_read_buf(ptr noundef %nand, ptr noundef null, i32 noundef %5, i1 noundef zeroext false, i32 noundef %page)
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %add = add i32 %7, %data_off
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %oob_off)
  %cmp5.not = icmp eq i32 %add, %oob_off
  br i1 %cmp5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @nand_change_read_column_op(ptr noundef %nand, i32 noundef %oob_off, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %call9 = tail call fastcc i32 @sunxi_nfc_wait_cmd_fifo_empty(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 6
  %8 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %options.i, align 8
  %and.i = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end11.sunxi_nfc_randomizer_enable.exit_crit_edge, label %do.body.i

if.end11.sunxi_nfc_randomizer_enable.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_enable.exit

do.body.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %controller, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  %regs.i = getelementptr inbounds %struct.sunxi_nfc, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 52
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %15 = or i32 %14, 131072
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %17, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %15) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_enable.exit

sunxi_nfc_randomizer_enable.exit:                 ; preds = %do.body.i, %if.end11.sunxi_nfc_randomizer_enable.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 8260) #8, !srcloc !165
  %call12 = tail call fastcc i32 @sunxi_nfc_wait_events(ptr noundef %1, i32 noundef 2, i1 noundef zeroext false)
  %20 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %options.i, align 8
  %and.i119 = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i119)
  %tobool.not.i120 = icmp eq i32 %and.i119, 0
  br i1 %tobool.not.i120, label %sunxi_nfc_randomizer_enable.exit.sunxi_nfc_randomizer_disable.exit_crit_edge, label %do.body.i124

sunxi_nfc_randomizer_enable.exit.sunxi_nfc_randomizer_disable.exit_crit_edge: ; preds = %sunxi_nfc_randomizer_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_disable.exit

do.body.i124:                                     ; preds = %sunxi_nfc_randomizer_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %controller, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %regs.i122 = getelementptr inbounds %struct.sunxi_nfc, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %regs.i122 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i122, align 4
  %add.ptr.i123 = getelementptr i8, ptr %25, i32 52
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  %27 = and i32 %26, -131073
  %28 = ptrtoint ptr %regs.i122 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i122, align 4
  %add.ptr5.i = getelementptr i8, ptr %29, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %27) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_disable.exit

sunxi_nfc_randomizer_disable.exit:                ; preds = %do.body.i124, %sunxi_nfc_randomizer_enable.exit.sunxi_nfc_randomizer_disable.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %sunxi_nfc_randomizer_disable.exit.cleanup_crit_edge

sunxi_nfc_randomizer_disable.exit.cleanup_crit_edge: ; preds = %sunxi_nfc_randomizer_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %sunxi_nfc_randomizer_disable.exit
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %30 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bytes, align 4
  %add16 = add i32 %oob_off, 4
  %add17 = add i32 %add16, %31
  %32 = ptrtoint ptr %cur_off to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add17, ptr %cur_off, align 4
  %spec.select = select i1 %oob_required, ptr %oob, ptr null
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %add.ptr20 = getelementptr i8, ptr %34, i32 56
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #8, !srcloc !169
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %and.i126 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %tobool.not.i127 = icmp eq i32 %and.i126, 0
  br i1 %tobool.not.i127, label %if.end.i, label %if.then28

if.end.i:                                         ; preds = %if.end15
  %37 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %controller, align 4
  %and3.i = and i32 %36, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %regs27.i = getelementptr inbounds %struct.sunxi_nfc, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %regs27.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs27.i, align 4
  br i1 %tobool4.not.i, label %if.end26, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  %add.ptr.i128 = getelementptr i8, ptr %40, i32 164
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  %42 = and i32 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool10.not.i = icmp eq i32 %42, 0
  %not.tobool10.not.i149 = xor i1 %tobool10.not.i, true
  %spec.select148 = sext i1 %not.tobool10.not.i149 to i8
  %tobool16.not.i = icmp eq ptr %data, null
  br i1 %tobool16.not.i, label %if.then5.i.if.end18.i_crit_edge, label %if.then17.i

if.then5.i.if.end18.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size, align 4
  %45 = zext i8 %spec.select148 to i32
  %46 = call ptr @memset(ptr %data, i32 %45, i32 %44)
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.then5.i.if.end18.i_crit_edge
  %tobool19.not.i = icmp eq ptr %spec.select, null
  br i1 %tobool19.not.i, label %if.end18.i.sunxi_nfc_hw_ecc_correct.exit_crit_edge, label %if.then20.i

if.end18.i.sunxi_nfc_hw_ecc_correct.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_hw_ecc_correct.exit

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bytes, align 4
  %add22.i = add i32 %48, 4
  %49 = zext i8 %spec.select148 to i32
  %50 = call ptr @memset(ptr %spec.select, i32 %49, i32 %add22.i)
  br label %sunxi_nfc_hw_ecc_correct.exit

sunxi_nfc_hw_ecc_correct.exit:                    ; preds = %if.then20.i, %if.end18.i.sunxi_nfc_hw_ecc_correct.exit_crit_edge
  br i1 %tobool10.not.i, label %sunxi_nfc_hw_ecc_correct.exit.if.else47_crit_edge, label %sunxi_nfc_hw_ecc_correct.exit.cleanup_crit_edge

sunxi_nfc_hw_ecc_correct.exit.cleanup_crit_edge:  ; preds = %sunxi_nfc_hw_ecc_correct.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sunxi_nfc_hw_ecc_correct.exit.if.else47_crit_edge: ; preds = %sunxi_nfc_hw_ecc_correct.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else47

if.end26:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr30.i = getelementptr i8, ptr %40, i32 64
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #8, !srcloc !169
  %52 = lshr i32 %51, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  br label %if.else47

if.then28:                                        ; preds = %if.end15
  %53 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %options.i, align 8
  %and = and i32 %54, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size, align 4
  %call32 = tail call i32 @nand_change_read_column_op(ptr noundef %nand, i32 noundef %data_off, ptr noundef %data, i32 noundef %56, i1 noundef zeroext false) #8
  br label %if.end58

if.else:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %add.ptr34 = getelementptr i8, ptr %58, i32 1024
  %59 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %size, align 4
  tail call void @mmiocpy(ptr noundef %data, ptr noundef %add.ptr34, i32 noundef %60) #8
  br label %if.end58

if.else47:                                        ; preds = %if.end26, %sunxi_nfc_hw_ecc_correct.exit.if.else47_crit_edge
  %retval.0.i134137 = phi i32 [ %52, %if.end26 ], [ 0, %sunxi_nfc_hw_ecc_correct.exit.if.else47_crit_edge ]
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  %add.ptr49 = getelementptr i8, ptr %62, i32 1024
  %63 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size, align 4
  tail call void @mmiocpy(ptr noundef %data, ptr noundef %add.ptr49, i32 noundef %64) #8
  br i1 %oob_required, label %if.then52, label %if.else47.if.else.i129_crit_edge

if.else47.if.else.i129_crit_edge:                 ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i129

if.then52:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #10
  %call53 = tail call i32 @nand_change_read_column_op(ptr noundef %nand, i32 noundef %oob_off, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #8
  %65 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bytes, align 4
  %add55 = add i32 %66, 4
  tail call fastcc void @sunxi_nfc_randomizer_read_buf(ptr noundef %nand, ptr noundef %oob, i32 noundef %add55, i1 noundef zeroext true, i32 noundef %page)
  tail call fastcc void @sunxi_nfc_hw_ecc_get_prot_oob_bytes(ptr noundef %nand, ptr noundef %oob, i32 noundef 0, i1 noundef zeroext %bbm, i32 noundef %page)
  br label %if.else.i129

if.end58:                                         ; preds = %if.else, %if.then30
  %67 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bytes, align 4
  %add38 = add i32 %68, 4
  %call39 = tail call i32 @nand_change_read_column_op(ptr noundef %nand, i32 noundef %oob_off, ptr noundef %oob, i32 noundef %add38, i1 noundef zeroext false) #8
  %69 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size, align 4
  %71 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bytes, align 4
  %add42 = add i32 %72, 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 7
  %73 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %strength, align 4
  %call43 = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef %data, i32 noundef %70, ptr noundef %oob, i32 noundef %add42, ptr noundef null, i32 noundef 0, i32 noundef %74) #8
  %75 = xor i32 %call43, -1
  %call43.lobit.not = lshr i32 %75, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp.i = icmp slt i32 %call43, 0
  br i1 %cmp.i, label %if.then.i, label %if.end58.if.else.i129_crit_edge

if.end58.if.else.i129_crit_edge:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i129

if.then.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %failed.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 52, i32 1
  %76 = ptrtoint ptr %failed.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %failed.i, align 4
  %inc.i = add i32 %77, 1
  store i32 %inc.i, ptr %failed.i, align 4
  br label %cleanup

if.else.i129:                                     ; preds = %if.end58.if.else.i129_crit_edge, %if.then52, %if.else47.if.else.i129_crit_edge
  %raw_mode.0146 = phi i32 [ %call43.lobit.not, %if.end58.if.else.i129_crit_edge ], [ 0, %if.then52 ], [ 0, %if.else47.if.else.i129_crit_edge ]
  %ret.0144 = phi i32 [ %call43, %if.end58.if.else.i129_crit_edge ], [ %retval.0.i134137, %if.then52 ], [ %retval.0.i134137, %if.else47.if.else.i129_crit_edge ]
  %ecc_stats1.i = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 52
  %78 = ptrtoint ptr %ecc_stats1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ecc_stats1.i, align 4
  %add.i = add i32 %79, %ret.0144
  store i32 %add.i, ptr %ecc_stats1.i, align 4
  %80 = ptrtoint ptr %max_bitflips to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max_bitflips, align 4
  %82 = tail call i32 @llvm.umax.i32(i32 %81, i32 %ret.0144) #8
  %83 = ptrtoint ptr %max_bitflips to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %max_bitflips, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i129, %if.then.i, %sunxi_nfc_hw_ecc_correct.exit.cleanup_crit_edge, %sunxi_nfc_randomizer_disable.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8.cleanup_crit_edge ], [ %call12, %sunxi_nfc_randomizer_disable.exit.cleanup_crit_edge ], [ 1, %sunxi_nfc_hw_ecc_correct.exit.cleanup_crit_edge ], [ %call43.lobit.not, %if.then.i ], [ %raw_mode.0146, %if.else.i129 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_nfc_hw_ecc_write_chunk(ptr noundef %nand, ptr noundef %data, i32 noundef %data_off, ptr nocapture noundef readonly %oob, i32 noundef %oob_off, ptr nocapture noundef %cur_off, i1 noundef zeroext %bbm, i32 noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %2 = ptrtoint ptr %cur_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_off, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %data_off)
  %cmp.not = icmp eq i32 %3, %data_off
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @nand_change_write_column_op(ptr noundef %nand, i32 noundef %data_off, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %size = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  tail call fastcc void @sunxi_nfc_randomizer_write_buf(ptr noundef %nand, ptr noundef %data, i32 noundef %5, i32 noundef %page)
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %add = add i32 %7, %data_off
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %oob_off)
  %cmp4.not = icmp eq i32 %add, %oob_off
  br i1 %cmp4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @nand_change_write_column_op(ptr noundef %nand, i32 noundef %oob_off, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %call8 = tail call fastcc i32 @sunxi_nfc_wait_cmd_fifo_empty(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 6
  %8 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %options.i, align 8
  %and.i = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end10.sunxi_nfc_randomizer_enable.exit_crit_edge, label %do.body.i

if.end10.sunxi_nfc_randomizer_enable.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_enable.exit

do.body.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %controller, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  %regs.i = getelementptr inbounds %struct.sunxi_nfc, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 52
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %15 = or i32 %14, 131072
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %17, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %15) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_enable.exit

sunxi_nfc_randomizer_enable.exit:                 ; preds = %do.body.i, %if.end10.sunxi_nfc_randomizer_enable.exit_crit_edge
  tail call fastcc void @sunxi_nfc_hw_ecc_set_prot_oob_bytes(ptr noundef %nand, ptr noundef %oob, i32 noundef 0, i1 noundef zeroext %bbm, i32 noundef %page)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 12356) #8, !srcloc !165
  %call12 = tail call fastcc i32 @sunxi_nfc_wait_events(ptr noundef %1, i32 noundef 2, i1 noundef zeroext false)
  %20 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %options.i, align 8
  %and.i41 = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %tobool.not.i42 = icmp eq i32 %and.i41, 0
  br i1 %tobool.not.i42, label %sunxi_nfc_randomizer_enable.exit.sunxi_nfc_randomizer_disable.exit_crit_edge, label %do.body.i46

sunxi_nfc_randomizer_enable.exit.sunxi_nfc_randomizer_disable.exit_crit_edge: ; preds = %sunxi_nfc_randomizer_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sunxi_nfc_randomizer_disable.exit

do.body.i46:                                      ; preds = %sunxi_nfc_randomizer_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %controller, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %regs.i44 = getelementptr inbounds %struct.sunxi_nfc, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %regs.i44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i44, align 4
  %add.ptr.i45 = getelementptr i8, ptr %25, i32 52
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #8, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  %27 = and i32 %26, -131073
  %28 = ptrtoint ptr %regs.i44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i44, align 4
  %add.ptr5.i = getelementptr i8, ptr %29, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %27) #8, !srcloc !165
  br label %sunxi_nfc_randomizer_disable.exit

sunxi_nfc_randomizer_disable.exit:                ; preds = %do.body.i46, %sunxi_nfc_randomizer_enable.exit.sunxi_nfc_randomizer_disable.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %sunxi_nfc_randomizer_disable.exit.cleanup_crit_edge

sunxi_nfc_randomizer_disable.exit.cleanup_crit_edge: ; preds = %sunxi_nfc_randomizer_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %sunxi_nfc_randomizer_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 33, i32 5
  %30 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bytes, align 4
  %add16 = add i32 %oob_off, 4
  %add17 = add i32 %add16, %31
  %32 = ptrtoint ptr %cur_off to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add17, ptr %cur_off, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %sunxi_nfc_randomizer_disable.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call12, %sunxi_nfc_randomizer_disable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_op_parser_exec_op(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_nfc_exec_subop(ptr nocapture noundef readonly %nand, ptr noundef %subop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %nand, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %ninstrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 2
  %2 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp230.not = icmp eq i32 %3, 0
  br i1 %cmp230.not, label %entry.for.end78_crit_edge, label %for.body.lr.ph

entry.for.end78_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end78

for.body.lr.ph:                                   ; preds = %entry
  %instrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  %regs = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc76.for.body_crit_edge, %for.body.lr.ph
  %addrs.sroa.12.0 = phi i32 [ 0, %for.body.lr.ph ], [ %addrs.sroa.12.3, %for.inc76.for.body_crit_edge ]
  %addrs.sroa.0.0 = phi i32 [ 0, %for.body.lr.ph ], [ %addrs.sroa.0.3, %for.inc76.for.body_crit_edge ]
  %cmd.0236 = phi i32 [ 0, %for.body.lr.ph ], [ %cmd.2.ph, %for.inc76.for.body_crit_edge ]
  %inbuf.0235 = phi ptr [ null, %for.body.lr.ph ], [ %inbuf.2.ph, %for.inc76.for.body_crit_edge ]
  %i.0233 = phi i32 [ 0, %for.body.lr.ph ], [ %inc77, %for.inc76.for.body_crit_edge ]
  %cnt.0232 = phi i32 [ 0, %for.body.lr.ph ], [ %cnt.2.ph, %for.inc76.for.body_crit_edge ]
  %extcmd.0231 = phi i32 [ 0, %for.body.lr.ph ], [ %extcmd.2.ph, %for.inc76.for.body_crit_edge ]
  %4 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %5, i32 %i.0233
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %7, label %for.body.for.inc76_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb33
    i32 2, label %for.body.sw.bb55_crit_edge
    i32 3, label %for.body.sw.bb55_crit_edge253
    i32 4, label %sw.bb74
  ]

for.body.sw.bb55_crit_edge253:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb55

for.body.sw.bb55_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb55

for.body.for.inc76_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc76

sw.bb:                                            ; preds = %for.body
  %and = and i32 %cmd.0236, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %and1 = and i32 %cmd.0236, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end25, label %cleanup, !prof !166

if.end25:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %cmd.0236, 16777216
  %ctx = getelementptr %struct.nand_op_instr, ptr %5, i32 %i.0233, i32 1
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctx, align 4
  %conv = zext i8 %10 to i32
  %or26 = or i32 %extcmd.0231, %conv
  br label %for.inc76

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %ctx27 = getelementptr %struct.nand_op_instr, ptr %5, i32 %i.0233, i32 1
  %11 = ptrtoint ptr %ctx27 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctx27, align 4
  %conv29 = zext i8 %12 to i32
  %or30 = or i32 %cmd.0236, %conv29
  %or31 = or i32 %or30, 4194304
  br label %for.inc76

sw.bb33:                                          ; preds = %for.body
  %call34 = tail call i32 @nand_subop_get_num_addr_cyc(ptr noundef %subop, i32 noundef %i.0233) #8
  %call35 = tail call i32 @nand_subop_get_addr_start_off(ptr noundef %subop, i32 noundef %i.0233) #8
  %addrs43 = getelementptr %struct.nand_op_instr, ptr %5, i32 %i.0233, i32 1, i32 0, i32 1
  %13 = call i32 @llvm.usub.sat.i32(i32 %call34, i32 %call35)
  call void @__sanitizer_cov_trace_cmp4(i32 %call34, i32 %call35)
  %exitcond.not.not = icmp ugt i32 %call34, %call35
  br i1 %exitcond.not.not, label %for.body41, label %sw.bb33.for.inc76_crit_edge

sw.bb33.for.inc76_crit_edge:                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc76

for.body41:                                       ; preds = %sw.bb33
  %14 = ptrtoint ptr %addrs43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addrs43, align 4
  %arrayidx45 = getelementptr i8, ptr %15, i32 %call35
  %16 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %17 to i32
  %or48 = or i32 %addrs.sroa.0.0, %conv46
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %exitcond.1.not = icmp eq i32 %13, 1
  br i1 %exitcond.1.not, label %for.body41.if.then50_crit_edge, label %for.body41.1

for.body41.if.then50_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

for.body41.1:                                     ; preds = %for.body41
  %add.1 = add nuw i32 %call35, 1
  %18 = ptrtoint ptr %addrs43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addrs43, align 4
  %arrayidx45.1 = getelementptr i8, ptr %19, i32 %add.1
  %20 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx45.1, align 1
  %conv46.1 = zext i8 %21 to i32
  %shl.1 = shl nuw nsw i32 %conv46.1, 8
  %or48.1 = or i32 %shl.1, %or48
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %exitcond.2.not = icmp eq i32 %13, 2
  br i1 %exitcond.2.not, label %for.body41.1.if.then50_crit_edge, label %for.body41.2

for.body41.1.if.then50_crit_edge:                 ; preds = %for.body41.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

for.body41.2:                                     ; preds = %for.body41.1
  %add.2 = add nuw i32 %call35, 2
  %22 = ptrtoint ptr %addrs43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addrs43, align 4
  %arrayidx45.2 = getelementptr i8, ptr %23, i32 %add.2
  %24 = ptrtoint ptr %arrayidx45.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx45.2, align 1
  %conv46.2 = zext i8 %25 to i32
  %shl.2 = shl nuw nsw i32 %conv46.2, 16
  %or48.2 = or i32 %shl.2, %or48.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %exitcond.3.not = icmp eq i32 %13, 3
  br i1 %exitcond.3.not, label %for.body41.2.if.then50_crit_edge, label %for.body41.3

for.body41.2.if.then50_crit_edge:                 ; preds = %for.body41.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

for.body41.3:                                     ; preds = %for.body41.2
  %add.3 = add nuw i32 %call35, 3
  %26 = ptrtoint ptr %addrs43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addrs43, align 4
  %arrayidx45.3 = getelementptr i8, ptr %27, i32 %add.3
  %28 = ptrtoint ptr %arrayidx45.3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx45.3, align 1
  %conv46.3 = zext i8 %29 to i32
  %shl.3 = shl nuw i32 %conv46.3, 24
  %or48.3 = or i32 %shl.3, %or48.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %exitcond.4.not = icmp eq i32 %13, 4
  br i1 %exitcond.4.not, label %for.body41.3.if.then50_crit_edge, label %for.body41.4

for.body41.3.if.then50_crit_edge:                 ; preds = %for.body41.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

for.body41.4:                                     ; preds = %for.body41.3
  %add.4 = add nuw i32 %call35, 4
  %30 = ptrtoint ptr %addrs43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %addrs43, align 4
  %arrayidx45.4 = getelementptr i8, ptr %31, i32 %add.4
  %32 = ptrtoint ptr %arrayidx45.4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx45.4, align 1
  %conv46.4 = zext i8 %33 to i32
  %or48.4 = or i32 %addrs.sroa.12.0, %conv46.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %exitcond.5.not = icmp eq i32 %13, 5
  br i1 %exitcond.5.not, label %for.body41.4.if.then50_crit_edge, label %for.body41.5

for.body41.4.if.then50_crit_edge:                 ; preds = %for.body41.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

for.body41.5:                                     ; preds = %for.body41.4
  %add.5 = add nuw i32 %call35, 5
  %34 = ptrtoint ptr %addrs43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addrs43, align 4
  %arrayidx45.5 = getelementptr i8, ptr %35, i32 %add.5
  %36 = ptrtoint ptr %arrayidx45.5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx45.5, align 1
  %conv46.5 = zext i8 %37 to i32
  %shl.5 = shl nuw nsw i32 %conv46.5, 8
  %or48.5 = or i32 %shl.5, %or48.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %exitcond.6.not = icmp eq i32 %13, 6
  br i1 %exitcond.6.not, label %for.body41.5.if.then50_crit_edge, label %for.body41.6

for.body41.5.if.then50_crit_edge:                 ; preds = %for.body41.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

for.body41.6:                                     ; preds = %for.body41.5
  %add.6 = add nuw i32 %call35, 6
  %38 = ptrtoint ptr %addrs43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %addrs43, align 4
  %arrayidx45.6 = getelementptr i8, ptr %39, i32 %add.6
  %40 = ptrtoint ptr %arrayidx45.6 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx45.6, align 1
  %conv46.6 = zext i8 %41 to i32
  %shl.6 = shl nuw nsw i32 %conv46.6, 16
  %or48.6 = or i32 %shl.6, %or48.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %exitcond.7.not = icmp eq i32 %13, 7
  br i1 %exitcond.7.not, label %for.body41.6.if.then50_crit_edge, label %for.body41.7

for.body41.6.if.then50_crit_edge:                 ; preds = %for.body41.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then50

for.body41.7:                                     ; preds = %for.body41.6
  call void @__sanitizer_cov_trace_pc() #10
  %add.7 = add nuw i32 %call35, 7
  %42 = ptrtoint ptr %addrs43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addrs43, align 4
  %arrayidx45.7 = getelementptr i8, ptr %43, i32 %add.7
  %44 = ptrtoint ptr %arrayidx45.7 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx45.7, align 1
  %conv46.7 = zext i8 %45 to i32
  %shl.7 = shl nuw i32 %conv46.7, 24
  %or48.7 = or i32 %shl.7, %or48.6
  br label %if.then50

if.then50:                                        ; preds = %for.body41.7, %for.body41.6.if.then50_crit_edge, %for.body41.5.if.then50_crit_edge, %for.body41.4.if.then50_crit_edge, %for.body41.3.if.then50_crit_edge, %for.body41.2.if.then50_crit_edge, %for.body41.1.if.then50_crit_edge, %for.body41.if.then50_crit_edge
  %addrs.sroa.12.2 = phi i32 [ %or48.7, %for.body41.7 ], [ %addrs.sroa.12.0, %for.body41.if.then50_crit_edge ], [ %addrs.sroa.12.0, %for.body41.1.if.then50_crit_edge ], [ %addrs.sroa.12.0, %for.body41.2.if.then50_crit_edge ], [ %addrs.sroa.12.0, %for.body41.3.if.then50_crit_edge ], [ %or48.4, %for.body41.4.if.then50_crit_edge ], [ %or48.5, %for.body41.5.if.then50_crit_edge ], [ %or48.6, %for.body41.6.if.then50_crit_edge ]
  %addrs.sroa.0.2 = phi i32 [ %or48.3, %for.body41.7 ], [ %or48, %for.body41.if.then50_crit_edge ], [ %or48.1, %for.body41.1.if.then50_crit_edge ], [ %or48.2, %for.body41.2.if.then50_crit_edge ], [ %or48.3, %for.body41.3.if.then50_crit_edge ], [ %or48.3, %for.body41.4.if.then50_crit_edge ], [ %or48.3, %for.body41.5.if.then50_crit_edge ], [ %or48.3, %for.body41.6.if.then50_crit_edge ]
  %j.0224 = phi i32 [ 458752, %for.body41.7 ], [ 0, %for.body41.if.then50_crit_edge ], [ 65536, %for.body41.1.if.then50_crit_edge ], [ 131072, %for.body41.2.if.then50_crit_edge ], [ 196608, %for.body41.3.if.then50_crit_edge ], [ 262144, %for.body41.4.if.then50_crit_edge ], [ 327680, %for.body41.5.if.then50_crit_edge ], [ 393216, %for.body41.6.if.then50_crit_edge ]
  %or52 = or i32 %cmd.0236, %j.0224
  %or53 = or i32 %or52, 524288
  br label %for.inc76

sw.bb55:                                          ; preds = %for.body.sw.bb55_crit_edge, %for.body.sw.bb55_crit_edge253
  %call56 = tail call i32 @nand_subop_get_data_start_off(ptr noundef %subop, i32 noundef %i.0233) #8
  %call57 = tail call i32 @nand_subop_get_data_len(ptr noundef %subop, i32 noundef %i.0233) #8
  %46 = tail call i32 @llvm.umin.i32(i32 %call57, i32 1024)
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp63 = icmp eq i32 %48, 3
  br i1 %cmp63, label %if.then65, label %if.else69

if.then65:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #10
  %or66 = or i32 %cmd.0236, 70254592
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %50, i32 1024
  %buf = getelementptr %struct.nand_op_instr, ptr %5, i32 %i.0233, i32 1, i32 0, i32 1
  %51 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buf, align 4
  %add.ptr68 = getelementptr i8, ptr %52, i32 %call56
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %add.ptr68, i32 noundef %46) #8
  br label %for.inc76

if.else69:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #10
  %or61 = or i32 %cmd.0236, 69206016
  %buf71 = getelementptr %struct.nand_op_instr, ptr %5, i32 %i.0233, i32 1, i32 0, i32 1
  %53 = ptrtoint ptr %buf71 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buf71, align 4
  %add.ptr72 = getelementptr i8, ptr %54, i32 %call56
  br label %for.inc76

sw.bb74:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %or75 = or i32 %cmd.0236, 8388608
  br label %for.inc76

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1812, i32 noundef 9, ptr noundef null) #8
  br label %cleanup140

for.inc76:                                        ; preds = %sw.bb74, %if.else69, %if.then65, %if.then50, %sw.bb33.for.inc76_crit_edge, %if.else, %if.end25, %for.body.for.inc76_crit_edge
  %addrs.sroa.12.3 = phi i32 [ %addrs.sroa.12.0, %for.body.for.inc76_crit_edge ], [ %addrs.sroa.12.0, %sw.bb74 ], [ %addrs.sroa.12.0, %if.then65 ], [ %addrs.sroa.12.0, %if.else69 ], [ %addrs.sroa.12.2, %if.then50 ], [ %addrs.sroa.12.0, %if.else ], [ %addrs.sroa.12.0, %if.end25 ], [ %addrs.sroa.12.0, %sw.bb33.for.inc76_crit_edge ]
  %addrs.sroa.0.3 = phi i32 [ %addrs.sroa.0.0, %for.body.for.inc76_crit_edge ], [ %addrs.sroa.0.0, %sw.bb74 ], [ %addrs.sroa.0.0, %if.then65 ], [ %addrs.sroa.0.0, %if.else69 ], [ %addrs.sroa.0.2, %if.then50 ], [ %addrs.sroa.0.0, %if.else ], [ %addrs.sroa.0.0, %if.end25 ], [ %addrs.sroa.0.0, %sw.bb33.for.inc76_crit_edge ]
  %extcmd.2.ph = phi i32 [ %extcmd.0231, %for.body.for.inc76_crit_edge ], [ %extcmd.0231, %sw.bb74 ], [ %extcmd.0231, %if.then65 ], [ %extcmd.0231, %if.else69 ], [ %extcmd.0231, %if.then50 ], [ %extcmd.0231, %if.else ], [ %or26, %if.end25 ], [ %extcmd.0231, %sw.bb33.for.inc76_crit_edge ]
  %cnt.2.ph = phi i32 [ %cnt.0232, %for.body.for.inc76_crit_edge ], [ %cnt.0232, %sw.bb74 ], [ %46, %if.then65 ], [ %46, %if.else69 ], [ %cnt.0232, %if.then50 ], [ %cnt.0232, %if.else ], [ %cnt.0232, %if.end25 ], [ %cnt.0232, %sw.bb33.for.inc76_crit_edge ]
  %inbuf.2.ph = phi ptr [ %inbuf.0235, %for.body.for.inc76_crit_edge ], [ %inbuf.0235, %sw.bb74 ], [ %inbuf.0235, %if.then65 ], [ %add.ptr72, %if.else69 ], [ %inbuf.0235, %if.then50 ], [ %inbuf.0235, %if.else ], [ %inbuf.0235, %if.end25 ], [ %inbuf.0235, %sw.bb33.for.inc76_crit_edge ]
  %cmd.2.ph = phi i32 [ %cmd.0236, %for.body.for.inc76_crit_edge ], [ %or75, %sw.bb74 ], [ %or66, %if.then65 ], [ %or61, %if.else69 ], [ %or53, %if.then50 ], [ %or31, %if.else ], [ %or, %if.end25 ], [ %cmd.0236, %sw.bb33.for.inc76_crit_edge ]
  %inc77 = add nuw i32 %i.0233, 1
  %55 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc77, %56
  br i1 %cmp, label %for.inc76.for.body_crit_edge, label %for.inc76.for.end78_crit_edge

for.inc76.for.end78_crit_edge:                    ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end78

for.inc76.for.body_crit_edge:                     ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end78:                                        ; preds = %for.inc76.for.end78_crit_edge, %entry.for.end78_crit_edge
  %addrs.sroa.12.4 = phi i32 [ 0, %entry.for.end78_crit_edge ], [ %addrs.sroa.12.3, %for.inc76.for.end78_crit_edge ]
  %addrs.sroa.0.4 = phi i32 [ 0, %entry.for.end78_crit_edge ], [ %addrs.sroa.0.3, %for.inc76.for.end78_crit_edge ]
  %extcmd.0.lcssa = phi i32 [ 0, %entry.for.end78_crit_edge ], [ %extcmd.2.ph, %for.inc76.for.end78_crit_edge ]
  %cnt.0.lcssa = phi i32 [ 0, %entry.for.end78_crit_edge ], [ %cnt.2.ph, %for.inc76.for.end78_crit_edge ]
  %inbuf.0.lcssa = phi ptr [ null, %entry.for.end78_crit_edge ], [ %inbuf.2.ph, %for.inc76.for.end78_crit_edge ]
  %cmd.0.lcssa = phi i32 [ 0, %entry.for.end78_crit_edge ], [ %cmd.2.ph, %for.inc76.for.end78_crit_edge ]
  %call79 = tail call fastcc i32 @sunxi_nfc_wait_cmd_fifo_empty(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %for.end78.cleanup140_crit_edge

for.end78.cleanup140_crit_edge:                   ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup140

if.end82:                                         ; preds = %for.end78
  %and83 = and i32 %cmd.0.lcssa, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end82.if.end98_crit_edge, label %do.body86

if.end82.if.end98_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

do.body86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  tail call void @arm_heavy_mb() #8
  %57 = tail call i32 @llvm.bswap.i32(i32 %addrs.sroa.0.4)
  %regs90 = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 2
  %58 = ptrtoint ptr %regs90 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs90, align 4
  %add.ptr91 = getelementptr i8, ptr %59, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 %57) #8, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  tail call void @arm_heavy_mb() #8
  %60 = tail call i32 @llvm.bswap.i32(i32 %addrs.sroa.12.4)
  %61 = ptrtoint ptr %regs90 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs90, align 4
  %add.ptr97 = getelementptr i8, ptr %62, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %60) #8, !srcloc !165
  br label %if.end98

if.end98:                                         ; preds = %do.body86, %if.end82.if.end98_crit_edge
  %and99 = and i32 %cmd.0.lcssa, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end98.if.end110_crit_edge, label %do.body102

if.end98.if.end110_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

do.body102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  tail call void @arm_heavy_mb() #8
  %63 = tail call i32 @llvm.bswap.i32(i32 %extcmd.0.lcssa)
  %regs105 = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %regs105 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs105, align 4
  %and106 = and i32 %cmd.0.lcssa, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  %cond108 = select i1 %tobool107.not, i32 40, i32 44
  %add.ptr109 = getelementptr i8, ptr %65, i32 %cond108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %63) #8, !srcloc !165
  br label %if.end110

if.end110:                                        ; preds = %do.body102, %if.end98.if.end110_crit_edge
  %and111 = and i32 %cmd.0.lcssa, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end110.do.body120_crit_edge, label %do.body114

if.end110.do.body120_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body120

do.body114:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  tail call void @arm_heavy_mb() #8
  %66 = tail call i32 @llvm.bswap.i32(i32 %cnt.0.lcssa)
  %regs117 = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 2
  %67 = ptrtoint ptr %regs117 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs117, align 4
  %add.ptr118 = getelementptr i8, ptr %68, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %66) #8, !srcloc !165
  br label %do.body120

do.body120:                                       ; preds = %do.body114, %if.end110.do.body120_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  tail call void @arm_heavy_mb() #8
  %69 = tail call i32 @llvm.bswap.i32(i32 %cmd.0.lcssa)
  %regs123 = getelementptr inbounds %struct.sunxi_nfc, ptr %1, i32 0, i32 2
  %70 = ptrtoint ptr %regs123 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs123, align 4
  %add.ptr124 = getelementptr i8, ptr %71, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 %69) #8, !srcloc !165
  %and125 = and i32 %cmd.0.lcssa, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %cnt.0.lcssa)
  %cmp128 = icmp ult i32 %cnt.0.lcssa, 64
  %spec.select = select i1 %tobool126.not, i1 %cmp128, i1 false
  %call131 = tail call fastcc i32 @sunxi_nfc_wait_events(ptr noundef %1, i32 noundef 2, i1 noundef zeroext %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %do.body120.cleanup140_crit_edge

do.body120.cleanup140_crit_edge:                  ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup140

if.end134:                                        ; preds = %do.body120
  %tobool135.not = icmp eq ptr %inbuf.0.lcssa, null
  br i1 %tobool135.not, label %if.end134.cleanup140_crit_edge, label %if.then136

if.end134.cleanup140_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup140

if.then136:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %regs123 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs123, align 4
  %add.ptr138 = getelementptr i8, ptr %73, i32 1024
  tail call void @mmiocpy(ptr noundef nonnull %inbuf.0.lcssa, ptr noundef %add.ptr138, i32 noundef %cnt.0.lcssa) #8
  br label %cleanup140

cleanup140:                                       ; preds = %if.then136, %if.end134.cleanup140_crit_edge, %do.body120.cleanup140_crit_edge, %for.end78.cleanup140_crit_edge, %cleanup
  %retval.2 = phi i32 [ -22, %cleanup ], [ %call79, %for.end78.cleanup140_crit_edge ], [ %call131, %do.body120.cleanup140_crit_edge ], [ 0, %if.then136 ], [ 0, %if.end134.cleanup140_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_num_addr_cyc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_addr_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_data_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_data_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_nfc_soft_waitrdy(ptr noundef %nand, ptr nocapture noundef readonly %subop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %instrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  %0 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instrs, align 4
  %ctx = getelementptr inbounds %struct.nand_op_instr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctx, align 4
  %call = tail call i32 @nand_soft_waitrdy(ptr noundef %nand, i32 noundef %3) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_soft_waitrdy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !47, !48, !49, !50, !52, !54, !55, !56, !57, !58, !60, !61, !62, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !87, !88, !90, !92, !94, !95, !96, !97, !99, !101, !102, !103, !104, !106, !108, !110, !112, !113, !114, !115, !117, !118, !120, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !147, !149, !151, !153}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__initcall__kmod_sunxi_nand__257_2262_sunxi_nfc_driver_init6, !1, !"__initcall__kmod_sunxi_nand__257_2262_sunxi_nfc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2262, i32 1}
!2 = !{ptr @__exitcall_sunxi_nfc_driver_exit, !1, !"__exitcall_sunxi_nfc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file258, !4, !"__UNIQUE_ID_file258", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2264, i32 1}
!5 = !{ptr @__UNIQUE_ID_license259, !4, !"__UNIQUE_ID_license259", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author260, !7, !"__UNIQUE_ID_author260", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2265, i32 1}
!8 = !{ptr @__UNIQUE_ID_description261, !9, !"__UNIQUE_ID_description261", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2266, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias262, !11, !"__UNIQUE_ID_alias262", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2267, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2256, i32 11}
!14 = !{ptr @sunxi_nfc_driver, !15, !"sunxi_nfc_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2254, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2137, i32 35}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2139, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sunxi_nfc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @sunxi_nfc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2147, i32 35}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2149, i32 3}
!30 = !{ptr @sunxi_nfc_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sunxi_nfc_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2166, i32 3}
!34 = !{ptr @sunxi_nfc_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sunxi_nfc_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2182, i32 14}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2195, i32 3}
!40 = !{ptr @sunxi_nfc_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sunxi_nfc_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @nand_controller_init.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 345, i32 3}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @sunxi_nfc_rst._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @sunxi_nfc_rst._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2089, i32 41}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2096, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @sunxi_nfc_dma_init._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @sunxi_nfc_dma_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2048, i32 3}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sunxi_nand_chips_init._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @sunxi_nand_chips_init._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 1964, i32 27}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 1969, i32 3}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sunxi_nand_chip_init._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @sunxi_nand_chip_init._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 1983, i32 4}
!72 = !{ptr @sunxi_nand_chip_init._entry.30, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @sunxi_nand_chip_init._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 1989, i32 4}
!76 = !{ptr @sunxi_nand_chip_init._entry.33, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @sunxi_nand_chip_init._entry_ptr.35, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 1996, i32 4}
!80 = !{ptr @sunxi_nand_chip_init._entry.36, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @sunxi_nand_chip_init._entry_ptr.38, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2002, i32 39}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2030, i32 3}
!86 = !{ptr @sunxi_nand_chip_init._entry.40, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @sunxi_nand_chip_init._entry_ptr.42, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @sunxi_nand_controller_ops, !89, !"sunxi_nand_controller_ops", i1 false, i1 false}
!89 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 1947, i32 41}
!90 = !{ptr @sunxi_nand_hw_ecc_ctrl_init.strengths, !91, !"strengths", i1 false, i1 false}
!91 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 1631, i32 18}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 1695, i32 3}
!94 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @sunxi_nand_hw_ecc_ctrl_init._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @sunxi_nand_hw_ecc_ctrl_init._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @sunxi_nand_ooblayout_ops, !98, !"sunxi_nand_ooblayout_ops", i1 false, i1 false}
!98 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 1617, i32 39}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 328, i32 3}
!101 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @sunxi_nfc_wait_cmd_fifo_empty._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @sunxi_nfc_wait_cmd_fifo_empty._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @sunxi_nfc_randomizer_page_seeds, !105, !"sunxi_nfc_randomizer_page_seeds", i1 false, i1 false}
!105 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 522, i32 18}
!106 = !{ptr @sunxi_nfc_randomizer_ecc512_seeds, !107, !"sunxi_nfc_randomizer_ecc512_seeds", i1 false, i1 false}
!107 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 550, i32 18}
!108 = !{ptr @sunxi_nfc_randomizer_ecc1024_seeds, !109, !"sunxi_nfc_randomizer_ecc1024_seeds", i1 false, i1 false}
!109 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 569, i32 18}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 314, i32 3}
!112 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @sunxi_nfc_wait_events._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @sunxi_nfc_wait_events._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @init_completion.__key, !116, !"__key", i1 false, i1 false}
!116 = !{!"../include/linux/completion.h", i32 87, i32 2}
!117 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @sunxi_nfc_op_parser, !119, !"sunxi_nfc_op_parser", i1 false, i1 false}
!119 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 1900, i32 36}
!120 = !{ptr @sunxi_nfc_norb_op_parser, !121, !"sunxi_nfc_norb_op_parser", i1 false, i1 false}
!121 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 1915, i32 36}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 1505, i32 3}
!124 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @sunxi_nfc_setup_interface._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @sunxi_nfc_setup_interface._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 1511, i32 3}
!129 = !{ptr @sunxi_nfc_setup_interface._entry.58, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @sunxi_nfc_setup_interface._entry_ptr.60, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 1517, i32 3}
!133 = !{ptr @sunxi_nfc_setup_interface._entry.61, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @sunxi_nfc_setup_interface._entry_ptr.63, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 1524, i32 3}
!137 = !{ptr @sunxi_nfc_setup_interface._entry.64, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @sunxi_nfc_setup_interface._entry_ptr.66, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 1552, i32 3}
!141 = !{ptr @sunxi_nfc_setup_interface._entry.67, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @sunxi_nfc_setup_interface._entry_ptr.69, !140, !"_entry_ptr", i1 false, i1 false}
!143 = distinct !{null, !144, !"tWB_lut", i1 false, i1 false}
!144 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 1380, i32 18}
!145 = distinct !{null, !146, !"tRHW_lut", i1 false, i1 false}
!146 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 1381, i32 18}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!149 = !{ptr @sunxi_nfc_ids, !150, !"sunxi_nfc_ids", i1 false, i1 false}
!150 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2241, i32 34}
!151 = !{ptr @sunxi_nfc_a10_caps, !152, !"sunxi_nfc_a10_caps", i1 false, i1 false}
!152 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2230, i32 36}
!153 = !{ptr @sunxi_nfc_a23_caps, !154, !"sunxi_nfc_a23_caps", i1 false, i1 false}
!154 = !{!"../drivers/mtd/nand/raw/sunxi_nand.c", i32 2235, i32 36}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{i64 2154871363}
!165 = !{i64 6275028}
!166 = !{!"branch_weights", i32 2000, i32 1}
!167 = !{i64 2154765980}
!168 = !{i64 2154766478}
!169 = !{i64 6275446}
!170 = !{i64 2154768509}
!171 = !{i64 2154768999}
!172 = !{i64 2154753031}
!173 = !{i64 2154753528}
!174 = !{i64 2154754166}
!175 = !{i64 2154755266}
!176 = !{i8 0, i8 2}
!177 = !{!"auto-init"}
!178 = !{i64 2154798835}
!179 = !{i64 2154800279}
!180 = !{i64 2154791726}
!181 = !{i64 2154792307}
!182 = !{i64 2154792804}
!183 = !{i64 2154793760}
!184 = !{i64 2154795168}
!185 = !{i64 2154796127}
!186 = !{i64 2154814282}
!187 = !{i64 2154815255}
!188 = !{i64 2154797331}
!189 = !{i64 2154798294}
!190 = !{i64 2154801545}
!191 = !{i64 2154802508}
!192 = !{i64 2154780053}
!193 = !{i64 2154781018}
!194 = !{i64 2154781560}
!195 = !{i64 2154783520}
!196 = !{i64 2154783970}
!197 = !{i64 2154784444}
!198 = !{i64 2154784899}
!199 = !{i64 2154809831}
!200 = !{i64 2154810728}
!201 = !{i64 2154811608}
!202 = !{i64 2154807082}
!203 = !{i64 2154807706}
!204 = !{i64 2154803482}
!205 = !{i64 2154763579}
!206 = !{i64 2154764069}
!207 = !{i64 2154771889}
!208 = !{i64 2154772850}
!209 = !{i64 2154773119}
!210 = !{i64 2154773535}
!211 = !{i64 2154774810}
!212 = !{i64 2154775775}
!213 = !{i64 2154776058}
!214 = !{i64 2154776545}
!215 = !{i64 2154777856}
!216 = !{i64 2154778821}
!217 = !{i64 2154756298}
!218 = !{i64 2154756707}
!219 = !{i64 2154758563}
!220 = !{i64 2154759053}
!221 = !{i64 2154759699}
!222 = !{i64 2154786660}
!223 = !{i64 2154787226}
!224 = !{i64 2154803938}
!225 = !{i64 2154789139}
!226 = !{i64 2154789857}
!227 = !{i64 2154808253}
!228 = !{i64 2154809224}
!229 = !{i64 2154813030}
!230 = !{i64 2154832625}
!231 = !{i64 2154833043}
!232 = !{i64 2154833692}
!233 = !{i64 2154834241}
!234 = !{i64 2154834639}
