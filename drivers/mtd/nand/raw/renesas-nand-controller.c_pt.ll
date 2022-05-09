; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/renesas-nand-controller.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/renesas-nand-controller.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.rnandc = type { %struct.nand_controller, ptr, ptr, ptr, ptr, i32, %struct.list_head, ptr, %struct.completion, i8, ptr, i32 }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.rnand_chip = type { %struct.nand_chip, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.rnand_chip_sel] }
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
%struct.rnand_chip_sel = type { i32 }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.75, i32 }
%union.anon.75 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.76, i8 }
%union.anon.76 = type { ptr }
%struct.nand_op_addr_instr = type { i32, ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.mtd_oob_region = type { i32, i32 }

@__initcall__kmod_renesas_nand_controller__764_1420_rnandc_driver_init6 = internal global ptr @rnandc_driver_init, section ".initcall6.init", align 4
@rnandc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rnandc_probe, ptr @rnandc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rnandc_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rnandc_driver_exit = internal global ptr @rnandc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author765 = internal constant [73 x i8] c"renesas_nand_controller.author=Miquel Raynal <miquel.raynal@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description766 = internal constant [86 x i8] c"renesas_nand_controller.description=Renesas R-Car Gen3 & RZ/N1 NAND controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file767 = internal constant [74 x i8] c"renesas_nand_controller.file=drivers/mtd/nand/raw/renesas-nand-controller\00", section ".modinfo", align 1
@__UNIQUE_ID_license768 = internal constant [39 x i8] c"renesas_nand_controller.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"renesas-nandc\00", [18 x i8] zeroinitializer }, align 32
@rnandc_id_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-nandc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rzn1-nandc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rnandc_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @rnandc_attach_chip, ptr null, ptr @rnandc_exec_op, ptr @rnandc_setup_interface }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eclk\00", [27 x i8] zeroinitializer }, align 32
@rnandc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1362, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No IRQ found, fallback to polling\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rnandc_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/mtd/nand/raw/renesas-nand-controller.c\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rnandc_probe._entry_ptr = internal global ptr @rnandc_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"renesas-nand-controller\00", [40 x i8] zeroinitializer }, align 32
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@rnandc_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 1124, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Small page devices not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rnandc_attach_chip\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rnandc_attach_chip._entry_ptr = internal global ptr @rnandc_attach_chip._entry, section ".printk_index", align 4
@rnandc_attach_chip._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.5, i32 1144, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported memory organization\0A\00", [63 x i8] zeroinitializer }, align 32
@rnandc_attach_chip._entry_ptr.15 = internal global ptr @rnandc_attach_chip._entry.13, section ".printk_index", align 4
@rnandc_attach_chip._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.5, i32 1152, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ECC initialization failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@rnandc_attach_chip._entry_ptr.18 = internal global ptr @rnandc_attach_chip._entry.16, section ".printk_index", align 4
@rnandc_ecc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 1089, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No minimum ECC strength\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rnandc_ecc_init\00", [16 x i8] zeroinitializer }, align 32
@rnandc_ecc_init._entry_ptr = internal global ptr @rnandc_ecc_init._entry, section ".printk_index", align 4
@rnandc_hw_ecc_controller_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 1014, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported page size\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rnandc_hw_ecc_controller_init\00", [34 x i8] zeroinitializer }, align 32
@rnandc_hw_ecc_controller_init._entry_ptr = internal global ptr @rnandc_hw_ecc_controller_init._entry, section ".printk_index", align 4
@rnandc_hw_ecc_controller_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.5, i32 1029, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported ECC chunk size\0A\00", [36 x i8] zeroinitializer }, align 32
@rnandc_hw_ecc_controller_init._entry_ptr.25 = internal global ptr @rnandc_hw_ecc_controller_init._entry.23, section ".printk_index", align 4
@rnandc_hw_ecc_controller_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.5, i32 1059, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported ECC strength\0A\00", [38 x i8] zeroinitializer }, align 32
@rnandc_hw_ecc_controller_init._entry_ptr.28 = internal global ptr @rnandc_hw_ecc_controller_init._entry.26, section ".printk_index", align 4
@rnandc_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @rnandc_ooblayout_ecc, ptr @rnandc_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@rnandc_read_page_hw_ecc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 440, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Read page operation never ending\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rnandc_read_page_hw_ecc\00", [40 x i8] zeroinitializer }, align 32
@rnandc_read_page_hw_ecc._entry_ptr = internal global ptr @rnandc_read_page_hw_ecc._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@rnandc_read_subpage_hw_ecc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 529, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Clearing residual data in the read FIFO\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rnandc_read_subpage_hw_ecc\00", [37 x i8] zeroinitializer }, align 32
@rnandc_read_subpage_hw_ecc._entry_ptr = internal global ptr @rnandc_read_subpage_hw_ecc._entry, section ".printk_index", align 4
@rnandc_read_subpage_hw_ecc._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.5, i32 536, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Read subpage operation never ending\0A\00", [59 x i8] zeroinitializer }, align 32
@rnandc_read_subpage_hw_ecc._entry_ptr.37 = internal global ptr @rnandc_read_subpage_hw_ecc._entry.35, section ".printk_index", align 4
@rnandc_wait_end_of_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 367, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Operation timed out, status: 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rnandc_wait_end_of_op\00", [42 x i8] zeroinitializer }, align 32
@rnandc_wait_end_of_op._entry_ptr = internal global ptr @rnandc_wait_end_of_op._entry, section ".printk_index", align 4
@rnandc_write_page_hw_ecc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 620, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Write page operation never ending\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rnandc_write_page_hw_ecc\00", [39 x i8] zeroinitializer }, align 32
@rnandc_write_page_hw_ecc._entry_ptr = internal global ptr @rnandc_write_page_hw_ecc._entry, section ".printk_index", align 4
@rnandc_write_subpage_hw_ecc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 671, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Write subpage operation never ending\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rnandc_write_subpage_hw_ecc\00", [36 x i8] zeroinitializer }, align 32
@rnandc_write_subpage_hw_ecc._entry_ptr = internal global ptr @rnandc_write_subpage_hw_ecc._entry, section ".printk_index", align 4
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"  \00", [29 x i8] zeroinitializer }, align 32
@rnandc_exec_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 835, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot handle more than one wait delay\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rnandc_exec_op\00", [17 x i8] zeroinitializer }, align 32
@rnandc_exec_op._entry_ptr = internal global ptr @rnandc_exec_op._entry, section ".printk_index", align 4
@rnandc_exec_op._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.46, ptr @.str.5, i32 862, ptr @.str.48, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rnandc_exec_op._entry_ptr.49 = internal global ptr @rnandc_exec_op._entry.47, section ".printk_index", align 4
@nand_op_trace.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"renesas_nand_controller\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nand_op_trace\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/mtd/rawnand.h\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sCMD      [0x%02x]\0A\00", [43 x i8] zeroinitializer }, align 32
@nand_op_trace.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, i8 1, i8 3, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%sADDR     [%d cyc: %*ph]\0A\00", [37 x i8] zeroinitializer }, align 32
@nand_op_trace.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.55, i8 1, i8 5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sDATA_IN  [%d B%s]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c", force 8-bit\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nand_op_trace.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.58, i8 1, i8 6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%sDATA_OUT [%d B%s]\0A\00", [43 x i8] zeroinitializer }, align 32
@nand_op_trace.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.59, i8 1, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%sWAITRDY  [max %d ms]\0A\00", [40 x i8] zeroinitializer }, align 32
@rnandc_setup_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.5, i32 903, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Read and write hold times must be identical\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rnandc_setup_interface\00", [41 x i8] zeroinitializer }, align 32
@rnandc_setup_interface._entry_ptr = internal global ptr @rnandc_setup_interface._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@rnandc_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.5, i32 1209, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid reg property (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rnandc_chip_init\00", [47 x i8] zeroinitializer }, align 32
@rnandc_chip_init._entry_ptr = internal global ptr @rnandc_chip_init._entry, section ".printk_index", align 4
@rnandc_chip_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.5, i32 1225, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Incomplete reg property (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@rnandc_chip_init._entry_ptr.68 = internal global ptr @rnandc_chip_init._entry.66, section ".printk_index", align 4
@rnandc_chip_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.5, i32 1230, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@rnandc_chip_init._entry_ptr.70 = internal global ptr @rnandc_chip_init._entry.69, section ".printk_index", align 4
@rnandc_chip_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.65, ptr @.str.5, i32 1235, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CS %d already assigned\0A\00", [40 x i8] zeroinitializer }, align 32
@rnandc_chip_init._entry_ptr.73 = internal global ptr @rnandc_chip_init._entry.71, section ".printk_index", align 4
@rnandc_chip_init._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.65, ptr @.str.5, i32 1253, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Missing MTD label\0A\00", [45 x i8] zeroinitializer }, align 32
@rnandc_chip_init._entry_ptr.76 = internal global ptr @rnandc_chip_init._entry.74, section ".printk_index", align 4
@rnandc_chip_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.65, ptr @.str.5, i32 1259, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to scan the NAND chip (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@rnandc_chip_init._entry_ptr.79 = internal global ptr @rnandc_chip_init._entry.77, section ".printk_index", align 4
@rnandc_chip_init._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.65, ptr @.str.5, i32 1269, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register MTD device (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@rnandc_chip_init._entry_ptr.82 = internal global ptr @rnandc_chip_init._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.86 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 4, i64 8, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.87 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.88 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.91 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"rnandc_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1412, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1414, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"rnandc_id_table\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1405, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant [11 x i8] c"rnandc_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1162, i32 41 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1339, i32 42 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1344, i32 42 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1362, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1366, i32 12 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1105, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1124, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1144, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1152, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1089, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1014, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1029, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1059, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [21 x i8] c"rnandc_ooblayout_ops\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1002, i32 39 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 440, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 326, i32 6 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 529, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 536, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 366, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 620, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 671, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 704, i32 17 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 835, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 861, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1030, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1034, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1041, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1047, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1053, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 903, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 87, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1206, i32 46 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1209, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1225, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1230, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1235, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1253, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1259, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.357 = private constant [50 x i8] c"../drivers/mtd/nand/raw/renesas-nand-controller.c\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1269, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 464, i32 31 }
@llvm.compiler.used = appending global [121 x ptr] [ptr @__UNIQUE_ID_author765, ptr @__UNIQUE_ID_description766, ptr @__UNIQUE_ID_file767, ptr @__UNIQUE_ID_license768, ptr @__exitcall_rnandc_driver_exit, ptr @__initcall__kmod_renesas_nand_controller__764_1420_rnandc_driver_init6, ptr @rnandc_attach_chip._entry, ptr @rnandc_attach_chip._entry.13, ptr @rnandc_attach_chip._entry.16, ptr @rnandc_attach_chip._entry_ptr, ptr @rnandc_attach_chip._entry_ptr.15, ptr @rnandc_attach_chip._entry_ptr.18, ptr @rnandc_chip_init._entry, ptr @rnandc_chip_init._entry.66, ptr @rnandc_chip_init._entry.69, ptr @rnandc_chip_init._entry.71, ptr @rnandc_chip_init._entry.74, ptr @rnandc_chip_init._entry.77, ptr @rnandc_chip_init._entry.80, ptr @rnandc_chip_init._entry_ptr, ptr @rnandc_chip_init._entry_ptr.68, ptr @rnandc_chip_init._entry_ptr.70, ptr @rnandc_chip_init._entry_ptr.73, ptr @rnandc_chip_init._entry_ptr.76, ptr @rnandc_chip_init._entry_ptr.79, ptr @rnandc_chip_init._entry_ptr.82, ptr @rnandc_driver_exit, ptr @rnandc_ecc_init._entry, ptr @rnandc_ecc_init._entry_ptr, ptr @rnandc_exec_op._entry, ptr @rnandc_exec_op._entry.47, ptr @rnandc_exec_op._entry_ptr, ptr @rnandc_exec_op._entry_ptr.49, ptr @rnandc_hw_ecc_controller_init._entry, ptr @rnandc_hw_ecc_controller_init._entry.23, ptr @rnandc_hw_ecc_controller_init._entry.26, ptr @rnandc_hw_ecc_controller_init._entry_ptr, ptr @rnandc_hw_ecc_controller_init._entry_ptr.25, ptr @rnandc_hw_ecc_controller_init._entry_ptr.28, ptr @rnandc_probe._entry, ptr @rnandc_probe._entry_ptr, ptr @rnandc_read_page_hw_ecc._entry, ptr @rnandc_read_page_hw_ecc._entry_ptr, ptr @rnandc_read_subpage_hw_ecc._entry, ptr @rnandc_read_subpage_hw_ecc._entry.35, ptr @rnandc_read_subpage_hw_ecc._entry_ptr, ptr @rnandc_read_subpage_hw_ecc._entry_ptr.37, ptr @rnandc_setup_interface._entry, ptr @rnandc_setup_interface._entry_ptr, ptr @rnandc_wait_end_of_op._entry, ptr @rnandc_wait_end_of_op._entry_ptr, ptr @rnandc_write_page_hw_ecc._entry, ptr @rnandc_write_page_hw_ecc._entry_ptr, ptr @rnandc_write_subpage_hw_ecc._entry, ptr @rnandc_write_subpage_hw_ecc._entry_ptr, ptr @rnandc_driver, ptr @.str, ptr @rnandc_id_table, ptr @rnandc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @nand_controller_init.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @rnandc_ooblayout_ops, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @init_completion.__key, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.83], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_id_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_attach_chip._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_attach_chip._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_ecc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_hw_ecc_controller_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_hw_ecc_controller_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_hw_ecc_controller_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_read_page_hw_ecc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_read_subpage_hw_ecc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_read_subpage_hw_ecc._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_wait_end_of_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_write_page_hw_ecc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_write_subpage_hw_ecc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_exec_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_exec_op._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_setup_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_chip_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_chip_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_chip_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_chip_init._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_chip_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnandc_chip_init._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rnandc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rnandc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rnandc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @rnandc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnandc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 196, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.rnandc, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @nand_controller_init.__key) #8
  %ops = getelementptr inbounds %struct.nand_controller, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @rnandc_ops, ptr %ops, align 4
  %chips = getelementptr inbounds %struct.rnandc, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %chips to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %chips, ptr %chips, align 4
  %prev.i = getelementptr inbounds %struct.rnandc, ptr %call.i, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %chips, ptr %prev.i, align 4
  %complete = getelementptr inbounds %struct.rnandc, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.rnandc, ptr %call.i, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @init_completion.__key) #8
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.rnandc, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %hclk = getelementptr inbounds %struct.rnandc, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %hclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call12, ptr %hclk, align 4
  %cmp.i105 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %call20 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %eclk = getelementptr inbounds %struct.rnandc, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %eclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call20, ptr %eclk, align 4
  %cmp.i106 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %11 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hclk, align 4
  %call.i107 = tail call i32 @clk_prepare(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i = icmp eq i32 %call.i107, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end26
  %call1.i = tail call i32 @clk_enable(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end31, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %12) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end.i
  %13 = ptrtoint ptr %eclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %eclk, align 4
  %call.i108 = tail call i32 @clk_prepare(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool.not.i109 = icmp eq i32 %call.i108, 0
  br i1 %tobool.not.i109, label %if.end.i112, label %if.end31.disable_hclk_crit_edge

if.end31.disable_hclk_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_hclk

if.end.i112:                                      ; preds = %if.end31
  %call1.i110 = tail call i32 @clk_enable(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i110)
  %tobool2.not.i111 = icmp eq i32 %call1.i110, 0
  br i1 %tobool2.not.i111, label %if.end36, label %if.end.i112.disable_hclk.sink.split_crit_edge

if.end.i112.disable_hclk.sink.split_crit_edge:    ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_hclk.sink.split

if.end36:                                         ; preds = %if.end.i112
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !182
  %call37 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call37)
  %cmp = icmp eq i32 %call37, -517
  br i1 %cmp, label %if.end36.disable_eclk_crit_edge, label %if.else

if.end36.disable_eclk_crit_edge:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_eclk

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp39 = icmp slt i32 %call37, 0
  br i1 %cmp39, label %do.end, label %if.else42

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  %use_polling = getelementptr inbounds %struct.rnandc, ptr %call.i, i32 0, i32 9
  %17 = ptrtoint ptr %use_polling to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %use_polling, align 4
  br label %if.end49

if.else42:                                        ; preds = %if.else
  %call.i116 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call37, ptr noundef nonnull @rnandc_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %cmp45 = icmp slt i32 %call.i116, 0
  br i1 %cmp45, label %if.else42.disable_eclk_crit_edge, label %if.else42.if.end49_crit_edge

if.else42.if.end49_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.else42.disable_eclk_crit_edge:                 ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_eclk

if.end49:                                         ; preds = %if.else42.if.end49_crit_edge, %do.end
  %call51 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.disable_eclk_crit_edge

if.end49.disable_eclk_crit_edge:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_eclk

if.end54:                                         ; preds = %if.end49
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr.i118 = getelementptr i8, ptr %19, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 16777216) #8, !srcloc !182
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call55 = tail call fastcc i32 @rnandc_chips_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end54.cleanup_crit_edge, label %if.end54.disable_eclk_crit_edge

if.end54.disable_eclk_crit_edge:                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_eclk

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

disable_eclk:                                     ; preds = %if.end54.disable_eclk_crit_edge, %if.end49.disable_eclk_crit_edge, %if.else42.disable_eclk_crit_edge, %if.end36.disable_eclk_crit_edge
  %ret.0 = phi i32 [ %call51, %if.end49.disable_eclk_crit_edge ], [ %call55, %if.end54.disable_eclk_crit_edge ], [ %call.i116, %if.else42.disable_eclk_crit_edge ], [ -517, %if.end36.disable_eclk_crit_edge ]
  %21 = ptrtoint ptr %eclk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %eclk, align 4
  tail call void @clk_disable(ptr noundef %22) #8
  br label %disable_hclk.sink.split

disable_hclk.sink.split:                          ; preds = %disable_eclk, %if.end.i112.disable_hclk.sink.split_crit_edge
  %.sink = phi ptr [ %22, %disable_eclk ], [ %14, %if.end.i112.disable_hclk.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %disable_eclk ], [ %call1.i110, %if.end.i112.disable_hclk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #8
  br label %disable_hclk

disable_hclk:                                     ; preds = %disable_hclk.sink.split, %if.end31.disable_hclk_crit_edge
  %ret.1 = phi i32 [ %call.i108, %if.end31.disable_hclk_crit_edge ], [ %ret.1.ph, %disable_hclk.sink.split ]
  %23 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hclk, align 4
  tail call void @clk_disable(ptr noundef %24) #8
  tail call void @clk_unprepare(ptr noundef %24) #8
  br label %cleanup

cleanup:                                          ; preds = %disable_hclk, %if.end54.cleanup_crit_edge, %if.then3.i, %if.end26.cleanup_crit_edge, %if.then23, %if.then15, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then7 ], [ %8, %if.then15 ], [ %10, %if.then23 ], [ %ret.1, %disable_hclk ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end54.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i107, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnandc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chips.i = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chips.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chips.i, align 4
  %cmp.not47.i = icmp eq ptr %3, %chips.i
  br i1 %cmp.not47.i, label %entry.rnandc_chips_cleanup.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.rnandc_chips_cleanup.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rnandc_chips_cleanup.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in48.i = phi ptr [ %.pn51.i, %list_del.exit.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %entry1.050.i = getelementptr i8, ptr %.pn.in48.i, i32 -2168
  %4 = ptrtoint ptr %.pn.in48.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn51.i = load ptr, ptr %.pn.in48.i, align 8
  %call9.i = tail call i32 @mtd_device_unregister(ptr noundef %entry1.050.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %do.end.i, !prof !183

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1292, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.if.end.i_crit_edge
  tail call void @nand_cleanup(ptr noundef %entry1.050.i) #8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in48.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp.not.i, label %list_del.exit.i.rnandc_chips_cleanup.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

list_del.exit.i.rnandc_chips_cleanup.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rnandc_chips_cleanup.exit

rnandc_chips_cleanup.exit:                        ; preds = %list_del.exit.i.rnandc_chips_cleanup.exit_crit_edge, %entry.rnandc_chips_cleanup.exit_crit_edge
  %eclk = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %eclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %eclk, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  %hclk = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hclk, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  tail call void @clk_unprepare(ptr noundef %16) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnandc_irq_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.rnandc, ptr %private, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !182
  %complete = getelementptr inbounds %struct.rnandc, ptr %private, i32 0, i32 8
  tail call void @complete(ptr noundef %complete) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rnandc_chips_init(ptr noundef %rnandc) unnamed_addr #2 align 64 {
entry:
  %cs.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rnandc, ptr %rnandc, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_next_child(ptr noundef %3, ptr noundef null) #8
  %cmp.not61 = icmp eq ptr %call, null
  br i1 %cmp.not61, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %assigned_cs.i = getelementptr inbounds %struct.rnandc, ptr %rnandc, i32 0, i32 5
  %chips.i.i = getelementptr inbounds %struct.rnandc, ptr %rnandc, i32 0, i32 6
  %buf.i.i = getelementptr inbounds %struct.rnandc, ptr %rnandc, i32 0, i32 10
  %buf_sz.i.i = getelementptr inbounds %struct.rnandc, ptr %rnandc, i32 0, i32 11
  %prev.i.i = getelementptr inbounds %struct.rnandc, ptr %rnandc, i32 0, i32 6, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %np.062 = phi ptr [ %call, %for.body.lr.ph ], [ %call4, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs.i) #8
  %4 = ptrtoint ptr %cs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %cs.i, align 4, !annotation !184
  %call.i = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %np.062, ptr noundef nonnull @.str.63, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, 0
  %spec.select.i = select i1 %cmp1.not.i, i32 -22, i32 %call.i
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.64, i32 noundef %spec.select.i) #11
  br label %if.then

if.end.i:                                         ; preds = %for.body
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 4) #8
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %spec.select.i.i = call i32 @llvm.uadd.sat.i32(i32 %11, i32 2224) #8
  %retval.0.i.i = select i1 %10, i32 -1, i32 %spec.select.i.i
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %retval.0.i.i, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then_crit_edge, label %for.body.lr.ph.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %nsels7.i = getelementptr inbounds %struct.rnand_chip, ptr %call.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %nsels7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i, ptr %nsels7.i, align 8
  %selected_die.i = getelementptr inbounds %struct.rnand_chip, ptr %call.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %selected_die.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %selected_die.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end31.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0130.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end31.i.for.body.i_crit_edge ]
  %call9.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %np.062, ptr noundef nonnull @.str.63, i32 noundef %i.0130.i, ptr noundef nonnull %cs.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end16.i, label %do.end14.i

do.end14.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.67, i32 noundef %call9.i) #11
  br label %if.then

if.end16.i:                                       ; preds = %for.body.i
  %16 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp17.i = icmp ugt i32 %17, 3
  br i1 %cmp17.i, label %do.end21.i, label %if.end23.i

do.end21.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.64, i32 noundef %17) #11
  br label %if.then

