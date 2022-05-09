; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/tegra_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/tegra_nand.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.nand_op_parser = type { ptr, i32 }
%struct.nand_op_parser_pattern_elem = type { i32, i8, %union.anon.81 }
%union.anon.81 = type { %struct.nand_op_parser_addr_constraints }
%struct.nand_op_parser_addr_constraints = type { i32 }
%struct.nand_op_parser_data_constraints = type { i32 }
%struct.nand_op_parser_pattern = type { ptr, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.tegra_core_opp_params = type { i8 }
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
%struct.tegra_nand_controller = type { %struct.nand_controller, ptr, ptr, i32, ptr, %struct.completion, %struct.completion, i8, i32, ptr }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.tegra_nand_chip = type { %struct.nand_chip, ptr, %struct.mtd_oob_region, i32, i32, i32, [1 x i32] }
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
%struct.mtd_oob_region = type { i32, i32 }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.nand_subop = type { i32, ptr, i32, i32, i32 }
%struct.nand_op_instr = type { i32, %union.anon.75, i32 }
%union.anon.75 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.76, i8 }
%union.anon.76 = type { ptr }

@__initcall__kmod_tegra_nand__271_1283_tegra_nand_driver_init6 = internal global ptr @tegra_nand_driver_init, section ".initcall6.init", align 4
@tegra_nand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_nand_probe, ptr @tegra_nand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_nand_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_nand_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_nand_driver_exit = internal global ptr @tegra_nand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description272 = internal constant [48 x i8] c"tegra_nand.description=NVIDIA Tegra NAND driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author273 = internal constant [61 x i8] c"tegra_nand.author=Thierry Reding <thierry.reding@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author274 = internal constant [47 x i8] c"tegra_nand.author=Lucas Stach <dev@lynxeye.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author275 = internal constant [49 x i8] c"tegra_nand.author=Stefan Agner <stefan@agner.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_file276 = internal constant [48 x i8] c"tegra_nand.file=drivers/mtd/nand/raw/tegra_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license277 = internal constant [26 x i8] c"tegra_nand.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra-nand\00", [21 x i8] zeroinitializer }, align 32
@tegra_nand_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tegra_nand_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_nand_runtime_suspend, ptr @tegra_nand_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_nand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @tegra_nand_attach_chip, ptr null, ptr @tegra_nand_exec_op, ptr @tegra_nand_setup_interface }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@tegra_nand_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1188, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to reset HW: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_nand_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mtd/nand/raw/tegra_nand.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_nand_probe._entry_ptr = internal global ptr @tegra_nand_probe._entry, section ".printk_index", align 4
@tegra_nand_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1203, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to get IRQ: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra_nand_probe._entry_ptr.9 = internal global ptr @tegra_nand_probe._entry.7, section ".printk_index", align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@tegra_nand_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 932, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported step size %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_nand_attach_chip\00", [41 x i8] zeroinitializer }, align 32
@tegra_nand_attach_chip._entry_ptr = internal global ptr @tegra_nand_attach_chip._entry, section ".printk_index", align 4
@tegra_nand_attach_chip._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 954, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"BCH supports 2K or 4K page size only\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_nand_attach_chip._entry_ptr.15 = internal global ptr @tegra_nand_attach_chip._entry.13, section ".printk_index", align 4
@tegra_nand_attach_chip._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.4, i32 963, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No valid strength found, minimum %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_nand_attach_chip._entry_ptr.18 = internal global ptr @tegra_nand_attach_chip._entry.16, section ".printk_index", align 4
@tegra_nand_oob_rs_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @tegra_nand_ooblayout_rs_ecc, ptr @tegra_nand_ooblayout_no_free }, [24 x i8] zeroinitializer }, align 32
@tegra_nand_attach_chip._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.4, i32 991, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ECC strength %d not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_nand_attach_chip._entry_ptr.21 = internal global ptr @tegra_nand_attach_chip._entry.19, section ".printk_index", align 4
@tegra_nand_oob_bch_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @tegra_nand_ooblayout_bch_ecc, ptr @tegra_nand_ooblayout_no_free }, [24 x i8] zeroinitializer }, align 32
@tegra_nand_attach_chip._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.4, i32 1014, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tegra_nand_attach_chip._entry_ptr.23 = internal global ptr @tegra_nand_attach_chip._entry.22, section ".printk_index", align 4
@tegra_nand_attach_chip._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.12, ptr @.str.4, i32 1019, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ECC algorithm not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_nand_attach_chip._entry_ptr.26 = internal global ptr @tegra_nand_attach_chip._entry.24, section ".printk_index", align 4
@tegra_nand_attach_chip._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.12, ptr @.str.4, i32 1025, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Using %s with strength %d per 512 byte step\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tegra_nand_attach_chip._entry_ptr.30 = internal global ptr @tegra_nand_attach_chip._entry.27, section ".printk_index", align 4
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BCH\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RS\00", [29 x i8] zeroinitializer }, align 32
@tegra_nand_attach_chip._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.12, ptr @.str.4, i32 1047, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported writesize %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_nand_attach_chip._entry_ptr.35 = internal global ptr @tegra_nand_attach_chip._entry.33, section ".printk_index", align 4
@tegra_nand_page_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 535, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma mapping error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_nand_page_xfer\00", [43 x i8] zeroinitializer }, align 32
@tegra_nand_page_xfer._entry_ptr = internal global ptr @tegra_nand_page_xfer._entry, section ".printk_index", align 4
@tegra_nand_page_xfer._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 548, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@tegra_nand_page_xfer._entry_ptr.39 = internal global ptr @tegra_nand_page_xfer._entry.38, section ".printk_index", align 4
@tegra_nand_page_xfer._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.37, ptr @.str.4, i32 591, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"COMMAND timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@tegra_nand_page_xfer._entry_ptr.42 = internal global ptr @tegra_nand_page_xfer._entry.40, section ".printk_index", align 4
@tegra_nand_page_xfer._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.37, ptr @.str.4, i32 601, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMA timeout\0A\00", [19 x i8] zeroinitializer }, align 32
@tegra_nand_page_xfer._entry_ptr.45 = internal global ptr @tegra_nand_page_xfer._entry.43, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@tegra_nand_dump_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 316, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Tegra NAND controller register dump\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_nand_dump_reg\00", [44 x i8] zeroinitializer }, align 32
@tegra_nand_dump_reg._entry_ptr = internal global ptr @tegra_nand_dump_reg._entry, section ".printk_index", align 4
@tegra_nand_reg_names = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr null, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], [32 x i8] zeroinitializer }, align 32
@tegra_nand_dump_reg._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.4, i32 324, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: 0x%08x\0A\00", [20 x i8] zeroinitializer }, align 32
@tegra_nand_dump_reg._entry_ptr.52 = internal global ptr @tegra_nand_dump_reg._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"COMMAND\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"STATUS\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ISR\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IER\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CONFIG\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TIMING\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TIMING2\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CMD_REG1\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CMD_REG2\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADDR_REG1\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADDR_REG2\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMA_MST_CTRL\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMA_CFG_A\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMA_CFG_B\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FIFO_CTRL\00", [22 x i8] zeroinitializer }, align 32
@rs_strength_bootable = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 4], [28 x i8] zeroinitializer }, align 32
@rs_strength = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 6, i32 8], [20 x i8] zeroinitializer }, align 32
@bch_strength_bootable = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8, i32 16], [24 x i8] zeroinitializer }, align 32
@bch_strength = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 14, i32 16], [16 x i8] zeroinitializer }, align 32
@tegra_nand_op_parser = internal constant { %struct.nand_op_parser, [24 x i8] } { %struct.nand_op_parser { ptr @.compoundliteral.70, i32 3 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [4 x %struct.nand_op_parser_pattern_elem], [48 x i8] } { [4 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.81 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 1, i8 1, %union.anon.81 { %struct.nand_op_parser_addr_constraints { i32 8 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.81 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.81 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal constant { [1 x { i32, i8, { %struct.nand_op_parser_data_constraints } }], [20 x i8] } { [1 x { i32, i8, { %struct.nand_op_parser_data_constraints } }] [{ i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 4 } } }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }>, [36 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }> <{ %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.81 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 1, i8 1, %union.anon.81 { %struct.nand_op_parser_addr_constraints { i32 8 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.81 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.81 zeroinitializer }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 1, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 4 } } } }>, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal constant { [3 x %struct.nand_op_parser_pattern], [60 x i8] } { [3 x %struct.nand_op_parser_pattern] [%struct.nand_op_parser_pattern { ptr @.compoundliteral, i32 4, ptr @tegra_nand_cmd }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.68, i32 1, ptr @tegra_nand_cmd }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.69, i32 5, ptr @tegra_nand_cmd }], [60 x i8] zeroinitializer }, align 32
@tegra_nand_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.71, ptr @.str.4, i32 430, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_nand_cmd\00", [17 x i8] zeroinitializer }, align 32
@tegra_nand_cmd._entry_ptr = internal global ptr @tegra_nand_cmd._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@tegra_nand_irq.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.73, ptr @.str.74, ptr @.str.4, ptr @.str.75, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra_nand\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_nand_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"isr %08x\0A\00", [22 x i8] zeroinitializer }, align 32
@tegra_nand_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.4, i32 275, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FIFO underrun\0A\00", [17 x i8] zeroinitializer }, align 32
@tegra_nand_irq._entry_ptr = internal global ptr @tegra_nand_irq._entry, section ".printk_index", align 4
@tegra_nand_irq._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.74, ptr @.str.4, i32 278, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FIFO overrun\0A\00", [18 x i8] zeroinitializer }, align 32
@tegra_nand_irq._entry_ptr.79 = internal global ptr @tegra_nand_irq._entry.77, section ".printk_index", align 4
@tegra_nand_chips_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.4, i32 1080, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Currently only one NAND chip supported\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_nand_chips_init\00", [42 x i8] zeroinitializer }, align 32
@tegra_nand_chips_init._entry_ptr = internal global ptr @tegra_nand_chips_init._entry, section ".printk_index", align 4
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@tegra_nand_chips_init._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.81, ptr @.str.4, i32 1088, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Missing/invalid reg property\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_nand_chips_init._entry_ptr.85 = internal global ptr @tegra_nand_chips_init._entry.83, section ".printk_index", align 4
@tegra_nand_chips_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.81, ptr @.str.4, i32 1095, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not retrieve reg property: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_nand_chips_init._entry_ptr.88 = internal global ptr @tegra_nand_chips_init._entry.86, section ".printk_index", align 4
@.str.89 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wp\00", [29 x i8] zeroinitializer }, align 32
@tegra_nand_chips_init._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.81, ptr @.str.4, i32 1109, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to request WP GPIO: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_nand_chips_init._entry_ptr.92 = internal global ptr @tegra_nand_chips_init._entry.90, section ".printk_index", align 4
@tegra_nand_chips_init._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.81, ptr @.str.4, i32 1136, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register mtd device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_nand_chips_init._entry_ptr.95 = internal global ptr @tegra_nand_chips_init._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@tegra_nand_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.4, i32 1247, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_nand_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@tegra_nand_runtime_resume._entry_ptr = internal global ptr @tegra_nand_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.102 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.103 = internal global [7 x i64] [i64 5, i64 32, i64 256, i64 512, i64 1024, i64 2048, i64 4096]
@__sancov_gen_cov_switch_values.104 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"tegra_nand_driver\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1274, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1276, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"tegra_nand_of_match\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1268, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant [14 x i8] c"tegra_nand_pm\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1263, i32 32 }
@___asan_gen_.117 = private unnamed_addr constant [26 x i8] c"tegra_nand_controller_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1061, i32 41 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1165, i32 43 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1188, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1203, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 1105, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 931, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 954, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 961, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant [22 x i8] c"tegra_nand_oob_rs_ops\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 225, i32 39 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 990, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant [23 x i8] c"tegra_nand_oob_bch_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 246, i32 39 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1013, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1019, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1023, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1046, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 535, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 548, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 591, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 601, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 326, i32 6 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 316, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [21 x i8] c"tegra_nand_reg_names\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 292, i32 27 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 324, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 293, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 294, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 295, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 296, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 297, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 298, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 300, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 301, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 302, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 303, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 304, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 305, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 306, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 307, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 308, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant [21 x i8] c"rs_strength_bootable\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 837, i32 18 }
@___asan_gen_.312 = private unnamed_addr constant [12 x i8] c"rs_strength\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 838, i32 18 }
@___asan_gen_.315 = private unnamed_addr constant [22 x i8] c"bch_strength_bootable\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 839, i32 18 }
@___asan_gen_.318 = private unnamed_addr constant [13 x i8] c"bch_strength\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 840, i32 18 }
@___asan_gen_.321 = private unnamed_addr constant [21 x i8] c"tegra_nand_op_parser\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 444, i32 36 }
@___asan_gen_.324 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 430, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 87, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 258, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 275, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 278, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1080, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1086, i32 51 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1088, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1095, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1105, i32 47 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1109, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1136, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 464, i32 31 }
@___asan_gen_.403 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.410 = private constant [37 x i8] c"../drivers/mtd/nand/raw/tegra_nand.c\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1247, i32 3 }
@llvm.compiler.used = appending global [139 x ptr] [ptr @__UNIQUE_ID_author273, ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description272, ptr @__UNIQUE_ID_file276, ptr @__UNIQUE_ID_license277, ptr @__exitcall_tegra_nand_driver_exit, ptr @__initcall__kmod_tegra_nand__271_1283_tegra_nand_driver_init6, ptr @tegra_nand_attach_chip._entry, ptr @tegra_nand_attach_chip._entry.13, ptr @tegra_nand_attach_chip._entry.16, ptr @tegra_nand_attach_chip._entry.19, ptr @tegra_nand_attach_chip._entry.22, ptr @tegra_nand_attach_chip._entry.24, ptr @tegra_nand_attach_chip._entry.27, ptr @tegra_nand_attach_chip._entry.33, ptr @tegra_nand_attach_chip._entry_ptr, ptr @tegra_nand_attach_chip._entry_ptr.15, ptr @tegra_nand_attach_chip._entry_ptr.18, ptr @tegra_nand_attach_chip._entry_ptr.21, ptr @tegra_nand_attach_chip._entry_ptr.23, ptr @tegra_nand_attach_chip._entry_ptr.26, ptr @tegra_nand_attach_chip._entry_ptr.30, ptr @tegra_nand_attach_chip._entry_ptr.35, ptr @tegra_nand_chips_init._entry, ptr @tegra_nand_chips_init._entry.83, ptr @tegra_nand_chips_init._entry.86, ptr @tegra_nand_chips_init._entry.90, ptr @tegra_nand_chips_init._entry.93, ptr @tegra_nand_chips_init._entry_ptr, ptr @tegra_nand_chips_init._entry_ptr.85, ptr @tegra_nand_chips_init._entry_ptr.88, ptr @tegra_nand_chips_init._entry_ptr.92, ptr @tegra_nand_chips_init._entry_ptr.95, ptr @tegra_nand_cmd._entry, ptr @tegra_nand_cmd._entry_ptr, ptr @tegra_nand_driver_exit, ptr @tegra_nand_dump_reg._entry, ptr @tegra_nand_dump_reg._entry.50, ptr @tegra_nand_dump_reg._entry_ptr, ptr @tegra_nand_dump_reg._entry_ptr.52, ptr @tegra_nand_irq._entry, ptr @tegra_nand_irq._entry.77, ptr @tegra_nand_irq._entry_ptr, ptr @tegra_nand_irq._entry_ptr.79, ptr @tegra_nand_page_xfer._entry, ptr @tegra_nand_page_xfer._entry.38, ptr @tegra_nand_page_xfer._entry.40, ptr @tegra_nand_page_xfer._entry.43, ptr @tegra_nand_page_xfer._entry_ptr, ptr @tegra_nand_page_xfer._entry_ptr.39, ptr @tegra_nand_page_xfer._entry_ptr.42, ptr @tegra_nand_page_xfer._entry_ptr.45, ptr @tegra_nand_probe._entry, ptr @tegra_nand_probe._entry.7, ptr @tegra_nand_probe._entry_ptr, ptr @tegra_nand_probe._entry_ptr.9, ptr @tegra_nand_runtime_resume._entry, ptr @tegra_nand_runtime_resume._entry_ptr, ptr @tegra_nand_driver, ptr @.str, ptr @tegra_nand_of_match, ptr @tegra_nand_pm, ptr @tegra_nand_controller_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @nand_controller_init.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @tegra_nand_oob_rs_ops, ptr @.str.20, ptr @tegra_nand_oob_bch_ops, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @tegra_nand_reg_names, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @rs_strength_bootable, ptr @rs_strength, ptr @bch_strength_bootable, ptr @bch_strength, ptr @tegra_nand_op_parser, ptr @.compoundliteral, ptr @.compoundliteral.68, ptr @.compoundliteral.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @init_completion.__key, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_attach_chip._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_attach_chip._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_oob_rs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_attach_chip._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_oob_bch_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_attach_chip._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_attach_chip._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_attach_chip._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_attach_chip._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_page_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_page_xfer._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_page_xfer._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_page_xfer._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_dump_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_reg_names to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_dump_reg._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_strength_bootable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_strength to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_strength_bootable to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_strength to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_op_parser to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_irq._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_chips_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_chips_init._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_chips_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_chips_init._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_chips_init._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_nand_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_nand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_nand_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_nand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_nand_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_nand_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %opp_params.i = alloca %struct.tegra_core_opp_params, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 236, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.tegra_nand_controller, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @nand_controller_init.__key) #9
  %ops = getelementptr inbounds %struct.nand_controller, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tegra_nand_controller_ops, ptr %ops, align 4
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %regs = getelementptr inbounds %struct.tegra_nand_controller, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %cmp.i119 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %clk = getelementptr inbounds %struct.tegra_nand_controller, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call18, ptr %clk, align 4
  %cmp.i120 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %opp_params.i) #9
  %8 = ptrtoint ptr %opp_params.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %opp_params.i, align 1
  %call.i121 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %dev, ptr noundef nonnull %opp_params.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i121)
  %cmp.not.i = icmp eq i32 %call.i121, -19
  %.call.i = select i1 %cmp.not.i, i32 0, i32 %call.i121
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opp_params.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.call.i)
  %tobool27.not = icmp eq i32 %.call.i, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  call void @pm_runtime_enable(ptr noundef %dev) #9
  %call.i122 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %cmp.i123 = icmp slt i32 %call.i122, 0
  br i1 %cmp.i123, label %if.then.i, label %if.end35