if.end23.i:                                       ; preds = %if.end16.i
  %call24.i = call i32 @_test_and_set_bit(i32 noundef %17, ptr noundef %assigned_cs.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end31.i, label %do.end29.i

do.end29.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cs.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.72, i32 noundef %23) #11
  br label %if.then

if.end31.i:                                       ; preds = %if.end23.i
  %24 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cs.i, align 4
  %arrayidx.i = getelementptr %struct.rnand_chip, ptr %call.i.i, i32 0, i32 14, i32 %i.0130.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.0130.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %for.end.i, label %if.end31.i.for.body.i_crit_edge

if.end31.i.for.body.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %if.end31.i
  %controller34.i = getelementptr inbounds %struct.nand_chip, ptr %call.i.i, i32 0, i32 32
  %27 = ptrtoint ptr %controller34.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %rnandc, ptr %controller34.i, align 4
  %of_node.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i.i, i32 0, i32 56, i32 27
  %28 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %np.062, ptr %of_node.i.i.i, align 8
  %name.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i.i, i32 0, i32 13
  %29 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i, label %nand_set_flash_node.exit.i, label %nand_set_flash_node.exit.thread.i

nand_set_flash_node.exit.thread.i:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %parent121.i = getelementptr inbounds %struct.mtd_info, ptr %call.i.i, i32 0, i32 56, i32 1
  %33 = ptrtoint ptr %parent121.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %parent121.i, align 8
  br label %if.end44.i

nand_set_flash_node.exit.i:                       ; preds = %for.end.i
  %call.i.i.i = call i32 @of_property_read_string(ptr noundef nonnull %np.062, ptr noundef nonnull @.str.83, ptr noundef %name.i.i.i) #8
  %34 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr.i = load ptr, ptr %name.i.i.i, align 8
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %call.i.i, i32 0, i32 56, i32 1
  %37 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %parent.i, align 8
  %tobool38.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool38.not.i, label %do.end42.i, label %nand_set_flash_node.exit.i.if.end44.i_crit_edge

nand_set_flash_node.exit.i.if.end44.i_crit_edge:  ; preds = %nand_set_flash_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

do.end42.i:                                       ; preds = %nand_set_flash_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.75) #11
  br label %if.then

if.end44.i:                                       ; preds = %nand_set_flash_node.exit.i.if.end44.i_crit_edge, %nand_set_flash_node.exit.thread.i
  %38 = ptrtoint ptr %nsels7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nsels7.i, align 8
  %call.i118.i = call i32 @nand_scan_with_ids(ptr noundef nonnull %call.i.i, i32 noundef %39, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118.i)
  %tobool47.not.i = icmp eq i32 %call.i118.i, 0
  br i1 %tobool47.not.i, label %if.end53.i, label %do.end51.i

do.end51.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.78, i32 noundef %call.i118.i) #11
  br label %if.then

if.end53.i:                                       ; preds = %if.end44.i
  %writesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %writesize.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %writesize.i.i, align 4
  %oobsize.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i.i, i32 0, i32 6
  %44 = ptrtoint ptr %oobsize.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %oobsize.i.i, align 4
  %add.i.i = add i32 %45, %43
  %46 = ptrtoint ptr %chips.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.in61.i.i = load ptr, ptr %chips.i.i, align 4
  %cmp.not62.i.i = icmp eq ptr %.pn.in61.i.i, %chips.i.i
  br i1 %cmp.not62.i.i, label %if.end53.i.for.end.i.i_crit_edge, label %if.end53.i.for.body.i.i_crit_edge

if.end53.i.for.body.i.i_crit_edge:                ; preds = %if.end53.i
  br label %for.body.i.i

if.end53.i.for.end.i.i_crit_edge:                 ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end53.i.for.body.i.i_crit_edge
  %.pn.in64.i.i = phi ptr [ %.pn.in.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %.pn.in61.i.i, %if.end53.i.for.body.i.i_crit_edge ]
  %max_len.063.i.i = phi i32 [ %51, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.i.i, %if.end53.i.for.body.i.i_crit_edge ]
  %writesize9.i.i = getelementptr i8, ptr %.pn.in64.i.i, i32 -2148
  %47 = ptrtoint ptr %writesize9.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %writesize9.i.i, align 4
  %oobsize10.i.i = getelementptr i8, ptr %.pn.in64.i.i, i32 -2140
  %49 = ptrtoint ptr %oobsize10.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %oobsize10.i.i, align 4
  %add11.i.i = add i32 %50, %48
  %51 = call i32 @llvm.umax.i32(i32 %max_len.063.i.i, i32 %add11.i.i) #8
  %52 = ptrtoint ptr %.pn.in64.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn.in.i.i = load ptr, ptr %.pn.in64.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.in.i.i, %chips.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end53.i.for.end.i.i_crit_edge
  %max_len.0.lcssa.i.i = phi i32 [ %add.i.i, %if.end53.i.for.end.i.i_crit_edge ], [ %51, %for.body.i.i.for.end.i.i_crit_edge ]
  %53 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buf.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i, label %for.end.i.i.if.then24.i.i_crit_edge, label %land.lhs.true.i.i

for.end.i.i.if.then24.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.i.i

land.lhs.true.i.i:                                ; preds = %for.end.i.i
  %55 = ptrtoint ptr %buf_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buf_sz.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %max_len.0.lcssa.i.i)
  %cmp19.i.i = icmp ult i32 %56, %max_len.0.lcssa.i.i
  br i1 %cmp19.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end57.i_crit_edge

land.lhs.true.i.i.if.end57.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  call void @devm_kfree(ptr noundef %58, ptr noundef nonnull %54) #8
  %59 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %buf.i.i, align 4
  br label %if.then24.i.i

if.then24.i.i:                                    ; preds = %if.then.i.i, %for.end.i.i.if.then24.i.i_crit_edge
  %60 = ptrtoint ptr %buf_sz.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %max_len.0.lcssa.i.i, ptr %buf_sz.i.i, align 4
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  %call27.i.i = call noalias ptr @devm_kmalloc(ptr noundef %62, i32 noundef %max_len.0.lcssa.i.i, i32 noundef 3265) #8
  %63 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call27.i.i, ptr %buf.i.i, align 4
  %tobool30.not.i.i = icmp eq ptr %call27.i.i, null
  br i1 %tobool30.not.i.i, label %if.then24.i.i.cleanup_nand.i_crit_edge, label %if.then24.i.i.if.end57.i_crit_edge

if.then24.i.i.if.end57.i_crit_edge:               ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i

if.then24.i.i.cleanup_nand.i_crit_edge:           ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_nand.i

if.end57.i:                                       ; preds = %if.then24.i.i.if.end57.i_crit_edge, %land.lhs.true.i.i.if.end57.i_crit_edge
  %call58.i = call i32 @mtd_device_parse_register(ptr noundef nonnull %call.i.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end65.i, label %do.end63.i

do.end63.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.81, i32 noundef %call58.i) #11
  br label %cleanup_nand.i

if.end65.i:                                       ; preds = %if.end57.i
  %node.i = getelementptr inbounds %struct.rnand_chip, ptr %call.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i, align 4
  %call.i.i120.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %67, ptr noundef %chips.i.i) #8
  br i1 %call.i.i120.i, label %if.end.i.i.i, label %if.end65.i.for.inc_crit_edge

if.end65.i.for.inc_crit_edge:                     ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %node.i, ptr %prev.i.i, align 4
  %69 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %chips.i.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.rnand_chip, ptr %call.i.i, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev3.i.i.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %node.i, ptr %67, align 4
  br label %for.inc

cleanup_nand.i:                                   ; preds = %do.end63.i, %if.then24.i.i.cleanup_nand.i_crit_edge
  %ret.0.i = phi i32 [ %call58.i, %do.end63.i ], [ -12, %if.then24.i.i.cleanup_nand.i_crit_edge ]
  call void @nand_cleanup(ptr noundef nonnull %call.i.i) #8
  br label %if.then

if.then:                                          ; preds = %cleanup_nand.i, %do.end51.i, %do.end42.i, %do.end29.i, %do.end21.i, %do.end14.i, %if.end.i.if.then_crit_edge, %if.then.i
  %retval.0.i.ph = phi i32 [ -22, %do.end42.i ], [ %ret.0.i, %cleanup_nand.i ], [ %call.i118.i, %do.end51.i ], [ -22, %do.end29.i ], [ -22, %do.end21.i ], [ %call9.i, %do.end14.i ], [ %spec.select.i, %if.then.i ], [ -12, %if.end.i.if.then_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #8
  call void @of_node_put(ptr noundef nonnull %np.062) #8
  %72 = ptrtoint ptr %chips.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chips.i.i, align 4
  %cmp.not47.i = icmp eq ptr %73, %chips.i.i
  br i1 %cmp.not47.i, label %if.then.cleanup_crit_edge, label %if.then.for.body.i15_crit_edge

if.then.for.body.i15_crit_edge:                   ; preds = %if.then
  br label %for.body.i15

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i15:                                     ; preds = %list_del.exit.i.for.body.i15_crit_edge, %if.then.for.body.i15_crit_edge
  %.pn.in48.i = phi ptr [ %.pn51.i, %list_del.exit.i.for.body.i15_crit_edge ], [ %73, %if.then.for.body.i15_crit_edge ]
  %entry1.050.i = getelementptr i8, ptr %.pn.in48.i, i32 -2168
  %74 = ptrtoint ptr %.pn.in48.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pn51.i = load ptr, ptr %.pn.in48.i, align 8
  %call9.i13 = call i32 @mtd_device_unregister(ptr noundef %entry1.050.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i13)
  %tobool.not.i14 = icmp eq i32 %call9.i13, 0
  br i1 %tobool.not.i14, label %for.body.i15.if.end.i17_crit_edge, label %do.end.i, !prof !183

for.body.i15.if.end.i17_crit_edge:                ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i17

do.end.i:                                         ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1292, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i17

if.end.i17:                                       ; preds = %do.end.i, %for.body.i15.if.end.i17_crit_edge
  call void @nand_cleanup(ptr noundef %entry1.050.i) #8
  %call.i.i.i16 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in48.i) #8
  br i1 %call.i.i.i16, label %if.end.i.i.i18, label %if.end.i17.list_del.exit.i_crit_edge

if.end.i17.list_del.exit.i_crit_edge:             ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i18:                                   ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in48.i, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i.i, align 4
  %77 = ptrtoint ptr %.pn.in48.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %.pn.in48.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev1.i.i.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %76, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i18, %if.end.i17.list_del.exit.i_crit_edge
  %81 = ptrtoint ptr %.pn.in48.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in48.i, align 4
  %prev.i.i19 = getelementptr inbounds %struct.list_head, ptr %.pn.in48.i, i32 0, i32 1
  %82 = ptrtoint ptr %prev.i.i19 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i19, align 4
  %cmp.not.i = icmp eq ptr %.pn51.i, %chips.i.i
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i15_crit_edge

list_del.exit.i.for.body.i15_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i15

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %if.end.i.i.i, %if.end65.i.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #8
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 4
  %of_node3 = getelementptr inbounds %struct.device, ptr %84, i32 0, i32 27
  %85 = ptrtoint ptr %of_node3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %of_node3, align 8
  %call4 = call ptr @of_get_next_child(ptr noundef %86, ptr noundef nonnull %np.062) #8
  %cmp.not = icmp eq ptr %call4, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %list_del.exit.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %list_del.exit.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnandc_attach_chip(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %3, 262144
  %4 = ptrtoint ptr %bbt_options to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %bbt_options, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %5 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %6)
  %cmp = icmp ult i32 %6, 513
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %control = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 5
  %9 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %control, align 4
  %or7 = or i32 %10, 16
  store i32 %or7, ptr %control, align 4
  %pages_per_eraseblock = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %pages_per_eraseblock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pages_per_eraseblock, align 4
  %13 = add i32 %12, -32
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 27)
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %do.end84 [
    i32 0, label %if.end6.sw.epilog_crit_edge
    i32 1, label %if.end6.sw.epilog.sink.split_crit_edge
    i32 3, label %do.end59
    i32 7, label %do.end78
  ]

if.end6.sw.epilog.sink.split_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end59:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

do.end78:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

do.end84:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %dev85 = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev85, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.14) #11
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %do.end78, %do.end59, %if.end6.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 208, %do.end78 ], [ 144, %do.end59 ], [ 80, %if.end6.sw.epilog.sink.split_crit_edge ]
  %or81 = or i32 %10, %.sink
  %18 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or81, ptr %control, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end6.sw.epilog_crit_edge
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %19 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %options, align 8
  %or86 = or i32 %20, 4096
  store i32 %or86, ptr %options, align 8
  %ecc1.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %21 = ptrtoint ptr %ecc1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ecc1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 1
  br i1 %cmp.not.i, label %sw.epilog.if.end94_crit_edge, label %land.lhs.true.i

sw.epilog.if.end94_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

land.lhs.true.i:                                  ; preds = %sw.epilog
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.then.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %25 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %strength.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool3.not.i = icmp eq i32 %26, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end13.i_crit_edge

lor.lhs.false.i.if.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %step_size.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 4
  %27 = ptrtoint ptr %step_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %step_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool4.not.i = icmp eq i32 %28, 0
  br i1 %tobool4.not.i, label %if.then.i.do.end92.sink.split_crit_edge, label %land.lhs.true5.i

if.then.i.do.end92.sink.split_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92.sink.split

land.lhs.true5.i:                                 ; preds = %if.then.i
  %strength6.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 3
  %29 = ptrtoint ptr %strength6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %strength6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool7.not.i = icmp eq i32 %30, 0
  br i1 %tobool7.not.i, label %land.lhs.true5.i.do.end92.sink.split_crit_edge, label %if.then8.i

land.lhs.true5.i.do.end92.sink.split_crit_edge:   ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92.sink.split

if.then8.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %size.i, align 4
  %strength12.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %32 = ptrtoint ptr %strength12.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %strength12.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i, %lor.lhs.false.i.if.end13.i_crit_edge
  %33 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %22, label %if.end13.i.do.end92_crit_edge [
    i32 3, label %sw.bb.i
    i32 4, label %if.end13.i.if.end94_crit_edge
    i32 2, label %if.end13.i.if.end94_crit_edge119
  ]

if.end13.i.if.end94_crit_edge119:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.end13.i.if.end94_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.end13.i.do.end92_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92

sw.bb.i:                                          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %6)
  %cmp.i.i = icmp ugt i32 %6, 16384
  br i1 %cmp.i.i, label %sw.bb.i.do.end92.sink.split_crit_edge, label %if.end.i.i

sw.bb.i.do.end92.sink.split_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92.sink.split

if.end.i.i:                                       ; preds = %sw.bb.i
  %34 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %35, label %if.end.i.i.do.end92.sink.split_crit_edge [
    i32 256, label %if.end.i.i.sw.epilog.i.i_crit_edge
    i32 512, label %if.end.i.i.sw.epilog.sink.split.i.i_crit_edge
    i32 1024, label %do.end52.i.i
  ]

if.end.i.i.sw.epilog.sink.split.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i.i

if.end.i.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

if.end.i.i.do.end92.sink.split_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92.sink.split

do.end52.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %do.end52.i.i, %if.end.i.i.sw.epilog.sink.split.i.i_crit_edge
  %.sink261.i.i = phi i32 [ 4, %do.end52.i.i ], [ 2, %if.end.i.i.sw.epilog.sink.split.i.i_crit_edge ]
  %37 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %control, align 4
  %or55.i.i = or i32 %38, %.sink261.i.i
  store i32 %or55.i.i, ptr %control, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %if.end.i.i.sw.epilog.i.i_crit_edge
  %strength.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %39 = ptrtoint ptr %strength.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %strength.i.i, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %40, label %sw.epilog.i.i.do.end92.sink.split_crit_edge [
    i32 2, label %sw.bb61.i.i
    i32 4, label %sw.bb80.i.i
    i32 8, label %sw.bb101.i.i
    i32 16, label %sw.bb122.i.i
    i32 24, label %sw.bb143.i.i
    i32 32, label %sw.bb164.i.i
  ]

sw.epilog.i.i.do.end92.sink.split_crit_edge:      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end92.sink.split

sw.bb61.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bytes.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %42 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %bytes.i.i, align 4
  br label %rnandc_hw_ecc_controller_init.exit.i

sw.bb80.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bytes82.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %43 = ptrtoint ptr %bytes82.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 7, ptr %bytes82.i.i, align 4
  %ecc_ctrl99.i.i = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 6
  %44 = ptrtoint ptr %ecc_ctrl99.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ecc_ctrl99.i.i, align 8
  %or100.i.i = or i32 %45, 1
  store i32 %or100.i.i, ptr %ecc_ctrl99.i.i, align 8
  br label %rnandc_hw_ecc_controller_init.exit.i

sw.bb101.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bytes103.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %46 = ptrtoint ptr %bytes103.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 14, ptr %bytes103.i.i, align 4
  %ecc_ctrl120.i.i = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 6
  %47 = ptrtoint ptr %ecc_ctrl120.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ecc_ctrl120.i.i, align 8
  %or121.i.i = or i32 %48, 2
  store i32 %or121.i.i, ptr %ecc_ctrl120.i.i, align 8
  br label %rnandc_hw_ecc_controller_init.exit.i

sw.bb122.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bytes124.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %49 = ptrtoint ptr %bytes124.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 28, ptr %bytes124.i.i, align 4
  %ecc_ctrl141.i.i = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 6
  %50 = ptrtoint ptr %ecc_ctrl141.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ecc_ctrl141.i.i, align 8
  %or142.i.i = or i32 %51, 3
  store i32 %or142.i.i, ptr %ecc_ctrl141.i.i, align 8
  br label %rnandc_hw_ecc_controller_init.exit.i

sw.bb143.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bytes145.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %52 = ptrtoint ptr %bytes145.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 42, ptr %bytes145.i.i, align 4
  %ecc_ctrl162.i.i = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 6
  %53 = ptrtoint ptr %ecc_ctrl162.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ecc_ctrl162.i.i, align 8
  %or163.i.i = or i32 %54, 4
  store i32 %or163.i.i, ptr %ecc_ctrl162.i.i, align 8
  br label %rnandc_hw_ecc_controller_init.exit.i

sw.bb164.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bytes166.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %55 = ptrtoint ptr %bytes166.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 56, ptr %bytes166.i.i, align 4
  %ecc_ctrl183.i.i = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 6
  %56 = ptrtoint ptr %ecc_ctrl183.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ecc_ctrl183.i.i, align 8
  %or184.i.i = or i32 %57, 5
  store i32 %or184.i.i, ptr %ecc_ctrl183.i.i, align 8
  br label %rnandc_hw_ecc_controller_init.exit.i

rnandc_hw_ecc_controller_init.exit.i:             ; preds = %sw.bb164.i.i, %sw.bb143.i.i, %sw.bb122.i.i, %sw.bb101.i.i, %sw.bb80.i.i, %sw.bb61.i.i
  %shl.i.i = shl nuw nsw i32 %40, 8
  %and215.i.i = and i32 %shl.i.i, 16128
  %ecc_ctrl216.i.i = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 6
  %58 = ptrtoint ptr %ecc_ctrl216.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ecc_ctrl216.i.i, align 8
  %or217.i.i = or i32 %59, %and215.i.i
  store i32 %or217.i.i, ptr %ecc_ctrl216.i.i, align 8
  %ooblayout1.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %60 = ptrtoint ptr %ooblayout1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @rnandc_ooblayout_ops, ptr %ooblayout1.i.i.i, align 8
  %div.lhs.trunc.i.i = trunc i32 %6 to i16
  %div.rhs.trunc.i.i = trunc i32 %35 to i16
  %div260.i.i = udiv i16 %div.lhs.trunc.i.i, %div.rhs.trunc.i.i
  %div.zext.i.i = zext i16 %div260.i.i to i32
  %steps.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %61 = ptrtoint ptr %steps.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div.zext.i.i, ptr %steps.i.i, align 4
  %read_page.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %62 = ptrtoint ptr %read_page.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @rnandc_read_page_hw_ecc, ptr %read_page.i.i, align 8
  %read_subpage.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 19
  %63 = ptrtoint ptr %read_subpage.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @rnandc_read_subpage_hw_ecc, ptr %read_subpage.i.i, align 4
  %write_page.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %64 = ptrtoint ptr %write_page.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @rnandc_write_page_hw_ecc, ptr %write_page.i.i, align 4
  %write_subpage.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 20
  %65 = ptrtoint ptr %write_subpage.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @rnandc_write_subpage_hw_ecc, ptr %write_subpage.i.i, align 8
  br label %if.end94

do.end92.sink.split:                              ; preds = %sw.epilog.i.i.do.end92.sink.split_crit_edge, %if.end.i.i.do.end92.sink.split_crit_edge, %sw.bb.i.do.end92.sink.split_crit_edge, %land.lhs.true5.i.do.end92.sink.split_crit_edge, %if.then.i.do.end92.sink.split_crit_edge
  %.str.19.sink = phi ptr [ @.str.19, %land.lhs.true5.i.do.end92.sink.split_crit_edge ], [ @.str.19, %if.then.i.do.end92.sink.split_crit_edge ], [ @.str.21, %sw.bb.i.do.end92.sink.split_crit_edge ], [ @.str.24, %if.end.i.i.do.end92.sink.split_crit_edge ], [ @.str.27, %sw.epilog.i.i.do.end92.sink.split_crit_edge ]
  %dev.i = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 1
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull %.str.19.sink) #11
  br label %do.end92

do.end92:                                         ; preds = %do.end92.sink.split, %if.end13.i.do.end92_crit_edge
  %dev93 = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 1
  %68 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev93, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.17, i32 noundef -22) #11
  br label %cleanup

if.end94:                                         ; preds = %rnandc_hw_ecc_controller_init.exit.i, %if.end13.i.if.end94_crit_edge, %if.end13.i.if.end94_crit_edge119, %sw.epilog.if.end94_crit_edge
  %selected_die = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 2
  %70 = ptrtoint ptr %selected_die to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %selected_die, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %do.end92, %do.end84, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end84 ], [ -22, %do.end92 ], [ 0, %if.end94 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnandc_exec_op(ptr noundef %chip, ptr nocapture noundef readonly %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  %last_bytes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_bytes)
  %2 = ptrtoint ptr %last_bytes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %last_bytes, align 4
  br i1 %check_only, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %op, align 4
  tail call fastcc void @rnandc_select_target(ptr noundef %chip, i32 noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ninstrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %5 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1050.not = icmp eq i32 %6, 0
  br i1 %cmp1050.not, label %if.end.for.end521_crit_edge, label %for.body.lr.ph

if.end.for.end521_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end521

for.body.lr.ph:                                   ; preds = %if.end
  %instrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc519.for.body_crit_edge, %for.body.lr.ph
  %cmd_phase.01065 = phi i32 [ 0, %for.body.lr.ph ], [ %cmd_phase.1, %for.inc519.for.body_crit_edge ]
  %addr_phase.01064 = phi i32 [ 0, %for.body.lr.ph ], [ %addr_phase.1, %for.inc519.for.body_crit_edge ]
  %data_phase.01063 = phi i32 [ 0, %for.body.lr.ph ], [ %data_phase.1, %for.inc519.for.body_crit_edge ]
  %delay_phase.01062 = phi i32 [ 0, %for.body.lr.ph ], [ %delay_phase.1, %for.inc519.for.body_crit_edge ]
  %op_id.01060 = phi i32 [ 0, %for.body.lr.ph ], [ %inc520, %for.inc519.for.body_crit_edge ]
  %rop.sroa.61998.01059 = phi i32 [ 0, %for.body.lr.ph ], [ %rop.sroa.61998.1, %for.inc519.for.body_crit_edge ]
  %rop.sroa.57.01058 = phi i8 [ 0, %for.body.lr.ph ], [ %rop.sroa.57.2, %for.inc519.for.body_crit_edge ]
  %rop.sroa.50.01057 = phi ptr [ null, %for.body.lr.ph ], [ %rop.sroa.50.1, %for.inc519.for.body_crit_edge ]
  %rop.sroa.26.01056 = phi i32 [ 32768, %for.body.lr.ph ], [ %rop.sroa.26.1, %for.inc519.for.body_crit_edge ]
  %rop.sroa.0.01055 = phi i32 [ 0, %for.body.lr.ph ], [ %rop.sroa.0.1, %for.inc519.for.body_crit_edge ]
  %rop.sroa.13.01054 = phi i32 [ 0, %for.body.lr.ph ], [ %rop.sroa.13.2, %for.inc519.for.body_crit_edge ]
  %rop.sroa.22.01053 = phi i32 [ 0, %for.body.lr.ph ], [ %rop.sroa.22.2, %for.inc519.for.body_crit_edge ]
  %rop.sroa.19.01052 = phi i32 [ 0, %for.body.lr.ph ], [ %rop.sroa.19.2, %for.inc519.for.body_crit_edge ]
  %rop.sroa.16.01051 = phi i32 [ 0, %for.body.lr.ph ], [ %rop.sroa.16.2, %for.inc519.for.body_crit_edge ]
  %7 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %8, i32 %op_id.01060
  tail call fastcc void @nand_op_trace(ptr noundef %arrayidx)
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %10, label %for.body.for.inc519_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb155
    i32 2, label %sw.bb438
    i32 3, label %for.body.sw.bb439_crit_edge
    i32 4, label %sw.bb464
  ]

for.body.sw.bb439_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb439

for.body.for.inc519_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc519

sw.bb:                                            ; preds = %for.body
  %12 = zext i32 %cmd_phase.01065 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %cmd_phase.01065, label %sw.bb.cleanup_crit_edge [
    i32 0, label %do.body5
    i32 1, label %do.body31
    i32 2, label %do.body72
    i32 3, label %do.body113
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %ctx = getelementptr %struct.nand_op_instr, ptr %8, i32 %op_id.01060, i32 1
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctx, align 4
  %conv21 = zext i8 %14 to i32
  %shl = shl nuw nsw i32 %conv21, 8
  %or = or i32 %shl, %rop.sroa.0.01055
  %or23 = or i32 %rop.sroa.26.01056, 1
  br label %for.inc519

do.body31:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %ctx32 = getelementptr %struct.nand_op_instr, ptr %8, i32 %op_id.01060, i32 1
  %15 = ptrtoint ptr %ctx32 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ctx32, align 4
  %conv54 = zext i8 %16 to i32
  %shl55 = shl nuw nsw i32 %conv54, 16
  %or58 = or i32 %rop.sroa.26.01056, %shl55
  %or60 = or i32 %or58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr_phase.01064)
  %cmp61 = icmp eq i32 %addr_phase.01064, 0
  %spec.store.select = select i1 %cmp61, i32 1, i32 %addr_phase.01064
  br label %for.inc519

do.body72:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %ctx73 = getelementptr %struct.nand_op_instr, ptr %8, i32 %op_id.01060, i32 1
  %17 = ptrtoint ptr %ctx73 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ctx73, align 4
  %conv95 = zext i8 %18 to i32
  %shl96 = shl nuw i32 %conv95, 24
  %or99 = or i32 %shl96, %rop.sroa.0.01055
  %or101 = or i32 %rop.sroa.26.01056, 4
  %19 = tail call i32 @llvm.umax.i32(i32 %addr_phase.01064, i32 2)
  br label %for.inc519

do.body113:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %ctx114 = getelementptr %struct.nand_op_instr, ptr %8, i32 %op_id.01060, i32 1
  %20 = ptrtoint ptr %ctx114 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ctx114, align 4
  %conv136 = zext i8 %21 to i32
  %shl137 = shl nuw nsw i32 %conv136, 16
  %or140 = or i32 %shl137, %rop.sroa.0.01055
  %or142 = or i32 %rop.sroa.26.01056, 2
  %22 = tail call i32 @llvm.umax.i32(i32 %addr_phase.01064, i32 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay_phase.01062)
  %cmp147 = icmp eq i32 %delay_phase.01062, 0
  %spec.store.select829 = select i1 %cmp147, i32 1, i32 %delay_phase.01062
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_phase.01063)
  %cmp151 = icmp eq i32 %data_phase.01063, 0
  %spec.store.select822 = select i1 %cmp151, i32 1, i32 %data_phase.01063
  br label %for.inc519

sw.bb155:                                         ; preds = %for.body
  %ctx156 = getelementptr %struct.nand_op_instr, ptr %8, i32 %op_id.01060, i32 1
  %addrs157 = getelementptr inbounds %struct.nand_op_addr_instr, ptr %ctx156, i32 0, i32 1
  %23 = ptrtoint ptr %addrs157 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %addrs157, align 4
  %25 = ptrtoint ptr %ctx156 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctx156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %26)
  %cmp160 = icmp ugt i32 %26, 5
  br i1 %cmp160, label %sw.bb155.cleanup_crit_edge, label %if.end163

sw.bb155.cleanup_crit_edge:                       ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end163:                                        ; preds = %sw.bb155
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp165 = icmp ugt i32 %26, 2
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 2)
  %sub = sub nsw i32 %26, %27
  %cond174 = select i1 %cmp165, i32 %sub, i32 0
  %inc175 = add i32 %addr_phase.01064, 1
  %28 = zext i32 %addr_phase.01064 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %addr_phase.01064, label %if.end163.cleanup_crit_edge [
    i32 0, label %for.cond177.preheader
    i32 1, label %for.cond305.preheader
  ]

if.end163.cleanup_crit_edge:                      ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond305.preheader:                            ; preds = %if.end163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp3061035.not = icmp eq i32 %27, 0
  br i1 %cmp3061035.not, label %for.cond305.preheader.do.end353_crit_edge, label %for.body308

for.cond305.preheader.do.end353_crit_edge:        ; preds = %for.cond305.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end353

for.cond177.preheader:                            ; preds = %if.end163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp1781042.not = icmp eq i32 %27, 0
  br i1 %cmp1781042.not, label %for.cond177.preheader.do.end222_crit_edge, label %for.body180

for.cond177.preheader.do.end222_crit_edge:        ; preds = %for.cond177.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end222

for.body180:                                      ; preds = %for.cond177.preheader
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %24, align 1
  %conv182 = zext i8 %30 to i32
  %or184 = or i32 %rop.sroa.13.01054, %conv182
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %exitcond1084.not = icmp eq i32 %27, 1
  br i1 %exitcond1084.not, label %for.body180.do.end222_crit_edge, label %for.body180.1

for.body180.do.end222_crit_edge:                  ; preds = %for.body180
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end222

for.body180.1:                                    ; preds = %for.body180
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx181.1 = getelementptr i8, ptr %24, i32 1
  %31 = ptrtoint ptr %arrayidx181.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx181.1, align 1
  %conv182.1 = zext i8 %32 to i32
  %shl183.1 = shl nuw nsw i32 %conv182.1, 8
  %or184.1 = or i32 %shl183.1, %or184
  br label %do.end222

do.end222:                                        ; preds = %for.body180.1, %for.body180.do.end222_crit_edge, %for.cond177.preheader.do.end222_crit_edge
  %rop.sroa.13.1.lcssa = phi i32 [ %rop.sroa.13.01054, %for.cond177.preheader.do.end222_crit_edge ], [ %or184, %for.body180.do.end222_crit_edge ], [ %or184.1, %for.body180.1 ]
  %shl233 = shl nuw nsw i32 %27, 4
  %or236 = or i32 %shl233, %rop.sroa.26.01056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond174)
  %cmp2381046.not = icmp eq i32 %cond174, 0
  br i1 %cmp2381046.not, label %do.end222.do.end285_crit_edge, label %do.end222.for.body240_crit_edge

do.end222.for.body240_crit_edge:                  ; preds = %do.end222
  br label %for.body240

do.end222.do.end285_crit_edge:                    ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end285

for.body240:                                      ; preds = %for.body240.for.body240_crit_edge, %do.end222.for.body240_crit_edge
  %i.11048 = phi i32 [ %inc247, %for.body240.for.body240_crit_edge ], [ 0, %do.end222.for.body240_crit_edge ]
  %rop.sroa.16.11047 = phi i32 [ %or245, %for.body240.for.body240_crit_edge ], [ %rop.sroa.16.01051, %do.end222.for.body240_crit_edge ]
  %add = add i32 %i.11048, 2
  %arrayidx241 = getelementptr i8, ptr %24, i32 %add
  %33 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx241, align 1
  %conv242 = zext i8 %34 to i32
  %mul243 = shl i32 %i.11048, 3
  %shl244 = shl i32 %conv242, %mul243
  %or245 = or i32 %shl244, %rop.sroa.16.11047
  %inc247 = add nuw i32 %i.11048, 1
  %exitcond1085.not = icmp eq i32 %inc247, %cond174
  br i1 %exitcond1085.not, label %for.body240.do.end285_crit_edge, label %for.body240.for.body240_crit_edge

for.body240.for.body240_crit_edge:                ; preds = %for.body240
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body240

for.body240.do.end285_crit_edge:                  ; preds = %for.body240
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end285

do.end285:                                        ; preds = %for.body240.do.end285_crit_edge, %do.end222.do.end285_crit_edge
  %rop.sroa.16.1.lcssa = phi i32 [ %rop.sroa.16.01051, %do.end222.do.end285_crit_edge ], [ %or245, %for.body240.do.end285_crit_edge ]
  %35 = tail call i32 @llvm.umin.i32(i32 %cond174, i32 3)
  %shl296 = shl nuw nsw i32 %35, 8
  %or299 = or i32 %or236, %shl296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd_phase.01065)
  %cmp300 = icmp eq i32 %cmd_phase.01065, 0
  %spec.store.select823 = select i1 %cmp300, i32 1, i32 %cmd_phase.01065
  br label %for.inc519

for.body308:                                      ; preds = %for.cond305.preheader
  %36 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %24, align 1
  %conv310 = zext i8 %37 to i32
  %or313 = or i32 %rop.sroa.19.01052, %conv310
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %exitcond.not = icmp eq i32 %27, 1
  br i1 %exitcond.not, label %for.body308.do.end353_crit_edge, label %for.body308.1

for.body308.do.end353_crit_edge:                  ; preds = %for.body308
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end353

for.body308.1:                                    ; preds = %for.body308
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx309.1 = getelementptr i8, ptr %24, i32 1
  %38 = ptrtoint ptr %arrayidx309.1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx309.1, align 1
  %conv310.1 = zext i8 %39 to i32
  %shl312.1 = shl nuw nsw i32 %conv310.1, 8
  %or313.1 = or i32 %shl312.1, %or313
  br label %do.end353

do.end353:                                        ; preds = %for.body308.1, %for.body308.do.end353_crit_edge, %for.cond305.preheader.do.end353_crit_edge
  %rop.sroa.19.1.lcssa = phi i32 [ %rop.sroa.19.01052, %for.cond305.preheader.do.end353_crit_edge ], [ %or313, %for.body308.do.end353_crit_edge ], [ %or313.1, %for.body308.1 ]
  %shl364 = shl nuw nsw i32 %27, 6
  %or367 = or i32 %shl364, %rop.sroa.26.01056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond174)
  %cmp3691038.not = icmp eq i32 %cond174, 0
  br i1 %cmp3691038.not, label %do.end353.do.end417_crit_edge, label %do.end353.for.body371_crit_edge

do.end353.for.body371_crit_edge:                  ; preds = %do.end353
  br label %for.body371

do.end353.do.end417_crit_edge:                    ; preds = %do.end353
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end417

for.body371:                                      ; preds = %for.body371.for.body371_crit_edge, %do.end353.for.body371_crit_edge
  %i.31040 = phi i32 [ %inc379, %for.body371.for.body371_crit_edge ], [ 0, %do.end353.for.body371_crit_edge ]
  %rop.sroa.22.11039 = phi i32 [ %or377, %for.body371.for.body371_crit_edge ], [ %rop.sroa.22.01053, %do.end353.for.body371_crit_edge ]
  %add372 = add i32 %i.31040, 2
  %arrayidx373 = getelementptr i8, ptr %24, i32 %add372
  %40 = ptrtoint ptr %arrayidx373 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx373, align 1
  %conv374 = zext i8 %41 to i32
  %mul375 = shl i32 %i.31040, 3
  %shl376 = shl i32 %conv374, %mul375
  %or377 = or i32 %shl376, %rop.sroa.22.11039
  %inc379 = add nuw i32 %i.31040, 1
  %exitcond1083.not = icmp eq i32 %inc379, %cond174
  br i1 %exitcond1083.not, label %for.body371.do.end417_crit_edge, label %for.body371.for.body371_crit_edge

for.body371.for.body371_crit_edge:                ; preds = %for.body371
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body371

for.body371.do.end417_crit_edge:                  ; preds = %for.body371
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end417

do.end417:                                        ; preds = %for.body371.do.end417_crit_edge, %do.end353.do.end417_crit_edge
  %rop.sroa.22.1.lcssa = phi i32 [ %rop.sroa.22.01053, %do.end353.do.end417_crit_edge ], [ %or377, %for.body371.do.end417_crit_edge ]
  %42 = tail call i32 @llvm.umin.i32(i32 %cond174, i32 3)
  %shl428 = shl nuw nsw i32 %42, 10
  %or431 = or i32 %or367, %shl428
  %43 = tail call i32 @llvm.umax.i32(i32 %cmd_phase.01065, i32 2)
  br label %for.inc519

sw.bb438:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb439

sw.bb439:                                         ; preds = %sw.bb438, %for.body.sw.bb439_crit_edge
  %rop.sroa.57.1 = phi i8 [ %rop.sroa.57.01058, %for.body.sw.bb439_crit_edge ], [ 1, %sw.bb438 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_phase.01063)
  %cond819 = icmp eq i32 %data_phase.01063, 0
  br i1 %cond819, label %sw.bb449, label %sw.bb439.cleanup_crit_edge

sw.bb439.cleanup_crit_edge:                       ; preds = %sw.bb439
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb449:                                         ; preds = %sw.bb439
  call void @__sanitizer_cov_trace_pc() #10
  %ctx442 = getelementptr %struct.nand_op_instr, ptr %8, i32 %op_id.01060, i32 1
  %44 = ptrtoint ptr %ctx442 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ctx442, align 4
  %buf = getelementptr inbounds %struct.nand_op_data_instr, ptr %ctx442, i32 0, i32 1
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buf, align 4
  %or441 = or i32 %rop.sroa.26.01056, 4096
  %48 = tail call i32 @llvm.umax.i32(i32 %cmd_phase.01065, i32 3)
  %49 = tail call i32 @llvm.umax.i32(i32 %addr_phase.01064, i32 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay_phase.01062)
  %cmp458 = icmp eq i32 %delay_phase.01062, 0
  %spec.store.select826 = select i1 %cmp458, i32 1, i32 %delay_phase.01062
  br label %for.inc519

sw.bb464:                                         ; preds = %for.body
  %50 = zext i32 %delay_phase.01062 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %delay_phase.01062, label %sw.bb464.cleanup_crit_edge [
    i32 0, label %do.end481
    i32 1, label %do.end504
  ]

sw.bb464.cleanup_crit_edge:                       ; preds = %sw.bb464
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end481:                                        ; preds = %sw.bb464
  call void @__sanitizer_cov_trace_pc() #10
  %or484 = or i32 %rop.sroa.26.01056, 8192
  %51 = tail call i32 @llvm.umax.i32(i32 %cmd_phase.01065, i32 3)
  br label %for.inc519

do.end504:                                        ; preds = %sw.bb464
  call void @__sanitizer_cov_trace_pc() #10
  %or507 = or i32 %rop.sroa.26.01056, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_phase.01063)
  %cmp512 = icmp eq i32 %data_phase.01063, 0
  %spec.store.select831 = select i1 %cmp512, i32 1, i32 %data_phase.01063
  br label %for.inc519