if.then.i:                                        ; preds = %if.end29
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !212
  call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %9 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !213
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !214
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %call36 = call i32 @reset_control_reset(ptr noundef %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end40, label %do.end

do.end:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.2, i32 noundef %call36) #12
  br label %err_put_pm

if.end40:                                         ; preds = %if.end35
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1073741824) #9, !srcloc !215
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr43 = getelementptr i8, ptr %15, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 1077936129) #9, !srcloc !215
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr45 = getelementptr i8, ptr %17, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 -520093696) #9, !srcloc !215
  %command_complete = getelementptr inbounds %struct.tegra_nand_controller, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %command_complete to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %command_complete, align 4
  %wait.i = getelementptr inbounds %struct.tegra_nand_controller, ptr %call.i, i32 0, i32 5, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @init_completion.__key) #9
  %dma_complete = getelementptr inbounds %struct.tegra_nand_controller, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %dma_complete to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dma_complete, align 4
  %wait.i124 = getelementptr inbounds %struct.tegra_nand_controller, ptr %call.i, i32 0, i32 6, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i124, ptr noundef nonnull @.str.72, ptr noundef nonnull @init_completion.__key) #9
  %call46 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.tegra_nand_controller, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call46, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end40.dev_name.exit_crit_edge

if.end40.dev_name.exit_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end40.dev_name.exit_crit_edge
  %retval.0.i125 = phi ptr [ %24, %if.end.i ], [ %22, %if.end40.dev_name.exit_crit_edge ]
  %call.i126 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call46, ptr noundef nonnull @tegra_nand_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i125, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool52.not = icmp eq i32 %call.i126, 0
  br i1 %tobool52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.8, i32 noundef %call.i126) #12
  br label %err_put_pm

if.end58:                                         ; preds = %dev_name.exit
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr60 = getelementptr i8, ptr %28, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 4096) #9, !srcloc !215
  %29 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev2, align 4
  %call62 = call fastcc i32 @tegra_nand_chips_init(ptr noundef %30, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end58.cleanup_crit_edge, label %if.end58.err_put_pm_crit_edge

if.end58.err_put_pm_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_put_pm

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_put_pm:                                       ; preds = %if.end58.err_put_pm_crit_edge, %do.end56, %do.end
  %err.0 = phi i32 [ %call36, %do.end ], [ %call.i126, %do.end56 ], [ %call62, %if.end58.err_put_pm_crit_edge ]
  %31 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev2, align 4
  %call.i127 = call i32 @__pm_runtime_suspend(ptr noundef %32, i32 noundef 4) #9
  %33 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev2, align 4
  %call69 = call i32 @pm_runtime_force_suspend(ptr noundef %34) #9
  br label %cleanup

cleanup:                                          ; preds = %err_put_pm, %if.end58.cleanup_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then21, %if.then14, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then7 ], [ %5, %if.then14 ], [ %7, %if.then21 ], [ %err.0, %err_put_pm ], [ -12, %entry.cleanup_crit_edge ], [ %.call.i, %if.end24.cleanup_crit_edge ], [ 0, %if.end58.cleanup_crit_edge ], [ %call.i122, %if.then.i.cleanup_crit_edge ], [ %call.i122, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_nand_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %call3 = tail call i32 @mtd_device_unregister(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nand_cleanup(ptr noundef %3) #9
  %dev = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %5, i32 noundef 4) #9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call6 = tail call i32 @pm_runtime_force_suspend(ptr noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_nand_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.tegra_nand_controller, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !216
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !216
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_nand_irq.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_nand_irq, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !217

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.tegra_nand_controller, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_nand_irq.__UNIQUE_ID_ddebug250, ptr noundef %8, ptr noundef nonnull @.str.75, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool10.not = icmp eq i32 %2, 0
  %9 = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  %or.cond = select i1 %tobool10.not, i1 %tobool11.not, i1 false
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %and14 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %last_read_error = getelementptr inbounds %struct.tegra_nand_controller, ptr %data, i32 0, i32 7
  %10 = ptrtoint ptr %last_read_error to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %last_read_error, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %and18 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %command_complete = getelementptr inbounds %struct.tegra_nand_controller, ptr %data, i32 0, i32 5
  tail call void @complete(ptr noundef %command_complete) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  %and22 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end29_crit_edge, label %do.end27

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %dev28 = getelementptr inbounds %struct.tegra_nand_controller, ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.76) #12
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %if.end21.if.end29_crit_edge
  %and30 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end37_crit_edge, label %do.end35

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %dev36 = getelementptr inbounds %struct.tegra_nand_controller, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.78) #12
  br label %if.end37

if.end37:                                         ; preds = %do.end35, %if.end29.if.end37_crit_edge
  br i1 %tobool11.not, label %if.end37.if.end43_crit_edge, label %if.then40

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr42 = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %6) #9, !srcloc !215
  %dma_complete = getelementptr inbounds %struct.tegra_nand_controller, ptr %data, i32 0, i32 6
  tail call void @complete(ptr noundef %dma_complete) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37.if.end43_crit_edge
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr45 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %2) #9, !srcloc !215
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end43 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_nand_chips_init(ptr noundef %dev, ptr noundef %ctrl) unnamed_addr #2 align 64 {
entry:
  %cs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #9
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %of_get_child_count.exit.thread, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

of_get_child_count.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs) #9
  br label %do.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %child.06.i) #9
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs) #9
  %2 = ptrtoint ptr %cs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cs, align 4, !annotation !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.07.i)
  %cmp.not = icmp eq i32 %num.07.i, 0
  br i1 %cmp.not, label %if.end, label %of_get_child_count.exit.do.end_crit_edge

of_get_child_count.exit.do.end_crit_edge:         ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %of_get_child_count.exit.do.end_crit_edge, %of_get_child_count.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80) #12
  br label %cleanup

if.end:                                           ; preds = %of_get_child_count.exit
  %call1 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #9
  %call2 = tail call i32 @of_property_count_elems_of_size(ptr noundef %call1, ptr noundef nonnull @.str.82, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 1
  br i1 %cmp3.not, label %if.end8, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.84) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %call1, ptr noundef nonnull @.str.82, ptr noundef nonnull %cs, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end14, label %do.end13

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.87, i32 noundef %call.i.i) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %call.i97 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2200, i32 noundef 3520) #9
  %tobool16.not = icmp eq ptr %call.i97, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %3 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cs, align 4
  %cs19 = getelementptr inbounds %struct.tegra_nand_chip, ptr %call.i97, i32 0, i32 6
  %5 = ptrtoint ptr %cs19 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cs19, align 8
  %call20 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.89, i32 noundef 3) #9
  %wp_gpio = getelementptr inbounds %struct.tegra_nand_chip, ptr %call.i97, i32 0, i32 1
  %6 = ptrtoint ptr %wp_gpio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call20, ptr %wp_gpio, align 8
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end29

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call20 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.91, i32 noundef %7) #12
  br label %cleanup

if.end29:                                         ; preds = %if.end18
  %controller31 = getelementptr inbounds %struct.nand_chip, ptr %call.i97, i32 0, i32 32
  %8 = ptrtoint ptr %controller31 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ctrl, ptr %controller31, align 4
  %parent = getelementptr inbounds %struct.mtd_info, ptr %call.i97, i32 0, i32 56, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %parent, align 8
  %owner = getelementptr inbounds %struct.mtd_info, ptr %call.i97, i32 0, i32 55
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %owner, align 4
  %of_node.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i97, i32 0, i32 56, i32 27
  %11 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call1, ptr %of_node.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i97, i32 0, i32 13
  %12 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %nand_set_flash_node.exit, label %if.end29.if.end37_crit_edge

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

nand_set_flash_node.exit:                         ; preds = %if.end29
  %call.i.i98 = call i32 @of_property_read_string(ptr noundef %call1, ptr noundef nonnull @.str.96, ptr noundef %name.i.i) #9
  %14 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %name.i.i, align 8
  %tobool34.not = icmp eq ptr %.pr, null
  br i1 %tobool34.not, label %if.then35, label %nand_set_flash_node.exit.if.end37_crit_edge