for.inc519:                                       ; preds = %do.end504, %do.end481, %sw.bb449, %do.end417, %do.end285, %do.body113, %do.body72, %do.body31, %do.body5, %for.body.for.inc519_crit_edge
  %rop.sroa.16.2 = phi i32 [ %rop.sroa.16.01051, %for.body.for.inc519_crit_edge ], [ %rop.sroa.16.01051, %do.end504 ], [ %rop.sroa.16.01051, %do.end481 ], [ %rop.sroa.16.01051, %sw.bb449 ], [ %rop.sroa.16.01051, %do.end417 ], [ %rop.sroa.16.1.lcssa, %do.end285 ], [ %rop.sroa.16.01051, %do.body113 ], [ %rop.sroa.16.01051, %do.body72 ], [ %rop.sroa.16.01051, %do.body31 ], [ %rop.sroa.16.01051, %do.body5 ]
  %rop.sroa.19.2 = phi i32 [ %rop.sroa.19.01052, %for.body.for.inc519_crit_edge ], [ %rop.sroa.19.01052, %do.end504 ], [ %rop.sroa.19.01052, %do.end481 ], [ %rop.sroa.19.01052, %sw.bb449 ], [ %rop.sroa.19.1.lcssa, %do.end417 ], [ %rop.sroa.19.01052, %do.end285 ], [ %rop.sroa.19.01052, %do.body113 ], [ %rop.sroa.19.01052, %do.body72 ], [ %rop.sroa.19.01052, %do.body31 ], [ %rop.sroa.19.01052, %do.body5 ]
  %rop.sroa.22.2 = phi i32 [ %rop.sroa.22.01053, %for.body.for.inc519_crit_edge ], [ %rop.sroa.22.01053, %do.end504 ], [ %rop.sroa.22.01053, %do.end481 ], [ %rop.sroa.22.01053, %sw.bb449 ], [ %rop.sroa.22.1.lcssa, %do.end417 ], [ %rop.sroa.22.01053, %do.end285 ], [ %rop.sroa.22.01053, %do.body113 ], [ %rop.sroa.22.01053, %do.body72 ], [ %rop.sroa.22.01053, %do.body31 ], [ %rop.sroa.22.01053, %do.body5 ]
  %rop.sroa.13.2 = phi i32 [ %rop.sroa.13.01054, %for.body.for.inc519_crit_edge ], [ %rop.sroa.13.01054, %do.end504 ], [ %rop.sroa.13.01054, %do.end481 ], [ %rop.sroa.13.01054, %sw.bb449 ], [ %rop.sroa.13.01054, %do.end417 ], [ %rop.sroa.13.1.lcssa, %do.end285 ], [ %rop.sroa.13.01054, %do.body113 ], [ %rop.sroa.13.01054, %do.body72 ], [ %rop.sroa.13.01054, %do.body31 ], [ %rop.sroa.13.01054, %do.body5 ]
  %rop.sroa.0.1 = phi i32 [ %rop.sroa.0.01055, %for.body.for.inc519_crit_edge ], [ %rop.sroa.0.01055, %do.end504 ], [ %rop.sroa.0.01055, %do.end481 ], [ %rop.sroa.0.01055, %sw.bb449 ], [ %rop.sroa.0.01055, %do.end417 ], [ %rop.sroa.0.01055, %do.end285 ], [ %or140, %do.body113 ], [ %or99, %do.body72 ], [ %rop.sroa.0.01055, %do.body31 ], [ %or, %do.body5 ]
  %rop.sroa.26.1 = phi i32 [ %rop.sroa.26.01056, %for.body.for.inc519_crit_edge ], [ %or507, %do.end504 ], [ %or484, %do.end481 ], [ %or441, %sw.bb449 ], [ %or431, %do.end417 ], [ %or299, %do.end285 ], [ %or142, %do.body113 ], [ %or101, %do.body72 ], [ %or60, %do.body31 ], [ %or23, %do.body5 ]
  %rop.sroa.50.1 = phi ptr [ %rop.sroa.50.01057, %for.body.for.inc519_crit_edge ], [ %rop.sroa.50.01057, %do.end504 ], [ %rop.sroa.50.01057, %do.end481 ], [ %47, %sw.bb449 ], [ %rop.sroa.50.01057, %do.end417 ], [ %rop.sroa.50.01057, %do.end285 ], [ %rop.sroa.50.01057, %do.body113 ], [ %rop.sroa.50.01057, %do.body72 ], [ %rop.sroa.50.01057, %do.body31 ], [ %rop.sroa.50.01057, %do.body5 ]
  %rop.sroa.57.2 = phi i8 [ %rop.sroa.57.01058, %for.body.for.inc519_crit_edge ], [ %rop.sroa.57.01058, %do.end504 ], [ %rop.sroa.57.01058, %do.end481 ], [ %rop.sroa.57.1, %sw.bb449 ], [ %rop.sroa.57.01058, %do.end417 ], [ %rop.sroa.57.01058, %do.end285 ], [ %rop.sroa.57.01058, %do.body113 ], [ %rop.sroa.57.01058, %do.body72 ], [ %rop.sroa.57.01058, %do.body31 ], [ %rop.sroa.57.01058, %do.body5 ]
  %rop.sroa.61998.1 = phi i32 [ %rop.sroa.61998.01059, %for.body.for.inc519_crit_edge ], [ %rop.sroa.61998.01059, %do.end504 ], [ %rop.sroa.61998.01059, %do.end481 ], [ %45, %sw.bb449 ], [ %rop.sroa.61998.01059, %do.end417 ], [ %rop.sroa.61998.01059, %do.end285 ], [ %rop.sroa.61998.01059, %do.body113 ], [ %rop.sroa.61998.01059, %do.body72 ], [ %rop.sroa.61998.01059, %do.body31 ], [ %rop.sroa.61998.01059, %do.body5 ]
  %delay_phase.1 = phi i32 [ %delay_phase.01062, %for.body.for.inc519_crit_edge ], [ 2, %do.end504 ], [ 1, %do.end481 ], [ %spec.store.select826, %sw.bb449 ], [ %delay_phase.01062, %do.end417 ], [ %delay_phase.01062, %do.end285 ], [ %spec.store.select829, %do.body113 ], [ %delay_phase.01062, %do.body72 ], [ %delay_phase.01062, %do.body31 ], [ %delay_phase.01062, %do.body5 ]
  %data_phase.1 = phi i32 [ %data_phase.01063, %for.body.for.inc519_crit_edge ], [ %spec.store.select831, %do.end504 ], [ %data_phase.01063, %do.end481 ], [ 1, %sw.bb449 ], [ %data_phase.01063, %do.end417 ], [ %data_phase.01063, %do.end285 ], [ %spec.store.select822, %do.body113 ], [ %data_phase.01063, %do.body72 ], [ %data_phase.01063, %do.body31 ], [ %data_phase.01063, %do.body5 ]
  %addr_phase.1 = phi i32 [ %addr_phase.01064, %for.body.for.inc519_crit_edge ], [ %addr_phase.01064, %do.end504 ], [ %addr_phase.01064, %do.end481 ], [ %49, %sw.bb449 ], [ %inc175, %do.end417 ], [ %inc175, %do.end285 ], [ %22, %do.body113 ], [ %19, %do.body72 ], [ %spec.store.select, %do.body31 ], [ %addr_phase.01064, %do.body5 ]
  %cmd_phase.1 = phi i32 [ %cmd_phase.01065, %for.body.for.inc519_crit_edge ], [ 4, %do.end504 ], [ %51, %do.end481 ], [ %48, %sw.bb449 ], [ %43, %do.end417 ], [ %spec.store.select823, %do.end285 ], [ 4, %do.body113 ], [ 3, %do.body72 ], [ 2, %do.body31 ], [ 1, %do.body5 ]
  %inc520 = add nuw i32 %op_id.01060, 1
  %52 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc520, %53
  br i1 %cmp, label %for.inc519.for.body_crit_edge, label %for.inc519.for.end521_crit_edge

for.inc519.for.end521_crit_edge:                  ; preds = %for.inc519
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end521

for.inc519.for.body_crit_edge:                    ; preds = %for.inc519
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end521:                                       ; preds = %for.inc519.for.end521_crit_edge, %if.end.for.end521_crit_edge
  %rop.sroa.16.0.lcssa = phi i32 [ 0, %if.end.for.end521_crit_edge ], [ %rop.sroa.16.2, %for.inc519.for.end521_crit_edge ]
  %rop.sroa.19.0.lcssa = phi i32 [ 0, %if.end.for.end521_crit_edge ], [ %rop.sroa.19.2, %for.inc519.for.end521_crit_edge ]
  %rop.sroa.22.0.lcssa = phi i32 [ 0, %if.end.for.end521_crit_edge ], [ %rop.sroa.22.2, %for.inc519.for.end521_crit_edge ]
  %rop.sroa.13.0.lcssa = phi i32 [ 0, %if.end.for.end521_crit_edge ], [ %rop.sroa.13.2, %for.inc519.for.end521_crit_edge ]
  %rop.sroa.0.0.lcssa = phi i32 [ 0, %if.end.for.end521_crit_edge ], [ %rop.sroa.0.1, %for.inc519.for.end521_crit_edge ]
  %rop.sroa.26.0.lcssa = phi i32 [ 32768, %if.end.for.end521_crit_edge ], [ %rop.sroa.26.1, %for.inc519.for.end521_crit_edge ]
  %rop.sroa.50.0.lcssa = phi ptr [ null, %if.end.for.end521_crit_edge ], [ %rop.sroa.50.1, %for.inc519.for.end521_crit_edge ]
  %rop.sroa.57.0.lcssa = phi i8 [ 0, %if.end.for.end521_crit_edge ], [ %rop.sroa.57.2, %for.inc519.for.end521_crit_edge ]
  %rop.sroa.61998.0.lcssa = phi i32 [ 0, %if.end.for.end521_crit_edge ], [ %rop.sroa.61998.1, %for.inc519.for.end521_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rop.sroa.57.0.lcssa)
  %tobool525.not = icmp eq i8 %rop.sroa.57.0.lcssa, 0
  br i1 %check_only, label %for.end521.cleanup_crit_edge, label %if.end573

for.end521.cleanup_crit_edge:                     ; preds = %for.end521
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end573:                                        ; preds = %for.end521
  %tobool523.not = icmp eq ptr %rop.sroa.50.0.lcssa, null
  %tobool523.not.not = xor i1 %tobool523.not, true
  %or.cond = select i1 %tobool523.not.not, i1 %tobool525.not, i1 false
  %storemerge.v = select i1 %or.cond, i32 19, i32 50
  %storemerge = or i32 %storemerge.v, %rop.sroa.0.0.lcssa
  %54 = tail call i32 @llvm.bswap.i32(i32 %rop.sroa.13.0.lcssa) #8
  %regs.i = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %56, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %54) #8, !srcloc !182
  %57 = tail call i32 @llvm.bswap.i32(i32 %rop.sroa.16.0.lcssa) #8
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %59, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %57) #8, !srcloc !182
  %60 = tail call i32 @llvm.bswap.i32(i32 %rop.sroa.19.0.lcssa) #8
  %61 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %62, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %60) #8, !srcloc !182
  %63 = tail call i32 @llvm.bswap.i32(i32 %rop.sroa.22.0.lcssa) #8
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %65, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %63) #8, !srcloc !182
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %67, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #8, !srcloc !182
  %68 = tail call i32 @llvm.bswap.i32(i32 %rop.sroa.26.0.lcssa) #8
  %69 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %70, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %68) #8, !srcloc !182
  %and21.i = and i32 %rop.sroa.61998.0.lcssa, 32767
  %71 = tail call i32 @llvm.bswap.i32(i32 %and21.i) #8
  %72 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %73, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %71) #8, !srcloc !182
  %74 = tail call i32 @llvm.bswap.i32(i32 %storemerge) #8
  %75 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #8, !srcloc !182
  %div950 = lshr i32 %rop.sroa.61998.0.lcssa, 2
  %rem = and i32 %rop.sroa.61998.0.lcssa, 3
  %or.cond1024 = select i1 %tobool523.not, i1 true, i1 %tobool525.not
  br i1 %or.cond1024, label %if.else697, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end573
  %77 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i, align 4
  %add.ptr1075 = getelementptr i8, ptr %78, i32 180
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1075) #8, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  %80 = and i32 %79, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool603.not1076 = icmp eq i32 %80, 0
  br i1 %tobool603.not1076, label %while.cond.preheader.do.end608_crit_edge, label %while.cond.preheader.while.cond613.preheader_crit_edge

while.cond.preheader.while.cond613.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond613.preheader

while.cond.preheader.do.end608_crit_edge:         ; preds = %while.cond.preheader
  br label %do.end608

while.cond613.preheader:                          ; preds = %do.end608.while.cond613.preheader_crit_edge, %while.cond.preheader.while.cond613.preheader_crit_edge
  %81 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i, align 4
  %add.ptr6331077 = getelementptr i8, ptr %82, i32 180
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6331077) #8, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  %84 = and i32 %83, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool639.not1078 = icmp eq i32 %84, 0
  br i1 %tobool639.not1078, label %while.cond613.preheader.while.end650_crit_edge, label %while.cond613.preheader.do.end645_crit_edge

while.cond613.preheader.do.end645_crit_edge:      ; preds = %while.cond613.preheader
  br label %do.end645

while.cond613.preheader.while.end650_crit_edge:   ; preds = %while.cond613.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end650

do.end608:                                        ; preds = %do.end608.do.end608_crit_edge, %while.cond.preheader.do.end608_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !189
  %85 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %86, i32 180
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  %88 = and i32 %87, 67108864
  %tobool603.not = icmp eq i32 %88, 0
  br i1 %tobool603.not, label %do.end608.do.end608_crit_edge, label %do.end608.while.cond613.preheader_crit_edge

do.end608.while.cond613.preheader_crit_edge:      ; preds = %do.end608
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond613.preheader

do.end608.do.end608_crit_edge:                    ; preds = %do.end608
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end608

do.end645:                                        ; preds = %do.end645.do.end645_crit_edge, %while.cond613.preheader.do.end645_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !191
  %89 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i, align 4
  %add.ptr633 = getelementptr i8, ptr %90, i32 180
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr633) #8, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  %92 = and i32 %91, 16777216
  %tobool639.not = icmp eq i32 %92, 0
  br i1 %tobool639.not, label %do.end645.while.end650_crit_edge, label %do.end645.do.end645_crit_edge

do.end645.do.end645_crit_edge:                    ; preds = %do.end645
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end645

do.end645.while.end650_crit_edge:                 ; preds = %do.end645
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end650

while.end650:                                     ; preds = %do.end645.while.end650_crit_edge, %while.cond613.preheader.while.end650_crit_edge
  %93 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i, align 4
  %add.ptr652 = getelementptr i8, ptr %94, i32 56
  tail call void @__raw_readsl(ptr noundef %add.ptr652, ptr noundef %rop.sroa.50.0.lcssa, i32 noundef %div950) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool654.not = icmp eq i32 %rem, 0
  br i1 %tobool654.not, label %while.end650.do.end679_crit_edge, label %if.then655

while.end650.do.end679_crit_edge:                 ; preds = %while.end650
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end679

if.then655:                                       ; preds = %while.end650
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i, align 4
  %add.ptr658 = getelementptr i8, ptr %96, i32 56
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr658) #8, !srcloc !185
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  %99 = ptrtoint ptr %last_bytes to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %last_bytes, align 4
  %mul662 = and i32 %rop.sroa.61998.0.lcssa, -4
  %add.ptr663 = getelementptr i8, ptr %rop.sroa.50.0.lcssa, i32 %mul662
  %100 = call ptr @memcpy(ptr %add.ptr663, ptr %last_bytes, i32 %rem)
  br label %do.end679

do.end679:                                        ; preds = %if.then655, %while.end650.do.end679_crit_edge
  %101 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs.i, align 4
  %add.ptr684 = getelementptr i8, ptr %102, i32 180
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr684) #8, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  %104 = and i32 %103, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool690.not = icmp eq i32 %104, 0
  br i1 %tobool690.not, label %do.end694, label %do.end679.if.end797_crit_edge

do.end679.if.end797_crit_edge:                    ; preds = %do.end679
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end797

do.end694:                                        ; preds = %do.end679
  call void @__sanitizer_cov_trace_pc() #10
  %dev695 = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 1
  %105 = ptrtoint ptr %dev695 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev695, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %106, ptr noundef nonnull @.str.33) #11
  %107 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i, align 4
  %add.ptr.i969 = getelementptr i8, ptr %108, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i969, i32 16777216) #8, !srcloc !182
  br label %if.end797

if.else697:                                       ; preds = %if.end573
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rop.sroa.61998.0.lcssa)
  %tobool699.not = icmp ne i32 %rop.sroa.61998.0.lcssa, 0
  %or.cond1025 = select i1 %tobool699.not, i1 %tobool525.not, i1 false
  br i1 %or.cond1025, label %while.cond704.preheader, label %if.else697.if.end797_crit_edge

if.else697.if.end797_crit_edge:                   ; preds = %if.else697
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end797

while.cond704.preheader:                          ; preds = %if.else697
  %109 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs.i, align 4
  %add.ptr7241079 = getelementptr i8, ptr %110, i32 180
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7241079) #8, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %112 = and i32 %111, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool730.not1080 = icmp eq i32 %112, 0
  br i1 %tobool730.not1080, label %while.cond704.preheader.while.end741_crit_edge, label %while.cond704.preheader.do.end736_crit_edge

while.cond704.preheader.do.end736_crit_edge:      ; preds = %while.cond704.preheader
  br label %do.end736

while.cond704.preheader.while.end741_crit_edge:   ; preds = %while.cond704.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end741

do.end736:                                        ; preds = %do.end736.do.end736_crit_edge, %while.cond704.preheader.do.end736_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !195
  %113 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i, align 4
  %add.ptr724 = getelementptr i8, ptr %114, i32 180
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr724) #8, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %116 = and i32 %115, 33554432
  %tobool730.not = icmp eq i32 %116, 0
  br i1 %tobool730.not, label %do.end736.while.end741_crit_edge, label %do.end736.do.end736_crit_edge

do.end736.do.end736_crit_edge:                    ; preds = %do.end736
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end736

do.end736.while.end741_crit_edge:                 ; preds = %do.end736
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end741

while.end741:                                     ; preds = %do.end736.while.end741_crit_edge, %while.cond704.preheader.while.end741_crit_edge
  %117 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs.i, align 4
  %add.ptr743 = getelementptr i8, ptr %118, i32 56
  %sub747 = add i32 %rop.sroa.61998.0.lcssa, 3
  %div748951 = lshr i32 %sub747, 2
  tail call void @__raw_writesl(ptr noundef %add.ptr743, ptr noundef %rop.sroa.50.0.lcssa, i32 noundef %div748951) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool749.not = icmp eq i32 %rem, 0
  br i1 %tobool749.not, label %while.end741.if.end756_crit_edge, label %if.then750

while.end741.if.end756_crit_edge:                 ; preds = %while.end741
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end756

if.then750:                                       ; preds = %while.end741
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %last_bytes to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %last_bytes, align 4
  %mul752 = and i32 %rop.sroa.61998.0.lcssa, -4
  %add.ptr753 = getelementptr i8, ptr %rop.sroa.50.0.lcssa, i32 %mul752
  %120 = call ptr @memcpy(ptr %last_bytes, ptr %add.ptr753, i32 %rem)
  %last_bytes.0.last_bytes.0.last_bytes.0. = load i32, ptr %last_bytes, align 4
  %121 = tail call i32 @llvm.bswap.i32(i32 %last_bytes.0.last_bytes.0.last_bytes.0.)
  %122 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i, align 4
  %add.ptr755 = getelementptr i8, ptr %123, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr755, i32 %121) #8, !srcloc !182
  br label %if.end756

if.end756:                                        ; preds = %if.then750, %while.end741.if.end756_crit_edge
  %124 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs.i, align 4
  %add.ptr7771081 = getelementptr i8, ptr %125, i32 180
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7771081) #8, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %126)
  %tobool783.not1082 = icmp sgt i32 %126, -1
  br i1 %tobool783.not1082, label %if.end756.do.end790_crit_edge, label %if.end756.if.end797_crit_edge

if.end756.if.end797_crit_edge:                    ; preds = %if.end756
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end797

if.end756.do.end790_crit_edge:                    ; preds = %if.end756
  br label %do.end790

do.end790:                                        ; preds = %do.end790.do.end790_crit_edge, %if.end756.do.end790_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !197
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !198
  %127 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs.i, align 4
  %add.ptr777 = getelementptr i8, ptr %128, i32 180
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr777) #8, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  %tobool783.not = icmp sgt i32 %129, -1
  br i1 %tobool783.not, label %do.end790.do.end790_crit_edge, label %do.end790.if.end797_crit_edge

do.end790.if.end797_crit_edge:                    ; preds = %do.end790
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end797

do.end790.do.end790_crit_edge:                    ; preds = %do.end790
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end790

if.end797:                                        ; preds = %do.end790.if.end797_crit_edge, %if.end756.if.end797_crit_edge, %if.else697.if.end797_crit_edge, %do.end694, %do.end679.if.end797_crit_edge
  %call798 = tail call fastcc i32 @rnandc_wait_end_of_op(ptr noundef %1, ptr noundef %chip)
  br label %cleanup

cleanup:                                          ; preds = %if.end797, %for.end521.cleanup_crit_edge, %sw.bb464.cleanup_crit_edge, %sw.bb439.cleanup_crit_edge, %if.end163.cleanup_crit_edge, %sw.bb155.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end521.cleanup_crit_edge ], [ %call798, %if.end797 ], [ -95, %sw.bb.cleanup_crit_edge ], [ -95, %sw.bb155.cleanup_crit_edge ], [ -95, %if.end163.cleanup_crit_edge ], [ -95, %sw.bb439.cleanup_crit_edge ], [ -95, %sw.bb464.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_bytes)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnandc_setup_interface(ptr nocapture noundef %chip, i32 noundef %chipnr, ptr noundef %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %eclk = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %eclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eclk, align 4
  %call2 = tail call i32 @clk_get_rate(ptr noundef %3) #8
  %div = udiv i32 1000000000, %call2
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
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tRP_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 29
  %8 = ptrtoint ptr %tRP_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tRP_min, align 4
  %tWP_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 36
  %10 = ptrtoint ptr %tWP_min to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tWP_min, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %tREH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 24
  %12 = ptrtoint ptr %tREH_min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tREH_min, align 8
  %tWH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 34
  %14 = ptrtoint ptr %tWH_min to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tWH_min, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp6.not = icmp eq i32 %13, %15
  br i1 %cmp6.not, label %if.end8, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.60) #11
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chipnr)
  %cmp9 = icmp slt i32 %chipnr, 0
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %do.end26

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end26:                                         ; preds = %if.end8
  %conv = zext i32 %9 to i64
  %18 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv, i32 0) #12, !srcloc !199
  %asmresult.i.i.i = extractvalue { i64, i32 } %18, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %18, 1
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !200
  %asmresult10.i.i.i = extractvalue { i64, i32 } %19, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 9
  %conv29 = zext i32 %div to i64
  %add = add nsw i64 %conv29, -1
  %sub = add nsw i64 %add, %div1581.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp203 = icmp ult i64 %sub, 4294967296
  br i1 %cmp203, label %if.then207, label %if.else213, !prof !183

if.then207:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  %conv208 = trunc i64 %sub to i32
  %div211 = udiv i32 %conv208, %div
  br label %if.end217

if.else213:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub) #12, !srcloc !201
  %asmresult1.i = extractvalue { i64, i64 } %20, 1
  %extract.t8709 = trunc i64 %asmresult1.i to i32
  br label %if.end217