nand_set_flash_node.exit.if.end37_crit_edge:      ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then35:                                        ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.73, ptr %name.i.i, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %nand_set_flash_node.exit.if.end37_crit_edge, %if.end29.if.end37_crit_edge
  %options = getelementptr inbounds %struct.nand_chip, ptr %call.i97, i32 0, i32 6
  %16 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1049088, ptr %options, align 8
  %call.i99 = call i32 @nand_scan_with_ids(ptr noundef nonnull %call.i97, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool39.not = icmp eq i32 %call.i99, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %ecc = getelementptr inbounds %struct.tegra_nand_chip, ptr %call.i97, i32 0, i32 2
  %call42 = call i32 @mtd_ooblayout_ecc(ptr noundef nonnull %call.i97, i32 noundef 0, ptr noundef %ecc) #9
  %call43 = call i32 @mtd_device_parse_register(ptr noundef nonnull %call.i97, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end49, label %do.end48

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.94, i32 noundef %call43) #12
  call void @nand_cleanup(ptr noundef nonnull %call.i97) #9
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %chip50 = getelementptr inbounds %struct.tegra_nand_controller, ptr %ctrl, i32 0, i32 9
  %17 = ptrtoint ptr %chip50 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i97, ptr %chip50, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end48, %if.end37.cleanup_crit_edge, %if.then23, %if.end14.cleanup_crit_edge, %do.end13, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ %call.i.i, %do.end13 ], [ %7, %if.then23 ], [ %call43, %do.end48 ], [ 0, %if.end49 ], [ -12, %if.end14.cleanup_crit_edge ], [ %call.i99, %if.end37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_nand_attach_chip(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 10
  %2 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bbt_options, align 8
  %and = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %3, 262144
  %4 = ptrtoint ptr %bbt_options to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %bbt_options, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %5 = ptrtoint ptr %ecc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %ecc, align 8
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 512, ptr %size, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %7 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize, align 4
  %div236 = lshr i32 %8, 9
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %9 = ptrtoint ptr %steps to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div236, ptr %steps, align 4
  %step_size = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 4
  %10 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %step_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %11)
  %cmp.not = icmp eq i32 %11, 512
  br i1 %cmp.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.11, i32 noundef %11) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %14 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tegra_nand_read_page_hwecc, ptr %read_page, align 8
  %write_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %15 = ptrtoint ptr %write_page to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @tegra_nand_write_page_hwecc, ptr %write_page, align 4
  %read_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 16
  %16 = ptrtoint ptr %read_page_raw to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @tegra_nand_read_page_raw, ptr %read_page_raw, align 8
  %write_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 17
  %17 = ptrtoint ptr %write_page_raw to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tegra_nand_write_page_raw, ptr %write_page_raw, align 4
  %read_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 24
  %18 = ptrtoint ptr %read_oob to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @tegra_nand_read_oob, ptr %read_oob, align 8
  %write_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 25
  %19 = ptrtoint ptr %write_oob to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tegra_nand_write_oob, ptr %write_oob, align 4
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %20 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %options, align 8
  %and18 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end11.if.end22_crit_edge, label %if.then20

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %config = getelementptr inbounds %struct.tegra_nand_chip, ptr %chip, i32 0, i32 3
  %22 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %config, align 4
  %or21 = or i32 %23, 2097152
  store i32 %or21, ptr %config, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end11.if.end22_crit_edge
  %algo = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %24 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %algo, align 8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %if.end22.if.end45_crit_edge [
    i32 0, label %if.then25
    i32 2, label %land.lhs.true
  ]

if.end22.if.end45_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %8)
  %cmp27 = icmp ult i32 %8, 2048
  %. = select i1 %cmp27, i32 3, i32 2
  %.str.32..str.31 = select i1 %cmp27, ptr @.str.32, ptr @.str.31
  %27 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %., ptr %algo, align 8
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %8)
  %cmp39 = icmp ult i32 %8, 2048
  br i1 %cmp39, label %do.end43, label %land.lhs.true.if.end45_crit_edge

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

do.end43:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev44 = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.14) #12
  br label %cleanup

if.end45:                                         ; preds = %land.lhs.true.if.end45_crit_edge, %if.then25, %if.end22.if.end45_crit_edge
  %cmp37239 = phi ptr [ @.str.31, %land.lhs.true.if.end45_crit_edge ], [ @.str.32, %if.end22.if.end45_crit_edge ], [ %.str.32..str.31, %if.then25 ]
  %30 = phi i32 [ 2, %land.lhs.true.if.end45_crit_edge ], [ %25, %if.end22.if.end45_crit_edge ], [ %., %if.then25 ]
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %31 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool47.not = icmp eq i32 %32, 0
  br i1 %tobool47.not, label %if.then48, label %if.end45.if.end60_crit_edge

if.end45.if.end60_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then48:                                        ; preds = %if.end45
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %33 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %oobsize, align 4
  %35 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %30, label %if.then48.do.end54_crit_edge [
    i32 3, label %sw.bb.i
    i32 2, label %sw.bb1.i
  ]

if.then48.do.end54_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

sw.bb.i:                                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %21, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %rs_strength.rs_strength_bootable.i = select i1 %tobool.not.i, ptr @rs_strength, ptr @rs_strength_bootable
  %..i = select i1 %tobool.not.i, i32 3, i32 1
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %and3.i = and i32 %21, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %bch_strength.bch_strength_bootable.i = select i1 %tobool4.not.i, ptr @bch_strength, ptr @bch_strength_bootable
  %.13.i = select i1 %tobool4.not.i, i32 4, i32 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i
  %strength.0.i = phi ptr [ %rs_strength.rs_strength_bootable.i, %sw.bb.i ], [ %bch_strength.bch_strength_bootable.i, %sw.bb1.i ]
  %strength_len.0.i = phi i32 [ %..i, %sw.bb.i ], [ %.13.i, %sw.bb1.i ]
  %bits_per_step.0.i = phi i32 [ 18, %sw.bb.i ], [ 13, %sw.bb1.i ]
  %flags.i.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 2, i32 5
  %36 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %strength6.i.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 3
  %sub15.i.i = add i32 %34, -4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.epilog.i
  %i.038.i.i = phi i32 [ 0, %sw.epilog.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = xor i32 %i.038.i.i, -1
  %sub4.i.i = add nsw i32 %strength_len.0.i, %38
  %arrayidx.i.i = getelementptr i32, ptr %strength.0.i, i32 %sub4.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i, align 4
  br label %if.end9.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %arrayidx5.i.i = getelementptr i32, ptr %strength.0.i, i32 %i.038.i.i
  %41 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx5.i.i, align 4
  %43 = ptrtoint ptr %strength6.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %strength6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp7.i.i = icmp ult i32 %42, %44
  br i1 %cmp7.i.i, label %if.else.i.i.for.inc.i.i_crit_edge, label %if.else.i.i.if.end9.i.i_crit_edge

if.else.i.i.if.end9.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i.i

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end9.i.i:                                      ; preds = %if.else.i.i.if.end9.i.i_crit_edge, %if.then.i.i
  %strength_sel.0.i.i = phi i32 [ %40, %if.then.i.i ], [ %42, %if.else.i.i.if.end9.i.i_crit_edge ]
  %mul.i.i = mul i32 %strength_sel.0.i.i, %bits_per_step.0.i
  %sub10.i.i = add i32 %mul.i.i, 7
  %div.i.i = sdiv i32 %sub10.i.i, 8
  %mul12.i.i = mul i32 %div.i.i, %div236
  %sub13.i.i = add i32 %mul12.i.i, -1
  %or.i.i = or i32 %sub13.i.i, 3
  %add14.i.i = add i32 %or.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add14.i.i, i32 %sub15.i.i)
  %cmp16.i.i = icmp slt i32 %add14.i.i, %sub15.i.i
  br i1 %cmp16.i.i, label %tegra_nand_select_strength.exit, label %if.end9.i.i.for.inc.i.i_crit_edge

if.end9.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end9.i.i.for.inc.i.i_crit_edge, %if.else.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.038.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %strength_len.0.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end54_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.do.end54_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

tegra_nand_select_strength.exit:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %strength_sel.0.i.i)
  %cmp50 = icmp slt i32 %strength_sel.0.i.i, 0
  br i1 %cmp50, label %tegra_nand_select_strength.exit.do.end54_crit_edge, label %if.end57

tegra_nand_select_strength.exit.do.end54_crit_edge: ; preds = %tegra_nand_select_strength.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

do.end54:                                         ; preds = %tegra_nand_select_strength.exit.do.end54_crit_edge, %for.inc.i.i.do.end54_crit_edge, %if.then48.do.end54_crit_edge
  %retval.0.i247 = phi i32 [ %strength_sel.0.i.i, %tegra_nand_select_strength.exit.do.end54_crit_edge ], [ -22, %if.then48.do.end54_crit_edge ], [ -22, %for.inc.i.i.do.end54_crit_edge ]
  %dev55 = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev55, align 4
  %strength56 = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 3
  %47 = ptrtoint ptr %strength56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %strength56, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.17, i32 noundef %48) #12
  br label %cleanup

if.end57:                                         ; preds = %tegra_nand_select_strength.exit
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %strength_sel.0.i.i, ptr %strength, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end57, %if.end45.if.end60_crit_edge
  %config_ecc = getelementptr inbounds %struct.tegra_nand_chip, ptr %chip, i32 0, i32 4
  %50 = ptrtoint ptr %config_ecc to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 276824064, ptr %config_ecc, align 8
  %51 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %30, label %do.end113 [
    i32 3, label %sw.bb
    i32 2, label %sw.bb84
  ]

sw.bb:                                            ; preds = %if.end60
  %52 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %strength, align 4
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %54 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @tegra_nand_oob_rs_ops, ptr %ooblayout1.i, align 8
  %55 = ptrtoint ptr %config_ecc to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -260046848, ptr %config_ecc, align 8
  %56 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %53, label %do.end80 [
    i32 4, label %sw.bb.do.end118_crit_edge
    i32 6, label %sw.bb72
    i32 8, label %sw.bb75
  ]

sw.bb.do.end118_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

sw.bb72:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %config_ecc to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -243269632, ptr %config_ecc, align 8
  br label %do.end118

sw.bb75:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %config_ecc to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -226492416, ptr %config_ecc, align 8
  br label %do.end118

do.end80:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %dev81 = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 1
  %59 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev81, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.20, i32 noundef %53) #12
  br label %cleanup

sw.bb84:                                          ; preds = %if.end60
  %61 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %strength, align 4
  %mul87 = mul i32 %62, 13
  %ooblayout1.i237 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %63 = ptrtoint ptr %ooblayout1.i237 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @tegra_nand_oob_bch_ops, ptr %ooblayout1.i237, align 8
  %bch_config = getelementptr inbounds %struct.tegra_nand_chip, ptr %chip, i32 0, i32 5
  %64 = ptrtoint ptr %bch_config to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %bch_config, align 4
  %65 = add i32 %62, -4
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 31)
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %66, label %do.end105 [
    i32 0, label %sw.bb84.do.end118_crit_edge
    i32 2, label %sw.bb93
    i32 5, label %sw.bb96
    i32 6, label %sw.bb99
  ]

sw.bb84.do.end118_crit_edge:                      ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end118

sw.bb93:                                          ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %bch_config to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 17, ptr %bch_config, align 4
  br label %do.end118

sw.bb96:                                          ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %bch_config to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 33, ptr %bch_config, align 4
  br label %do.end118

sw.bb99:                                          ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %bch_config to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 49, ptr %bch_config, align 4
  br label %do.end118

do.end105:                                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #11
  %dev106 = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 1
  %71 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev106, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.20, i32 noundef %62) #12
  br label %cleanup

do.end113:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %dev114 = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 1
  %73 = ptrtoint ptr %dev114 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev114, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.25) #12
  br label %cleanup

do.end118:                                        ; preds = %sw.bb99, %sw.bb96, %sw.bb93, %sw.bb84.do.end118_crit_edge, %sw.bb75, %sw.bb72, %sw.bb.do.end118_crit_edge
  %bits_per_step.0 = phi i32 [ %mul87, %sw.bb99 ], [ %mul87, %sw.bb96 ], [ %mul87, %sw.bb93 ], [ 144, %sw.bb75 ], [ 108, %sw.bb72 ], [ 72, %sw.bb.do.end118_crit_edge ], [ %mul87, %sw.bb84.do.end118_crit_edge ]
  %dev119 = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 1
  %75 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev119, align 4
  %77 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %strength, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %76, ptr noundef nonnull @.str.28, ptr noundef nonnull %cmp37239, i32 noundef %78) #12
  %sub = add i32 %bits_per_step.0, 7
  %div125 = sdiv i32 %sub, 8
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %79 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %div125, ptr %bytes, align 4
  %80 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %writesize, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %81, label %do.end146 [
    i32 256, label %do.end118.sw.epilog149_crit_edge
    i32 512, label %do.end118.sw.epilog149.sink.split_crit_edge
    i32 1024, label %sw.bb134
    i32 2048, label %sw.bb137
    i32 4096, label %sw.bb140
  ]

do.end118.sw.epilog149.sink.split_crit_edge:      ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog149.sink.split

do.end118.sw.epilog149_crit_edge:                 ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog149

sw.bb134:                                         ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog149.sink.split

sw.bb137:                                         ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog149.sink.split

sw.bb140:                                         ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog149.sink.split

do.end146:                                        ; preds = %do.end118
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev119, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.34, i32 noundef %81) #12
  br label %cleanup

sw.epilog149.sink.split:                          ; preds = %sw.bb140, %sw.bb137, %sw.bb134, %do.end118.sw.epilog149.sink.split_crit_edge
  %.sink249 = phi i32 [ 262144, %sw.bb140 ], [ 196608, %sw.bb137 ], [ 131072, %sw.bb134 ], [ 65536, %do.end118.sw.epilog149.sink.split_crit_edge ]
  %config132 = getelementptr inbounds %struct.tegra_nand_chip, ptr %chip, i32 0, i32 3
  %85 = ptrtoint ptr %config132 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %config132, align 4
  %or142 = or i32 %86, %.sink249
  store i32 %or142, ptr %config132, align 4
  br label %sw.epilog149

sw.epilog149:                                     ; preds = %sw.epilog149.sink.split, %do.end118.sw.epilog149_crit_edge
  %config150 = getelementptr inbounds %struct.tegra_nand_chip, ptr %chip, i32 0, i32 3
  %87 = ptrtoint ptr %config150 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %config150, align 4
  %89 = ptrtoint ptr %config_ecc to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %config_ecc, align 8
  %or152 = or i32 %90, %88
  store i32 %or152, ptr %config_ecc, align 8
  %oobsize153 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %91 = ptrtoint ptr %oobsize153 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %oobsize153, align 4
  %sub154 = add i32 %92, 255
  %and155 = and i32 %sub154, 255
  %or157 = or i32 %and155, %88
  store i32 %or157, ptr %config150, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %or157)
  %regs = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 2
  %94 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %95, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %93) #9, !srcloc !215
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog149, %do.end146, %do.end113, %do.end105, %do.end80, %do.end54, %do.end43, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end43 ], [ -22, %do.end113 ], [ -22, %do.end105 ], [ -19, %do.end146 ], [ 0, %sw.epilog149 ], [ -22, %do.end80 ], [ %retval.0.i247, %do.end54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_nand_exec_op(ptr noundef %chip, ptr noundef %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %check_only, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op, align 4
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %2 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i, align 4
  %arrayidx.i = getelementptr %struct.tegra_nand_chip, ptr %chip, i32 0, i32 6, i32 %1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %cur_cs.i = getelementptr inbounds %struct.tegra_nand_controller, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %cur_cs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %cur_cs.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @nand_op_parser_exec_op(ptr noundef %chip, ptr noundef nonnull @tegra_nand_op_parser, ptr noundef %op, i1 noundef zeroext %check_only) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_nand_setup_interface(ptr nocapture noundef readonly %chip, i32 noundef %csline, ptr noundef %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
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
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %csline)
  %cmp = icmp eq i32 %csline, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %clk.i = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %7) #9
  %div.i = udiv i32 %call.i, 1000000
  %sub.i = add nuw nsw i32 %div.i, 999999
  %div1.i = udiv i32 %sub.i, %div.i
  %tAR_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 7
  %8 = ptrtoint ptr %tAR_min.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tAR_min.i, align 4
  %tRR_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 30
  %10 = ptrtoint ptr %tRR_min.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tRR_min.i, align 8
  %tRC_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 22
  %12 = ptrtoint ptr %tRC_min.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tRC_min.i, align 8
  %tCS_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 16
  %14 = ptrtoint ptr %tCS_min.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tCS_min.i, align 8
  %tCH_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 10
  %16 = ptrtoint ptr %tCH_min.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tCH_min.i, align 8
  %tALS_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 6
  %18 = ptrtoint ptr %tALS_min.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tALS_min.i, align 8
  %tALH_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 4
  %20 = ptrtoint ptr %tALH_min.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tALH_min.i, align 8
  %tRP_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 29
  %22 = ptrtoint ptr %tRP_min.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tRP_min.i, align 4
  %tREA_max.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 23
  %24 = ptrtoint ptr %tREA_max.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tREA_max.i, align 4
  %tWB_max.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 32
  %26 = ptrtoint ptr %tWB_max.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tWB_max.i, align 8
  %add75.i = add nsw i32 %div1.i, -1
  %sub76.i = add i32 %27, %add75.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %sub76.i)
  %cmp78.i = icmp ugt i32 %div1.i, %sub76.i
  br i1 %cmp78.i, label %if.end5.cond.end86.i_crit_edge, label %cond.false80.i

if.end5.cond.end86.i_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end86.i

cond.false80.i:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %div77.i = udiv i32 %sub76.i, %div1.i
  %sub85.i = shl i32 %div77.i, 24
  %phi.bo260.i = add i32 %sub85.i, 251658240
  %phi.bo261.i = and i32 %phi.bo260.i, 251658240
  br label %cond.end86.i

cond.end86.i:                                     ; preds = %cond.false80.i, %if.end5.cond.end86.i_crit_edge
  %cond87.i = phi i32 [ %phi.bo261.i, %cond.false80.i ], [ 0, %if.end5.cond.end86.i_crit_edge ]
  %tWHR_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 35
  %28 = ptrtoint ptr %tWHR_min.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tWHR_min.i, align 4
  %sub92.i = add i32 %29, %add75.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %sub92.i)
  %cmp94.i = icmp ugt i32 %div1.i, %sub92.i
  br i1 %cmp94.i, label %cond.end86.i.cond.end102.i_crit_edge, label %cond.false96.i

cond.end86.i.cond.end102.i_crit_edge:             ; preds = %cond.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end102.i

cond.false96.i:                                   ; preds = %cond.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  %div93.i = udiv i32 %sub92.i, %div1.i
  %sub101.i = shl i32 %div93.i, 16
  %phi.bo262.i = add i32 %sub101.i, 983040
  %phi.bo263.i = and i32 %phi.bo262.i, 983040
  br label %cond.end102.i

cond.end102.i:                                    ; preds = %cond.false96.i, %cond.end86.i.cond.end102.i_crit_edge
  %cond103.i = phi i32 [ %phi.bo263.i, %cond.false96.i ], [ 0, %cond.end86.i.cond.end102.i_crit_edge ]
  %tWH_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 34
  %30 = ptrtoint ptr %tWH_min.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tWH_min.i, align 8
  %sub108.i = add i32 %31, %add75.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %sub108.i)
  %cmp110.i = icmp ugt i32 %div1.i, %sub108.i
  br i1 %cmp110.i, label %cond.end102.i.cond.end118.i_crit_edge, label %cond.false112.i

cond.end102.i.cond.end118.i_crit_edge:            ; preds = %cond.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end118.i

cond.false112.i:                                  ; preds = %cond.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  %div109.i = udiv i32 %sub108.i, %div1.i
  %sub117.i = shl i32 %div109.i, 12
  %phi.bo264.i = add i32 %sub117.i, 12288
  %phi.bo265.i = and i32 %phi.bo264.i, 12288
  br label %cond.end118.i

cond.end118.i:                                    ; preds = %cond.false112.i, %cond.end102.i.cond.end118.i_crit_edge
  %cond119.i = phi i32 [ %phi.bo265.i, %cond.false112.i ], [ 0, %cond.end102.i.cond.end118.i_crit_edge ]
  %tWP_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 36
  %32 = ptrtoint ptr %tWP_min.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tWP_min.i, align 8
  %sub124.i = add i32 %33, %add75.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %sub124.i)
  %cmp126.i = icmp ugt i32 %div1.i, %sub124.i
  br i1 %cmp126.i, label %cond.end118.i.cond.end134.i_crit_edge, label %cond.false128.i

cond.end118.i.cond.end134.i_crit_edge:            ; preds = %cond.end118.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end134.i

cond.false128.i:                                  ; preds = %cond.end118.i
  call void @__sanitizer_cov_trace_pc() #11
  %div125.i = udiv i32 %sub124.i, %div1.i
  %sub133.i = shl i32 %div125.i, 8
  %phi.bo266.i = add i32 %sub133.i, 3840
  %phi.bo267.i = and i32 %phi.bo266.i, 3840
  br label %cond.end134.i

cond.end134.i:                                    ; preds = %cond.false128.i, %cond.end118.i.cond.end134.i_crit_edge
  %cond135.i = phi i32 [ %phi.bo267.i, %cond.false128.i ], [ 0, %cond.end118.i.cond.end134.i_crit_edge ]
  %tREH_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 24
  %34 = ptrtoint ptr %tREH_min.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tREH_min.i, align 8
  %sub140.i = add i32 %35, %add75.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %sub140.i)
  %cmp142.i = icmp ugt i32 %div1.i, %sub140.i
  br i1 %cmp142.i, label %cond.end134.i.tegra_nand_setup_timing.exit_crit_edge, label %cond.false144.i

cond.end134.i.tegra_nand_setup_timing.exit_crit_edge: ; preds = %cond.end134.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_nand_setup_timing.exit

cond.false144.i:                                  ; preds = %cond.end134.i
  call void @__sanitizer_cov_trace_pc() #11
  %div141.i = udiv i32 %sub140.i, %div1.i
  %sub149.i = shl nuw nsw i32 %div141.i, 4
  %phi.bo268.i = add nuw nsw i32 %sub149.i, 48
  %phi.bo269.i = and i32 %phi.bo268.i, 48
  br label %tegra_nand_setup_timing.exit

tegra_nand_setup_timing.exit:                     ; preds = %cond.false144.i, %cond.end134.i.tegra_nand_setup_timing.exit_crit_edge
  %cond151.i = phi i32 [ %phi.bo269.i, %cond.false144.i ], [ 0, %cond.end134.i.tegra_nand_setup_timing.exit_crit_edge ]
  %36 = tail call i32 @llvm.umax.i32(i32 %9, i32 %11) #9
  %37 = tail call i32 @llvm.umax.i32(i32 %36, i32 %13) #9
  %sub9.i = add i32 %37, %add75.i
  %div10.i = udiv i32 %sub9.i, %div1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div10.i)
  %cmp11.i = icmp ult i32 %div10.i, 3
  %sub14.i = shl i32 %div10.i, 20
  %phi.bo.i = add i32 %sub14.i, 13631488
  %phi.bo254.i = and i32 %phi.bo.i, 15728640
  %cond16.i = select i1 %cmp11.i, i32 0, i32 %phi.bo254.i
  %38 = tail call i32 @llvm.umax.i32(i32 %15, i32 %17) #9
  %39 = tail call i32 @llvm.umax.i32(i32 %19, i32 %21) #9
  %40 = tail call i32 @llvm.umax.i32(i32 %38, i32 %39) #9
  %sub36.i = add i32 %40, %add75.i
  %div37.i = udiv i32 %sub36.i, %div1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div37.i)
  %cmp38.i = icmp ult i32 %div37.i, 2
  %sub41.i = shl i32 %div37.i, 14
  %phi.bo255.i = add i32 %sub41.i, 32768
  %phi.bo256.i = and i32 %phi.bo255.i, 49152
  %cond43.i = select i1 %cmp38.i, i32 0, i32 %phi.bo256.i
  %41 = tail call i32 @llvm.umax.i32(i32 %23, i32 %25) #9
  %add54.i = add nuw nsw i32 %div1.i, 5999
  %sub55.i = add i32 %add54.i, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %sub55.i)
  %cmp57.i = icmp ugt i32 %div1.i, %sub55.i
  %div56.i = udiv i32 %sub55.i, %div1.i
  %sub60.i = add nuw nsw i32 %div56.i, 15
  %phi.bo257.i = and i32 %sub60.i, 15
  %sub68.i = shl i32 %div56.i, 28
  %phi.bo259.i = add i32 %sub68.i, -268435456
  %42 = or i32 %phi.bo257.i, %phi.bo259.i
  %or73.i = select i1 %cmp57.i, i32 0, i32 %42
  %or46.i = or i32 %cond103.i, %cond87.i
  %or74.i = or i32 %or46.i, %cond119.i
  %or90.i = or i32 %or74.i, %cond135.i
  %or106.i = or i32 %or90.i, %cond151.i
  %or122.i = or i32 %or106.i, %cond16.i
  %or138.i = or i32 %or122.i, %cond43.i
  %or154.i = or i32 %or138.i, %or73.i
  %43 = tail call i32 @llvm.bswap.i32(i32 %or154.i) #9
  %regs.i = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %43) #9, !srcloc !215
  %tADL_min.i = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 5
  %46 = ptrtoint ptr %tADL_min.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tADL_min.i, align 4
  %sub156.i = add i32 %47, %add75.i
  %div157.i = udiv i32 %sub156.i, %div1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div157.i)
  %cmp158.i = icmp ult i32 %div157.i, 3
  %sub161.i = shl i32 %div157.i, 24
  %phi.bo270.i = add i32 %sub161.i, 218103808
  %phi.bo271.i = and i32 %phi.bo270.i, 251658240
  %cond163.i = select i1 %cmp158.i, i32 0, i32 %phi.bo271.i
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr166.i = getelementptr i8, ptr %49, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166.i, i32 %cond163.i) #9, !srcloc !215
  br label %cleanup

cleanup:                                          ; preds = %tegra_nand_setup_timing.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ 0, %tegra_nand_setup_timing.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_nand_read_page_hwecc(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  %fail_sec_flag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fail_sec_flag) #9
  %algo.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %4 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %algo.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %bch_config.i = getelementptr inbounds %struct.tegra_nand_chip, ptr %chip, i32 0, i32 5
  %6 = ptrtoint ptr %bch_config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bch_config.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %regs.i = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #9, !srcloc !215
  br label %tegra_nand_hw_ecc.exit