if.end217:                                        ; preds = %if.else213, %if.then207
  %_tmp.0.off0 = phi i32 [ %div211, %if.then207 ], [ %extract.t8709, %if.else213 ]
  %21 = tail call i32 @llvm.umax.i32(i32 %_tmp.0.off0, i32 1)
  %sub228 = add i32 %21, 15
  %and230 = and i32 %sub228, 15
  %conv249 = zext i32 %13 to i64
  %22 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv249, i32 0) #12, !srcloc !199
  %asmresult.i.i.i7529 = extractvalue { i64, i32 } %22, 0
  %asmresult4.i.i.i7530 = extractvalue { i64, i32 } %22, 1
  %23 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv249, i64 %asmresult.i.i.i7529, i32 %asmresult4.i.i.i7530) #12, !srcloc !200
  %asmresult10.i.i.i7531 = extractvalue { i64, i32 } %23, 0
  %div1581.i.i7532 = lshr i64 %asmresult10.i.i.i7531, 9
  %sub253 = add nsw i64 %add, %div1581.i.i7532
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub253)
  %cmp455 = icmp ult i64 %sub253, 4294967296
  br i1 %cmp455, label %if.then463, label %if.else469, !prof !183

if.then463:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #10
  %conv464 = trunc i64 %sub253 to i32
  %div467 = udiv i32 %conv464, %div
  br label %if.end473

if.else469:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #10
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub253) #12, !srcloc !201
  %asmresult1.i7557 = extractvalue { i64, i64 } %24, 1
  %extract.t8713 = trunc i64 %asmresult1.i7557 to i32
  br label %if.end473

if.end473:                                        ; preds = %if.else469, %if.then463
  %_tmp247.0.off0 = phi i32 [ %div467, %if.then463 ], [ %extract.t8713, %if.else469 ]
  %25 = tail call i32 @llvm.umax.i32(i32 %_tmp247.0.off0, i32 1)
  %sub484 = shl i32 %25, 4
  %shl485 = add i32 %sub484, 240
  %and486 = and i32 %shl485, 240
  %or487 = or i32 %and486, %and230
  %timings_asyn = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 7
  %26 = ptrtoint ptr %timings_asyn to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or487, ptr %timings_asyn, align 4
  %tCCS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 1
  %27 = ptrtoint ptr %tCCS_min to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tCCS_min, align 8
  %conv505 = zext i32 %28 to i64
  %29 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv505, i32 0) #12, !srcloc !199
  %asmresult.i.i.i7558 = extractvalue { i64, i32 } %29, 0
  %asmresult4.i.i.i7559 = extractvalue { i64, i32 } %29, 1
  %30 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv505, i64 %asmresult.i.i.i7558, i32 %asmresult4.i.i.i7559) #12, !srcloc !200
  %asmresult10.i.i.i7560 = extractvalue { i64, i32 } %30, 0
  %div1581.i.i7561 = lshr i64 %asmresult10.i.i.i7560, 9
  %sub509 = add nsw i64 %add, %div1581.i.i7561
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub509)
  %cmp711 = icmp ult i64 %sub509, 4294967296
  br i1 %cmp711, label %if.then719, label %if.else725, !prof !183

if.then719:                                       ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #10
  %conv720 = trunc i64 %sub509 to i32
  %div723 = udiv i32 %conv720, %div
  br label %if.end729

if.else725:                                       ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #10
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub509) #12, !srcloc !201
  %asmresult1.i7586 = extractvalue { i64, i64 } %31, 1
  %extract.t8717 = trunc i64 %asmresult1.i7586 to i32
  br label %if.end729

if.end729:                                        ; preds = %if.else725, %if.then719
  %_tmp504.0.off0 = phi i32 [ %div723, %if.then719 ], [ %extract.t8717, %if.else725 ]
  %32 = tail call i32 @llvm.umax.i32(i32 %_tmp504.0.off0, i32 1)
  %sub740 = add i32 %32, 63
  %and742 = and i32 %sub740, 63
  %tADL_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 5
  %33 = ptrtoint ptr %tADL_min to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tADL_min, align 4
  %conv760 = zext i32 %34 to i64
  %35 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv760, i32 0) #12, !srcloc !199
  %asmresult.i.i.i7587 = extractvalue { i64, i32 } %35, 0
  %asmresult4.i.i.i7588 = extractvalue { i64, i32 } %35, 1
  %36 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv760, i64 %asmresult.i.i.i7587, i32 %asmresult4.i.i.i7588) #12, !srcloc !200
  %asmresult10.i.i.i7589 = extractvalue { i64, i32 } %36, 0
  %div1581.i.i7590 = lshr i64 %asmresult10.i.i.i7589, 9
  %sub764 = add nsw i64 %add, %div1581.i.i7590
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub764)
  %cmp966 = icmp ult i64 %sub764, 4294967296
  br i1 %cmp966, label %if.then974, label %if.else980, !prof !183

if.then974:                                       ; preds = %if.end729
  call void @__sanitizer_cov_trace_pc() #10
  %conv975 = trunc i64 %sub764 to i32
  %div978 = udiv i32 %conv975, %div
  br label %if.end984

if.else980:                                       ; preds = %if.end729
  call void @__sanitizer_cov_trace_pc() #10
  %37 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub764) #12, !srcloc !201
  %asmresult1.i7615 = extractvalue { i64, i64 } %37, 1
  %extract.t8721 = trunc i64 %asmresult1.i7615 to i32
  br label %if.end984

if.end984:                                        ; preds = %if.else980, %if.then974
  %_tmp759.0.off0 = phi i32 [ %div978, %if.then974 ], [ %extract.t8721, %if.else980 ]
  %38 = tail call i32 @llvm.umax.i32(i32 %_tmp759.0.off0, i32 1)
  %sub995 = shl i32 %38, 8
  %shl996 = add i32 %sub995, 16128
  %and997 = and i32 %shl996, 16128
  %or998 = or i32 %and997, %and742
  %tRHW_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 26
  %39 = ptrtoint ptr %tRHW_min to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tRHW_min, align 8
  %conv1016 = zext i32 %40 to i64
  %41 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv1016, i32 0) #12, !srcloc !199
  %asmresult.i.i.i7616 = extractvalue { i64, i32 } %41, 0
  %asmresult4.i.i.i7617 = extractvalue { i64, i32 } %41, 1
  %42 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv1016, i64 %asmresult.i.i.i7616, i32 %asmresult4.i.i.i7617) #12, !srcloc !200
  %asmresult10.i.i.i7618 = extractvalue { i64, i32 } %42, 0
  %div1581.i.i7619 = lshr i64 %asmresult10.i.i.i7618, 9
  %sub1020 = add nsw i64 %add, %div1581.i.i7619
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub1020)
  %cmp1222 = icmp ult i64 %sub1020, 4294967296
  br i1 %cmp1222, label %if.then1230, label %if.else1236, !prof !183

if.then1230:                                      ; preds = %if.end984
  call void @__sanitizer_cov_trace_pc() #10
  %conv1231 = trunc i64 %sub1020 to i32
  %div1234 = udiv i32 %conv1231, %div
  br label %if.end1240

if.else1236:                                      ; preds = %if.end984
  call void @__sanitizer_cov_trace_pc() #10
  %43 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub1020) #12, !srcloc !201
  %asmresult1.i7644 = extractvalue { i64, i64 } %43, 1
  %extract.t8725 = trunc i64 %asmresult1.i7644 to i32
  br label %if.end1240

if.end1240:                                       ; preds = %if.else1236, %if.then1230
  %_tmp1015.0.off0 = phi i32 [ %div1234, %if.then1230 ], [ %extract.t8725, %if.else1236 ]
  %44 = tail call i32 @llvm.umax.i32(i32 %_tmp1015.0.off0, i32 1)
  %sub1251 = shl i32 %44, 16
  %shl1252 = add i32 %sub1251, 4128768
  %and1253 = and i32 %shl1252, 4128768
  %or1254 = or i32 %or998, %and1253
  %tWHR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 35
  %45 = ptrtoint ptr %tWHR_min to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tWHR_min, align 4
  %conv1272 = zext i32 %46 to i64
  %47 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv1272, i32 0) #12, !srcloc !199
  %asmresult.i.i.i7645 = extractvalue { i64, i32 } %47, 0
  %asmresult4.i.i.i7646 = extractvalue { i64, i32 } %47, 1
  %48 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv1272, i64 %asmresult.i.i.i7645, i32 %asmresult4.i.i.i7646) #12, !srcloc !200
  %asmresult10.i.i.i7647 = extractvalue { i64, i32 } %48, 0
  %div1581.i.i7648 = lshr i64 %asmresult10.i.i.i7647, 9
  %sub1276 = add nsw i64 %add, %div1581.i.i7648
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub1276)
  %cmp1478 = icmp ult i64 %sub1276, 4294967296
  br i1 %cmp1478, label %if.then1486, label %if.else1492, !prof !183

if.then1486:                                      ; preds = %if.end1240
  call void @__sanitizer_cov_trace_pc() #10
  %conv1487 = trunc i64 %sub1276 to i32
  %div1490 = udiv i32 %conv1487, %div
  br label %if.end1496

if.else1492:                                      ; preds = %if.end1240
  call void @__sanitizer_cov_trace_pc() #10
  %49 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub1276) #12, !srcloc !201
  %asmresult1.i7673 = extractvalue { i64, i64 } %49, 1
  %extract.t8729 = trunc i64 %asmresult1.i7673 to i32
  br label %if.end1496

if.end1496:                                       ; preds = %if.else1492, %if.then1486
  %_tmp1271.0.off0 = phi i32 [ %div1490, %if.then1486 ], [ %extract.t8729, %if.else1492 ]
  %50 = tail call i32 @llvm.umax.i32(i32 %_tmp1271.0.off0, i32 1)
  %sub1507 = shl i32 %50, 24
  %shl1508 = add i32 %sub1507, 1056964608
  %and1509 = and i32 %shl1508, 1056964608
  %or1510 = or i32 %or1254, %and1509
  %tim_seq0 = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 8
  %51 = ptrtoint ptr %tim_seq0 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or1510, ptr %tim_seq0, align 8
  %tWB_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 32
  %52 = ptrtoint ptr %tWB_max to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tWB_max, align 8
  %conv1528 = zext i32 %53 to i64
  %54 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv1528, i32 0) #12, !srcloc !199
  %asmresult.i.i.i7674 = extractvalue { i64, i32 } %54, 0
  %asmresult4.i.i.i7675 = extractvalue { i64, i32 } %54, 1
  %55 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv1528, i64 %asmresult.i.i.i7674, i32 %asmresult4.i.i.i7675) #12, !srcloc !200
  %asmresult10.i.i.i7676 = extractvalue { i64, i32 } %55, 0
  %div1581.i.i7677 = lshr i64 %asmresult10.i.i.i7676, 9
  %sub1532 = add nsw i64 %add, %div1581.i.i7677
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub1532)
  %cmp1734 = icmp ult i64 %sub1532, 4294967296
  br i1 %cmp1734, label %if.then1742, label %if.else1748, !prof !183

if.then1742:                                      ; preds = %if.end1496
  call void @__sanitizer_cov_trace_pc() #10
  %conv1743 = trunc i64 %sub1532 to i32
  %div1746 = udiv i32 %conv1743, %div
  br label %if.end1752

if.else1748:                                      ; preds = %if.end1496
  call void @__sanitizer_cov_trace_pc() #10
  %56 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub1532) #12, !srcloc !201
  %asmresult1.i7702 = extractvalue { i64, i64 } %56, 1
  %extract.t8733 = trunc i64 %asmresult1.i7702 to i32
  br label %if.end1752

if.end1752:                                       ; preds = %if.else1748, %if.then1742
  %_tmp1527.0.off0 = phi i32 [ %div1746, %if.then1742 ], [ %extract.t8733, %if.else1748 ]
  %57 = tail call i32 @llvm.umax.i32(i32 %_tmp1527.0.off0, i32 1)
  %sub1763 = add i32 %57, 63
  %and1765 = and i32 %sub1763, 63
  %tRR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 30
  %58 = ptrtoint ptr %tRR_min to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tRR_min, align 8
  %conv1783 = zext i32 %59 to i64
  %60 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv1783, i32 0) #12, !srcloc !199
  %asmresult.i.i.i7703 = extractvalue { i64, i32 } %60, 0
  %asmresult4.i.i.i7704 = extractvalue { i64, i32 } %60, 1
  %61 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv1783, i64 %asmresult.i.i.i7703, i32 %asmresult4.i.i.i7704) #12, !srcloc !200
  %asmresult10.i.i.i7705 = extractvalue { i64, i32 } %61, 0
  %div1581.i.i7706 = lshr i64 %asmresult10.i.i.i7705, 9
  %sub1787 = add nsw i64 %add, %div1581.i.i7706
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub1787)
  %cmp1989 = icmp ult i64 %sub1787, 4294967296
  br i1 %cmp1989, label %if.then1997, label %if.else2003, !prof !183

if.then1997:                                      ; preds = %if.end1752
  call void @__sanitizer_cov_trace_pc() #10
  %conv1998 = trunc i64 %sub1787 to i32
  %div2001 = udiv i32 %conv1998, %div
  br label %if.end2007

if.else2003:                                      ; preds = %if.end1752
  call void @__sanitizer_cov_trace_pc() #10
  %62 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub1787) #12, !srcloc !201
  %asmresult1.i7731 = extractvalue { i64, i64 } %62, 1
  %extract.t8737 = trunc i64 %asmresult1.i7731 to i32
  br label %if.end2007

if.end2007:                                       ; preds = %if.else2003, %if.then1997
  %_tmp1782.0.off0 = phi i32 [ %div2001, %if.then1997 ], [ %extract.t8737, %if.else2003 ]
  %63 = tail call i32 @llvm.umax.i32(i32 %_tmp1782.0.off0, i32 1)
  %sub2018 = shl i32 %63, 8
  %shl2019 = add i32 %sub2018, 16128
  %and2020 = and i32 %shl2019, 16128
  %or2021 = or i32 %and2020, %and1765
  %tWW_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 37
  %64 = ptrtoint ptr %tWW_min to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tWW_min, align 4
  %conv2039 = zext i32 %65 to i64
  %66 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv2039, i32 0) #12, !srcloc !199
  %asmresult.i.i.i7732 = extractvalue { i64, i32 } %66, 0
  %asmresult4.i.i.i7733 = extractvalue { i64, i32 } %66, 1
  %67 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv2039, i64 %asmresult.i.i.i7732, i32 %asmresult4.i.i.i7733) #12, !srcloc !200
  %asmresult10.i.i.i7734 = extractvalue { i64, i32 } %67, 0
  %div1581.i.i7735 = lshr i64 %asmresult10.i.i.i7734, 9
  %sub2043 = add nsw i64 %add, %div1581.i.i7735
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub2043)
  %cmp2245 = icmp ult i64 %sub2043, 4294967296
  br i1 %cmp2245, label %if.then2253, label %if.else2259, !prof !183

if.then2253:                                      ; preds = %if.end2007
  call void @__sanitizer_cov_trace_pc() #10
  %conv2254 = trunc i64 %sub2043 to i32
  %div2257 = udiv i32 %conv2254, %div
  br label %if.end2263

if.else2259:                                      ; preds = %if.end2007
  call void @__sanitizer_cov_trace_pc() #10
  %68 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub2043) #12, !srcloc !201
  %asmresult1.i7760 = extractvalue { i64, i64 } %68, 1
  %extract.t8741 = trunc i64 %asmresult1.i7760 to i32
  br label %if.end2263

if.end2263:                                       ; preds = %if.else2259, %if.then2253
  %_tmp2038.0.off0 = phi i32 [ %div2257, %if.then2253 ], [ %extract.t8741, %if.else2259 ]
  %69 = tail call i32 @llvm.umax.i32(i32 %_tmp2038.0.off0, i32 1)
  %sub2274 = shl i32 %69, 16
  %shl2275 = add i32 %sub2274, 4128768
  %and2276 = and i32 %shl2275, 4128768
  %or2277 = or i32 %or2021, %and2276
  %tim_seq1 = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 9
  %70 = ptrtoint ptr %tim_seq1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or2277, ptr %tim_seq1, align 4
  %tDS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 18
  %71 = ptrtoint ptr %tDS_min to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tDS_min, align 8
  %tDH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 17
  %73 = ptrtoint ptr %tDH_min to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tDH_min, align 4
  %add2278 = add i32 %74, %72
  %tCLH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 12
  %75 = ptrtoint ptr %tCLH_min to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tCLH_min, align 8
  %tCLS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 14
  %77 = ptrtoint ptr %tCLS_min to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tCLS_min, align 8
  %tALH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 4
  %79 = ptrtoint ptr %tALH_min to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tALH_min, align 8
  %tALS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 6
  %81 = ptrtoint ptr %tALS_min to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tALS_min, align 8
  %83 = ptrtoint ptr %tWB_max to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tWB_max, align 8
  %sub2283 = sub i32 %84, %74
  %85 = ptrtoint ptr %tWHR_min to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tWHR_min, align 4
  %tREA_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 23
  %87 = ptrtoint ptr %tREA_max to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tREA_max, align 4
  %add2285 = sub i32 %86, %74
  %sub2287 = add i32 %add2285, %88
  %add2279 = sub i32 %76, %add2278
  %sub2305 = add i32 %add2279, %78
  %conv2306 = zext i32 %sub2305 to i64
  %89 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv2306, i32 0) #12, !srcloc !199
  %asmresult.i.i.i7761 = extractvalue { i64, i32 } %89, 0
  %asmresult4.i.i.i7762 = extractvalue { i64, i32 } %89, 1
  %90 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv2306, i64 %asmresult.i.i.i7761, i32 %asmresult4.i.i.i7762) #12, !srcloc !200
  %asmresult10.i.i.i7763 = extractvalue { i64, i32 } %90, 0
  %div1581.i.i7764 = lshr i64 %asmresult10.i.i.i7763, 9
  %sub2310 = add nsw i64 %add, %div1581.i.i7764
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub2310)
  %cmp2512 = icmp ult i64 %sub2310, 4294967296
  br i1 %cmp2512, label %if.then2520, label %if.else2526, !prof !183

if.then2520:                                      ; preds = %if.end2263
  call void @__sanitizer_cov_trace_pc() #10
  %conv2521 = trunc i64 %sub2310 to i32
  %div2524 = udiv i32 %conv2521, %div
  br label %if.end2530

if.else2526:                                      ; preds = %if.end2263
  call void @__sanitizer_cov_trace_pc() #10
  %91 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub2310) #12, !srcloc !201
  %asmresult1.i7789 = extractvalue { i64, i64 } %91, 1
  %extract.t8744 = trunc i64 %asmresult1.i7789 to i32
  br label %if.end2530

if.end2530:                                       ; preds = %if.else2526, %if.then2520
  %_tmp2304.0.off0 = phi i32 [ %div2524, %if.then2520 ], [ %extract.t8744, %if.else2526 ]
  %92 = tail call i32 @llvm.umax.i32(i32 %_tmp2304.0.off0, i32 1)
  %sub2541 = add i32 %92, 63
  %and2543 = and i32 %sub2541, 63
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub2310)
  %cmp2768 = icmp ult i64 %sub2310, 4294967296
  br i1 %cmp2768, label %if.then2776, label %if.else2782, !prof !183

if.then2776:                                      ; preds = %if.end2530
  call void @__sanitizer_cov_trace_pc() #10
  %conv2777 = trunc i64 %sub2310 to i32
  %div2780 = udiv i32 %conv2777, %div
  br label %if.end2786

if.else2782:                                      ; preds = %if.end2530
  call void @__sanitizer_cov_trace_pc() #10
  %93 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub2310) #12, !srcloc !201
  %asmresult1.i7818 = extractvalue { i64, i64 } %93, 1
  %extract.t8747 = trunc i64 %asmresult1.i7818 to i32
  br label %if.end2786

if.end2786:                                       ; preds = %if.else2782, %if.then2776
  %_tmp2560.0.off0 = phi i32 [ %div2780, %if.then2776 ], [ %extract.t8747, %if.else2782 ]
  %94 = tail call i32 @llvm.umax.i32(i32 %_tmp2560.0.off0, i32 1)
  %sub2797 = shl i32 %94, 8
  %shl2798 = add i32 %sub2797, 16128
  %and2799 = and i32 %shl2798, 16128
  %or2800 = or i32 %and2799, %and2543
  %conv2818 = zext i32 %sub2283 to i64
  %95 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv2818, i32 0) #12, !srcloc !199
  %asmresult.i.i.i7819 = extractvalue { i64, i32 } %95, 0
  %asmresult4.i.i.i7820 = extractvalue { i64, i32 } %95, 1
  %96 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv2818, i64 %asmresult.i.i.i7819, i32 %asmresult4.i.i.i7820) #12, !srcloc !200
  %asmresult10.i.i.i7821 = extractvalue { i64, i32 } %96, 0
  %div1581.i.i7822 = lshr i64 %asmresult10.i.i.i7821, 9
  %sub2822 = add nsw i64 %add, %div1581.i.i7822
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub2822)
  %cmp3024 = icmp ult i64 %sub2822, 4294967296
  br i1 %cmp3024, label %if.then3032, label %if.else3038, !prof !183

if.then3032:                                      ; preds = %if.end2786
  call void @__sanitizer_cov_trace_pc() #10
  %conv3033 = trunc i64 %sub2822 to i32
  %div3036 = udiv i32 %conv3033, %div
  br label %if.end3042