if.else.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %regs1.i = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %12, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #9, !srcloc !215
  br label %tegra_nand_hw_ecc.exit

tegra_nand_hw_ecc.exit:                           ; preds = %if.else.i, %if.then.i
  %config_ecc.i = getelementptr inbounds %struct.tegra_nand_chip, ptr %chip, i32 0, i32 4
  %13 = ptrtoint ptr %config_ecc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %config_ecc.i, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %regs5.i = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs5.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %15) #9, !srcloc !215
  %call3 = tail call fastcc i32 @tegra_nand_page_xfer(ptr noundef %chip, ptr noundef %chip, ptr noundef %buf, ptr noundef %cond, i32 noundef 0, i32 noundef %page, i1 noundef zeroext true)
  %18 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs5.i, align 4
  %add.ptr2.i280 = getelementptr i8, ptr %19, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i280, i32 0) #9, !srcloc !215
  %config.i = getelementptr inbounds %struct.tegra_nand_chip, ptr %chip, i32 0, i32 3
  %20 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %config.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  %23 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs5.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %22) #9, !srcloc !215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %tegra_nand_hw_ecc.exit.cleanup213_crit_edge

tegra_nand_hw_ecc.exit.cleanup213_crit_edge:      ; preds = %tegra_nand_hw_ecc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup213

if.end:                                           ; preds = %tegra_nand_hw_ecc.exit
  %last_read_error = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %last_read_error to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %last_read_error, align 4, !range !219
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool5.not = icmp eq i8 %26, 0
  br i1 %tobool5.not, label %if.end.cleanup213_crit_edge, label %if.end7

if.end.cleanup213_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup213

if.end7:                                          ; preds = %if.end
  %27 = ptrtoint ptr %last_read_error to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %last_read_error, align 4
  %28 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs5.i, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 212
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !216
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %shr = lshr i32 %31, 24
  %32 = ptrtoint ptr %fail_sec_flag to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shr, ptr %fail_sec_flag, align 4
  %and10 = lshr i32 %31, 8
  %shr11 = and i32 %and10, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %31)
  %tobool12.not = icmp ult i32 %31, 16777216
  br i1 %tobool12.not, label %cond.false204, label %if.then13

if.then13:                                        ; preds = %if.end7
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %33 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %steps, align 4
  %sub14 = sub i32 32, %34
  %shr15 = lshr i32 -1, %sub14
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr15)
  %tobool17.not = icmp eq i32 %shr, %shr15
  br i1 %tobool17.not, label %if.end84, label %cond.false79

cond.false79:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %shr) #9
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  %35 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %failed, align 4
  %add83 = add i32 %36, %call.i
  store i32 %add83, ptr %failed, align 4
  br label %cleanup213

if.end84:                                         ; preds = %if.then13
  %oob_poi.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %37 = ptrtoint ptr %oob_poi.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %oob_poi.i, align 4
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %39 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %oobsize.i, align 4
  %call1.i = tail call fastcc i32 @tegra_nand_page_xfer(ptr noundef %chip, ptr noundef %chip, ptr noundef null, ptr noundef %38, i32 noundef %40, i32 noundef %page, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %if.end84.cleanup213_crit_edge, label %if.end88

if.end84.cleanup213_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup213

if.end88:                                         ; preds = %if.end84
  %41 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %steps, align 4
  %call91 = call i32 @_find_next_bit_be(ptr noundef nonnull %fail_sec_flag, i32 noundef %42, i32 noundef 0) #9
  %43 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call91, i32 %44)
  %cmp94283 = icmp slt i32 %call91, %44
  br i1 %cmp94283, label %for.body.lr.ph, label %if.end88.for.end_crit_edge

if.end88.for.end_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end88
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %ecc99 = getelementptr inbounds %struct.tegra_nand_chip, ptr %chip, i32 0, i32 2
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %ecc_stats115 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %failed114 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end124.for.body_crit_edge, %for.body.lr.ph
  %max_bitflips.0285 = phi i32 [ 0, %for.body.lr.ph ], [ %max_bitflips.1, %if.end124.for.body_crit_edge ]
  %bit.0284 = phi i32 [ %call91, %for.body.lr.ph ], [ %call128, %if.end124.for.body_crit_edge ]
  %45 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size, align 8
  %mul = mul i32 %46, %bit.0284
  %add.ptr97 = getelementptr i8, ptr %buf, i32 %mul
  %47 = ptrtoint ptr %oob_poi.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %oob_poi.i, align 4
  %49 = ptrtoint ptr %ecc99 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ecc99, align 4
  %add.ptr100 = getelementptr i8, ptr %48, i32 %50
  %51 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bytes, align 4
  %mul102 = mul i32 %52, %bit.0284
  %add.ptr103 = getelementptr i8, ptr %add.ptr100, i32 %mul102
  %53 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %strength, align 4
  %call109 = call i32 @nand_check_erased_ecc_chunk(ptr noundef %add.ptr97, i32 noundef %46, ptr noundef %add.ptr103, i32 noundef %52, ptr noundef null, i32 noundef 0, i32 noundef %54) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %if.then112, label %if.else

if.then112:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %failed114 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %failed114, align 4
  %inc = add i32 %56, 1
  store i32 %inc, ptr %failed114, align 4
  br label %if.end124

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %ecc_stats115 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ecc_stats115, align 4
  %add116 = add i32 %58, %call109
  store i32 %add116, ptr %ecc_stats115, align 4
  %59 = call i32 @llvm.smax.i32(i32 %call109, i32 %max_bitflips.0285)
  br label %if.end124

if.end124:                                        ; preds = %if.else, %if.then112
  %max_bitflips.1 = phi i32 [ %max_bitflips.0285, %if.then112 ], [ %59, %if.else ]
  %60 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %steps, align 4
  %add127 = add nsw i32 %bit.0284, 1
  %call128 = call i32 @_find_next_bit_be(ptr noundef nonnull %fail_sec_flag, i32 noundef %61, i32 noundef %add127) #9
  %62 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %steps, align 4
  %cmp94 = icmp slt i32 %call128, %63
  br i1 %cmp94, label %if.end124.for.body_crit_edge, label %if.end124.for.end_crit_edge

if.end124.for.end_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end124.for.body_crit_edge:                     ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end124.for.end_crit_edge, %if.end88.for.end_crit_edge
  %max_bitflips.0.lcssa = phi i32 [ 0, %if.end88.for.end_crit_edge ], [ %max_bitflips.1, %if.end124.for.end_crit_edge ]
  %64 = call i32 @llvm.umax.i32(i32 %shr11, i32 %max_bitflips.0.lcssa)
  br label %cleanup213

cond.false204:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %and138 = lshr i32 %31, 16
  %call.i282 = tail call i32 @__sw_hweight8(i32 noundef %and138) #9
  %mul208 = mul i32 %call.i282, %shr11
  %ecc_stats209 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %65 = ptrtoint ptr %ecc_stats209 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ecc_stats209, align 4
  %add211 = add i32 %66, %mul208
  store i32 %add211, ptr %ecc_stats209, align 4
  br label %cleanup213

cleanup213:                                       ; preds = %cond.false204, %for.end, %if.end84.cleanup213_crit_edge, %cond.false79, %if.end.cleanup213_crit_edge, %tegra_nand_hw_ecc.exit.cleanup213_crit_edge
  %retval.1 = phi i32 [ %shr11, %cond.false204 ], [ %call3, %tegra_nand_hw_ecc.exit.cleanup213_crit_edge ], [ 0, %if.end.cleanup213_crit_edge ], [ %shr11, %cond.false79 ], [ %64, %for.end ], [ %call1.i, %if.end84.cleanup213_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fail_sec_flag) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_nand_write_page_hwecc(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
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
  %algo.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %4 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %algo.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %bch_config.i = getelementptr inbounds %struct.tegra_nand_chip, ptr %chip, i32 0, i32 5
  %6 = ptrtoint ptr %bch_config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bch_config.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %regs.i = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #9, !srcloc !215
  br label %tegra_nand_hw_ecc.exit

if.else.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %regs1.i = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %12, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #9, !srcloc !215
  br label %tegra_nand_hw_ecc.exit

tegra_nand_hw_ecc.exit:                           ; preds = %if.else.i, %if.then.i
  %config_ecc.i = getelementptr inbounds %struct.tegra_nand_chip, ptr %chip, i32 0, i32 4
  %13 = ptrtoint ptr %config_ecc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %config_ecc.i, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %regs5.i = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs5.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %15) #9, !srcloc !215
  %call2 = tail call fastcc i32 @tegra_nand_page_xfer(ptr noundef %chip, ptr noundef %chip, ptr noundef %buf, ptr noundef %cond, i32 noundef 0, i32 noundef %page, i1 noundef zeroext false)
  %18 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs5.i, align 4
  %add.ptr2.i12 = getelementptr i8, ptr %19, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i12, i32 0) #9, !srcloc !215
  %config.i = getelementptr inbounds %struct.tegra_nand_chip, ptr %chip, i32 0, i32 3
  %20 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %config.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  %23 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs5.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %22) #9, !srcloc !215
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_nand_read_page_raw(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %0 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oob_poi, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oobsize, align 4
  %call1 = tail call fastcc i32 @tegra_nand_page_xfer(ptr noundef %chip, ptr noundef %chip, ptr noundef %buf, ptr noundef %cond, i32 noundef %3, i32 noundef %page, i1 noundef zeroext true)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_nand_write_page_raw(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %0 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oob_poi, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oobsize, align 4
  %call1 = tail call fastcc i32 @tegra_nand_page_xfer(ptr noundef %chip, ptr noundef %chip, ptr noundef %buf, ptr noundef %cond, i32 noundef %3, i32 noundef %page, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_nand_read_oob(ptr nocapture noundef readonly %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %0 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oobsize, align 4
  %call1 = tail call fastcc i32 @tegra_nand_page_xfer(ptr noundef %chip, ptr noundef %chip, ptr noundef null, ptr noundef %1, i32 noundef %3, i32 noundef %page, i1 noundef zeroext true)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_nand_write_oob(ptr nocapture noundef readonly %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %0 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oobsize, align 4
  %call1 = tail call fastcc i32 @tegra_nand_page_xfer(ptr noundef %chip, ptr noundef %chip, ptr noundef null, ptr noundef %1, i32 noundef %3, i32 noundef %page, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_nand_page_xfer(ptr nocapture noundef readonly %mtd, ptr nocapture noundef readonly %chip, ptr noundef %buf, ptr noundef %oob_buf, i32 noundef %oob_len, i32 noundef %page, i1 noundef zeroext %read) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %cond = select i1 %read, i32 2, i32 1
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %2 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_cs, align 4
  %arrayidx.i = getelementptr %struct.tegra_nand_chip, ptr %chip, i32 0, i32 6, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %cur_cs.i = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %cur_cs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %cur_cs.i, align 4
  %regs = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 32
  br i1 %read, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !215
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %10, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 805306368) #9, !srcloc !215
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2147483648) #9, !srcloc !215
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr7 = getelementptr i8, ptr %12, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 268435456) #9, !srcloc !215
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %shl = shl i32 %page, 16
  %tobool8.not = icmp eq ptr %buf, null
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %13 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %writesize, align 4
  %or = or i32 %14, %shl
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %addr1.0 = phi i32 [ %shl, %if.end.if.end10_crit_edge ], [ %or, %if.then9 ]
  %15 = tail call i32 @llvm.bswap.i32(i32 %addr1.0)
  %regs11 = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs11, align 4
  %add.ptr12 = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %15) #9, !srcloc !215
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %18 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %options, align 8
  %and = and i32 %19, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end10.if.end20_crit_edge, label %if.then14

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %shr = ashr i32 %page, 16
  %20 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %21 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs11, align 4
  %add.ptr16 = getelementptr i8, ptr %22, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %20) #9, !srcloc !215
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end10.if.end20_crit_edge
  %cmd.0 = phi i32 [ 1644167172, %if.then14 ], [ 1644167171, %if.end10.if.end20_crit_edge ]
  br i1 %tobool8.not, label %if.end20.if.end36_crit_edge, label %if.then22

if.end20.if.end36_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then22:                                        ; preds = %if.end20
  %dev = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %writesize23 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %25 = ptrtoint ptr %writesize23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %writesize23, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %buf) #9
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.then22
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !220

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %24) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %24, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %32, i32 noundef -1) #9
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %if.then22
  tail call void @debug_dma_map_single(ptr noundef %24, ptr noundef nonnull %buf, i32 noundef %26) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %33 = load ptr, ptr @mem_map, align 4
  %34 = ptrtoint ptr %buf to i32
  %sub.i = add i32 %34, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %33, i32 %shr.i
  %and.i = and i32 %34, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %24, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %26, i32 noundef %cond, i32 noundef 0) #9
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %36, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end30

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.36) #12
  br label %cleanup

if.end30:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %writesize23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %writesize23, align 4
  %sub = add i32 %40, -1
  %41 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %42 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs11, align 4
  %add.ptr33 = getelementptr i8, ptr %43, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %41) #9, !srcloc !215
  %44 = tail call i32 @llvm.bswap.i32(i32 %call41.i)
  %45 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs11, align 4
  %add.ptr35 = getelementptr i8, ptr %46, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %44) #9, !srcloc !215
  br label %if.end36

if.end36:                                         ; preds = %if.end30, %if.end20.if.end36_crit_edge
  %dma_addr.0 = phi i32 [ %call41.i, %if.end30 ], [ 0, %if.end20.if.end36_crit_edge ]
  %tobool37.not = icmp eq ptr %oob_buf, null
  br i1 %tobool37.not, label %if.end36.if.end55_crit_edge, label %if.then38

if.end36.if.end55_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then38:                                        ; preds = %if.end36
  %dev39 = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 1
  %47 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev39, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %49 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %oobsize, align 4
  %call.i200 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %oob_buf) #9
  br i1 %call.i200, label %land.rhs.i202, label %dma_map_single_attrs.exit217

land.rhs.i202:                                    ; preds = %if.then38
  %.b1.i201 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i201, label %land.rhs.i202.dma_map_single_attrs.exit217.thread_crit_edge, label %if.then.i206, !prof !220

land.rhs.i202.dma_map_single_attrs.exit217.thread_crit_edge: ; preds = %land.rhs.i202
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit217.thread

if.then.i206:                                     ; preds = %land.rhs.i202
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i203 = tail call ptr @dev_driver_string(ptr noundef %48) #9
  %init_name.i.i204 = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 3
  %51 = ptrtoint ptr %init_name.i.i204 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i.i204, align 8
  %tobool.not.i.i205 = icmp eq ptr %52, null
  br i1 %tobool.not.i.i205, label %if.end.i.i207, label %if.then.i206.dev_name.exit.i209_crit_edge

if.then.i206.dev_name.exit.i209_crit_edge:        ; preds = %if.then.i206
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i209

if.end.i.i207:                                    ; preds = %if.then.i206
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %48, align 4
  br label %dev_name.exit.i209

dev_name.exit.i209:                               ; preds = %if.end.i.i207, %if.then.i206.dev_name.exit.i209_crit_edge
  %retval.0.i.i208 = phi ptr [ %54, %if.end.i.i207 ], [ %52, %if.then.i206.dev_name.exit.i209_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.46, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef %call16.i203, ptr noundef %retval.0.i.i208) #9
  br label %dma_map_single_attrs.exit217.thread

dma_map_single_attrs.exit217.thread:              ; preds = %dev_name.exit.i209, %land.rhs.i202.dma_map_single_attrs.exit217.thread_crit_edge
  %55 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev39, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %56, i32 noundef -1) #9
  br label %do.end47

dma_map_single_attrs.exit217:                     ; preds = %if.then38
  tail call void @debug_dma_map_single(ptr noundef %48, ptr noundef nonnull %oob_buf, i32 noundef %50) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %57 = load ptr, ptr @mem_map, align 4
  %58 = ptrtoint ptr %oob_buf to i32
  %sub.i210 = add i32 %58, 1073741824
  %shr.i211 = lshr i32 %sub.i210, 12
  %add.ptr.i212 = getelementptr %struct.page, ptr %57, i32 %shr.i211
  %and.i213 = and i32 %58, 4095
  %call41.i214 = tail call i32 @dma_map_page_attrs(ptr noundef %48, ptr noundef %add.ptr.i212, i32 noundef %and.i213, i32 noundef %50, i32 noundef %cond, i32 noundef 0) #9
  %59 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev39, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %60, i32 noundef %call41.i214) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i214)
  %cmp.i218 = icmp eq i32 %call41.i214, -1
  br i1 %cmp.i218, label %dma_map_single_attrs.exit217.do.end47_crit_edge, label %if.end49

dma_map_single_attrs.exit217.do.end47_crit_edge:  ; preds = %dma_map_single_attrs.exit217
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

do.end47:                                         ; preds = %dma_map_single_attrs.exit217.do.end47_crit_edge, %dma_map_single_attrs.exit217.thread
  %61 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.36) #12
  br label %err_unmap_dma_page

if.end49:                                         ; preds = %dma_map_single_attrs.exit217
  call void @__sanitizer_cov_trace_pc() #11
  %sub50 = add i32 %oob_len, -1
  %63 = tail call i32 @llvm.bswap.i32(i32 %sub50)
  %64 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs11, align 4
  %add.ptr52 = getelementptr i8, ptr %65, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %63) #9, !srcloc !215
  %66 = tail call i32 @llvm.bswap.i32(i32 %call41.i214)
  %67 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs11, align 4
  %add.ptr54 = getelementptr i8, ptr %68, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %66) #9, !srcloc !215
  br label %if.end55

if.end55:                                         ; preds = %if.end49, %if.end36.if.end55_crit_edge
  %dma_addr_oob.0 = phi i32 [ %call41.i214, %if.end49 ], [ 0, %if.end36.if.end55_crit_edge ]
  %spec.select = select i1 %tobool8.not, i32 -1257242624, i32 -1257242620
  %or62 = or i32 %spec.select, 2
  %dma_ctrl.1 = select i1 %tobool37.not, i32 %spec.select, i32 %or62
  %dma_ctrl.2.v = select i1 %read, i32 134217728, i32 1073741824
  %dma_ctrl.2 = or i32 %dma_ctrl.2.v, %dma_ctrl.1
  %69 = tail call i32 @llvm.bswap.i32(i32 %dma_ctrl.2)
  %70 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs11, align 4
  %add.ptr71 = getelementptr i8, ptr %71, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %69) #9, !srcloc !215
  %72 = ptrtoint ptr %cur_cs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cur_cs.i, align 4
  %and73 = and i32 %73, 7
  %add = or i32 %and73, 8
  %shl74 = shl nuw i32 1, %add
  %or75 = or i32 %shl74, %cmd.0
  %cmd.1.v = select i1 %tobool8.not, i32 -2139029504, i32 -2138505216
  %cmd.1 = or i32 %or75, %cmd.1.v
  %or83 = or i32 %cmd.1, 262144
  %cmd.2 = select i1 %tobool37.not, i32 %cmd.1, i32 %or83
  %cmd.3.v = select i1 %read, i32 67108864, i32 150994944
  %cmd.3 = or i32 %cmd.2, %cmd.3.v
  %74 = tail call i32 @llvm.bswap.i32(i32 %cmd.3)
  %75 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #9, !srcloc !215
  %command_complete = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 5
  %call94 = tail call i32 @wait_for_completion_timeout(ptr noundef %command_complete, i32 noundef 50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %do.end99, label %if.end101

do.end99:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %dev100 = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 1
  %77 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev100, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.41) #12
  tail call fastcc void @tegra_nand_dump_reg(ptr noundef %1)
  %irq.i = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 3
  %79 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %80) #9
  %81 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs11, align 4
  %add.ptr.i220 = getelementptr i8, ptr %82, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i220, i32 0) #9, !srcloc !215
  %83 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 0) #9, !srcloc !215
  %85 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs11, align 4
  %add.ptr4.i = getelementptr i8, ptr %86, i32 8
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #9, !srcloc !216
  %88 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs11, align 4
  %add.ptr6.i = getelementptr i8, ptr %89, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %87) #9, !srcloc !215
  %90 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs11, align 4
  %add.ptr9.i = getelementptr i8, ptr %91, i32 48
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #9, !srcloc !216
  %93 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs11, align 4
  %add.ptr13.i = getelementptr i8, ptr %94, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %92) #9, !srcloc !215
  %95 = ptrtoint ptr %command_complete to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %command_complete, align 4
  %dma_complete.i = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 6
  br label %err_unmap_dma.sink.split

if.end101:                                        ; preds = %if.end55
  %dma_complete = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 6
  %call103 = tail call i32 @wait_for_completion_timeout(ptr noundef %dma_complete, i32 noundef 50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %do.end108, label %if.end101.err_unmap_dma_crit_edge

if.end101.err_unmap_dma_crit_edge:                ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unmap_dma

do.end108:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  %dev109 = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 1
  %96 = ptrtoint ptr %dev109 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev109, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.44) #12
  tail call fastcc void @tegra_nand_dump_reg(ptr noundef %1)
  %irq.i221 = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 3
  %98 = ptrtoint ptr %irq.i221 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %irq.i221, align 4
  tail call void @disable_irq(i32 noundef %99) #9
  %100 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs11, align 4
  %add.ptr.i223 = getelementptr i8, ptr %101, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i223, i32 0) #9, !srcloc !215
  %102 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 0) #9, !srcloc !215
  %104 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs11, align 4
  %add.ptr4.i224 = getelementptr i8, ptr %105, i32 8
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i224) #9, !srcloc !216
  %107 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs11, align 4
  %add.ptr6.i225 = getelementptr i8, ptr %108, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i225, i32 %106) #9, !srcloc !215
  %109 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs11, align 4
  %add.ptr9.i226 = getelementptr i8, ptr %110, i32 48
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i226) #9, !srcloc !216
  %112 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs11, align 4
  %add.ptr13.i227 = getelementptr i8, ptr %113, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i227, i32 %111) #9, !srcloc !215
  %114 = ptrtoint ptr %command_complete to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %command_complete, align 4
  br label %err_unmap_dma.sink.split

err_unmap_dma.sink.split:                         ; preds = %do.end108, %do.end99
  %dma_complete.sink = phi ptr [ %dma_complete, %do.end108 ], [ %dma_complete.i, %do.end99 ]
  %irq.i221.sink = phi ptr [ %irq.i221, %do.end108 ], [ %irq.i, %do.end99 ]
  %115 = ptrtoint ptr %dma_complete.sink to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %dma_complete.sink, align 4
  %116 = ptrtoint ptr %irq.i221.sink to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %irq.i221.sink, align 4
  tail call void @enable_irq(i32 noundef %117) #9
  br label %err_unmap_dma

err_unmap_dma:                                    ; preds = %err_unmap_dma.sink.split, %if.end101.err_unmap_dma_crit_edge
  %ret.0 = phi i32 [ 0, %if.end101.err_unmap_dma_crit_edge ], [ -110, %err_unmap_dma.sink.split ]
  br i1 %tobool37.not, label %err_unmap_dma.err_unmap_dma_page_crit_edge, label %if.then112

err_unmap_dma.err_unmap_dma_page_crit_edge:       ; preds = %err_unmap_dma
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unmap_dma_page

if.then112:                                       ; preds = %err_unmap_dma
  call void @__sanitizer_cov_trace_pc() #11
  %dev113 = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 1
  %118 = ptrtoint ptr %dev113 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev113, align 4
  %oobsize114 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %120 = ptrtoint ptr %oobsize114 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %oobsize114, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %119, i32 noundef %dma_addr_oob.0, i32 noundef %121, i32 noundef %cond, i32 noundef 0) #9
  br label %err_unmap_dma_page

err_unmap_dma_page:                               ; preds = %if.then112, %err_unmap_dma.err_unmap_dma_page_crit_edge, %do.end47
  %ret.1 = phi i32 [ -22, %do.end47 ], [ %ret.0, %if.then112 ], [ %ret.0, %err_unmap_dma.err_unmap_dma_page_crit_edge ]
  br i1 %tobool8.not, label %err_unmap_dma_page.cleanup_crit_edge, label %if.then117