if.else3038:                                      ; preds = %if.end2786
  call void @__sanitizer_cov_trace_pc() #10
  %97 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub2822) #12, !srcloc !201
  %asmresult1.i7847 = extractvalue { i64, i64 } %97, 1
  %extract.t8751 = trunc i64 %asmresult1.i7847 to i32
  br label %if.end3042

if.end3042:                                       ; preds = %if.else3038, %if.then3032
  %_tmp2817.0.off0 = phi i32 [ %div3036, %if.then3032 ], [ %extract.t8751, %if.else3038 ]
  %98 = tail call i32 @llvm.umax.i32(i32 %_tmp2817.0.off0, i32 1)
  %sub3053 = shl i32 %98, 16
  %shl3054 = add i32 %sub3053, 4128768
  %and3055 = and i32 %shl3054, 4128768
  %or3056 = or i32 %or2800, %and3055
  %conv3074 = zext i32 %sub2287 to i64
  %99 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv3074, i32 0) #12, !srcloc !199
  %asmresult.i.i.i7848 = extractvalue { i64, i32 } %99, 0
  %asmresult4.i.i.i7849 = extractvalue { i64, i32 } %99, 1
  %100 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv3074, i64 %asmresult.i.i.i7848, i32 %asmresult4.i.i.i7849) #12, !srcloc !200
  %asmresult10.i.i.i7850 = extractvalue { i64, i32 } %100, 0
  %div1581.i.i7851 = lshr i64 %asmresult10.i.i.i7850, 9
  %sub3078 = add nsw i64 %add, %div1581.i.i7851
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub3078)
  %cmp3280 = icmp ult i64 %sub3078, 4294967296
  br i1 %cmp3280, label %if.then3288, label %if.else3294, !prof !183

if.then3288:                                      ; preds = %if.end3042
  call void @__sanitizer_cov_trace_pc() #10
  %conv3289 = trunc i64 %sub3078 to i32
  %div3292 = udiv i32 %conv3289, %div
  br label %if.end3298

if.else3294:                                      ; preds = %if.end3042
  call void @__sanitizer_cov_trace_pc() #10
  %101 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub3078) #12, !srcloc !201
  %asmresult1.i7876 = extractvalue { i64, i64 } %101, 1
  %extract.t8755 = trunc i64 %asmresult1.i7876 to i32
  br label %if.end3298

if.end3298:                                       ; preds = %if.else3294, %if.then3288
  %_tmp3073.0.off0 = phi i32 [ %div3292, %if.then3288 ], [ %extract.t8755, %if.else3294 ]
  %102 = tail call i32 @llvm.umax.i32(i32 %_tmp3073.0.off0, i32 1)
  %sub3309 = shl i32 %102, 24
  %shl3310 = add i32 %sub3309, 1056964608
  %and3311 = and i32 %shl3310, 1056964608
  %or3312 = or i32 %or3056, %and3311
  %tim_gen_seq0 = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 10
  %103 = ptrtoint ptr %tim_gen_seq0 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or3312, ptr %tim_gen_seq0, align 8
  %add2280 = sub i32 %80, %add2278
  %sub3330 = add i32 %add2280, %82
  %conv3331 = zext i32 %sub3330 to i64
  %104 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv3331, i32 0) #12, !srcloc !199
  %asmresult.i.i.i7877 = extractvalue { i64, i32 } %104, 0
  %asmresult4.i.i.i7878 = extractvalue { i64, i32 } %104, 1
  %105 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv3331, i64 %asmresult.i.i.i7877, i32 %asmresult4.i.i.i7878) #12, !srcloc !200
  %asmresult10.i.i.i7879 = extractvalue { i64, i32 } %105, 0
  %div1581.i.i7880 = lshr i64 %asmresult10.i.i.i7879, 9
  %sub3335 = add nsw i64 %add, %div1581.i.i7880
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub3335)
  %cmp3537 = icmp ult i64 %sub3335, 4294967296
  br i1 %cmp3537, label %if.then3545, label %if.else3551, !prof !183

if.then3545:                                      ; preds = %if.end3298
  call void @__sanitizer_cov_trace_pc() #10
  %conv3546 = trunc i64 %sub3335 to i32
  %div3549 = udiv i32 %conv3546, %div
  br label %if.end3555

if.else3551:                                      ; preds = %if.end3298
  call void @__sanitizer_cov_trace_pc() #10
  %106 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub3335) #12, !srcloc !201
  %asmresult1.i7905 = extractvalue { i64, i64 } %106, 1
  %extract.t8758 = trunc i64 %asmresult1.i7905 to i32
  br label %if.end3555

if.end3555:                                       ; preds = %if.else3551, %if.then3545
  %_tmp3329.0.off0 = phi i32 [ %div3549, %if.then3545 ], [ %extract.t8758, %if.else3551 ]
  %107 = tail call i32 @llvm.umax.i32(i32 %_tmp3329.0.off0, i32 1)
  %sub3566 = add i32 %107, 63
  %and3568 = and i32 %sub3566, 63
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub3335)
  %cmp3793 = icmp ult i64 %sub3335, 4294967296
  br i1 %cmp3793, label %if.then3801, label %if.else3807, !prof !183

if.then3801:                                      ; preds = %if.end3555
  call void @__sanitizer_cov_trace_pc() #10
  %conv3802 = trunc i64 %sub3335 to i32
  %div3805 = udiv i32 %conv3802, %div
  br label %if.end3811

if.else3807:                                      ; preds = %if.end3555
  call void @__sanitizer_cov_trace_pc() #10
  %108 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub3335) #12, !srcloc !201
  %asmresult1.i7934 = extractvalue { i64, i64 } %108, 1
  %extract.t8760 = trunc i64 %asmresult1.i7934 to i32
  br label %if.end3811

if.end3811:                                       ; preds = %if.else3807, %if.then3801
  %_tmp3585.0.off0 = phi i32 [ %div3805, %if.then3801 ], [ %extract.t8760, %if.else3807 ]
  %109 = tail call i32 @llvm.umax.i32(i32 %_tmp3585.0.off0, i32 1)
  %sub3822 = shl i32 %109, 8
  %shl3823 = add i32 %sub3822, 16128
  %and3824 = and i32 %shl3823, 16128
  %or3825 = or i32 %and3824, %and3568
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub2822)
  %cmp4049 = icmp ult i64 %sub2822, 4294967296
  br i1 %cmp4049, label %if.then4057, label %if.else4063, !prof !183

if.then4057:                                      ; preds = %if.end3811
  call void @__sanitizer_cov_trace_pc() #10
  %conv4058 = trunc i64 %sub2822 to i32
  %div4061 = udiv i32 %conv4058, %div
  br label %if.end4067

if.else4063:                                      ; preds = %if.end3811
  call void @__sanitizer_cov_trace_pc() #10
  %110 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub2822) #12, !srcloc !201
  %asmresult1.i7963 = extractvalue { i64, i64 } %110, 1
  %extract.t8762 = trunc i64 %asmresult1.i7963 to i32
  br label %if.end4067

if.end4067:                                       ; preds = %if.else4063, %if.then4057
  %_tmp3842.0.off0 = phi i32 [ %div4061, %if.then4057 ], [ %extract.t8762, %if.else4063 ]
  %111 = tail call i32 @llvm.umax.i32(i32 %_tmp3842.0.off0, i32 1)
  %sub4078 = shl i32 %111, 16
  %shl4079 = add i32 %sub4078, 4128768
  %and4080 = and i32 %shl4079, 4128768
  %or4081 = or i32 %and4080, %or3825
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub3078)
  %cmp4305 = icmp ult i64 %sub3078, 4294967296
  br i1 %cmp4305, label %if.then4313, label %if.else4319, !prof !183

if.then4313:                                      ; preds = %if.end4067
  call void @__sanitizer_cov_trace_pc() #10
  %conv4314 = trunc i64 %sub3078 to i32
  %div4317 = udiv i32 %conv4314, %div
  br label %if.end4323

if.else4319:                                      ; preds = %if.end4067
  call void @__sanitizer_cov_trace_pc() #10
  %112 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub3078) #12, !srcloc !201
  %asmresult1.i7992 = extractvalue { i64, i64 } %112, 1
  %extract.t8765 = trunc i64 %asmresult1.i7992 to i32
  br label %if.end4323

if.end4323:                                       ; preds = %if.else4319, %if.then4313
  %_tmp4098.0.off0 = phi i32 [ %div4317, %if.then4313 ], [ %extract.t8765, %if.else4319 ]
  %113 = tail call i32 @llvm.umax.i32(i32 %_tmp4098.0.off0, i32 1)
  %sub4334 = shl i32 %113, 24
  %shl4335 = add i32 %sub4334, 1056964608
  %and4336 = and i32 %shl4335, 1056964608
  %or4337 = or i32 %and4336, %or4081
  %tim_gen_seq1 = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 11
  %114 = ptrtoint ptr %tim_gen_seq1 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or4337, ptr %tim_gen_seq1, align 4
  %115 = ptrtoint ptr %tRR_min to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tRR_min, align 8
  %117 = ptrtoint ptr %tREA_max to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tREA_max, align 4
  %add4357 = add i32 %118, %116
  %conv4358 = zext i32 %add4357 to i64
  %119 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv4358, i32 0) #12, !srcloc !199
  %asmresult.i.i.i7993 = extractvalue { i64, i32 } %119, 0
  %asmresult4.i.i.i7994 = extractvalue { i64, i32 } %119, 1
  %120 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv4358, i64 %asmresult.i.i.i7993, i32 %asmresult4.i.i.i7994) #12, !srcloc !200
  %asmresult10.i.i.i7995 = extractvalue { i64, i32 } %120, 0
  %div1581.i.i7996 = lshr i64 %asmresult10.i.i.i7995, 9
  %sub4362 = add nsw i64 %add, %div1581.i.i7996
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub4362)
  %cmp4564 = icmp ult i64 %sub4362, 4294967296
  br i1 %cmp4564, label %if.then4572, label %if.else4578, !prof !183

if.then4572:                                      ; preds = %if.end4323
  call void @__sanitizer_cov_trace_pc() #10
  %conv4573 = trunc i64 %sub4362 to i32
  %div4576 = udiv i32 %conv4573, %div
  br label %if.end4582

if.else4578:                                      ; preds = %if.end4323
  call void @__sanitizer_cov_trace_pc() #10
  %121 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub4362) #12, !srcloc !201
  %asmresult1.i8021 = extractvalue { i64, i64 } %121, 1
  %extract.t8769 = trunc i64 %asmresult1.i8021 to i32
  br label %if.end4582

if.end4582:                                       ; preds = %if.else4578, %if.then4572
  %_tmp4354.0.off0 = phi i32 [ %div4576, %if.then4572 ], [ %extract.t8769, %if.else4578 ]
  %122 = tail call i32 @llvm.umax.i32(i32 %_tmp4354.0.off0, i32 1)
  %sub4593 = add i32 %122, 63
  %and4595 = and i32 %sub4593, 63
  %conv4614 = zext i32 %116 to i64
  %123 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv4614, i32 0) #12, !srcloc !199
  %asmresult.i.i.i8022 = extractvalue { i64, i32 } %123, 0
  %asmresult4.i.i.i8023 = extractvalue { i64, i32 } %123, 1
  %124 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv4614, i64 %asmresult.i.i.i8022, i32 %asmresult4.i.i.i8023) #12, !srcloc !200
  %asmresult10.i.i.i8024 = extractvalue { i64, i32 } %124, 0
  %div1581.i.i8025 = lshr i64 %asmresult10.i.i.i8024, 9
  %sub4618 = add nsw i64 %add, %div1581.i.i8025
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub4618)
  %cmp4820 = icmp ult i64 %sub4618, 4294967296
  br i1 %cmp4820, label %if.then4828, label %if.else4834, !prof !183

if.then4828:                                      ; preds = %if.end4582
  call void @__sanitizer_cov_trace_pc() #10
  %conv4829 = trunc i64 %sub4618 to i32
  %div4832 = udiv i32 %conv4829, %div
  br label %if.end4838

if.else4834:                                      ; preds = %if.end4582
  call void @__sanitizer_cov_trace_pc() #10
  %125 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub4618) #12, !srcloc !201
  %asmresult1.i8050 = extractvalue { i64, i64 } %125, 1
  %extract.t8772 = trunc i64 %asmresult1.i8050 to i32
  br label %if.end4838

if.end4838:                                       ; preds = %if.else4834, %if.then4828
  %_tmp4612.0.off0 = phi i32 [ %div4832, %if.then4828 ], [ %extract.t8772, %if.else4834 ]
  %126 = tail call i32 @llvm.umax.i32(i32 %_tmp4612.0.off0, i32 1)
  %sub4849 = shl i32 %126, 8
  %shl4850 = add i32 %sub4849, 16128
  %and4851 = and i32 %shl4850, 16128
  %or4852 = or i32 %and4851, %and4595
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub2310)
  %cmp5077 = icmp ult i64 %sub2310, 4294967296
  br i1 %cmp5077, label %if.then5085, label %if.else5091, !prof !183

if.then5085:                                      ; preds = %if.end4838
  call void @__sanitizer_cov_trace_pc() #10
  %conv5086 = trunc i64 %sub2310 to i32
  %div5089 = udiv i32 %conv5086, %div
  br label %if.end5095

if.else5091:                                      ; preds = %if.end4838
  call void @__sanitizer_cov_trace_pc() #10
  %127 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub2310) #12, !srcloc !201
  %asmresult1.i8079 = extractvalue { i64, i64 } %127, 1
  %extract.t8774 = trunc i64 %asmresult1.i8079 to i32
  br label %if.end5095

if.end5095:                                       ; preds = %if.else5091, %if.then5085
  %_tmp4869.0.off0 = phi i32 [ %div5089, %if.then5085 ], [ %extract.t8774, %if.else5091 ]
  %128 = tail call i32 @llvm.umax.i32(i32 %_tmp4869.0.off0, i32 1)
  %sub5106 = shl i32 %128, 16
  %shl5107 = add i32 %sub5106, 4128768
  %and5108 = and i32 %shl5107, 4128768
  %or5109 = or i32 %and5108, %or4852
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub2822)
  %cmp5333 = icmp ult i64 %sub2822, 4294967296
  br i1 %cmp5333, label %if.then5341, label %if.else5347, !prof !183

if.then5341:                                      ; preds = %if.end5095
  call void @__sanitizer_cov_trace_pc() #10
  %conv5342 = trunc i64 %sub2822 to i32
  %div5345 = udiv i32 %conv5342, %div
  br label %if.end5351

if.else5347:                                      ; preds = %if.end5095
  call void @__sanitizer_cov_trace_pc() #10
  %129 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub2822) #12, !srcloc !201
  %asmresult1.i8108 = extractvalue { i64, i64 } %129, 1
  %extract.t8777 = trunc i64 %asmresult1.i8108 to i32
  br label %if.end5351

if.end5351:                                       ; preds = %if.else5347, %if.then5341
  %_tmp5126.0.off0 = phi i32 [ %div5345, %if.then5341 ], [ %extract.t8777, %if.else5347 ]
  %130 = tail call i32 @llvm.umax.i32(i32 %_tmp5126.0.off0, i32 1)
  %sub5362 = shl i32 %130, 24
  %shl5363 = add i32 %sub5362, 1056964608
  %and5364 = and i32 %shl5363, 1056964608
  %or5365 = or i32 %and5364, %or5109
  %tim_gen_seq2 = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 12
  %131 = ptrtoint ptr %tim_gen_seq2 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %or5365, ptr %tim_gen_seq2, align 8
  %132 = ptrtoint ptr %tCLH_min to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tCLH_min, align 8
  %134 = ptrtoint ptr %tDH_min to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %tDH_min, align 4
  %sub5385 = sub i32 %133, %135
  %conv5386 = zext i32 %sub5385 to i64
  %136 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv5386, i32 0) #12, !srcloc !199
  %asmresult.i.i.i8109 = extractvalue { i64, i32 } %136, 0
  %asmresult4.i.i.i8110 = extractvalue { i64, i32 } %136, 1
  %137 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv5386, i64 %asmresult.i.i.i8109, i32 %asmresult4.i.i.i8110) #12, !srcloc !200
  %asmresult10.i.i.i8111 = extractvalue { i64, i32 } %137, 0
  %div1581.i.i8112 = lshr i64 %asmresult10.i.i.i8111, 9
  %sub5390 = add nsw i64 %add, %div1581.i.i8112
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub5390)
  %cmp5592 = icmp ult i64 %sub5390, 4294967296
  br i1 %cmp5592, label %if.then5600, label %if.else5606, !prof !183

if.then5600:                                      ; preds = %if.end5351
  call void @__sanitizer_cov_trace_pc() #10
  %conv5601 = trunc i64 %sub5390 to i32
  %div5604 = udiv i32 %conv5601, %div
  br label %if.end5610

if.else5606:                                      ; preds = %if.end5351
  call void @__sanitizer_cov_trace_pc() #10
  %138 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %sub5390) #12, !srcloc !201
  %asmresult1.i8137 = extractvalue { i64, i64 } %138, 1
  %extract.t8781 = trunc i64 %asmresult1.i8137 to i32
  br label %if.end5610

if.end5610:                                       ; preds = %if.else5606, %if.then5600
  %_tmp5382.0.off0 = phi i32 [ %div5604, %if.then5600 ], [ %extract.t8781, %if.else5606 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %_tmp5382.0.off0)
  %cmp5615 = icmp ugt i32 %_tmp5382.0.off0, 1
  %phi.bo = add i32 %_tmp5382.0.off0, 63
  %phi.bo7505 = and i32 %phi.bo, 63
  %cond5620 = select i1 %cmp5615, i32 %phi.bo7505, i32 0
  %tim_gen_seq3 = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 13
  %139 = ptrtoint ptr %tim_gen_seq3 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %cond5620, ptr %tim_gen_seq3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5610, %if.end8.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ -22, %do.end ], [ 0, %if.end5610 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnandc_read_page_hw_ecc(ptr noundef %chip, ptr nocapture noundef writeonly %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %selected_die.i = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %selected_die.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %selected_die.i, align 8
  %arrayidx.i = getelementptr %struct.rnand_chip, ptr %chip, i32 0, i32 14, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %6 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writesize, align 4
  %add = add i32 %7, 2
  %and71 = and i32 %add, 65535
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %8 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_cs, align 4
  tail call fastcc void @rnandc_select_target(ptr noundef %chip, i32 noundef %9)
  %regs.i = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !182
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #8, !srcloc !182
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %15, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #8, !srcloc !182
  %complete = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %complete, align 4
  %use_polling.i = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %use_polling.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %use_polling.i, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.rnandc_en_interrupts.exit_crit_edge

entry.rnandc_en_interrupts.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rnandc_en_interrupts.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i322 = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i322, i32 134217728) #8, !srcloc !182
  br label %rnandc_en_interrupts.exit

rnandc_en_interrupts.exit:                        ; preds = %if.then.i, %entry.rnandc_en_interrupts.exit_crit_edge
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i324 = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i324) #8, !srcloc !185
  %24 = or i32 %23, 536870912
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i325 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i325, i32 %24) #8, !srcloc !182
  %dev = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %buf74 = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %buf74 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf74, align 4
  %31 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %writesize, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %30) #8
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %rnandc_en_interrupts.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i326, !prof !183

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit

if.then.i326:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %28) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i326.dev_name.exit.i_crit_edge

if.then.i326.dev_name.exit.i_crit_edge:           ; preds = %if.then.i326
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i326
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %28, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i326.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %36, %if.end.i.i ], [ %34, %if.then.i326.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %rnandc_en_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %28, ptr noundef %30, i32 noundef %32) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %37 = load ptr, ptr @mem_map, align 4
  %38 = ptrtoint ptr %30 to i32
  %sub.i = add i32 %38, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i327 = getelementptr %struct.page, ptr %37, i32 %shr.i
  %and.i = and i32 %38, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %28, ptr noundef %add.ptr.i327, i32 noundef %and.i, i32 noundef %32, i32 noundef 2, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void @arm_heavy_mb() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %41, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %39) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %writesize, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  %add.ptr85 = getelementptr i8, ptr %46, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %44) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !205
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 4
  %add.ptr106 = getelementptr i8, ptr %48, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 -16777216) #8, !srcloc !182
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 4
  %add.ptr.i329 = getelementptr i8, ptr %50, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i329, i32 0) #8, !srcloc !182
  %51 = tail call i32 @llvm.bswap.i32(i32 %page) #8
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i330 = getelementptr i8, ptr %53, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i330, i32 %51) #8, !srcloc !182
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i331 = getelementptr i8, ptr %55, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i331, i32 0) #8, !srcloc !182
  %56 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %57, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #8, !srcloc !182
  %58 = tail call i32 @llvm.bswap.i32(i32 %and71) #8
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %60, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %58) #8, !srcloc !182
  %61 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %62, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #8, !srcloc !182
  %and21.i = and i32 %7, 32767
  %63 = tail call i32 @llvm.bswap.i32(i32 %and21.i) #8
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %65, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %63) #8, !srcloc !182
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 1778384944) #8, !srcloc !182
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 4
  %add.ptr.i335 = getelementptr i8, ptr %69, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i335, i32 -2147483648) #8, !srcloc !182
  %call107 = tail call fastcc i32 @rnandc_wait_end_of_io(ptr noundef %1, ptr noundef %chip)
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 4
  %72 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %writesize, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %71, i32 noundef %retval.0.i, i32 noundef %73, i32 noundef 2, i32 noundef 0) #8
  %74 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i, align 4
  %add.ptr.i337 = getelementptr i8, ptr %75, i32 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i337) #8, !srcloc !185
  %77 = and i32 %76, -536870913
  %78 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i338 = getelementptr i8, ptr %79, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i338, i32 %77) #8, !srcloc !182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool110.not = icmp eq i32 %call107, 0
  br i1 %tobool110.not, label %if.end116, label %do.end114