err_unmap_dma_page.cleanup_crit_edge:             ; preds = %err_unmap_dma_page
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then117:                                       ; preds = %err_unmap_dma_page
  call void @__sanitizer_cov_trace_pc() #11
  %dev118 = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 1
  %122 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev118, align 4
  %writesize119 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %124 = ptrtoint ptr %writesize119 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %writesize119, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %123, i32 noundef %dma_addr.0, i32 noundef %125, i32 noundef %cond, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then117, %err_unmap_dma_page.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.1, %if.then117 ], [ %ret.1, %err_unmap_dma_page.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_nand_dump_reg(ptr nocapture noundef readonly %ctrl) unnamed_addr #2 align 64 {
for.body.peel.next63:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.tegra_nand_controller, ptr %ctrl, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.48) #12
  %regs = getelementptr inbounds %struct.tegra_nand_controller, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !216
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.53, i32 noundef %5) #12
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr.peel19 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.peel19) #9, !srcloc !216
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.54, i32 noundef %11) #12
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr.peel29 = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.peel29) #9, !srcloc !216
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.55, i32 noundef %17) #12
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr.peel39 = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.peel39) #9, !srcloc !216
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.56, i32 noundef %23) #12
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr.peel49 = getelementptr i8, ptr %27, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.peel49) #9, !srcloc !216
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.57, i32 noundef %29) #12
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %add.ptr.peel59 = getelementptr i8, ptr %33, i32 20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.peel59) #9, !srcloc !216
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.58, i32 noundef %35) #12
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 28
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !216
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.59, i32 noundef %41) #12
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr.1 = getelementptr i8, ptr %45, i32 32
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #9, !srcloc !216
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.60, i32 noundef %47) #12
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %add.ptr.2 = getelementptr i8, ptr %51, i32 36
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #9, !srcloc !216
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.61, i32 noundef %53) #12
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr.3 = getelementptr i8, ptr %57, i32 40
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3) #9, !srcloc !216
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.62, i32 noundef %59) #12
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  %add.ptr.4 = getelementptr i8, ptr %63, i32 44
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4) #9, !srcloc !216
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.63, i32 noundef %65) #12
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  %add.ptr.5 = getelementptr i8, ptr %69, i32 48
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5) #9, !srcloc !216
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.64, i32 noundef %71) #12
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 4
  %add.ptr.6 = getelementptr i8, ptr %75, i32 52
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6) #9, !srcloc !216
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.65, i32 noundef %77) #12
  %80 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs, align 4
  %add.ptr.7 = getelementptr i8, ptr %81, i32 56
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7) #9, !srcloc !216
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %84 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.66, i32 noundef %83) #12
  %86 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs, align 4
  %add.ptr.8 = getelementptr i8, ptr %87, i32 60
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.8) #9, !srcloc !216
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.67, i32 noundef %89) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_nand_ooblayout_rs_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %cmp = icmp sgt i32 %section, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %strength = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 7
  %0 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %strength, align 4
  %mul = mul i32 %1, 18
  %sub = add i32 %mul, 7
  %div = sdiv i32 %sub, 8
  %2 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %oobregion, align 4
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %3 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %steps, align 4
  %mul2 = mul i32 %div, %4
  %sub3 = add i32 %mul2, -1
  %or = or i32 %sub3, 3
  %add4 = add i32 %or, 1
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add4, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_nand_ooblayout_no_free(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef readnone %oobregion) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -34
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_nand_ooblayout_bch_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %cmp = icmp sgt i32 %section, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %strength = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 7
  %0 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %strength, align 4
  %mul = mul i32 %1, 13
  %sub = add i32 %mul, 7
  %div = sdiv i32 %sub, 8
  %2 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %oobregion, align 4
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %3 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %steps, align 4
  %mul2 = mul i32 %div, %4
  %sub3 = add i32 %mul2, -1
  %or = or i32 %sub3, 3
  %add4 = add i32 %or, 1
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add4, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_op_parser_exec_op(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_nand_cmd(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg)
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4
  %ninstrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 2
  %3 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp183.not = icmp eq i32 %4, 0
  br i1 %cmp183.not, label %entry.for.end76_crit_edge, label %for.body.lr.ph

entry.for.end76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end76

for.body.lr.ph:                                   ; preds = %entry
  %instrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  %regs70 = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %instr_data_in.0190 = phi ptr [ null, %for.body.lr.ph ], [ %instr_data_in.1, %sw.epilog.for.body_crit_edge ]
  %cmd.0189 = phi i32 [ 0, %for.body.lr.ph ], [ %cmd.2, %sw.epilog.for.body_crit_edge ]
  %first_cmd.0.off0188 = phi i1 [ true, %for.body.lr.ph ], [ %first_cmd.1.off0, %sw.epilog.for.body_crit_edge ]
  %offset.0187 = phi i32 [ 0, %for.body.lr.ph ], [ %offset.1, %sw.epilog.for.body_crit_edge ]
  %size.0186 = phi i32 [ 0, %for.body.lr.ph ], [ %size.1, %sw.epilog.for.body_crit_edge ]
  %op_id.0184 = phi i32 [ 0, %for.body.lr.ph ], [ %inc75, %sw.epilog.for.body_crit_edge ]
  %5 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %6, i32 %op_id.0184
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %8, label %for.body.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb48
    i32 3, label %sw.bb58
    i32 4, label %sw.bb72
  ]

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  br i1 %first_cmd.0.off0188, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %cmd.0189, 1073741824
  %ctx = getelementptr %struct.nand_op_instr, ptr %6, i32 %op_id.0184, i32 1
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctx, align 4
  %conv = zext i8 %11 to i32
  %12 = shl nuw i32 %conv, 24
  %13 = ptrtoint ptr %regs70 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs70, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #9, !srcloc !215
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %or1 = or i32 %cmd.0189, 33554432
  %ctx2 = getelementptr %struct.nand_op_instr, ptr %6, i32 %op_id.0184, i32 1
  %15 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ctx2, align 4
  %conv4 = zext i8 %16 to i32
  %17 = shl nuw i32 %conv4, 24
  %18 = ptrtoint ptr %regs70 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs70, align 4
  %add.ptr6 = getelementptr i8, ptr %19, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %17) #9, !srcloc !215
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.body
  %call8 = tail call i32 @nand_subop_get_addr_start_off(ptr noundef %subop, i32 noundef %op_id.0184) #9
  %call9 = tail call i32 @nand_subop_get_num_addr_cyc(ptr noundef %subop, i32 noundef %op_id.0184) #9
  %addrs11 = getelementptr %struct.nand_op_instr, ptr %6, i32 %op_id.0184, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %addrs11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addrs11, align 4
  %arrayidx12 = getelementptr i8, ptr %21, i32 %call8
  %sub = add i32 %call9, 15
  %and = and i32 %sub, 15
  %or13 = or i32 %cmd.0189, %and
  %or14 = or i32 %or13, 536870912
  %22 = tail call i32 @llvm.umin.i32(i32 %call9, i32 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp18172.not = icmp eq i32 %22, 0
  br i1 %cmp18172.not, label %sw.bb7.for.end_crit_edge, label %for.body20.preheader

sw.bb7.for.end_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body20.preheader:                             ; preds = %sw.bb7
  %23 = add i32 %call8, %22
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx12, align 1
  %conv21 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %exitcond.not = icmp eq i32 %22, 1
  br i1 %exitcond.not, label %for.body20.preheader.for.end.loopexit_crit_edge, label %for.body20.1

for.body20.preheader.for.end.loopexit_crit_edge:  ; preds = %for.body20.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.loopexit

for.body20.1:                                     ; preds = %for.body20.preheader
  %incdec.ptr = getelementptr i8, ptr %arrayidx12, i32 1
  %26 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %incdec.ptr, align 1
  %conv21.1 = zext i8 %27 to i32
  %shl22.1 = shl nuw nsw i32 %conv21.1, 8
  %or23.1 = or i32 %shl22.1, %conv21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %exitcond.not.1 = icmp eq i32 %22, 2
  br i1 %exitcond.not.1, label %for.body20.1.for.end.loopexit_crit_edge, label %for.body20.2

for.body20.1.for.end.loopexit_crit_edge:          ; preds = %for.body20.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.loopexit

for.body20.2:                                     ; preds = %for.body20.1
  %incdec.ptr.1 = getelementptr i8, ptr %incdec.ptr, i32 1
  %28 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.1, align 1
  %conv21.2 = zext i8 %29 to i32
  %shl22.2 = shl nuw nsw i32 %conv21.2, 16
  %or23.2 = or i32 %shl22.2, %or23.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %exitcond.not.2 = icmp eq i32 %22, 3
  br i1 %exitcond.not.2, label %for.body20.2.for.end.loopexit_crit_edge, label %for.body20.3

for.body20.2.for.end.loopexit_crit_edge:          ; preds = %for.body20.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.loopexit

for.body20.3:                                     ; preds = %for.body20.2
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr.2 = getelementptr i8, ptr %incdec.ptr.1, i32 1
  %30 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr.2, align 1
  %conv21.3 = zext i8 %31 to i32
  %shl22.3 = shl nuw i32 %conv21.3, 24
  %or23.3 = or i32 %shl22.3, %or23.2
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body20.3, %for.body20.2.for.end.loopexit_crit_edge, %for.body20.1.for.end.loopexit_crit_edge, %for.body20.preheader.for.end.loopexit_crit_edge
  %or23.lcssa = phi i32 [ %conv21, %for.body20.preheader.for.end.loopexit_crit_edge ], [ %or23.1, %for.body20.1.for.end.loopexit_crit_edge ], [ %or23.2, %for.body20.2.for.end.loopexit_crit_edge ], [ %or23.3, %for.body20.3 ]
  %uglygep = getelementptr i8, ptr %21, i32 %23
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %sw.bb7.for.end_crit_edge
  %addrs.0.lcssa = phi ptr [ %arrayidx12, %sw.bb7.for.end_crit_edge ], [ %uglygep, %for.end.loopexit ]
  %addr1.0.lcssa = phi i32 [ 0, %sw.bb7.for.end_crit_edge ], [ %or23.lcssa, %for.end.loopexit ]
  %sub24 = sub i32 %call9, %22
  %32 = tail call i32 @llvm.umin.i32(i32 %sub24, i32 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp33178.not = icmp eq i32 %32, 0
  br i1 %cmp33178.not, label %for.end.for.end43_crit_edge, label %for.body35

for.end.for.end43_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end43

for.body35:                                       ; preds = %for.end
  %33 = ptrtoint ptr %addrs.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %addrs.0.lcssa, align 1
  %conv37 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %exitcond195.not = icmp eq i32 %32, 1
  br i1 %exitcond195.not, label %for.body35.for.end43_crit_edge, label %for.body35.1

for.body35.for.end43_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end43

for.body35.1:                                     ; preds = %for.body35
  %incdec.ptr36 = getelementptr i8, ptr %addrs.0.lcssa, i32 1
  %35 = ptrtoint ptr %incdec.ptr36 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %incdec.ptr36, align 1
  %conv37.1 = zext i8 %36 to i32
  %shl39.1 = shl nuw nsw i32 %conv37.1, 8
  %or40.1 = or i32 %shl39.1, %conv37
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %exitcond195.not.1 = icmp eq i32 %32, 2
  br i1 %exitcond195.not.1, label %for.body35.1.for.end43_crit_edge, label %for.body35.2

for.body35.1.for.end43_crit_edge:                 ; preds = %for.body35.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end43

for.body35.2:                                     ; preds = %for.body35.1
  %incdec.ptr36.1 = getelementptr i8, ptr %addrs.0.lcssa, i32 2
  %37 = ptrtoint ptr %incdec.ptr36.1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr36.1, align 1
  %conv37.2 = zext i8 %38 to i32
  %shl39.2 = shl nuw nsw i32 %conv37.2, 16
  %or40.2 = or i32 %shl39.2, %or40.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %exitcond195.not.2 = icmp eq i32 %32, 3
  br i1 %exitcond195.not.2, label %for.body35.2.for.end43_crit_edge, label %for.body35.3

for.body35.2.for.end43_crit_edge:                 ; preds = %for.body35.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end43

for.body35.3:                                     ; preds = %for.body35.2
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr36.2 = getelementptr i8, ptr %addrs.0.lcssa, i32 3
  %39 = ptrtoint ptr %incdec.ptr36.2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr36.2, align 1
  %conv37.3 = zext i8 %40 to i32
  %shl39.3 = shl nuw i32 %conv37.3, 24
  %or40.3 = or i32 %shl39.3, %or40.2
  br label %for.end43

for.end43:                                        ; preds = %for.body35.3, %for.body35.2.for.end43_crit_edge, %for.body35.1.for.end43_crit_edge, %for.body35.for.end43_crit_edge, %for.end.for.end43_crit_edge
  %addr2.0.lcssa = phi i32 [ 0, %for.end.for.end43_crit_edge ], [ %conv37, %for.body35.for.end43_crit_edge ], [ %or40.1, %for.body35.1.for.end43_crit_edge ], [ %or40.2, %for.body35.2.for.end43_crit_edge ], [ %or40.3, %for.body35.3 ]
  %41 = tail call i32 @llvm.bswap.i32(i32 %addr1.0.lcssa)
  %42 = ptrtoint ptr %regs70 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs70, align 4
  %add.ptr45 = getelementptr i8, ptr %43, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %41) #9, !srcloc !215
  %44 = tail call i32 @llvm.bswap.i32(i32 %addr2.0.lcssa)
  %45 = ptrtoint ptr %regs70 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs70, align 4
  %add.ptr47 = getelementptr i8, ptr %46, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %44) #9, !srcloc !215
  br label %sw.epilog

sw.bb48:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = tail call i32 @nand_subop_get_data_len(ptr noundef %subop, i32 noundef %op_id.0184) #9
  %call50 = tail call i32 @nand_subop_get_data_start_off(ptr noundef %subop, i32 noundef %op_id.0184) #9
  %sub51 = shl i32 %call49, 20
  %and52 = add i32 %sub51, 15728640
  %shl53 = and i32 %and52, 15728640
  %or56 = or i32 %cmd.0189, %shl53
  %or57 = or i32 %or56, 336068608
  br label %sw.epilog

sw.bb58:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call59 = tail call i32 @nand_subop_get_data_len(ptr noundef %subop, i32 noundef %op_id.0184) #9
  %call60 = tail call i32 @nand_subop_get_data_start_off(ptr noundef %subop, i32 noundef %op_id.0184) #9
  %sub61 = shl i32 %call59, 20
  %and62 = add i32 %sub61, 15728640
  %shl63 = and i32 %and62, 15728640
  %or66 = or i32 %cmd.0189, %shl63
  %or67 = or i32 %or66, 403177472
  %buf = getelementptr %struct.nand_op_instr, ptr %6, i32 %op_id.0184, i32 1, i32 0, i32 1
  %47 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buf, align 4
  %add.ptr69 = getelementptr i8, ptr %48, i32 %call60
  %49 = call ptr @memcpy(ptr %reg, ptr %add.ptr69, i32 %call59)
  %50 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %50)
  %reg.0.reg.0.reg.0. = load i32, ptr %reg, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %reg.0.reg.0.reg.0.)
  %52 = ptrtoint ptr %regs70 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs70, align 4
  %add.ptr71 = getelementptr i8, ptr %53, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %51) #9, !srcloc !215
  br label %sw.epilog

sw.bb72:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %or73 = or i32 %cmd.0189, 65536
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb72, %sw.bb58, %sw.bb48, %for.end43, %if.else, %if.then, %for.body.sw.epilog_crit_edge
  %size.1 = phi i32 [ %size.0186, %for.body.sw.epilog_crit_edge ], [ %size.0186, %sw.bb72 ], [ %call59, %sw.bb58 ], [ %call49, %sw.bb48 ], [ %size.0186, %for.end43 ], [ %size.0186, %if.else ], [ %size.0186, %if.then ]
  %offset.1 = phi i32 [ %offset.0187, %for.body.sw.epilog_crit_edge ], [ %offset.0187, %sw.bb72 ], [ %call60, %sw.bb58 ], [ %call50, %sw.bb48 ], [ %call8, %for.end43 ], [ %offset.0187, %if.else ], [ %offset.0187, %if.then ]
  %first_cmd.1.off0 = phi i1 [ %first_cmd.0.off0188, %for.body.sw.epilog_crit_edge ], [ %first_cmd.0.off0188, %sw.bb72 ], [ %first_cmd.0.off0188, %sw.bb58 ], [ %first_cmd.0.off0188, %sw.bb48 ], [ %first_cmd.0.off0188, %for.end43 ], [ false, %if.else ], [ false, %if.then ]
  %cmd.2 = phi i32 [ %cmd.0189, %for.body.sw.epilog_crit_edge ], [ %or73, %sw.bb72 ], [ %or67, %sw.bb58 ], [ %or57, %sw.bb48 ], [ %or14, %for.end43 ], [ %or1, %if.else ], [ %or, %if.then ]
  %instr_data_in.1 = phi ptr [ %instr_data_in.0190, %for.body.sw.epilog_crit_edge ], [ %instr_data_in.0190, %sw.bb72 ], [ %instr_data_in.0190, %sw.bb58 ], [ %arrayidx, %sw.bb48 ], [ %instr_data_in.0190, %for.end43 ], [ %instr_data_in.0190, %if.else ], [ %instr_data_in.0190, %if.then ]
  %inc75 = add nuw i32 %op_id.0184, 1
  %54 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc75, %55
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %sw.epilog.for.end76_crit_edge

sw.epilog.for.end76_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end76

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end76:                                        ; preds = %sw.epilog.for.end76_crit_edge, %entry.for.end76_crit_edge
  %size.0.lcssa = phi i32 [ 0, %entry.for.end76_crit_edge ], [ %size.1, %sw.epilog.for.end76_crit_edge ]
  %offset.0.lcssa = phi i32 [ 0, %entry.for.end76_crit_edge ], [ %offset.1, %sw.epilog.for.end76_crit_edge ]
  %cmd.0.lcssa = phi i32 [ 0, %entry.for.end76_crit_edge ], [ %cmd.2, %sw.epilog.for.end76_crit_edge ]
  %instr_data_in.0.lcssa = phi ptr [ null, %entry.for.end76_crit_edge ], [ %instr_data_in.1, %sw.epilog.for.end76_crit_edge ]
  %cur_cs = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 8
  %56 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cur_cs, align 4
  %and77 = and i32 %57, 7
  %add = or i32 %and77, 8
  %shl78 = shl nuw i32 1, %add
  %or79 = or i32 %shl78, %cmd.0.lcssa
  %or80 = or i32 %or79, -2147483648
  %58 = tail call i32 @llvm.bswap.i32(i32 %or80)
  %regs81 = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 2
  %59 = ptrtoint ptr %regs81 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs81, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #9, !srcloc !215
  %command_complete = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 5
  %call84 = tail call i32 @wait_for_completion_timeout(ptr noundef %command_complete, i32 noundef 50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %do.end, label %if.end87

do.end:                                           ; preds = %for.end76
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.41) #12
  tail call fastcc void @tegra_nand_dump_reg(ptr noundef %1)
  %irq.i = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 3
  %63 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %64) #9
  %65 = ptrtoint ptr %regs81 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs81, align 4
  %add.ptr.i = getelementptr i8, ptr %66, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !215
  %67 = ptrtoint ptr %regs81 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs81, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 0) #9, !srcloc !215
  %69 = ptrtoint ptr %regs81 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs81, align 4
  %add.ptr4.i = getelementptr i8, ptr %70, i32 8
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #9, !srcloc !216
  %72 = ptrtoint ptr %regs81 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs81, align 4
  %add.ptr6.i = getelementptr i8, ptr %73, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %71) #9, !srcloc !215
  %74 = ptrtoint ptr %regs81 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs81, align 4
  %add.ptr9.i = getelementptr i8, ptr %75, i32 48
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #9, !srcloc !216
  %77 = ptrtoint ptr %regs81 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs81, align 4
  %add.ptr13.i = getelementptr i8, ptr %78, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %76) #9, !srcloc !215
  %79 = ptrtoint ptr %command_complete to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %command_complete, align 4
  %dma_complete.i = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 6
  %80 = ptrtoint ptr %dma_complete.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %dma_complete.i, align 4
  %81 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %82) #9
  br label %cleanup

if.end87:                                         ; preds = %for.end76
  %tobool88.not = icmp eq ptr %instr_data_in.0.lcssa, null
  br i1 %tobool88.not, label %if.end87.cleanup_crit_edge, label %if.then89

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %regs81 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs81, align 4
  %add.ptr91 = getelementptr i8, ptr %84, i32 24
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #9, !srcloc !216
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  %87 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %reg, align 4
  %buf95 = getelementptr inbounds %struct.nand_op_instr, ptr %instr_data_in.0.lcssa, i32 0, i32 1, i32 0, i32 1
  %88 = ptrtoint ptr %buf95 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %buf95, align 4
  %add.ptr96 = getelementptr i8, ptr %89, i32 %offset.0.lcssa
  %90 = call ptr @memcpy(ptr %add.ptr96, ptr %reg, i32 %size.0.lcssa)
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %if.end87.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %if.then89 ], [ 0, %if.end87.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_addr_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_num_addr_cyc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_data_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_data_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_ecc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_nand_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_nand_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.tegra_nand_controller, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.97, i32 noundef %retval.0.i.ph) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !150, !151, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !174, !176, !177, !178, !180, !181, !182, !184, !186, !187, !188, !190, !191, !192, !194, !196, !198, !200, !201, !202}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @__initcall__kmod_tegra_nand__271_1283_tegra_nand_driver_init6, !1, !"__initcall__kmod_tegra_nand__271_1283_tegra_nand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1283, i32 1}
!2 = !{ptr @__exitcall_tegra_nand_driver_exit, !1, !"__exitcall_tegra_nand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description272, !4, !"__UNIQUE_ID_description272", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1285, i32 1}
!5 = !{ptr @__UNIQUE_ID_author273, !6, !"__UNIQUE_ID_author273", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1286, i32 1}
!7 = !{ptr @__UNIQUE_ID_author274, !8, !"__UNIQUE_ID_author274", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1287, i32 1}
!9 = !{ptr @__UNIQUE_ID_author275, !10, !"__UNIQUE_ID_author275", i1 false, i1 false}
!10 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1288, i32 1}
!11 = !{ptr @__UNIQUE_ID_file276, !12, !"__UNIQUE_ID_file276", i1 false, i1 false}
!12 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1289, i32 1}
!13 = !{ptr @__UNIQUE_ID_license277, !12, !"__UNIQUE_ID_license277", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1276, i32 11}
!16 = !{ptr @tegra_nand_driver, !17, !"tegra_nand_driver", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1274, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1165, i32 43}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1188, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @tegra_nand_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @tegra_nand_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1203, i32 3}
!30 = !{ptr @tegra_nand_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tegra_nand_probe._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @nand_controller_init.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tegra_nand_controller_ops, !36, !"tegra_nand_controller_ops", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1061, i32 41}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 931, i32 3}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @tegra_nand_attach_chip._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @tegra_nand_attach_chip._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 954, i32 3}
!44 = !{ptr @tegra_nand_attach_chip._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @tegra_nand_attach_chip._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 961, i32 4}
!48 = !{ptr @tegra_nand_attach_chip._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @tegra_nand_attach_chip._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 990, i32 4}
!52 = !{ptr @tegra_nand_attach_chip._entry.19, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @tegra_nand_attach_chip._entry_ptr.21, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @tegra_nand_attach_chip._entry.22, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1013, i32 4}
!56 = !{ptr @tegra_nand_attach_chip._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1019, i32 3}
!59 = !{ptr @tegra_nand_attach_chip._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @tegra_nand_attach_chip._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1023, i32 2}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @tegra_nand_attach_chip._entry.27, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @tegra_nand_attach_chip._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1046, i32 3}
!70 = !{ptr @tegra_nand_attach_chip._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @tegra_nand_attach_chip._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 535, i32 4}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @tegra_nand_page_xfer._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @tegra_nand_page_xfer._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @tegra_nand_page_xfer._entry.38, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 548, i32 4}
!79 = !{ptr @tegra_nand_page_xfer._entry_ptr.39, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 591, i32 3}
!82 = !{ptr @tegra_nand_page_xfer._entry.40, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @tegra_nand_page_xfer._entry_ptr.42, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 601, i32 3}
!86 = !{ptr @tegra_nand_page_xfer._entry.43, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @tegra_nand_page_xfer._entry_ptr.45, !85, !"_entry_ptr", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!90 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 316, i32 2}
!94 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @tegra_nand_dump_reg._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @tegra_nand_dump_reg._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 324, i32 3}
!99 = !{ptr @tegra_nand_dump_reg._entry.50, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @tegra_nand_dump_reg._entry_ptr.52, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 293, i32 2}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 294, i32 2}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 295, i32 2}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 296, i32 2}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 297, i32 2}
!111 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 298, i32 2}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 300, i32 2}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 301, i32 2}
!117 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 302, i32 2}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 303, i32 2}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 304, i32 2}
!123 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 305, i32 2}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 306, i32 2}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 307, i32 2}
!129 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 308, i32 2}
!131 = !{ptr @tegra_nand_reg_names, !132, !"tegra_nand_reg_names", i1 false, i1 false}
!132 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 292, i32 27}
!133 = !{ptr @rs_strength_bootable, !134, !"rs_strength_bootable", i1 false, i1 false}
!134 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 837, i32 18}
!135 = !{ptr @rs_strength, !136, !"rs_strength", i1 false, i1 false}
!136 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 838, i32 18}
!137 = !{ptr @bch_strength_bootable, !138, !"bch_strength_bootable", i1 false, i1 false}
!138 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 839, i32 18}
!139 = !{ptr @bch_strength, !140, !"bch_strength", i1 false, i1 false}
!140 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 840, i32 18}
!141 = !{ptr @tegra_nand_oob_rs_ops, !142, !"tegra_nand_oob_rs_ops", i1 false, i1 false}
!142 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 225, i32 39}
!143 = !{ptr @tegra_nand_oob_bch_ops, !144, !"tegra_nand_oob_bch_ops", i1 false, i1 false}
!144 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 246, i32 39}
!145 = !{ptr @tegra_nand_op_parser, !146, !"tegra_nand_op_parser", i1 false, i1 false}
!146 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 444, i32 36}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 430, i32 3}
!149 = !{ptr @tegra_nand_cmd._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @tegra_nand_cmd._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @init_completion.__key, !152, !"__key", i1 false, i1 false}
!152 = !{!"../include/linux/completion.h", i32 87, i32 2}
!153 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 258, i32 2}
!156 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @tegra_nand_irq.__UNIQUE_ID_ddebug250, !155, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 275, i32 3}
!161 = !{ptr @tegra_nand_irq._entry, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @tegra_nand_irq._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 278, i32 3}
!165 = !{ptr @tegra_nand_irq._entry.77, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @tegra_nand_irq._entry_ptr.79, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1080, i32 3}
!169 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @tegra_nand_chips_init._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @tegra_nand_chips_init._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1086, i32 51}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1088, i32 3}
!176 = !{ptr @tegra_nand_chips_init._entry.83, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @tegra_nand_chips_init._entry_ptr.85, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.87, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1095, i32 3}
!180 = !{ptr @tegra_nand_chips_init._entry.86, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @tegra_nand_chips_init._entry_ptr.88, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1105, i32 47}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1109, i32 3}
!186 = !{ptr @tegra_nand_chips_init._entry.90, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @tegra_nand_chips_init._entry_ptr.92, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.94, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1136, i32 3}
!190 = !{ptr @tegra_nand_chips_init._entry.93, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @tegra_nand_chips_init._entry_ptr.95, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!194 = !{ptr @tegra_nand_of_match, !195, !"tegra_nand_of_match", i1 false, i1 false}
!195 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1268, i32 34}
!196 = !{ptr @tegra_nand_pm, !197, !"tegra_nand_pm", i1 false, i1 false}
!197 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1263, i32 32}
!198 = !{ptr @.str.97, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/mtd/nand/raw/tegra_nand.c", i32 1247, i32 3}
!200 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @tegra_nand_runtime_resume._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @tegra_nand_runtime_resume._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{i64 2148272773}
!213 = !{i64 757596, i64 757621, i64 757643, i64 757659, i64 757671, i64 757691, i64 757715, i64 757731, i64 757743}
!214 = !{i64 2148272961}
!215 = !{i64 6281569}
!216 = !{i64 6281987}
!217 = !{i64 2148755169, i64 2148755174, i64 2148755187, i64 2148755231, i64 2148755265, i64 2148755286}
!218 = !{!"auto-init"}
!219 = !{i8 0, i8 2}
!220 = !{!"branch_weights", i32 2000, i32 1}