do.end114:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.29) #11
  br label %cleanup

if.end116:                                        ; preds = %dma_map_single_attrs.exit
  %82 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i, align 4
  %add.ptr118 = getelementptr i8, ptr %83, i32 32
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118) #8, !srcloc !185
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool121.not = icmp eq i32 %oob_required, 0
  br i1 %tobool121.not, label %do.end136, label %if.end116.if.then142_crit_edge

if.end116.if.then142_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then142

do.end136:                                        ; preds = %if.end116
  %and138 = lshr i32 %85, 8
  %shl139 = shl nuw i32 1, %5
  %shr = and i32 %shl139, 15
  %and140 = and i32 %shr, %and138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %do.end136.do.end210_crit_edge, label %do.end136.if.then142_crit_edge

do.end136.if.then142_crit_edge:                   ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then142

do.end136.do.end210_crit_edge:                    ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end210

if.then142:                                       ; preds = %do.end136.if.then142_crit_edge, %if.end116.if.then142_crit_edge
  %86 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %writesize, align 4
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %88 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %90 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %oobsize, align 4
  %call144 = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %87, ptr noundef %89, i32 noundef %91, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %do.end163, label %if.then142.cleanup_crit_edge

if.then142.cleanup_crit_edge:                     ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end163:                                        ; preds = %if.then142
  %.pre = lshr i32 %85, 8
  %.pre343 = shl nuw i32 1, %5
  %.pre344 = and i32 %.pre343, 15
  %.pre345 = and i32 %.pre344, %.pre
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre345)
  %tobool169.not = icmp eq i32 %.pre345, 0
  br i1 %tobool169.not, label %do.end163.do.end210_crit_edge, label %for.cond.preheader

do.end163.do.end210_crit_edge:                    ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end210

for.cond.preheader:                               ; preds = %do.end163
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %92 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp340 = icmp sgt i32 %93, 0
  br i1 %cmp340, label %for.body.lr.ph, label %for.cond.preheader.if.end247_crit_edge

for.cond.preheader.if.end247_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end247

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %oob_poi178 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %ecc_stats187 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0341 = phi i32 [ 0, %for.body.lr.ph ], [ %inc194, %for.body.for.body_crit_edge ]
  %94 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %size, align 8
  %mul = mul i32 %95, %i.0341
  %96 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bytes, align 4
  %mul173 = mul i32 %97, %i.0341
  %98 = ptrtoint ptr %buf74 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %buf74, align 4
  %add.ptr175 = getelementptr i8, ptr %99, i32 %mul
  %100 = ptrtoint ptr %oob_poi178 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %oob_poi178, align 4
  %add.ptr179 = getelementptr i8, ptr %101, i32 2
  %add.ptr180 = getelementptr i8, ptr %add.ptr179, i32 %mul173
  %102 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %strength, align 4
  %call184 = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef %add.ptr175, i32 noundef %95, ptr noundef %add.ptr180, i32 noundef %97, ptr noundef null, i32 noundef 0, i32 noundef %103) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %cmp185 = icmp slt i32 %call184, 0
  %failed.ecc_stats187 = select i1 %cmp185, ptr %failed, ptr %ecc_stats187
  %.call184 = select i1 %cmp185, i32 1, i32 %call184
  %104 = ptrtoint ptr %failed.ecc_stats187 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %failed.ecc_stats187, align 4
  %add188 = add i32 %105, %.call184
  store i32 %add188, ptr %failed.ecc_stats187, align 4
  %inc194 = add nuw nsw i32 %i.0341, 1
  %106 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %steps, align 4
  %cmp = icmp slt i32 %inc194, %107
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end247_crit_edge

for.body.if.end247_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end247

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end210:                                        ; preds = %do.end163.do.end210_crit_edge, %do.end136.do.end210_crit_edge
  %shr166.pre-phi349 = phi i32 [ %.pre344, %do.end163.do.end210_crit_edge ], [ %shr, %do.end136.do.end210_crit_edge ]
  %and215 = and i32 %shr166.pre-phi349, %85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  br i1 %tobool216.not, label %do.end210.if.end247_crit_edge, label %do.end232

do.end210.if.end247_crit_edge:                    ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end247

do.end232:                                        ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs.i, align 4
  %add.ptr236 = getelementptr i8, ptr %109, i32 332
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr236) #8, !srcloc !185
  %111 = tail call i32 @llvm.bswap.i32(i32 %110)
  %mul239 = shl i32 %5, 3
  %shr240 = lshr i32 %111, %mul239
  %and241 = and i32 %shr240, 63
  %ecc_stats243 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %112 = ptrtoint ptr %ecc_stats243 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ecc_stats243, align 4
  %add245 = add i32 %and241, %113
  store i32 %add245, ptr %ecc_stats243, align 4
  br label %if.end247

if.end247:                                        ; preds = %do.end232, %do.end210.if.end247_crit_edge, %for.body.if.end247_crit_edge, %for.cond.preheader.if.end247_crit_edge
  %114 = ptrtoint ptr %buf74 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %buf74, align 4
  %116 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %writesize, align 4
  %118 = call ptr @memcpy(ptr %buf, ptr %115, i32 %117)
  br label %cleanup

cleanup:                                          ; preds = %if.end247, %if.then142.cleanup_crit_edge, %do.end114
  %retval.0 = phi i32 [ %call107, %do.end114 ], [ 0, %if.end247 ], [ %call144, %if.then142.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnandc_read_subpage_hw_ecc(ptr noundef %chip, i32 noundef %req_offset, i32 noundef %req_len, ptr noundef %bufpoi, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %selected_die.i = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %selected_die.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %selected_die.i, align 8
  %arrayidx.i = getelementptr %struct.rnand_chip, ptr %chip, i32 0, i32 14, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  %sub = add i32 %7, -1
  %neg = sub i32 0, %7
  %and = and i32 %neg, %req_offset
  %add = add i32 %req_len, %req_offset
  %8 = xor i32 %and, -1
  %sub5 = add i32 %add, %8
  %or = or i32 %sub5, %sub
  %add9 = add i32 %or, 1
  %div = udiv i32 %and, %7
  %div14 = udiv i32 %add9, %7
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %9 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytes, align 4
  %mul = mul i32 %10, %div
  %add16 = add i32 %mul, 2
  %11 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %writesize, align 4
  %add72 = add i32 %add16, %12
  %and87 = and i32 %add72, 65535
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %13 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_cs, align 4
  tail call fastcc void @rnandc_select_target(ptr noundef %chip, i32 noundef %14)
  %regs.i = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !182
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #8, !srcloc !182
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %20, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #8, !srcloc !182
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i388 = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i388) #8, !srcloc !185
  %24 = or i32 %23, 536870912
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i389 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i389, i32 %24) #8, !srcloc !182
  %27 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i391 = getelementptr i8, ptr %29, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i391, i32 %27) #8, !srcloc !182
  %30 = tail call i32 @llvm.bswap.i32(i32 %page) #8
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i392 = getelementptr i8, ptr %32, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i392, i32 %30) #8, !srcloc !182
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i393 = getelementptr i8, ptr %34, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i393, i32 0) #8, !srcloc !182
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %36, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #8, !srcloc !182
  %37 = tail call i32 @llvm.bswap.i32(i32 %and87) #8
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %39, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %37) #8, !srcloc !182
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %41, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #8, !srcloc !182
  %and21.i = and i32 %add9, 32767
  %42 = tail call i32 @llvm.bswap.i32(i32 %and21.i) #8
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %44, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %42) #8, !srcloc !182
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 704643120) #8, !srcloc !182
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 4
  %add.ptr400 = getelementptr i8, ptr %48, i32 180
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr400) #8, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !206
  %50 = and i32 %49, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool108.not401 = icmp eq i32 %50, 0
  br i1 %tobool108.not401, label %entry.do.end113_crit_edge, label %entry.while.cond118.preheader_crit_edge

entry.while.cond118.preheader_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond118.preheader

entry.do.end113_crit_edge:                        ; preds = %entry
  br label %do.end113

while.cond118.preheader:                          ; preds = %do.end113.while.cond118.preheader_crit_edge, %entry.while.cond118.preheader_crit_edge
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 4
  %add.ptr138402 = getelementptr i8, ptr %52, i32 180
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138402) #8, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  %54 = and i32 %53, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool144.not403 = icmp eq i32 %54, 0
  br i1 %tobool144.not403, label %while.cond118.preheader.while.end155_crit_edge, label %while.cond118.preheader.do.end150_crit_edge

while.cond118.preheader.do.end150_crit_edge:      ; preds = %while.cond118.preheader
  br label %do.end150

while.cond118.preheader.while.end155_crit_edge:   ; preds = %while.cond118.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end155

do.end113:                                        ; preds = %do.end113.do.end113_crit_edge, %entry.do.end113_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !208
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !209
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %56, i32 180
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !206
  %58 = and i32 %57, 67108864
  %tobool108.not = icmp eq i32 %58, 0
  br i1 %tobool108.not, label %do.end113.do.end113_crit_edge, label %do.end113.while.cond118.preheader_crit_edge

do.end113.while.cond118.preheader_crit_edge:      ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond118.preheader

do.end113.do.end113_crit_edge:                    ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end113

do.end150:                                        ; preds = %do.end150.do.end150_crit_edge, %while.cond118.preheader.do.end150_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !210
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !211
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  %add.ptr138 = getelementptr i8, ptr %60, i32 180
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138) #8, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  %62 = and i32 %61, 16777216
  %tobool144.not = icmp eq i32 %62, 0
  br i1 %tobool144.not, label %do.end150.while.end155_crit_edge, label %do.end150.do.end150_crit_edge

do.end150.do.end150_crit_edge:                    ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end150

do.end150.while.end155_crit_edge:                 ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end155

while.end155:                                     ; preds = %do.end150.while.end155_crit_edge, %while.cond118.preheader.while.end155_crit_edge
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i, align 4
  %add.ptr157 = getelementptr i8, ptr %64, i32 56
  %add.ptr158 = getelementptr i8, ptr %bufpoi, i32 %and
  %div159386 = lshr i32 %add9, 2
  tail call void @__raw_readsl(ptr noundef %add.ptr157, ptr noundef %add.ptr158, i32 noundef %div159386) #8
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 4
  %add.ptr179 = getelementptr i8, ptr %66, i32 180
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr179) #8, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  %68 = and i32 %67, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool185.not = icmp eq i32 %68, 0
  br i1 %tobool185.not, label %do.end189, label %while.end155.if.end190_crit_edge

while.end155.if.end190_crit_edge:                 ; preds = %while.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end190

do.end189:                                        ; preds = %while.end155
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 1
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.33) #11
  %71 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i, align 4
  %add.ptr.i395 = getelementptr i8, ptr %72, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i395, i32 16777216) #8, !srcloc !182
  br label %if.end190

if.end190:                                        ; preds = %do.end189, %while.end155.if.end190_crit_edge
  %call191 = tail call fastcc i32 @rnandc_wait_end_of_op(ptr noundef %1, ptr noundef %chip)
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 4
  %add.ptr.i397 = getelementptr i8, ptr %74, i32 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i397) #8, !srcloc !185
  %76 = and i32 %75, -536870913
  %77 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i398 = getelementptr i8, ptr %78, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i398, i32 %76) #8, !srcloc !182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.end198, label %do.end196

do.end196:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  %dev197 = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 1
  %79 = ptrtoint ptr %dev197 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev197, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.36) #11
  br label %cleanup

if.end198:                                        ; preds = %if.end190
  %81 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i, align 4
  %add.ptr201 = getelementptr i8, ptr %82, i32 32
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr201) #8, !srcloc !185
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %and220 = lshr i32 %84, 8
  %shl222 = shl nuw i32 1, %5
  %shr221 = and i32 %shl222, 15
  %and223 = and i32 %shr221, %and220
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  br i1 %tobool224.not, label %do.end272, label %if.then225

if.then225:                                       ; preds = %if.end198
  %85 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %writesize, align 4
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %87 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %89 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %oobsize, align 4
  %call227 = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %86, ptr noundef %88, i32 noundef %90, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %for.cond.preheader, label %if.then225.cleanup_crit_edge

if.then225.cleanup_crit_edge:                     ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then225
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div14)
  %cmp404 = icmp ult i32 %div, %div14
  br i1 %cmp404, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %ecc_stats249 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0405 = phi i32 [ %div, %for.body.lr.ph ], [ %inc256, %for.body.for.body_crit_edge ]
  %91 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %size, align 8
  %mul233 = mul i32 %92, %i.0405
  %93 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bytes, align 4
  %mul236 = mul i32 %94, %i.0405
  %add237 = add i32 %mul236, 2
  %add.ptr238 = getelementptr i8, ptr %bufpoi, i32 %mul233
  %95 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %oob_poi, align 4
  %add.ptr242 = getelementptr i8, ptr %96, i32 %add237
  %97 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %strength, align 4
  %call246 = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef %add.ptr238, i32 noundef %92, ptr noundef %add.ptr242, i32 noundef %94, ptr noundef null, i32 noundef 0, i32 noundef %98) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %cmp247 = icmp slt i32 %call246, 0
  %failed.ecc_stats249 = select i1 %cmp247, ptr %failed, ptr %ecc_stats249
  %.call246 = select i1 %cmp247, i32 1, i32 %call246
  %99 = ptrtoint ptr %failed.ecc_stats249 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %failed.ecc_stats249, align 4
  %add250 = add i32 %100, %.call246
  store i32 %add250, ptr %failed.ecc_stats249, align 4
  %inc256 = add i32 %i.0405, 1
  %exitcond.not = icmp eq i32 %inc256, %div14
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end272:                                        ; preds = %if.end198
  %and277 = and i32 %shr221, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277)
  %tobool278.not = icmp eq i32 %and277, 0
  br i1 %tobool278.not, label %do.end272.cleanup_crit_edge, label %do.end294

do.end272.cleanup_crit_edge:                      ; preds = %do.end272
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end294:                                        ; preds = %do.end272
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs.i, align 4
  %add.ptr298 = getelementptr i8, ptr %102, i32 332
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr298) #8, !srcloc !185
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  %mul301 = shl i32 %5, 3
  %shr302 = lshr i32 %104, %mul301
  %and303 = and i32 %shr302, 63
  %ecc_stats305 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %105 = ptrtoint ptr %ecc_stats305 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ecc_stats305, align 4
  %add307 = add i32 %and303, %106
  store i32 %add307, ptr %ecc_stats305, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end294, %do.end272.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then225.cleanup_crit_edge, %do.end196
  %retval.0 = phi i32 [ %call191, %do.end196 ], [ %call227, %if.then225.cleanup_crit_edge ], [ 0, %do.end272.cleanup_crit_edge ], [ 0, %do.end294 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnandc_write_page_hw_ecc(ptr noundef %chip, ptr nocapture noundef readonly %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  %add = add i32 %3, 2
  %selected_die.i = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %selected_die.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %selected_die.i, align 8
  %arrayidx.i = getelementptr %struct.rnand_chip, ptr %chip, i32 0, i32 14, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %and71 = and i32 %add, 65535
  %buf74 = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %buf74 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf74, align 4
  %10 = call ptr @memcpy(ptr %9, ptr %buf, i32 %3)
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %11 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur_cs, align 4
  tail call fastcc void @rnandc_select_target(ptr noundef %chip, i32 noundef %12)
  %regs.i = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !182
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #8, !srcloc !182
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %18, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #8, !srcloc !182
  %complete = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %complete, align 4
  %use_polling.i = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %use_polling.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_polling.i, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.rnandc_en_interrupts.exit_crit_edge

entry.rnandc_en_interrupts.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rnandc_en_interrupts.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shl101 = shl i32 65536, %7
  %and102 = and i32 %shl101, 983040
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i195 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i195, i32 %and102) #8, !srcloc !182
  br label %rnandc_en_interrupts.exit

rnandc_en_interrupts.exit:                        ; preds = %if.then.i, %entry.rnandc_en_interrupts.exit_crit_edge
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i197 = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #8, !srcloc !185
  %27 = or i32 %26, 536870912
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i198 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i198, i32 %27) #8, !srcloc !182
  %dev = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %buf74 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf74, align 4
  %34 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %writesize, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %33) #8
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %rnandc_en_interrupts.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i199, !prof !183

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit

if.then.i199:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %31) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 3
  %36 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i199.dev_name.exit.i_crit_edge

if.then.i199.dev_name.exit.i_crit_edge:           ; preds = %if.then.i199
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i199
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %31, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i199.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %39, %if.end.i.i ], [ %37, %if.then.i199.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %rnandc_en_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %31, ptr noundef %33, i32 noundef %35) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %40 = load ptr, ptr @mem_map, align 4
  %41 = ptrtoint ptr %33 to i32
  %sub.i = add i32 %41, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i200 = getelementptr %struct.page, ptr %40, i32 %shr.i
  %and.i = and i32 %41, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %31, ptr noundef %add.ptr.i200, i32 noundef %and.i, i32 noundef %35, i32 noundef 1, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !213
  tail call void @arm_heavy_mb() #8
  %42 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %44, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %42) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %writesize, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr114 = getelementptr i8, ptr %49, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 %47) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !215
  tail call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %add.ptr135 = getelementptr i8, ptr %51, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 -16777216) #8, !srcloc !182
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %add.ptr.i202 = getelementptr i8, ptr %53, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202, i32 0) #8, !srcloc !182
  %54 = tail call i32 @llvm.bswap.i32(i32 %page) #8
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i203 = getelementptr i8, ptr %56, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i203, i32 %54) #8, !srcloc !182
  %57 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i204 = getelementptr i8, ptr %58, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i204, i32 0) #8, !srcloc !182
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %60, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #8, !srcloc !182
  %61 = tail call i32 @llvm.bswap.i32(i32 %and71) #8
  %62 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %63, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %61) #8, !srcloc !182
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %65, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #8, !srcloc !182
  %and21.i = and i32 %3, 32767
  %66 = tail call i32 @llvm.bswap.i32(i32 %and21.i) #8
  %67 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %68, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %66) #8, !srcloc !182
  %69 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 1283461120) #8, !srcloc !182
  %71 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i, align 4
  %add.ptr.i208 = getelementptr i8, ptr %72, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i208, i32 -2147483648) #8, !srcloc !182
  %call136 = tail call fastcc i32 @rnandc_wait_end_of_io(ptr noundef %1, ptr noundef %chip)
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  %75 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %writesize, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %74, i32 noundef %retval.0.i, i32 noundef %76, i32 noundef 1, i32 noundef 0) #8
  %77 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i, align 4
  %add.ptr.i210 = getelementptr i8, ptr %78, i32 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i210) #8, !srcloc !185
  %80 = and i32 %79, -536870913
  %81 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i211 = getelementptr i8, ptr %82, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i211, i32 %80) #8, !srcloc !182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool139.not = icmp eq i32 %call136, 0
  br i1 %tobool139.not, label %if.end145, label %do.end143

do.end143:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.40) #11
  br label %cleanup

if.end145:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool146.not = icmp eq i32 %oob_required, 0
  br i1 %tobool146.not, label %if.end145.cleanup_crit_edge, label %if.end148

if.end145.cleanup_crit_edge:                      ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end148:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %writesize, align 4
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %87 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %89 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %oobsize, align 4
  %call150 = tail call i32 @nand_change_write_column_op(ptr noundef %chip, i32 noundef %86, ptr noundef %88, i32 noundef %90, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end148, %if.end145.cleanup_crit_edge, %do.end143
  %retval.0 = phi i32 [ %call136, %do.end143 ], [ %call150, %if.end148 ], [ 0, %if.end145.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnandc_write_subpage_hw_ecc(ptr noundef %chip, i32 noundef %req_offset, i32 noundef %req_len, ptr noundef %bufpoi, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  %sub = add i32 %3, -1
  %neg = sub i32 0, %3
  %and = and i32 %neg, %req_offset
  %add = add i32 %req_len, %req_offset
  %4 = xor i32 %and, -1
  %sub3 = add i32 %add, %4
  %or = or i32 %sub3, %sub
  %add7 = add i32 %or, 1
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %5 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bytes, align 4
  %div = udiv i32 %and, %3
  %mul = mul i32 %6, %div
  %add11 = add i32 %mul, 2
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %7 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize, align 4
  %add67 = add i32 %add11, %8
  %and82 = and i32 %add67, 65535
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %9 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_cs, align 4
  tail call fastcc void @rnandc_select_target(ptr noundef %chip, i32 noundef %10)
  %regs.i = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !182
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #8, !srcloc !182
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %16, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #8, !srcloc !182
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i197 = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #8, !srcloc !185
  %20 = or i32 %19, 536870912
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i198 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i198, i32 %20) #8, !srcloc !182
  %23 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i200 = getelementptr i8, ptr %25, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200, i32 %23) #8, !srcloc !182
  %26 = tail call i32 @llvm.bswap.i32(i32 %page) #8
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i201 = getelementptr i8, ptr %28, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i201, i32 %26) #8, !srcloc !182
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i202 = getelementptr i8, ptr %30, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i202, i32 0) #8, !srcloc !182
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %32, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #8, !srcloc !182
  %33 = tail call i32 @llvm.bswap.i32(i32 %and82) #8
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %35, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %33) #8, !srcloc !182
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %37, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #8, !srcloc !182
  %and21.i = and i32 %add7, 32767
  %38 = tail call i32 @llvm.bswap.i32(i32 %and21.i) #8
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %40, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %38) #8, !srcloc !182
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 209719296) #8, !srcloc !182
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr207 = getelementptr i8, ptr %44, i32 180
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr207) #8, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  %46 = and i32 %45, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool103.not208 = icmp eq i32 %46, 0
  br i1 %tobool103.not208, label %entry.while.end_crit_edge, label %entry.do.end108_crit_edge

entry.do.end108_crit_edge:                        ; preds = %entry
  br label %do.end108

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end108:                                        ; preds = %do.end108.do.end108_crit_edge, %entry.do.end108_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !217
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !218
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %48, i32 180
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  %50 = and i32 %49, 33554432
  %tobool103.not = icmp eq i32 %50, 0
  br i1 %tobool103.not, label %do.end108.while.end_crit_edge, label %do.end108.do.end108_crit_edge

do.end108.do.end108_crit_edge:                    ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end108

do.end108.while.end_crit_edge:                    ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end108.while.end_crit_edge, %entry.while.end_crit_edge
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 4
  %add.ptr114 = getelementptr i8, ptr %52, i32 56
  %add.ptr115 = getelementptr i8, ptr %bufpoi, i32 %and
  %div116195 = lshr i32 %add7, 2
  tail call void @__raw_writesl(ptr noundef %add.ptr114, ptr noundef %add.ptr115, i32 noundef %div116195) #8
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 4
  %add.ptr137209 = getelementptr i8, ptr %54, i32 180
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137209) #8, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !219
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %tobool143.not210 = icmp sgt i32 %55, -1
  br i1 %tobool143.not210, label %while.end.do.end149_crit_edge, label %while.end.while.end154_crit_edge

while.end.while.end154_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end154

while.end.do.end149_crit_edge:                    ; preds = %while.end
  br label %do.end149

do.end149:                                        ; preds = %do.end149.do.end149_crit_edge, %while.end.do.end149_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !220
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !221
  %56 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i, align 4
  %add.ptr137 = getelementptr i8, ptr %57, i32 180
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137) #8, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !219
  %tobool143.not = icmp sgt i32 %58, -1
  br i1 %tobool143.not, label %do.end149.do.end149_crit_edge, label %do.end149.while.end154_crit_edge

do.end149.while.end154_crit_edge:                 ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end154

do.end149.do.end149_crit_edge:                    ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end149

while.end154:                                     ; preds = %do.end149.while.end154_crit_edge, %while.end.while.end154_crit_edge
  %call155 = tail call fastcc i32 @rnandc_wait_end_of_op(ptr noundef %1, ptr noundef %chip)
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  %add.ptr.i204 = getelementptr i8, ptr %60, i32 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i204) #8, !srcloc !185
  %62 = and i32 %61, -536870913
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i205 = getelementptr i8, ptr %64, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i205, i32 %62) #8, !srcloc !182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %while.end154.cleanup_crit_edge, label %do.end160

while.end154.cleanup_crit_edge:                   ; preds = %while.end154
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end160:                                        ; preds = %while.end154
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 1
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.42) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end160, %while.end154.cleanup_crit_edge
  ret i32 %call155
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rnandc_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %0 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytes, align 4
  %sub = add i32 %1, -1
  %or = or i32 %sub, 3
  %add = add i32 %or, 1
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %2 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %steps, align 4
  %mul = mul i32 %add, %3
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rnandc_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %0 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytes, align 4
  %sub = add i32 %1, -1
  %or = or i32 %sub, 3
  %add = add i32 %or, 1
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %2 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %steps, align 4
  %mul = mul i32 %add, %3
  %add2 = or i32 %mul, 2
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add2, ptr %oobregion, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %5 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %oobsize, align 4
  %sub4 = sub i32 %6, %add2
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub4, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rnandc_select_target(ptr noundef %chip, i32 noundef %die_nr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %arrayidx = getelementptr %struct.rnand_chip, ptr %chip, i32 0, i32 14, i32 %die_nr
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %selected_chip = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %selected_chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %selected_chip, align 4
  %cmp = icmp eq ptr %5, %chip
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %selected_die = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 2
  %6 = ptrtoint ptr %selected_die to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %selected_die, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %die_nr)
  %cmp3 = icmp eq i32 %7, %die_nr
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %regs.i = getelementptr inbounds %struct.rnandc, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !182
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #8, !srcloc !182
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %13, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #8, !srcloc !182
  %and18 = and i32 %3, 3
  %shl44 = shl i32 256, %3
  %and45 = and i32 %shl44, 3840
  %or = or i32 %and45, %and18
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #8, !srcloc !182
  %control = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 5
  %17 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %control, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr47 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %19) #8, !srcloc !182
  %ecc_ctrl = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 6
  %22 = ptrtoint ptr %ecc_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ecc_ctrl, align 8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %add.ptr49 = getelementptr i8, ptr %26, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %24) #8, !srcloc !182
  %timings_asyn = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 7
  %27 = ptrtoint ptr %timings_asyn to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %timings_asyn, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr51 = getelementptr i8, ptr %31, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %29) #8, !srcloc !182
  %tim_seq0 = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 8
  %32 = ptrtoint ptr %tim_seq0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tim_seq0, align 8
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %add.ptr53 = getelementptr i8, ptr %36, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %34) #8, !srcloc !182
  %tim_seq1 = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 9
  %37 = ptrtoint ptr %tim_seq1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tim_seq1, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %add.ptr55 = getelementptr i8, ptr %41, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %39) #8, !srcloc !182
  %tim_gen_seq0 = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 10
  %42 = ptrtoint ptr %tim_gen_seq0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tim_gen_seq0, align 8
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 4
  %add.ptr57 = getelementptr i8, ptr %46, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %44) #8, !srcloc !182
  %tim_gen_seq1 = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 11
  %47 = ptrtoint ptr %tim_gen_seq1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tim_gen_seq1, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %add.ptr59 = getelementptr i8, ptr %51, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %49) #8, !srcloc !182
  %tim_gen_seq2 = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 12
  %52 = ptrtoint ptr %tim_gen_seq2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tim_gen_seq2, align 8
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 4
  %add.ptr61 = getelementptr i8, ptr %56, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %54) #8, !srcloc !182
  %tim_gen_seq3 = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 13
  %57 = ptrtoint ptr %tim_gen_seq3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tim_gen_seq3, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 4
  %add.ptr63 = getelementptr i8, ptr %61, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %59) #8, !srcloc !182
  %62 = ptrtoint ptr %selected_chip to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %chip, ptr %selected_chip, align 4
  %selected_die65 = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 2
  %63 = ptrtoint ptr %selected_die65 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %die_nr, ptr %selected_die65, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rnandc_wait_end_of_io(ptr noundef %rnandc, ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %use_polling = getelementptr inbounds %struct.rnandc, ptr %rnandc, i32 0, i32 9
  %0 = ptrtoint ptr %use_polling to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_polling, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %selected_die.i = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %selected_die.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %selected_die.i, align 8
  %arrayidx.i = getelementptr %struct.rnand_chip, ptr %chip, i32 0, i32 14, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %call2 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call2, 1000000000
  %regs = getelementptr inbounds %struct.rnandc, ptr %rnandc, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  %shr48 = zext i1 %6 to i32
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %if.then
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !185
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  %and = lshr i32 %10, 8
  %and47 = lshr i32 %10, 3
  %and30 = and i32 %and, %shr48
  %and49 = and i32 %and30, %and47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %land.lhs.true, label %for.cond.if.end118_crit_edge

for.cond.if.end118_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

land.lhs.true:                                    ; preds = %for.cond
  %call54 = tail call i64 @ktime_get() #8
  %cmp3.i = icmp sgt i64 %call54, %add.i
  br i1 %cmp3.i, label %if.then58, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then58:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr62 = getelementptr i8, ptr %12, i32 20
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #8, !srcloc !185
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  %.pre = lshr i32 %14, 8
  %.pre137 = lshr i32 %14, 3
  %.pre138 = and i32 %.pre, %shr48
  %.pre139 = and i32 %.pre138, %.pre137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre139)
  %phi.cmp = icmp eq i32 %.pre139, 0
  %phi.sel = select i1 %phi.cmp, i32 -110, i32 0
  br label %if.end118

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %complete = getelementptr inbounds %struct.rnandc, ptr %rnandc, i32 0, i32 8
  %call113 = tail call i32 @wait_for_completion_timeout(ptr noundef %complete, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  %. = select i1 %tobool114.not, i32 -110, i32 0
  br label %if.end118

if.end118:                                        ; preds = %if.else, %if.then58, %for.cond.if.end118_crit_edge
  %ret.0 = phi i32 [ %., %if.else ], [ %phi.sel, %if.then58 ], [ 0, %for.cond.if.end118_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rnandc_wait_end_of_op(ptr nocapture noundef readonly %rnandc, ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %selected_die.i = getelementptr inbounds %struct.rnand_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %selected_die.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %selected_die.i, align 8
  %arrayidx.i = getelementptr %struct.rnand_chip, ptr %chip, i32 0, i32 14, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %call2 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call2, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 364) #8
  %regs = getelementptr inbounds %struct.rnandc, ptr %rnandc, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr131 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131) #8, !srcloc !185
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  %shl = shl nuw i32 1, %3
  %and = and i32 %shl, 15
  %and28132 = and i32 %and, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28132)
  %tobool.not133 = icmp ne i32 %and28132, 0
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp47134 = icmp eq i32 %8, 0
  %or.cond135 = and i1 %tobool.not133, %cmp47134
  br i1 %or.cond135, label %entry.do.end83_crit_edge, label %entry.land.lhs.true51_crit_edge

entry.land.lhs.true51_crit_edge:                  ; preds = %entry
  br label %land.lhs.true51

entry.do.end83_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end83

land.lhs.true51:                                  ; preds = %if.then65.land.lhs.true51_crit_edge, %entry.land.lhs.true51_crit_edge
  %call52 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call52, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call52, %add.i
  br i1 %cmp3.i, label %if.then55, label %if.then65

if.then55:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr59 = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #8, !srcloc !185
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  %.pre = and i32 %and, %12
  %.pre137 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre137)
  %phi.cmp = icmp eq i32 %.pre137, 0
  br label %do.end83

if.then65:                                        ; preds = %land.lhs.true51
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !185
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  %and28 = and i32 %and, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool.not = icmp ne i32 %and28, 0
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp47 = icmp eq i32 %17, 0
  %or.cond = and i1 %tobool.not, %cmp47
  br i1 %or.cond, label %if.then65.do.end83_crit_edge, label %if.then65.land.lhs.true51_crit_edge

if.then65.land.lhs.true51_crit_edge:              ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true51

if.then65.do.end83_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end83

do.end83:                                         ; preds = %if.then65.do.end83_crit_edge, %if.then55, %entry.do.end83_crit_edge
  %.pre-phi = phi i1 [ true, %entry.do.end83_crit_edge ], [ %phi.cmp, %if.then55 ], [ true, %if.then65.do.end83_crit_edge ]
  %and88.pre-phi = phi i32 [ %and28132, %entry.do.end83_crit_edge ], [ %.pre, %if.then55 ], [ 1, %if.then65.do.end83_crit_edge ]
  %status.0 = phi i32 [ %7, %entry.do.end83_crit_edge ], [ %12, %if.then55 ], [ %16, %if.then65.do.end83_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.pre-phi)
  %tobool89.not = icmp eq i32 %and88.pre-phi, 0
  %not.tobool89.not = xor i1 %tobool89.not, true
  %tobool109.not = select i1 %not.tobool89.not, i1 %.pre-phi, i1 false
  br i1 %tobool109.not, label %do.end83.if.end114_crit_edge, label %do.end113

do.end83.if.end114_crit_edge:                     ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

do.end113:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rnandc, ptr %rnandc, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.38, i32 noundef %status.0) #11
  br label %if.end114

if.end114:                                        ; preds = %do.end113, %do.end83.if.end114_crit_edge
  %phi.sel = select i1 %.pre-phi, i32 0, i32 -110
  %20 = select i1 %tobool89.not, i32 -110, i32 %phi.sel
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_write_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nand_op_trace(ptr nocapture noundef readonly %instr) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %instr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %instr, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body4
    i32 2, label %do.body27
    i32 3, label %do.body48
    i32 4, label %do.body71
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_op_trace.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_op_trace, %if.then)) #8
          to label %sw.epilog [label %if.then], !srcloc !226

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %ctx = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ctx, align 4
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_op_trace.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.44, i32 noundef %conv) #8
  br label %sw.epilog

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_op_trace.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_op_trace, %if.then16)) #8
          to label %sw.epilog [label %if.then16], !srcloc !226

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %ctx17 = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1
  %5 = ptrtoint ptr %ctx17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctx17, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 64)
  %addrs = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addrs, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_op_trace.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.44, i32 noundef %6, i32 noundef %7, ptr noundef %9) #8
  br label %sw.epilog

do.body27:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_op_trace.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_op_trace, %if.then39)) #8
          to label %sw.epilog [label %if.then39], !srcloc !226

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %ctx40 = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1
  %10 = ptrtoint ptr %ctx40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctx40, align 4
  %force_8bit = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %force_8bit to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %force_8bit, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool42.not = icmp eq i8 %13, 0
  %cond44 = select i1 %tobool42.not, ptr @.str.57, ptr @.str.56
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_op_trace.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.44, i32 noundef %11, ptr noundef nonnull %cond44) #8
  br label %sw.epilog

do.body48:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_op_trace.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_op_trace, %if.then60)) #8
          to label %sw.epilog [label %if.then60], !srcloc !226

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  %ctx61 = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1
  %14 = ptrtoint ptr %ctx61 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctx61, align 4
  %force_8bit64 = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %force_8bit64 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %force_8bit64, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool65.not = icmp eq i8 %17, 0
  %cond67 = select i1 %tobool65.not, ptr @.str.57, ptr @.str.56
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_op_trace.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.44, i32 noundef %15, ptr noundef nonnull %cond67) #8
  br label %sw.epilog

do.body71:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_op_trace.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_op_trace, %if.then83)) #8
          to label %sw.epilog [label %if.then83], !srcloc !226

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  %ctx84 = getelementptr inbounds %struct.nand_op_instr, ptr %instr, i32 0, i32 1
  %18 = ptrtoint ptr %ctx84 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctx84, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_op_trace.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.44, i32 noundef %19) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then83, %do.body71, %if.then60, %do.body48, %if.then39, %do.body27, %if.then16, %do.body4, %if.then, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !117, !119, !120, !122, !123, !124, !125, !127, !128, !130, !131, !133, !134, !135, !136, !138, !139, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @__initcall__kmod_renesas_nand_controller__764_1420_rnandc_driver_init6, !1, !"__initcall__kmod_renesas_nand_controller__764_1420_rnandc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1420, i32 1}
!2 = !{ptr @__exitcall_rnandc_driver_exit, !1, !"__exitcall_rnandc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author765, !4, !"__UNIQUE_ID_author765", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1422, i32 1}
!5 = !{ptr @__UNIQUE_ID_description766, !6, !"__UNIQUE_ID_description766", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1423, i32 1}
!7 = !{ptr @__UNIQUE_ID_file767, !8, !"__UNIQUE_ID_file767", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1424, i32 1}
!9 = !{ptr @__UNIQUE_ID_license768, !8, !"__UNIQUE_ID_license768", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1414, i32 11}
!12 = !{ptr @rnandc_driver, !13, !"rnandc_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1412, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1339, i32 42}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1344, i32 42}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1362, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rnandc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @rnandc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1366, i32 12}
!28 = !{ptr @nand_controller_init.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @rnandc_ops, !32, !"rnandc_ops", i1 false, i1 false}
!32 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1162, i32 41}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1124, i32 3}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rnandc_attach_chip._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @rnandc_attach_chip._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1144, i32 3}
!41 = !{ptr @rnandc_attach_chip._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @rnandc_attach_chip._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1152, i32 3}
!45 = !{ptr @rnandc_attach_chip._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rnandc_attach_chip._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1089, i32 4}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rnandc_ecc_init._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @rnandc_ecc_init._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1014, i32 3}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rnandc_hw_ecc_controller_init._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @rnandc_hw_ecc_controller_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1029, i32 3}
!59 = !{ptr @rnandc_hw_ecc_controller_init._entry.23, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @rnandc_hw_ecc_controller_init._entry_ptr.25, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1059, i32 3}
!63 = !{ptr @rnandc_hw_ecc_controller_init._entry.26, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @rnandc_hw_ecc_controller_init._entry_ptr.28, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @rnandc_ooblayout_ops, !66, !"rnandc_ooblayout_ops", i1 false, i1 false}
!66 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1002, i32 39}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 440, i32 3}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @rnandc_read_page_hw_ecc._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @rnandc_read_page_hw_ecc._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 529, i32 3}
!78 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @rnandc_read_subpage_hw_ecc._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @rnandc_read_subpage_hw_ecc._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 536, i32 3}
!83 = !{ptr @rnandc_read_subpage_hw_ecc._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @rnandc_read_subpage_hw_ecc._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 366, i32 3}
!87 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @rnandc_wait_end_of_op._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @rnandc_wait_end_of_op._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 620, i32 3}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @rnandc_write_page_hw_ecc._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @rnandc_write_page_hw_ecc._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 671, i32 3}
!97 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @rnandc_write_subpage_hw_ecc._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @rnandc_write_subpage_hw_ecc._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 704, i32 17}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 835, i32 3}
!104 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @rnandc_exec_op._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @rnandc_exec_op._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 861, i32 4}
!109 = !{ptr @rnandc_exec_op._entry.47, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @rnandc_exec_op._entry_ptr.49, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../include/linux/mtd/rawnand.h", i32 1030, i32 3}
!113 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @nand_op_trace.__UNIQUE_ID_ddebug244, !112, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/linux/mtd/rawnand.h", i32 1034, i32 3}
!119 = !{ptr @nand_op_trace.__UNIQUE_ID_ddebug245, !118, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/mtd/rawnand.h", i32 1041, i32 3}
!122 = !{ptr @nand_op_trace.__UNIQUE_ID_ddebug246, !121, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!123 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../include/linux/mtd/rawnand.h", i32 1047, i32 3}
!127 = !{ptr @nand_op_trace.__UNIQUE_ID_ddebug247, !126, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/linux/mtd/rawnand.h", i32 1053, i32 3}
!130 = !{ptr @nand_op_trace.__UNIQUE_ID_ddebug248, !129, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 903, i32 3}
!133 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @rnandc_setup_interface._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @rnandc_setup_interface._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @init_completion.__key, !137, !"__key", i1 false, i1 false}
!137 = !{!"../include/linux/completion.h", i32 87, i32 2}
!138 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1206, i32 46}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1209, i32 3}
!143 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @rnandc_chip_init._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @rnandc_chip_init._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1225, i32 4}
!148 = !{ptr @rnandc_chip_init._entry.66, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @rnandc_chip_init._entry_ptr.68, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @rnandc_chip_init._entry.69, !151, !"_entry", i1 false, i1 false}
!151 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1230, i32 4}
!152 = !{ptr @rnandc_chip_init._entry_ptr.70, !151, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1235, i32 4}
!155 = !{ptr @rnandc_chip_init._entry.71, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @rnandc_chip_init._entry_ptr.73, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1253, i32 3}
!159 = !{ptr @rnandc_chip_init._entry.74, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @rnandc_chip_init._entry_ptr.76, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1259, i32 3}
!163 = !{ptr @rnandc_chip_init._entry.77, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @rnandc_chip_init._entry_ptr.79, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1269, i32 3}
!167 = !{ptr @rnandc_chip_init._entry.80, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @rnandc_chip_init._entry_ptr.82, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!171 = !{ptr @rnandc_id_table, !172, !"rnandc_id_table", i1 false, i1 false}
!172 = !{!"../drivers/mtd/nand/raw/renesas-nand-controller.c", i32 1405, i32 34}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{i64 6313215}
!183 = !{!"branch_weights", i32 2000, i32 1}
!184 = !{!"auto-init"}
!185 = !{i64 6313633}
!186 = !{i64 2156766471}
!187 = !{i64 2156790527}
!188 = !{i64 2156788996}
!189 = !{i64 2156788838}
!190 = !{i64 2156808991}
!191 = !{i64 2156808833}
!192 = !{i64 2156810872}
!193 = !{i64 2156832367}
!194 = !{i64 2156850831}
!195 = !{i64 2156850673}
!196 = !{i64 2156852642}
!197 = !{i64 2156871106}
!198 = !{i64 2156870948}
!199 = !{i64 1214051, i64 1214078, i64 1214100, i64 1214128}
!200 = !{i64 1214459, i64 1214486, i64 1214519, i64 1214540, i64 1214567, i64 1214593}
!201 = !{i64 2148699595, i64 2148699875, i64 2148700209, i64 2148700543}
!202 = !{i8 0, i8 2}
!203 = !{i64 2155140962}
!204 = !{i64 2155141386}
!205 = !{i64 2155188955}
!206 = !{i64 2155551752}
!207 = !{i64 2155571747}
!208 = !{i64 2155570216}
!209 = !{i64 2155570058}
!210 = !{i64 2155590211}
!211 = !{i64 2155590053}
!212 = !{i64 2155591760}
!213 = !{i64 2155950607}
!214 = !{i64 2155951031}
!215 = !{i64 2155998600}
!216 = !{i64 2156193035}
!217 = !{i64 2156211499}
!218 = !{i64 2156211341}
!219 = !{i64 2156213049}
!220 = !{i64 2156231513}
!221 = !{i64 2156231355}
!222 = !{i64 2154971884}
!223 = !{i64 2154972378}
!224 = !{i64 2154870182}
!225 = !{i64 2154870672}
!226 = !{i64 2148790876, i64 2148790881, i64 2148790894, i64 2148790938, i64 2148790972, i64 2148790993}
