; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/cadence-nand-controller.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/cadence-nand-controller.c"
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
%struct.atomic_t = type { i32 }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.nand_op_parser = type { ptr, i32 }
%struct.nand_op_parser_pattern_elem = type { i32, i8, %union.anon.83 }
%union.anon.83 = type { %struct.nand_op_parser_addr_constraints }
%struct.nand_op_parser_addr_constraints = type { i32 }
%struct.nand_op_parser_data_constraints = type { i32 }
%struct.nand_op_parser_pattern = type { ptr, i32, ptr }
%struct.cadence_nand_dt_devdata = type { i32, i8 }
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
%struct.cdns_nand_ctrl = type { ptr, %struct.nand_controller, ptr, ptr, %struct.cdns_nand_caps, i8, i32, ptr, i32, i8, ptr, %struct.anon.78, i32, %struct.cadence_nand_irq_status, %struct.cadence_nand_irq_status, %struct.completion, %struct.spinlock, [8 x i32], [2 x %struct.nand_ecc_step_info], %struct.nand_ecc_caps, i32, ptr, i32, i32, ptr, i32, %struct.list_head, i8 }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.cdns_nand_caps = type { i8, i8, i8, i8 }
%struct.anon.78 = type { ptr, i32 }
%struct.cadence_nand_irq_status = type { i32, i32, i32 }
%struct.nand_ecc_step_info = type { i32, ptr, i32 }
%struct.nand_ecc_caps = type { ptr, i32, ptr }
%struct.cadence_nand_dt = type { %struct.cdns_nand_ctrl, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.cdns_nand_chip = type { %struct.cadence_nand_timings, %struct.nand_chip, i8, %struct.list_head, i32, i32, i32, i8, i8, i8, [0 x i8] }
%struct.cadence_nand_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.81, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
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
%struct.anon.81 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.cadence_nand_cdma_desc = type { i64, i32, i16, i16, i16, i16, i16, i16, i64, i32, i32, i64, i32, i32, i64 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.mtd_oob_region = type { i32, i32 }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_subop = type { i32, ptr, i32, i32, i32 }
%struct.nand_op_instr = type { i32, %union.anon.75, i32 }
%union.anon.75 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.76, i8 }
%union.anon.76 = type { ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_cadence_nand_controller__563_3034_cadence_nand_dt_driver_init6 = internal global ptr @cadence_nand_dt_driver_init, section ".initcall6.init", align 4
@cadence_nand_dt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cadence_nand_dt_probe, ptr @cadence_nand_dt_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cadence_nand_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cadence_nand_dt_driver_exit = internal global ptr @cadence_nand_dt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author564 = internal constant [64 x i8] c"cadence_nand_controller.author=Piotr Sroka <piotrs@cadence.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file565 = internal constant [74 x i8] c"cadence_nand_controller.file=drivers/mtd/nand/raw/cadence-nand-controller\00", section ".modinfo", align 1
@__UNIQUE_ID_license566 = internal constant [39 x i8] c"cadence_nand_controller.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description567 = internal constant [77 x i8] c"cadence_nand_controller.description=Driver for Cadence NAND flash controller\00", section ".modinfo", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cadence-nand-controller\00", [40 x i8] zeroinitializer }, align 32
@cadence_nand_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,hp-nfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cadence_nand_default }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cadence_nand_dt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Failed to find the right device id.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cadence_nand_dt_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/mtd/nand/raw/cadence-nand-controller.c\00", [49 x i8] zeroinitializer }, align 32
@cadence_nand_dt_probe._entry_ptr = internal global ptr @cadence_nand_dt_probe._entry, section ".printk_index", align 4
@cadence_nand_dt_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 2980, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRQ: nr %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cadence_nand_dt_probe._entry_ptr.8 = internal global ptr @cadence_nand_dt_probe._entry.4, section ".printk_index", align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nf_clk\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cdns,board-delay-ps\00", [44 x i8] zeroinitializer }, align 32
@cadence_nand_dt_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 3004, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"missing cdns,board-delay-ps property, %d was set\0A\00", [46 x i8] zeroinitializer }, align 32
@cadence_nand_dt_probe._entry_ptr.13 = internal global ptr @cadence_nand_dt_probe._entry.11, section ".printk_index", align 4
@cadence_nand_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 2853, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to allocate IRQ\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cadence_nand_init\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cadence_nand_init._entry_ptr = internal global ptr @cadence_nand_init._entry, section ".printk_index", align 4
@cadence_nand_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&cdns_ctrl->irq_lock\00", [43 x i8] zeroinitializer }, align 32
@cadence_nand_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.3, i32 2872, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to get a DMA channel\0A\00", [35 x i8] zeroinitializer }, align 32
@cadence_nand_init._entry_ptr.20 = internal global ptr @cadence_nand_init._entry.18, section ".printk_index", align 4
@cadence_nand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @cadence_nand_attach_chip, ptr null, ptr @cadence_nand_exec_op, ptr @cadence_nand_setup_interface }, [16 x i8] zeroinitializer }, align 32
@cadence_nand_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.3, i32 2887, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register MTD: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cadence_nand_init._entry_ptr.23 = internal global ptr @cadence_nand_init._entry.21, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cadence_nand_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 1174, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: cadence nand controller version reg %x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cadence_nand_hw_init\00", [43 x i8] zeroinitializer }, align 32
@cadence_nand_hw_init._entry_ptr = internal global ptr @cadence_nand_hw_init._entry, section ".printk_index", align 4
@cadence_nand_wait_for_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 574, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Timeout while waiting for reg %x with mask %x is clear %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cadence_nand_wait_for_value\00", [36 x i8] zeroinitializer }, align 32
@cadence_nand_wait_for_value._entry_ptr = internal global ptr @cadence_nand_wait_for_value._entry, section ".printk_index", align 4
@cadence_nand_read_bch_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 1087, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Driver needs at least 4 bytes of BCH meta data\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cadence_nand_read_bch_caps\00", [37 x i8] zeroinitializer }, align 32
@cadence_nand_read_bch_caps._entry_ptr = internal global ptr @cadence_nand_read_bch_caps._entry, section ".printk_index", align 4
@cadence_nand_read_bch_caps._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 1150, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unsupported sector size(ecc step size) %d\0A\00", [53 x i8] zeroinitializer }, align 32
@cadence_nand_read_bch_caps._entry_ptr.33 = internal global ptr @cadence_nand_read_bch_caps._entry.31, section ".printk_index", align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@cadence_nand_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 2627, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ECC configuration failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cadence_nand_attach_chip\00", [39 x i8] zeroinitializer }, align 32
@cadence_nand_attach_chip._entry_ptr = internal global ptr @cadence_nand_attach_chip._entry, section ".printk_index", align 4
@cadence_nand_attach_chip.__UNIQUE_ID_ddebug562 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.36, ptr @.str.3, ptr @.str.38, i8 2, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cadence_nand_controller\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"chosen ECC settings: step=%d, strength=%d, bytes=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@cadence_nand_attach_chip._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.36, ptr @.str.3, i32 2682, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no usable DMA configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@cadence_nand_attach_chip._entry_ptr.41 = internal global ptr @cadence_nand_attach_chip._entry.39, section ".printk_index", align 4
@cadence_nand_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @cadence_nand_ooblayout_ecc, ptr @cadence_nand_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@cadence_nand_read_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 1677, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read page failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cadence_nand_read_page\00", [41 x i8] zeroinitializer }, align 32
@cadence_nand_read_page._entry_ptr = internal global ptr @cadence_nand_read_page._entry, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@cadence_nand_cdma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 1279, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to map DMA buffer\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cadence_nand_cdma_transfer\00", [37 x i8] zeroinitializer }, align 32
@cadence_nand_cdma_transfer._entry_ptr = internal global ptr @cadence_nand_cdma_transfer._entry, section ".printk_index", align 4
@cadence_nand_cdma_transfer._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 1289, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@cadence_nand_cdma_transfer._entry_ptr.47 = internal global ptr @cadence_nand_cdma_transfer._entry.46, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@cadence_nand_cdma_send_and_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 1040, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CDMA command timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cadence_nand_cdma_send_and_wait\00", [32 x i8] zeroinitializer }, align 32
@cadence_nand_cdma_send_and_wait._entry_ptr = internal global ptr @cadence_nand_cdma_send_and_wait._entry, section ".printk_index", align 4
@cadence_nand_cdma_send_and_wait._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 1044, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CDMA command failed\0A\00", [43 x i8] zeroinitializer }, align 32
@cadence_nand_cdma_send_and_wait._entry_ptr.54 = internal global ptr @cadence_nand_cdma_send_and_wait._entry.52, section ".printk_index", align 4
@cadence_nand_wait_for_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 817, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"timeout occurred:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cadence_nand_wait_for_irq\00", [38 x i8] zeroinitializer }, align 32
@cadence_nand_wait_for_irq._entry_ptr = internal global ptr @cadence_nand_wait_for_irq._entry, section ".printk_index", align 4
@cadence_nand_wait_for_irq._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.3, i32 819, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\09status = 0x%x, mask = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@cadence_nand_wait_for_irq._entry_ptr.59 = internal global ptr @cadence_nand_wait_for_irq._entry.57, section ".printk_index", align 4
@cadence_nand_wait_for_irq._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.3, i32 822, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\09trd_status = 0x%x, trd_status mask = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@cadence_nand_wait_for_irq._entry_ptr.62 = internal global ptr @cadence_nand_wait_for_irq._entry.60, section ".printk_index", align 4
@cadence_nand_wait_for_irq._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.3, i32 825, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\09 trd_error = 0x%x, trd_error mask = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@cadence_nand_wait_for_irq._entry_ptr.65 = internal global ptr @cadence_nand_wait_for_irq._entry.63, section ".printk_index", align 4
@cadence_nand_cdma_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 973, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c":CDMA error %x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cadence_nand_cdma_finish\00", [39 x i8] zeroinitializer }, align 32
@cadence_nand_cdma_finish._entry_ptr = internal global ptr @cadence_nand_cdma_finish._entry, section ".printk_index", align 4
@cadence_nand_cdma_finish._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 977, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DMA unsupported flag is set\00", [36 x i8] zeroinitializer }, align 32
@cadence_nand_cdma_finish._entry_ptr.70 = internal global ptr @cadence_nand_cdma_finish._entry.68, section ".printk_index", align 4
@cadence_nand_check_desc_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 955, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c":CDMA desc error flag detected.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cadence_nand_check_desc_error\00", [34 x i8] zeroinitializer }, align 32
@cadence_nand_check_desc_error._entry_ptr = internal global ptr @cadence_nand_check_desc_error._entry, section ".printk_index", align 4
@cadence_nand_read_bbm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 1410, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"read BBM failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cadence_nand_read_bbm\00", [42 x i8] zeroinitializer }, align 32
@cadence_nand_read_bbm._entry_ptr = internal global ptr @cadence_nand_read_bbm._entry, section ".printk_index", align 4
@cadence_nand_read_page_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 1730, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read raw page failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cadence_nand_read_page_raw\00", [37 x i8] zeroinitializer }, align 32
@cadence_nand_read_page_raw._entry_ptr = internal global ptr @cadence_nand_read_page_raw._entry, section ".printk_index", align 4
@cadence_nand_write_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 1467, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"write page failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cadence_nand_write_page\00", [40 x i8] zeroinitializer }, align 32
@cadence_nand_write_page._entry_ptr = internal global ptr @cadence_nand_write_page._entry, section ".printk_index", align 4
@cadence_nand_op_parser = internal constant { %struct.nand_op_parser, [24 x i8] } { %struct.nand_op_parser { ptr @.compoundliteral.84, i32 6 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [4 x %struct.nand_op_parser_pattern_elem], [48 x i8] } { [4 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.83 { %struct.nand_op_parser_addr_constraints { i32 3 } } }, %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 4, i8 0, %union.anon.83 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal constant { [1 x %struct.nand_op_parser_pattern_elem], [20 x i8] } zeroinitializer, align 32
@.compoundliteral.80 = internal constant { [1 x %struct.nand_op_parser_pattern_elem], [20 x i8] } { [1 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.83 { %struct.nand_op_parser_addr_constraints { i32 6 } } }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal constant { [1 x { i32, i8, { %struct.nand_op_parser_data_constraints } }], [20 x i8] } { [1 x { i32, i8, { %struct.nand_op_parser_data_constraints } }] [{ i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 65532 } } }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal constant { [1 x { i32, i8, { %struct.nand_op_parser_data_constraints } }], [20 x i8] } { [1 x { i32, i8, { %struct.nand_op_parser_data_constraints } }] [{ i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 65532 } } }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal constant { [1 x %struct.nand_op_parser_pattern_elem], [20 x i8] } { [1 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem { i32 4, i8 0, %union.anon.83 zeroinitializer }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal constant { [6 x %struct.nand_op_parser_pattern], [56 x i8] } { [6 x %struct.nand_op_parser_pattern] [%struct.nand_op_parser_pattern { ptr @.compoundliteral, i32 4, ptr @cadence_nand_cmd_erase }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.79, i32 1, ptr @cadence_nand_cmd_opcode }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.80, i32 1, ptr @cadence_nand_cmd_address }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.81, i32 1, ptr @cadence_nand_cmd_data }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.82, i32 1, ptr @cadence_nand_cmd_data }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.83, i32 1, ptr @cadence_nand_cmd_waitrdy }], [56 x i8] zeroinitializer }, align 32
@cadence_nand_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 1378, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"erase operation failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cadence_nand_erase\00", [45 x i8] zeroinitializer }, align 32
@cadence_nand_erase._entry_ptr = internal global ptr @cadence_nand_erase._entry, section ".printk_index", align 4
@cadence_nand_cmd_opcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 2023, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"send cmd %x failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cadence_nand_cmd_opcode\00", [40 x i8] zeroinitializer }, align 32
@cadence_nand_cmd_opcode._entry_ptr = internal global ptr @cadence_nand_cmd_opcode._entry, section ".printk_index", align 4
@cadence_nand_cmd_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 2066, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"send address %llx failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cadence_nand_cmd_address\00", [39 x i8] zeroinitializer }, align 32
@cadence_nand_cmd_address._entry_ptr = internal global ptr @cadence_nand_cmd_address._entry, section ".printk_index", align 4
@cadence_nand_cmd_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 2143, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"cannot change byte access generic data cmd failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cadence_nand_cmd_data\00", [42 x i8] zeroinitializer }, align 32
@cadence_nand_cmd_data._entry_ptr = internal global ptr @cadence_nand_cmd_data._entry, section ".printk_index", align 4
@cadence_nand_cmd_data._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.3, i32 2152, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"send generic data cmd failed\0A\00", [34 x i8] zeroinitializer }, align 32
@cadence_nand_cmd_data._entry_ptr.95 = internal global ptr @cadence_nand_cmd_data._entry.93, section ".printk_index", align 4
@cadence_nand_cmd_data._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.92, ptr @.str.3, i32 2167, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"data transfer failed for generic command\0A\00", [54 x i8] zeroinitializer }, align 32
@cadence_nand_cmd_data._entry_ptr.98 = internal global ptr @cadence_nand_cmd_data._entry.96, section ".printk_index", align 4
@cadence_nand_cmd_data._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 2175, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@cadence_nand_cmd_data._entry_ptr.100 = internal global ptr @cadence_nand_cmd_data._entry.99, section ".printk_index", align 4
@cadence_nand_read_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.3, i32 1908, ptr @.str.103, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Slave DMA transfer failed. Try again using bounce buffer.\00", [38 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cadence_nand_read_buf\00", [42 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cadence_nand_read_buf._entry_ptr = internal global ptr @cadence_nand_read_buf._entry, section ".printk_index", align 4
@cadence_nand_read_buf._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.102, ptr @.str.3, i32 1917, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Slave DMA transfer failed\00", [38 x i8] zeroinitializer }, align 32
@cadence_nand_read_buf._entry_ptr.106 = internal global ptr @cadence_nand_read_buf._entry.104, section ".printk_index", align 4
@cadence_nand_wait_on_sdma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.3, i32 877, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Timeout while waiting for SDMA\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cadence_nand_wait_on_sdma\00", [38 x i8] zeroinitializer }, align 32
@cadence_nand_wait_on_sdma._entry_ptr = internal global ptr @cadence_nand_wait_on_sdma._entry, section ".printk_index", align 4
@cadence_nand_wait_on_sdma._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.3, i32 888, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SDMA error - irq_status %x\0A\00", [36 x i8] zeroinitializer }, align 32
@cadence_nand_wait_on_sdma._entry_ptr.111 = internal global ptr @cadence_nand_wait_on_sdma._entry.109, section ".printk_index", align 4
@cadence_nand_slave_dma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.112, ptr @.str.3, i32 1828, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cadence_nand_slave_dma_transfer\00", [32 x i8] zeroinitializer }, align 32
@cadence_nand_slave_dma_transfer._entry_ptr = internal global ptr @cadence_nand_slave_dma_transfer._entry, section ".printk_index", align 4
@cadence_nand_slave_dma_transfer._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.3, i32 1843, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to prepare DMA memcpy\0A\00", [34 x i8] zeroinitializer }, align 32
@cadence_nand_slave_dma_transfer._entry_ptr.115 = internal global ptr @cadence_nand_slave_dma_transfer._entry.113, section ".printk_index", align 4
@cadence_nand_slave_dma_transfer._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.112, ptr @.str.3, i32 1852, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to do DMA tx_submit\0A\00", [36 x i8] zeroinitializer }, align 32
@cadence_nand_slave_dma_transfer._entry_ptr.118 = internal global ptr @cadence_nand_slave_dma_transfer._entry.116, section ".printk_index", align 4
@cadence_nand_slave_dma_transfer.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.112, ptr @.str.3, ptr @.str.119, i8 1, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Fall back to CPU I/O\0A\00", [42 x i8] zeroinitializer }, align 32
@cadence_nand_write_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.120, ptr @.str.3, i32 1962, ptr @.str.103, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cadence_nand_write_buf\00", [41 x i8] zeroinitializer }, align 32
@cadence_nand_write_buf._entry_ptr = internal global ptr @cadence_nand_write_buf._entry, section ".printk_index", align 4
@cadence_nand_write_buf._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.120, ptr @.str.3, i32 1973, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@cadence_nand_write_buf._entry_ptr.122 = internal global ptr @cadence_nand_write_buf._entry.121, section ".printk_index", align 4
@cadence_nand_setup_interface.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.123, ptr @.str.3, ptr @.str.124, i8 2, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cadence_nand_setup_interface\00", [35 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ASYNC_TOGGLE_TIMINGS_SDR\09%x\0A\00", [35 x i8] zeroinitializer }, align 32
@cadence_nand_setup_interface.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.123, ptr @.str.3, ptr @.str.125, i8 2, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TIMINGS0_SDR\09%x\0A\00", [47 x i8] zeroinitializer }, align 32
@cadence_nand_setup_interface.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.123, ptr @.str.3, ptr @.str.126, i8 2, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TIMINGS1_SDR\09%x\0A\00", [47 x i8] zeroinitializer }, align 32
@cadence_nand_setup_interface.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.123, ptr @.str.3, ptr @.str.127, i8 2, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TIMINGS2_SDR\09%x\0A\00", [47 x i8] zeroinitializer }, align 32
@cadence_nand_setup_interface.__UNIQUE_ID_ddebug539 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.123, ptr @.str.3, ptr @.str.128, i8 2, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DLL_PHY_CTRL_SDR\09%x\0A\00", [43 x i8] zeroinitializer }, align 32
@cadence_nand_setup_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.123, ptr @.str.3, i32 2569, ptr @.str.103, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ERROR : cannot find valid sampling point\0A\00", [54 x i8] zeroinitializer }, align 32
@cadence_nand_setup_interface._entry_ptr = internal global ptr @cadence_nand_setup_interface._entry, section ".printk_index", align 4
@cadence_nand_setup_interface.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.123, ptr @.str.3, ptr @.str.130, i8 2, i8 -124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PHY_CTRL_REG_SDR\09%x\0A\00", [43 x i8] zeroinitializer }, align 32
@cadence_nand_setup_interface.__UNIQUE_ID_ddebug551 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.123, ptr @.str.3, ptr @.str.131, i8 2, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PHY_TSEL_REG_SDR\09%x\0A\00", [43 x i8] zeroinitializer }, align 32
@cadence_nand_setup_interface.__UNIQUE_ID_ddebug552 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.123, ptr @.str.3, ptr @.str.132, i8 2, i8 -123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PHY_DQ_TIMING_REG_SDR\09%x\0A\00", [38 x i8] zeroinitializer }, align 32
@cadence_nand_setup_interface.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.123, ptr @.str.3, ptr @.str.133, i8 2, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PHY_DQS_TIMING_REG_SDR\09%x\0A\00", [37 x i8] zeroinitializer }, align 32
@cadence_nand_setup_interface.__UNIQUE_ID_ddebug559 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.123, ptr @.str.3, ptr @.str.134, i8 2, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PHY_GATE_LPBK_CTRL_REG_SDR\09%x\0A\00", [33 x i8] zeroinitializer }, align 32
@cadence_nand_setup_interface.__UNIQUE_ID_ddebug560 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.123, ptr @.str.3, ptr @.str.135, i8 2, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PHY_DLL_MASTER_CTRL_REG_SDR\09%lx\0A\00", [63 x i8] zeroinitializer }, align 32
@cadence_nand_setup_interface.__UNIQUE_ID_ddebug561 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.123, ptr @.str.3, ptr @.str.136, i8 2, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PHY_DLL_SLAVE_CTRL_REG_SDR\09%x\0A\00", [33 x i8] zeroinitializer }, align 32
@cadence_nand_chips_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.3, i32 2808, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"too many NAND chips: %d (max = %d CS)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cadence_nand_chips_init\00", [40 x i8] zeroinitializer }, align 32
@cadence_nand_chips_init._entry_ptr = internal global ptr @cadence_nand_chips_init._entry, section ".printk_index", align 4
@.str.139 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@cadence_nand_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.3, i32 2708, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"missing/invalid reg property\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cadence_nand_chip_init\00", [41 x i8] zeroinitializer }, align 32
@cadence_nand_chip_init._entry_ptr = internal global ptr @cadence_nand_chip_init._entry, section ".printk_index", align 4
@cadence_nand_chip_init._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.141, ptr @.str.3, i32 2717, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not allocate chip structure\0A\00", [61 x i8] zeroinitializer }, align 32
@cadence_nand_chip_init._entry_ptr.144 = internal global ptr @cadence_nand_chip_init._entry.142, section ".printk_index", align 4
@cadence_nand_chip_init._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.141, ptr @.str.3, i32 2729, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not retrieve reg property: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@cadence_nand_chip_init._entry_ptr.147 = internal global ptr @cadence_nand_chip_init._entry.145, section ".printk_index", align 4
@cadence_nand_chip_init._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.141, ptr @.str.3, i32 2736, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid reg value: %u (max CS = %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@cadence_nand_chip_init._entry_ptr.150 = internal global ptr @cadence_nand_chip_init._entry.148, section ".printk_index", align 4
@cadence_nand_chip_init._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.141, ptr @.str.3, i32 2742, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CS %d already assigned\0A\00", [40 x i8] zeroinitializer }, align 32
@cadence_nand_chip_init._entry_ptr.153 = internal global ptr @cadence_nand_chip_init._entry.151, section ".printk_index", align 4
@cadence_nand_chip_init._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.141, ptr @.str.3, i32 2764, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not scan the nand chip\0A\00", [34 x i8] zeroinitializer }, align 32
@cadence_nand_chip_init._entry_ptr.156 = internal global ptr @cadence_nand_chip_init._entry.154, section ".printk_index", align 4
@cadence_nand_chip_init._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.141, ptr @.str.3, i32 2771, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register mtd device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cadence_nand_chip_init._entry_ptr.159 = internal global ptr @cadence_nand_chip_init._entry.157, section ".printk_index", align 4
@.str.160 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@cadence_nand_default = internal constant { %struct.cadence_nand_dt_devdata, [24 x i8] } { %struct.cadence_nand_dt_devdata { i32 0, i8 -128 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 256, i64 512, i64 1024, i64 2048, i64 4096]
@__sancov_gen_cov_switch_values.161 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.163 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.164 = private unnamed_addr constant [23 x i8] c"cadence_nand_dt_driver\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3025, i32 31 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3029, i32 11 }
@___asan_gen_.170 = private unnamed_addr constant [20 x i8] c"cadence_nand_dt_ids\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2940, i32 34 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2964, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2980, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2992, i32 41 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2999, i32 8 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 3002, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2853, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2858, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2871, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant [28 x i8] c"cadence_nand_controller_ops\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2691, i32 41 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2886, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 87, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1172, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 572, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1086, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1148, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.285, i32 1105, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2627, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2631, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2682, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [27 x i8] c"cadence_nand_ooblayout_ops\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2269, i32 39 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1677, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1279, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1289, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 326, i32 6 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1040, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1044, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 817, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 818, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 820, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 823, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 973, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 977, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 955, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1410, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1730, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1467, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant [23 x i8] c"cadence_nand_op_parser\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2199, i32 36 }
@___asan_gen_.434 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.435 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.436 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.437 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.439 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.440 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1378, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2022, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2066, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2142, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2152, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2167, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2174, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1907, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1917, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 877, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 887, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1828, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1843, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1852, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1867, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1961, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 1973, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2469, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2489, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2510, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2523, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2535, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2568, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2576, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2579, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2580, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2581, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2586, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2590, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2592, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2806, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2706, i32 46 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2708, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2717, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2727, i32 4 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2734, i32 4 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2741, i32 4 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2764, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2770, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.658 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 464, i32 31 }
@___asan_gen_.660 = private unnamed_addr constant [21 x i8] c"cadence_nand_default\00", align 1
@___asan_gen_.661 = private constant [50 x i8] c"../drivers/mtd/nand/raw/cadence-nand-controller.c\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.661, i32 2935, i32 45 }
@llvm.compiler.used = appending global [230 x ptr] [ptr @__UNIQUE_ID_author564, ptr @__UNIQUE_ID_description567, ptr @__UNIQUE_ID_file565, ptr @__UNIQUE_ID_license566, ptr @__exitcall_cadence_nand_dt_driver_exit, ptr @__initcall__kmod_cadence_nand_controller__563_3034_cadence_nand_dt_driver_init6, ptr @cadence_nand_attach_chip._entry, ptr @cadence_nand_attach_chip._entry.39, ptr @cadence_nand_attach_chip._entry_ptr, ptr @cadence_nand_attach_chip._entry_ptr.41, ptr @cadence_nand_cdma_finish._entry, ptr @cadence_nand_cdma_finish._entry.68, ptr @cadence_nand_cdma_finish._entry_ptr, ptr @cadence_nand_cdma_finish._entry_ptr.70, ptr @cadence_nand_cdma_send_and_wait._entry, ptr @cadence_nand_cdma_send_and_wait._entry.52, ptr @cadence_nand_cdma_send_and_wait._entry_ptr, ptr @cadence_nand_cdma_send_and_wait._entry_ptr.54, ptr @cadence_nand_cdma_transfer._entry, ptr @cadence_nand_cdma_transfer._entry.46, ptr @cadence_nand_cdma_transfer._entry_ptr, ptr @cadence_nand_cdma_transfer._entry_ptr.47, ptr @cadence_nand_check_desc_error._entry, ptr @cadence_nand_check_desc_error._entry_ptr, ptr @cadence_nand_chip_init._entry, ptr @cadence_nand_chip_init._entry.142, ptr @cadence_nand_chip_init._entry.145, ptr @cadence_nand_chip_init._entry.148, ptr @cadence_nand_chip_init._entry.151, ptr @cadence_nand_chip_init._entry.154, ptr @cadence_nand_chip_init._entry.157, ptr @cadence_nand_chip_init._entry_ptr, ptr @cadence_nand_chip_init._entry_ptr.144, ptr @cadence_nand_chip_init._entry_ptr.147, ptr @cadence_nand_chip_init._entry_ptr.150, ptr @cadence_nand_chip_init._entry_ptr.153, ptr @cadence_nand_chip_init._entry_ptr.156, ptr @cadence_nand_chip_init._entry_ptr.159, ptr @cadence_nand_chips_init._entry, ptr @cadence_nand_chips_init._entry_ptr, ptr @cadence_nand_cmd_address._entry, ptr @cadence_nand_cmd_address._entry_ptr, ptr @cadence_nand_cmd_data._entry, ptr @cadence_nand_cmd_data._entry.93, ptr @cadence_nand_cmd_data._entry.96, ptr @cadence_nand_cmd_data._entry.99, ptr @cadence_nand_cmd_data._entry_ptr, ptr @cadence_nand_cmd_data._entry_ptr.100, ptr @cadence_nand_cmd_data._entry_ptr.95, ptr @cadence_nand_cmd_data._entry_ptr.98, ptr @cadence_nand_cmd_opcode._entry, ptr @cadence_nand_cmd_opcode._entry_ptr, ptr @cadence_nand_dt_driver_exit, ptr @cadence_nand_dt_probe._entry, ptr @cadence_nand_dt_probe._entry.11, ptr @cadence_nand_dt_probe._entry.4, ptr @cadence_nand_dt_probe._entry_ptr, ptr @cadence_nand_dt_probe._entry_ptr.13, ptr @cadence_nand_dt_probe._entry_ptr.8, ptr @cadence_nand_erase._entry, ptr @cadence_nand_erase._entry_ptr, ptr @cadence_nand_hw_init._entry, ptr @cadence_nand_hw_init._entry_ptr, ptr @cadence_nand_init._entry, ptr @cadence_nand_init._entry.18, ptr @cadence_nand_init._entry.21, ptr @cadence_nand_init._entry_ptr, ptr @cadence_nand_init._entry_ptr.20, ptr @cadence_nand_init._entry_ptr.23, ptr @cadence_nand_read_bbm._entry, ptr @cadence_nand_read_bbm._entry_ptr, ptr @cadence_nand_read_bch_caps._entry, ptr @cadence_nand_read_bch_caps._entry.31, ptr @cadence_nand_read_bch_caps._entry_ptr, ptr @cadence_nand_read_bch_caps._entry_ptr.33, ptr @cadence_nand_read_buf._entry, ptr @cadence_nand_read_buf._entry.104, ptr @cadence_nand_read_buf._entry_ptr, ptr @cadence_nand_read_buf._entry_ptr.106, ptr @cadence_nand_read_page._entry, ptr @cadence_nand_read_page._entry_ptr, ptr @cadence_nand_read_page_raw._entry, ptr @cadence_nand_read_page_raw._entry_ptr, ptr @cadence_nand_setup_interface._entry, ptr @cadence_nand_setup_interface._entry_ptr, ptr @cadence_nand_slave_dma_transfer._entry, ptr @cadence_nand_slave_dma_transfer._entry.113, ptr @cadence_nand_slave_dma_transfer._entry.116, ptr @cadence_nand_slave_dma_transfer._entry_ptr, ptr @cadence_nand_slave_dma_transfer._entry_ptr.115, ptr @cadence_nand_slave_dma_transfer._entry_ptr.118, ptr @cadence_nand_wait_for_irq._entry, ptr @cadence_nand_wait_for_irq._entry.57, ptr @cadence_nand_wait_for_irq._entry.60, ptr @cadence_nand_wait_for_irq._entry.63, ptr @cadence_nand_wait_for_irq._entry_ptr, ptr @cadence_nand_wait_for_irq._entry_ptr.59, ptr @cadence_nand_wait_for_irq._entry_ptr.62, ptr @cadence_nand_wait_for_irq._entry_ptr.65, ptr @cadence_nand_wait_for_value._entry, ptr @cadence_nand_wait_for_value._entry_ptr, ptr @cadence_nand_wait_on_sdma._entry, ptr @cadence_nand_wait_on_sdma._entry.109, ptr @cadence_nand_wait_on_sdma._entry_ptr, ptr @cadence_nand_wait_on_sdma._entry_ptr.111, ptr @cadence_nand_write_buf._entry, ptr @cadence_nand_write_buf._entry.121, ptr @cadence_nand_write_buf._entry_ptr, ptr @cadence_nand_write_buf._entry_ptr.122, ptr @cadence_nand_write_page._entry, ptr @cadence_nand_write_page._entry_ptr, ptr @cadence_nand_dt_driver, ptr @.str, ptr @cadence_nand_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @cadence_nand_init.__key, ptr @.str.17, ptr @.str.19, ptr @cadence_nand_controller_ops, ptr @.str.22, ptr @init_completion.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @nand_controller_init.__key, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @cadence_nand_ooblayout_ops, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @cadence_nand_op_parser, ptr @.compoundliteral, ptr @.compoundliteral.79, ptr @.compoundliteral.80, ptr @.compoundliteral.81, ptr @.compoundliteral.82, ptr @.compoundliteral.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.158, ptr @.str.160, ptr @cadence_nand_default], section "llvm.metadata"
@0 = internal global [171 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_dt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_dt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_dt_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_dt_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_wait_for_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_read_bch_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_read_bch_caps._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_attach_chip._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_read_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_cdma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_cdma_transfer._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_cdma_send_and_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_cdma_send_and_wait._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_wait_for_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_wait_for_irq._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_wait_for_irq._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_wait_for_irq._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_cdma_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_cdma_finish._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_check_desc_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_read_bbm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_read_page_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_write_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_op_parser to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_cmd_opcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_cmd_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_cmd_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_cmd_data._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_cmd_data._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_cmd_data._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_read_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_read_buf._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_wait_on_sdma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_wait_on_sdma._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_slave_dma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_slave_dma_transfer._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_slave_dma_transfer._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_write_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_write_buf._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_setup_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_chips_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_chip_init._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_chip_init._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_chip_init._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_chip_init._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_chip_init._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_chip_init._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cadence_nand_default to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_dt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cadence_nand_dt_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cadence_nand_dt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @cadence_nand_dt_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_dt_probe(ptr noundef %ofdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !331
  %dev = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @cadence_nand_dt_ids, ptr noundef %dev) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 8
  %3 = ptrtoint ptr %id_entry to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %id_entry, align 4
  %4 = load ptr, ptr %data, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 380, i32 noundef 3520) #9
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.end7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end7:                                          ; preds = %if.then
  %caps1 = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %caps1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %caps1, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %call11 = tail call i32 @platform_get_irq(ptr noundef %ofdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %call.i, i32 0, i32 12
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call11, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %do.end18

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end18:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.5, i32 noundef %call11) #12
  %call21 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %ofdev, i32 noundef 0) #9
  %reg = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %call.i, i32 0, i32 10
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call21, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end27

if.then24:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end27:                                         ; preds = %do.end18
  %call28 = tail call ptr @platform_get_resource(ptr noundef %ofdev, i32 noundef 512, i32 noundef 1) #9
  %12 = ptrtoint ptr %call28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call28, align 4
  %io = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %call.i, i32 0, i32 11
  %dma = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %call.i, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %dma, align 4
  %call30 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call28) #9
  %15 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call30, ptr %io, align 4
  %cmp.i107 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end27
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %call41 = tail call ptr @devm_clk_get(ptr noundef %18, ptr noundef nonnull @.str.9) #9
  %clk = getelementptr inbounds %struct.cadence_nand_dt, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call41, ptr %clk, align 4
  %cmp.i108 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %call41 to i32
  br label %cleanup

if.end47:                                         ; preds = %if.end39
  %call49 = tail call i32 @clk_get_rate(ptr noundef %call41) #9
  %nf_clk_rate = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %call.i, i32 0, i32 22
  %21 = ptrtoint ptr %nf_clk_rate to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call49, ptr %nf_clk_rate, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 27
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %23, ptr noundef nonnull @.str.10, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool52.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool52.not, label %if.end47.if.end58_crit_edge, label %if.then53

if.end47.if.end58_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4830, ptr %val, align 4
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.12, i32 noundef 4830) #12
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %if.end47.if.end58_crit_edge
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %board_delay = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %call.i, i32 0, i32 23
  %29 = ptrtoint ptr %board_delay to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %board_delay, align 4
  %call59 = call fastcc i32 @cadence_nand_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end58.cleanup_crit_edge, %if.then44, %if.then35, %if.then24, %if.end7.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then24 ], [ %16, %if.then35 ], [ %20, %if.then44 ], [ 0, %if.end62 ], [ -12, %do.end ], [ -12, %if.then.cleanup_crit_edge ], [ %call11, %if.end7.cleanup_crit_edge ], [ %call59, %if.end58.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_dt_remove(ptr nocapture noundef readonly %ofdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chips.i.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %chips.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chips.i.i, align 4
  %cmp.not46.i.i = icmp eq ptr %3, %chips.i.i
  br i1 %cmp.not46.i.i, label %entry.cadence_nand_chips_cleanup.exit.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.cadence_nand_chips_cleanup.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_chips_cleanup.exit.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn.in47.i.i = phi ptr [ %.pn49.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %3, %entry.for.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in47.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn49.i.i = load ptr, ptr %.pn.in47.i.i, align 4
  %chip8.i.i = getelementptr i8, ptr %.pn.in47.i.i, i32 -2172
  %call9.i.i = tail call i32 @mtd_device_unregister(ptr noundef %chip8.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !332

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2790, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %for.body.i.i.if.end.i.i_crit_edge
  tail call void @nand_cleanup(ptr noundef %chip8.i.i) #9
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in47.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del.exit.i.i_crit_edge

if.end.i.i.list_del.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in47.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i.i, align 4
  %7 = ptrtoint ptr %.pn.in47.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in47.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del.exit.i.i_crit_edge
  %11 = ptrtoint ptr %.pn.in47.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in47.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in47.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn49.i.i, %chips.i.i
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.cadence_nand_chips_cleanup.exit.i_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

list_del.exit.i.i.cadence_nand_chips_cleanup.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_chips_cleanup.exit.i

cadence_nand_chips_cleanup.exit.i:                ; preds = %list_del.exit.i.i.cadence_nand_chips_cleanup.exit.i_crit_edge, %entry.cadence_nand_chips_cleanup.exit.i_crit_edge
  %reg.i.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 128) #9, !srcloc !333
  %buf.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf.i, align 4
  tail call void @kfree(ptr noundef %16) #9
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %cdma_desc.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %cdma_desc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cdma_desc.i, align 4
  %dma_cdma_desc.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %dma_cdma_desc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_cdma_desc.i, align 4
  tail call void @dma_free_attrs(ptr noundef %18, i32 noundef 64, ptr noundef %20, i32 noundef %22, i32 noundef 0) #9
  %dmac.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %1, i32 0, i32 21
  %23 = ptrtoint ptr %dmac.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dmac.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %cadence_nand_chips_cleanup.exit.i.cadence_nand_remove.exit_crit_edge, label %if.then.i

cadence_nand_chips_cleanup.exit.i.cadence_nand_remove.exit_crit_edge: ; preds = %cadence_nand_chips_cleanup.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_remove.exit

if.then.i:                                        ; preds = %cadence_nand_chips_cleanup.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %24) #9
  br label %cadence_nand_remove.exit

cadence_nand_remove.exit:                         ; preds = %if.then.i, %cadence_nand_chips_cleanup.exit.i.cadence_nand_remove.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cadence_nand_init(ptr noundef %cdns_ctrl) unnamed_addr #2 align 64 {
entry:
  %cs.i.i = alloca i32, align 4
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #9
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !331
  %1 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cdns_ctrl, align 4
  %dma_cdma_desc = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 6
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %2, i32 noundef 64, ptr noundef %dma_cdma_desc, i32 noundef 3264, i32 noundef 0) #9
  %cdma_desc = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 2
  %3 = ptrtoint ptr %cdma_desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %cdma_desc, align 4
  %4 = ptrtoint ptr %dma_cdma_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_cdma_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf_size = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 8
  %6 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %buf_size, align 4
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3264, i32 noundef 2) #13
  %buf = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 7
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1.i.i, ptr %buf, align 4
  %tobool5.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool5.not, label %if.end.free_buf_desc_crit_edge, label %if.end7

if.end.free_buf_desc_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_buf_desc

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cdns_ctrl, align 4
  %irq = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 12
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call.i101 = tail call i32 @devm_request_threaded_irq(ptr noundef %9, i32 noundef %11, ptr noundef nonnull @cadence_nand_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %cdns_ctrl) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool10.not = icmp eq i32 %call.i101, 0
  br i1 %tobool10.not, label %do.body14, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.14) #12
  br label %free_buf

do.body14:                                        ; preds = %if.end7
  %irq_lock = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @cadence_nand_init.__key, i16 noundef signext 3) #9
  %complete = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 15
  %14 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 15, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #9
  %call.i102 = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %cdns_ctrl, i32 noundef 280, i32 noundef 1000000, i32 noundef 512, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool.not.i = icmp eq i32 %call.i102, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body14.disable_irq_crit_edge

do.body14.disable_irq_crit_edge:                  ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_irq

if.end.i:                                         ; preds = %do.body14
  %reg1.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 10
  %15 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 2048
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !334
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  %conv.i = trunc i32 %18 to i8
  %ctrl_rev.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 5
  %19 = ptrtoint ptr %ctrl_rev.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i, ptr %ctrl_rev.i, align 4
  %20 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %18) #12
  %22 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg1.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %23, i32 1076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 0) #9, !srcloc !333
  %24 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg1.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %25, i32 1080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 0) #9, !srcloc !333
  %26 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg1.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %27, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 -1) #9, !srcloc !333
  %28 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 2052
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !334
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  %and.i.i = lshr i32 %31, 24
  %shr.i.i = and i32 %and.i.i, 3
  %shl.i.i = shl nuw nsw i32 1, %shr.i.i
  %conv.i.i = trunc i32 %shl.i.i to i8
  %caps2.i.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 4
  %32 = ptrtoint ptr %caps2.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i.i, ptr %caps2.i.i, align 4
  %33 = and i32 %31, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i = icmp eq i32 %33, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i8 4, i8 8
  %34 = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %spec.select.i.i, ptr %34, align 1
  %and36.i.i = and i32 %31, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  br i1 %tobool37.not.i.i, label %if.end.i.if.end40.i.i_crit_edge, label %if.then38.i.i

if.end.i.if.end40.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i

if.then38.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %data_control_supp.i.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 4, i32 2
  %36 = ptrtoint ptr %data_control_supp.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %data_control_supp.i.i, align 2
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.then38.i.i, %if.end.i.if.end40.i.i_crit_edge
  %and41.i.i = and i32 %31, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i.i)
  %tobool42.not.i.i = icmp eq i32 %and41.i.i, 0
  br i1 %tobool42.not.i.i, label %if.end40.i.i.cadence_nand_get_caps.exit.i_crit_edge, label %if.then43.i.i

if.end40.i.i.cadence_nand_get_caps.exit.i_crit_edge: ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_get_caps.exit.i

if.then43.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_phy_type_dll.i.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 4, i32 3
  %37 = ptrtoint ptr %is_phy_type_dll.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %is_phy_type_dll.i.i, align 1
  br label %cadence_nand_get_caps.exit.i

cadence_nand_get_caps.exit.i:                     ; preds = %if.then43.i.i, %if.end40.i.i.cadence_nand_get_caps.exit.i_crit_edge
  %ecc_caps1.i.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 19
  %38 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg1.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %39, i32 2116
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i) #9, !srcloc !334
  %41 = lshr i32 %40, 8
  %conv.i44.i = trunc i32 %41 to i8
  %bch_metadata_size.i.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 27
  %42 = ptrtoint ptr %bch_metadata_size.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.i44.i, ptr %bch_metadata_size.i.i, align 4
  %43 = and i32 %40, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i.i = icmp eq i32 %43, 0
  br i1 %cmp.i.i, label %do.end21.i.i, label %if.end.i.i

do.end21.i.i:                                     ; preds = %cadence_nand_get_caps.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.29) #12
  br label %disable_irq

if.end.i.i:                                       ; preds = %cadence_nand_get_caps.exit.i
  %46 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg1.i, align 4
  %add.ptr24.i.i = getelementptr i8, ptr %47, i32 2104
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i.i) #9, !srcloc !334
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  %and43.i.i = and i32 %49, 255
  %ecc_strengths.i.i = getelementptr %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 17
  %50 = ptrtoint ptr %ecc_strengths.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and43.i.i, ptr %ecc_strengths.i.i, align 4
  %and61.i.i = lshr i32 %49, 8
  %shr62.i.i = and i32 %and61.i.i, 255
  %arrayidx64.i.i = getelementptr %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 17, i32 1
  %51 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shr62.i.i, ptr %arrayidx64.i.i, align 4
  %and81.i.i = lshr i32 %49, 16
  %shr82.i.i = and i32 %and81.i.i, 255
  %arrayidx84.i.i = getelementptr %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 17, i32 2
  %52 = ptrtoint ptr %arrayidx84.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %shr82.i.i, ptr %arrayidx84.i.i, align 4
  %shr102.i.i = lshr i32 %49, 24
  %arrayidx104.i.i = getelementptr %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 17, i32 3
  %53 = ptrtoint ptr %arrayidx104.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %shr102.i.i, ptr %arrayidx104.i.i, align 4
  %54 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg1.i, align 4
  %add.ptr107.i.i = getelementptr i8, ptr %55, i32 2108
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107.i.i) #9, !srcloc !334
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #9
  %and126.i.i = and i32 %57, 255
  %arrayidx129.i.i = getelementptr %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 17, i32 4
  %58 = ptrtoint ptr %arrayidx129.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and126.i.i, ptr %arrayidx129.i.i, align 4
  %and146.i.i = lshr i32 %57, 8
  %shr147.i.i = and i32 %and146.i.i, 255
  %arrayidx149.i.i = getelementptr %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 17, i32 5
  %59 = ptrtoint ptr %arrayidx149.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %shr147.i.i, ptr %arrayidx149.i.i, align 4
  %and166.i.i = lshr i32 %57, 16
  %shr167.i.i = and i32 %and166.i.i, 255
  %arrayidx169.i.i = getelementptr %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 17, i32 6
  %60 = ptrtoint ptr %arrayidx169.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %shr167.i.i, ptr %arrayidx169.i.i, align 4
  %shr187.i.i = lshr i32 %57, 24
  %arrayidx189.i.i = getelementptr %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 17, i32 7
  %61 = ptrtoint ptr %arrayidx189.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %shr187.i.i, ptr %arrayidx189.i.i, align 4
  %62 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg1.i, align 4
  %add.ptr192.i.i = getelementptr i8, ptr %63, i32 2112
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr192.i.i) #9, !srcloc !334
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #9
  %and211.i.i = and i32 %65, 65535
  %ecc_stepinfos.i.i = getelementptr %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 18
  %66 = ptrtoint ptr %ecc_stepinfos.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and211.i.i, ptr %ecc_stepinfos.i.i, align 4
  %shr231.i.i = lshr i32 %65, 16
  %arrayidx233.i.i = getelementptr %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 18, i32 1
  %67 = ptrtoint ptr %arrayidx233.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %shr231.i.i, ptr %arrayidx233.i.i, align 4
  %68 = ptrtoint ptr %ecc_strengths.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ecc_strengths.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp239.not.i.i = icmp ne i32 %69, 0
  %inc.i.i = zext i1 %cmp239.not.i.i to i32
  %70 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx64.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp239.not.1.i.i = icmp ne i32 %71, 0
  %inc.1.i.i = zext i1 %cmp239.not.1.i.i to i32
  %spec.select.1.i.i = add nuw nsw i32 %inc.1.i.i, %inc.i.i
  %72 = ptrtoint ptr %arrayidx84.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx84.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp239.not.2.i.i = icmp ne i32 %73, 0
  %inc.2.i.i = zext i1 %cmp239.not.2.i.i to i32
  %spec.select.2.i.i = add nuw nsw i32 %spec.select.1.i.i, %inc.2.i.i
  %74 = ptrtoint ptr %arrayidx104.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx104.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp239.not.3.i.i = icmp ne i32 %75, 0
  %inc.3.i.i = zext i1 %cmp239.not.3.i.i to i32
  %spec.select.3.i.i = add nuw nsw i32 %spec.select.2.i.i, %inc.3.i.i
  %76 = ptrtoint ptr %arrayidx129.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx129.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp239.not.4.i.i = icmp ne i32 %77, 0
  %inc.4.i.i = zext i1 %cmp239.not.4.i.i to i32
  %spec.select.4.i.i = add nuw nsw i32 %spec.select.3.i.i, %inc.4.i.i
  %78 = ptrtoint ptr %arrayidx149.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx149.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp239.not.5.i.i = icmp ne i32 %79, 0
  %inc.5.i.i = zext i1 %cmp239.not.5.i.i to i32
  %spec.select.5.i.i = add nuw nsw i32 %spec.select.4.i.i, %inc.5.i.i
  %80 = ptrtoint ptr %arrayidx169.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx169.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp239.not.6.i.i = icmp ne i32 %81, 0
  %inc.6.i.i = zext i1 %cmp239.not.6.i.i to i32
  %spec.select.6.i.i = add nuw nsw i32 %spec.select.5.i.i, %inc.6.i.i
  %82 = ptrtoint ptr %arrayidx189.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx189.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp239.not.7.i.i = icmp ne i32 %83, 0
  %inc.7.i.i = zext i1 %cmp239.not.7.i.i to i32
  %spec.select.7.i.i = add nuw nsw i32 %spec.select.6.i.i, %inc.7.i.i
  %nstepinfos.i.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 19, i32 1
  %84 = ptrtoint ptr %nstepinfos.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %nstepinfos.i.i, align 4
  %nstrengths250.i.i = getelementptr %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 18, i32 0, i32 2
  %85 = ptrtoint ptr %nstrengths250.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %spec.select.7.i.i, ptr %nstrengths250.i.i, align 4
  %strengths.i.i = getelementptr %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 18, i32 0, i32 1
  %86 = ptrtoint ptr %strengths.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %ecc_strengths.i.i, ptr %strengths.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211.i.i)
  %cmp257.not.i.i = icmp eq i32 %and211.i.i, 0
  br i1 %cmp257.not.i.i, label %if.end.i.i.if.end262.i.i_crit_edge, label %if.then259.i.i

if.end.i.i.if.end262.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end262.i.i

if.then259.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %nstepinfos.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %nstepinfos.i.i, align 4
  br label %if.end262.i.i

if.end262.i.i:                                    ; preds = %if.then259.i.i, %if.end.i.i.if.end262.i.i_crit_edge
  %nstrengths250.1.i.i = getelementptr %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 18, i32 1, i32 2
  %88 = ptrtoint ptr %nstrengths250.1.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %spec.select.7.i.i, ptr %nstrengths250.1.i.i, align 4
  %strengths.1.i.i = getelementptr %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 18, i32 1, i32 1
  %89 = ptrtoint ptr %strengths.1.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %ecc_strengths.i.i, ptr %strengths.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %65)
  %cmp257.not.1.i.i = icmp ult i32 %65, 65536
  br i1 %cmp257.not.1.i.i, label %if.end262.i.i.if.end262.1.i.i_crit_edge, label %if.then259.1.i.i

if.end262.i.i.if.end262.1.i.i_crit_edge:          ; preds = %if.end262.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end262.1.i.i

if.then259.1.i.i:                                 ; preds = %if.end262.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %nstepinfos.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nstepinfos.i.i, align 4
  %inc261.1.i.i = add i32 %91, 1
  store i32 %inc261.1.i.i, ptr %nstepinfos.i.i, align 4
  br label %if.end262.1.i.i

if.end262.1.i.i:                                  ; preds = %if.then259.1.i.i, %if.end262.i.i.if.end262.1.i.i_crit_edge
  %92 = tail call i32 @llvm.smax.i32(i32 %and211.i.i, i32 %shr231.i.i) #9
  %93 = ptrtoint ptr %ecc_caps1.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %ecc_stepinfos.i.i, ptr %ecc_caps1.i.i, align 4
  %trunc.i = trunc i32 %92 to i16
  %94 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc.i, label %do.end288.i.i [
    i16 256, label %if.end262.1.i.i.if.end28.i_crit_edge
    i16 512, label %sw.bb278.i.i
    i16 1024, label %sw.bb280.i.i
    i16 2048, label %sw.bb282.i.i
    i16 4096, label %sw.bb284.i.i
  ]

if.end262.1.i.i.if.end28.i_crit_edge:             ; preds = %if.end262.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

sw.bb278.i.i:                                     ; preds = %if.end262.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

sw.bb280.i.i:                                     ; preds = %if.end262.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

sw.bb282.i.i:                                     ; preds = %if.end262.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

sw.bb284.i.i:                                     ; preds = %if.end262.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

do.end288.i.i:                                    ; preds = %if.end262.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.32, i32 noundef %92) #12
  br label %disable_irq

if.end28.i:                                       ; preds = %sw.bb284.i.i, %sw.bb282.i.i, %sw.bb280.i.i, %sw.bb278.i.i, %if.end262.1.i.i.if.end28.i_crit_edge
  %cadence_nand_calc_ecc_bytes_4096.sink.i = phi ptr [ @cadence_nand_calc_ecc_bytes_4096, %sw.bb284.i.i ], [ @cadence_nand_calc_ecc_bytes_2048, %sw.bb282.i.i ], [ @cadence_nand_calc_ecc_bytes_1024, %sw.bb280.i.i ], [ @cadence_nand_calc_ecc_bytes_512, %sw.bb278.i.i ], [ @cadence_nand_calc_ecc_bytes_256, %if.end262.1.i.i.if.end28.i_crit_edge ]
  %calc_ecc_bytes285.i.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 19, i32 2
  %97 = ptrtoint ptr %calc_ecc_bytes285.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %cadence_nand_calc_ecc_bytes_4096.sink.i, ptr %calc_ecc_bytes285.i.i, align 4
  %call.i.i = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %cdns_ctrl, i32 noundef 280, i32 noundef 1000000, i32 noundef 256, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i45.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i45.i, label %if.end21, label %if.end28.i.disable_irq_crit_edge

if.end28.i.disable_irq_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_irq

if.end21:                                         ; preds = %if.end28.i
  %98 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg1.i, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %99, i32 4104
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i) #9, !srcloc !334
  %101 = and i32 %100, -65537
  %102 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %reg1.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %103, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %101) #9, !srcloc !333
  %104 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %mask) #9
  %caps1 = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 3
  %105 = ptrtoint ptr %caps1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %caps1, align 4
  %has_dma = getelementptr inbounds %struct.cadence_nand_dt_devdata, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %has_dma to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load = load i8, ptr %has_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool22.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool22.not, label %if.end21.if.end33_crit_edge, label %if.then23

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then23:                                        ; preds = %if.end21
  %call24 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef null, ptr noundef null, ptr noundef null) #9
  %dmac = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 21
  %108 = ptrtoint ptr %dmac to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call24, ptr %dmac, align 4
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %do.end30, label %if.then23.if.end33_crit_edge

if.then23.if.end33_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

do.end30:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cdns_ctrl, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.19) #12
  br label %disable_irq

if.end33:                                         ; preds = %if.then23.if.end33_crit_edge, %if.end21.if.end33_crit_edge
  %controller = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 1
  call void @__mutex_init(ptr noundef %controller, ptr noundef nonnull @.str.34, ptr noundef nonnull @nand_controller_init.__key) #9
  %chips = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 26
  %111 = ptrtoint ptr %chips to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %chips, ptr %chips, align 4
  %prev.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 26, i32 1
  %112 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %chips, ptr %prev.i, align 4
  %ops = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 1, i32 1
  %113 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @cadence_nand_controller_ops, ptr %ops, align 4
  %curr_corr_str_idx = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 9
  %114 = ptrtoint ptr %curr_corr_str_idx to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -1, ptr %curr_corr_str_idx, align 4
  %115 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cdns_ctrl, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %116, i32 0, i32 27
  %117 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %of_node.i, align 8
  %119 = ptrtoint ptr %caps2.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %caps2.i.i, align 4
  %conv.i103 = zext i8 %120 to i32
  %call.i.i104 = call ptr @of_get_next_child(ptr noundef %118, ptr noundef null) #9
  %cmp.not5.i.i = icmp eq ptr %call.i.i104, null
  br i1 %cmp.not5.i.i, label %if.end33.if.end.i107_crit_edge, label %if.end33.for.body.i.i_crit_edge

if.end33.for.body.i.i_crit_edge:                  ; preds = %if.end33
  br label %for.body.i.i

if.end33.if.end.i107_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i107

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end33.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i105, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end33.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i106, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i104, %if.end33.for.body.i.i_crit_edge ]
  %inc.i.i105 = add i32 %num.07.i.i, 1
  %call1.i.i106 = call ptr @of_get_next_child(ptr noundef %118, ptr noundef nonnull %child.06.i.i) #9
  %cmp.not.i.i = icmp eq ptr %call1.i.i106, null
  br i1 %cmp.not.i.i, label %of_get_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i105, i32 %conv.i103)
  %cmp.i = icmp sgt i32 %inc.i.i105, %conv.i103
  br i1 %cmp.i, label %do.end.i, label %of_get_child_count.exit.i.if.end.i107_crit_edge

of_get_child_count.exit.i.if.end.i107_crit_edge:  ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i107

do.end.i:                                         ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %121 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cdns_ctrl, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.137, i32 noundef %inc.i.i105, i32 noundef %conv.i103) #12
  br label %do.end40

if.end.i107:                                      ; preds = %of_get_child_count.exit.i.if.end.i107_crit_edge, %if.end33.if.end.i107_crit_edge
  %call3.i = call ptr @of_get_next_child(ptr noundef %118, ptr noundef null) #9
  %cmp4.not70.i = icmp eq ptr %call3.i, null
  br i1 %cmp4.not70.i, label %if.end.i107.if.end42_crit_edge, label %for.body.lr.ph.i

if.end.i107.if.end42_crit_edge:                   ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

for.body.lr.ph.i:                                 ; preds = %if.end.i107
  %assigned_cs.i.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 25
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %nand_np.071.i = phi ptr [ %call3.i, %for.body.lr.ph.i ], [ %call9.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs.i.i) #9
  %123 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 -1, ptr %cs.i.i, align 4, !annotation !331
  %call.i26.i = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %nand_np.071.i, ptr noundef nonnull @.str.139, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i26.i)
  %cmp.i.i108 = icmp slt i32 %call.i26.i, 1
  %124 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cdns_ctrl, align 4
  br i1 %cmp.i.i108, label %do.end.i.i, label %if.end.i.i110

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.140) #12
  br label %if.then7.i

if.end.i.i110:                                    ; preds = %for.body.i
  %add.i.i = add nuw i32 %call.i26.i, 2232
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %125, i32 noundef %add.i.i, i32 noundef 3520) #9
  %tobool.not.i.i109 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i109, label %do.end6.i.i, label %for.body.lr.ph.i.i

do.end6.i.i:                                      ; preds = %if.end.i.i110
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cdns_ctrl, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.143) #12
  br label %if.then7.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i110
  %conv.i.i111 = trunc i32 %call.i26.i to i8
  %nsels9.i.i = getelementptr inbounds %struct.cdns_nand_chip, ptr %call.i.i.i, i32 0, i32 2
  %128 = ptrtoint ptr %nsels9.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv.i.i111, ptr %nsels9.i.i, align 8
  br label %for.body.i27.i

for.body.i27.i:                                   ; preds = %if.end39.i.i.for.body.i27.i_crit_edge, %for.body.lr.ph.i.i
  %i.0118.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i28.i, %if.end39.i.i.for.body.i27.i_crit_edge ]
  %call12.i.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %nand_np.071.i, ptr noundef nonnull @.str.139, i32 noundef %i.0118.i.i, ptr noundef nonnull %cs.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end19.i.i, label %do.end17.i.i

do.end17.i.i:                                     ; preds = %for.body.i27.i
  call void @__sanitizer_cov_trace_pc() #11
  %129 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cdns_ctrl, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.146, i32 noundef %call12.i.i) #12
  br label %if.then7.i

if.end19.i.i:                                     ; preds = %for.body.i27.i
  %131 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %cs.i.i, align 4
  %133 = ptrtoint ptr %caps2.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %caps2.i.i, align 4
  %conv20.i.i = zext i8 %134 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %conv20.i.i)
  %cmp21.not.i.i = icmp ult i32 %132, %conv20.i.i
  br i1 %cmp21.not.i.i, label %if.end31.i.i, label %do.end26.i.i

do.end26.i.i:                                     ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv20.i.i.le = zext i8 %134 to i32
  %135 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cdns_ctrl, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.149, i32 noundef %132, i32 noundef %conv20.i.i.le) #12
  br label %if.then7.i

if.end31.i.i:                                     ; preds = %if.end19.i.i
  %call32.i.i = call i32 @_test_and_set_bit(i32 noundef %132, ptr noundef %assigned_cs.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %tobool33.not.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.end39.i.i, label %do.end37.i.i

do.end37.i.i:                                     ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %137 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cdns_ctrl, align 4
  %139 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cs.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.152, i32 noundef %140) #12
  br label %if.then7.i

if.end39.i.i:                                     ; preds = %if.end31.i.i
  %141 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %cs.i.i, align 4
  %conv40.i.i = trunc i32 %142 to i8
  %arrayidx.i.i = getelementptr %struct.cdns_nand_chip, ptr %call.i.i.i, i32 0, i32 10, i32 %i.0118.i.i
  %143 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv40.i.i, ptr %arrayidx.i.i, align 1
  %inc.i28.i = add nuw nsw i32 %i.0118.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i28.i, %call.i26.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %if.end39.i.i.for.body.i27.i_crit_edge

if.end39.i.i.for.body.i27.i_crit_edge:            ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i27.i

for.end.i.i:                                      ; preds = %if.end39.i.i
  %chip42.i.i = getelementptr inbounds %struct.cdns_nand_chip, ptr %call.i.i.i, i32 0, i32 1
  %controller43.i.i = getelementptr inbounds %struct.cdns_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 32
  %144 = ptrtoint ptr %controller43.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %controller, ptr %controller43.i.i, align 4
  %of_node.i.i.i.i = getelementptr inbounds %struct.cdns_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 27
  %145 = ptrtoint ptr %of_node.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %nand_np.071.i, ptr %of_node.i.i.i.i, align 8
  %name.i.i.i.i = getelementptr inbounds %struct.cdns_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 13
  %146 = ptrtoint ptr %name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %147, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %for.end.i.i.nand_set_flash_node.exit.i.i_crit_edge

for.end.i.i.nand_set_flash_node.exit.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nand_set_flash_node.exit.i.i

if.then.i.i.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = call i32 @of_property_read_string(ptr noundef nonnull %nand_np.071.i, ptr noundef nonnull @.str.160, ptr noundef %name.i.i.i.i) #9
  br label %nand_set_flash_node.exit.i.i

nand_set_flash_node.exit.i.i:                     ; preds = %if.then.i.i.i.i, %for.end.i.i.nand_set_flash_node.exit.i.i_crit_edge
  %148 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cdns_ctrl, align 4
  %parent.i.i = getelementptr inbounds %struct.cdns_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  %150 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %149, ptr %parent.i.i, align 8
  %ecc.i.i = getelementptr inbounds %struct.cdns_nand_chip, ptr %call.i.i.i, i32 0, i32 1, i32 33
  %151 = ptrtoint ptr %ecc.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 3, ptr %ecc.i.i, align 8
  %152 = ptrtoint ptr %nsels9.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %nsels9.i.i, align 8
  %conv48.i.i = zext i8 %153 to i32
  %call.i110.i.i = call i32 @nand_scan_with_ids(ptr noundef %chip42.i.i, i32 noundef %conv48.i.i, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i.i)
  %tobool50.not.i.i = icmp eq i32 %call.i110.i.i, 0
  br i1 %tobool50.not.i.i, label %if.end56.i.i, label %do.end54.i.i

do.end54.i.i:                                     ; preds = %nand_set_flash_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %154 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cdns_ctrl, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.155) #12
  br label %if.then7.i

if.end56.i.i:                                     ; preds = %nand_set_flash_node.exit.i.i
  %call57.i.i = call i32 @mtd_device_parse_register(ptr noundef %chip42.i.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i)
  %tobool58.not.i.i = icmp eq i32 %call57.i.i, 0
  br i1 %tobool58.not.i.i, label %if.end64.i.i, label %do.end62.i.i

do.end62.i.i:                                     ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %156 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cdns_ctrl, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.158, i32 noundef %call57.i.i) #12
  call void @nand_cleanup(ptr noundef %chip42.i.i) #9
  br label %if.then7.i

if.end64.i.i:                                     ; preds = %if.end56.i.i
  %node.i.i = getelementptr inbounds %struct.cdns_nand_chip, ptr %call.i.i.i, i32 0, i32 3
  %158 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %prev.i, align 4
  %call.i.i111.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i.i, ptr noundef %159, ptr noundef %chips) #9
  br i1 %call.i.i111.i.i, label %if.end.i.i.i.i, label %if.end64.i.i.for.inc.i_crit_edge

if.end64.i.i.for.inc.i_crit_edge:                 ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i.i.i.i:                                   ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %160 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %node.i.i, ptr %prev.i, align 4
  %161 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %chips, ptr %node.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.cdns_nand_chip, ptr %call.i.i.i, i32 0, i32 3, i32 1
  %162 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %159, ptr %prev3.i.i.i.i, align 4
  %163 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %node.i.i, ptr %159, align 4
  br label %for.inc.i

if.then7.i:                                       ; preds = %do.end62.i.i, %do.end54.i.i, %do.end37.i.i, %do.end26.i.i, %do.end17.i.i, %do.end6.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -12, %do.end6.i.i ], [ %call57.i.i, %do.end62.i.i ], [ %call.i110.i.i, %do.end54.i.i ], [ -22, %do.end37.i.i ], [ -22, %do.end26.i.i ], [ %call12.i.i, %do.end17.i.i ], [ -22, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i.i) #9
  call void @of_node_put(ptr noundef nonnull %nand_np.071.i) #9
  %164 = ptrtoint ptr %chips to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %chips, align 4
  %cmp.not46.i.i = icmp eq ptr %165, %chips
  br i1 %cmp.not46.i.i, label %if.then7.i.do.end40_crit_edge, label %if.then7.i.for.body.i31.i_crit_edge

if.then7.i.for.body.i31.i_crit_edge:              ; preds = %if.then7.i
  br label %for.body.i31.i

if.then7.i.do.end40_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

for.body.i31.i:                                   ; preds = %list_del.exit.i.i.for.body.i31.i_crit_edge, %if.then7.i.for.body.i31.i_crit_edge
  %.pn.in47.i.i = phi ptr [ %.pn49.i.i, %list_del.exit.i.i.for.body.i31.i_crit_edge ], [ %165, %if.then7.i.for.body.i31.i_crit_edge ]
  %166 = ptrtoint ptr %.pn.in47.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %.pn49.i.i = load ptr, ptr %.pn.in47.i.i, align 4
  %chip8.i.i = getelementptr i8, ptr %.pn.in47.i.i, i32 -2172
  %call9.i.i = call i32 @mtd_device_unregister(ptr noundef %chip8.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i30.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i30.i, label %for.body.i31.i.if.end.i34.i_crit_edge, label %do.end.i32.i, !prof !332

for.body.i31.i.if.end.i34.i_crit_edge:            ; preds = %for.body.i31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i34.i

do.end.i32.i:                                     ; preds = %for.body.i31.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2790, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i34.i

if.end.i34.i:                                     ; preds = %do.end.i32.i, %for.body.i31.i.if.end.i34.i_crit_edge
  call void @nand_cleanup(ptr noundef %chip8.i.i) #9
  %call.i.i.i33.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in47.i.i) #9
  br i1 %call.i.i.i33.i, label %if.end.i.i.i35.i, label %if.end.i34.i.list_del.exit.i.i_crit_edge

if.end.i34.i.list_del.exit.i.i_crit_edge:         ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i.i

if.end.i.i.i35.i:                                 ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in47.i.i, i32 0, i32 1
  %167 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %prev.i.i.i.i, align 4
  %169 = ptrtoint ptr %.pn.in47.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %.pn.in47.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %168, ptr %prev1.i.i.i.i.i, align 4
  %172 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile ptr %170, ptr %168, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i35.i, %if.end.i34.i.list_del.exit.i.i_crit_edge
  %173 = ptrtoint ptr %.pn.in47.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in47.i.i, align 4
  %prev.i.i36.i = getelementptr inbounds %struct.list_head, ptr %.pn.in47.i.i, i32 0, i32 1
  %174 = ptrtoint ptr %prev.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i36.i, align 4
  %cmp.not.i37.i = icmp eq ptr %.pn49.i.i, %chips
  br i1 %cmp.not.i37.i, label %list_del.exit.i.i.do.end40_crit_edge, label %list_del.exit.i.i.for.body.i31.i_crit_edge

list_del.exit.i.i.for.body.i31.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i31.i

list_del.exit.i.i.do.end40_crit_edge:             ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

for.inc.i:                                        ; preds = %if.end.i.i.i.i, %if.end64.i.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i.i) #9
  %call9.i = call ptr @of_get_next_child(ptr noundef %118, ptr noundef nonnull %nand_np.071.i) #9
  %cmp4.not.i = icmp eq ptr %call9.i, null
  br i1 %cmp4.not.i, label %for.inc.i.if.end42_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end42_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.end40:                                         ; preds = %list_del.exit.i.i.do.end40_crit_edge, %if.then7.i.do.end40_crit_edge, %do.end.i
  %retval.0.i112125 = phi i32 [ %retval.0.i.ph.i, %if.then7.i.do.end40_crit_edge ], [ -22, %do.end.i ], [ %retval.0.i.ph.i, %list_del.exit.i.i.do.end40_crit_edge ]
  %175 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %cdns_ctrl, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %176, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i112125) #12
  br label %dma_release_chnl

if.end42:                                         ; preds = %for.inc.i.if.end42_crit_edge, %if.end.i107.if.end42_crit_edge
  %177 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %178) #9
  %179 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %buf_size, align 4
  %call9.i.i115 = call noalias align 128 ptr @__kmalloc(i32 noundef %180, i32 noundef 3520) #13
  %181 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %call9.i.i115, ptr %buf, align 4
  %tobool48.not = icmp eq ptr %call9.i.i115, null
  br i1 %tobool48.not, label %if.end42.dma_release_chnl_crit_edge, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42.dma_release_chnl_crit_edge:              ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_release_chnl

dma_release_chnl:                                 ; preds = %if.end42.dma_release_chnl_crit_edge, %do.end40
  %ret.0 = phi i32 [ %retval.0.i112125, %do.end40 ], [ -12, %if.end42.dma_release_chnl_crit_edge ]
  %dmac51 = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 21
  %182 = ptrtoint ptr %dmac51 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dmac51, align 4
  %tobool52.not = icmp eq ptr %183, null
  br i1 %tobool52.not, label %dma_release_chnl.disable_irq_crit_edge, label %if.then53

dma_release_chnl.disable_irq_crit_edge:           ; preds = %dma_release_chnl
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_irq

if.then53:                                        ; preds = %dma_release_chnl
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_release_channel(ptr noundef nonnull %183) #9
  br label %disable_irq

disable_irq:                                      ; preds = %if.then53, %dma_release_chnl.disable_irq_crit_edge, %do.end30, %if.end28.i.disable_irq_crit_edge, %do.end288.i.i, %do.end21.i.i, %do.body14.disable_irq_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then53 ], [ %ret.0, %dma_release_chnl.disable_irq_crit_edge ], [ -16, %do.end30 ], [ -110, %if.end28.i.disable_irq_crit_edge ], [ -5, %do.end288.i.i ], [ -5, %do.end21.i.i ], [ %call.i102, %do.body14.disable_irq_crit_edge ]
  %reg.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 10
  %184 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %reg.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %185, i32 276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 128) #9, !srcloc !333
  br label %free_buf

free_buf:                                         ; preds = %disable_irq, %do.end
  %ret.2 = phi i32 [ -19, %do.end ], [ %ret.1, %disable_irq ]
  %186 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %187) #9
  br label %free_buf_desc

free_buf_desc:                                    ; preds = %free_buf, %if.end.free_buf_desc_crit_edge
  %ret.3 = phi i32 [ %ret.2, %free_buf ], [ -12, %if.end.free_buf_desc_crit_edge ]
  %188 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cdns_ctrl, align 4
  %190 = ptrtoint ptr %cdma_desc to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %cdma_desc, align 4
  %192 = ptrtoint ptr %dma_cdma_desc to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %dma_cdma_desc, align 4
  call void @dma_free_attrs(ptr noundef %189, i32 noundef 64, ptr noundef %191, i32 noundef %193, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %free_buf_desc, %if.end42.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %free_buf_desc ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %dev_id, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #9
  %reg.i.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %dev_id, i32 0, i32 10
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 272
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !334
  %3 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %4, i32 312
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #9, !srcloc !334
  %6 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %7, i32 296
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #9, !srcloc !334
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  %or.cond = select i1 %tobool.not.i, i1 %tobool1.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.i.not = icmp eq i32 %8, 0
  %or.cond23 = select i1 %or.cond, i1 %tobool2.i.not, i1 false
  br i1 %or.cond23, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  %12 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #9, !srcloc !333
  %14 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %15, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %5) #9, !srcloc !333
  %16 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %17, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %8) #9, !srcloc !333
  %irq_status1 = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %dev_id, i32 0, i32 13
  %status2 = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %dev_id, i32 0, i32 13, i32 2
  %18 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status2, align 4
  %or = or i32 %19, %11
  store i32 %or, ptr %status2, align 4
  %20 = ptrtoint ptr %irq_status1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_status1, align 4
  %or5 = or i32 %21, %10
  store i32 %or5, ptr %irq_status1, align 4
  %trd_error7 = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %dev_id, i32 0, i32 13, i32 1
  %22 = ptrtoint ptr %trd_error7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %trd_error7, align 4
  %or8 = or i32 %23, %9
  store i32 %or8, ptr %trd_error7, align 4
  %complete = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %dev_id, i32 0, i32 15
  tail call void @complete(ptr noundef %complete) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %result.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #9
  ret i32 %result.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cadence_nand_wait_for_value(ptr nocapture noundef readonly %cdns_ctrl, i32 noundef %reg_offset, i32 noundef %timeout_us, i32 noundef %mask, i1 noundef zeroext %is_clear) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %timeout_us to i64
  %call = tail call i64 @ktime_get() #9
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %call, %mul.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 569) #9
  %reg = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 10
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %add.ptr68 = getelementptr i8, ptr %1, i32 %reg_offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #9, !srcloc !334
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and69 = and i32 %3, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool.not70 = icmp ne i32 %and69, 0
  %cmp1271 = xor i1 %tobool.not70, %is_clear
  br i1 %cmp1271, label %entry.for.end_crit_edge, label %if.end15.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end15.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout_us)
  %tobool16.not = icmp eq i32 %timeout_us, 0
  br label %if.end15

if.end15:                                         ; preds = %if.then29.if.end15_crit_edge, %if.end15.lr.ph
  br i1 %tobool16.not, label %if.end15.if.then29_crit_edge, label %land.lhs.true

if.end15.if.then29_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

land.lhs.true:                                    ; preds = %if.end15
  %call17 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %if.then21, label %land.lhs.true.if.then29_crit_edge

land.lhs.true.if.then29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %add.ptr24 = getelementptr i8, ptr %5, i32 %reg_offset
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #9, !srcloc !334
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  br label %for.end

if.then29:                                        ; preds = %land.lhs.true.if.then29_crit_edge, %if.end15.if.then29_crit_edge
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %reg_offset
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !334
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %and = and i32 %11, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %cmp12 = xor i1 %tobool.not, %is_clear
  br i1 %cmp12, label %if.then29.for.end_crit_edge, label %if.then29.if.end15_crit_edge

if.then29.if.end15_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then29.for.end_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.then29.for.end_crit_edge, %if.then21, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %7, %if.then21 ], [ %3, %entry.for.end_crit_edge ], [ %11, %if.then29.for.end_crit_edge ]
  %and32 = and i32 %val.0, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp ne i32 %and32, 0
  %cmp38 = xor i1 %tobool33.not, %is_clear
  br i1 %cmp38, label %for.end.if.end48_crit_edge, label %do.end45

for.end.if.end48_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.end45:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv1164 = zext i1 %is_clear to i32
  %12 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.27, i32 noundef %reg_offset, i32 noundef %mask, i32 noundef %conv1164) #12
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %for.end.if.end48_crit_edge
  %cond = phi i32 [ -110, %do.end45 ], [ 0, %for.end.if.end48_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cadence_nand_calc_ecc_bytes_256(i32 noundef %step_size, i32 noundef %strength) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul1.i = mul i32 %strength, 12
  %sub.i = add i32 %mul1.i, 7
  %div.i = sdiv i32 %sub.i, 8
  %add2.i = add nsw i32 %div.i, 1
  %and.i = and i32 %add2.i, -2
  ret i32 %and.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cadence_nand_calc_ecc_bytes_512(i32 noundef %step_size, i32 noundef %strength) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul1.i = mul i32 %strength, 13
  %sub.i = add i32 %mul1.i, 7
  %div.i = sdiv i32 %sub.i, 8
  %add2.i = add nsw i32 %div.i, 1
  %and.i = and i32 %add2.i, -2
  ret i32 %and.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cadence_nand_calc_ecc_bytes_1024(i32 noundef %step_size, i32 noundef %strength) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul1.i = mul i32 %strength, 14
  %sub.i = add i32 %mul1.i, 7
  %div.i = sdiv i32 %sub.i, 8
  %add2.i = add nsw i32 %div.i, 1
  %and.i = and i32 %add2.i, -2
  ret i32 %and.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cadence_nand_calc_ecc_bytes_2048(i32 noundef %step_size, i32 noundef %strength) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul1.i = mul i32 %strength, 15
  %sub.i = add i32 %mul1.i, 7
  %div.i = sdiv i32 %sub.i, 8
  %add2.i = add nsw i32 %div.i, 1
  %and.i = and i32 %add2.i, -2
  ret i32 %and.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cadence_nand_calc_ecc_bytes_4096(i32 noundef %step_size, i32 noundef %strength) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul1.i = shl i32 %strength, 4
  %sub.i = or i32 %mul1.i, 7
  %div.i = sdiv i32 %sub.i, 8
  %add2.i = add nsw i32 %div.i, 1
  %and.i = and i32 %add2.i, -2
  ret i32 %and.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_attach_chip(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %call.i = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %add.ptr.i, i32 noundef 280, i32 noundef 1000000, i32 noundef 256, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cadence_nand_set_access_width16.exit.thread, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cadence_nand_set_access_width16.exit.thread:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %reg1.i = getelementptr i8, ptr %1, i32 128
  %4 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg1.i, align 4
  %add.ptr.i179 = getelementptr i8, ptr %5, i32 4104
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179) #9, !srcloc !334
  %7 = or i32 %6, 65536
  %8 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg1.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %9, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %7) #9, !srcloc !333
  br label %if.end6

if.end6:                                          ; preds = %cadence_nand_set_access_width16.exit.thread, %entry.if.end6_crit_edge
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 10
  %10 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bbt_options, align 8
  %or8 = or i32 %11, 393216
  store i32 %or8, ptr %bbt_options, align 8
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %12 = ptrtoint ptr %ecc to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %ecc, align 8
  %13 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %options, align 8
  %or10 = or i32 %14, 512
  store i32 %or10, ptr %options, align 8
  %badblockpos = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 11
  %15 = ptrtoint ptr %badblockpos to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %badblockpos, align 4
  %bbm_offs = getelementptr i8, ptr %chip, i32 2192
  %17 = trunc i32 %16 to i8
  %conv14 = and i8 %17, -2
  %18 = ptrtoint ptr %bbm_offs to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv14, ptr %bbm_offs, align 8
  %bbm_len = getelementptr i8, ptr %chip, i32 2193
  %19 = ptrtoint ptr %bbm_len to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %bbm_len, align 1
  %ecc_caps = getelementptr i8, ptr %1, i32 324
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %20 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %oobsize, align 4
  %sub = add i32 %21, -2
  %call17 = tail call i32 @nand_ecc_choose_conf(ptr noundef %chip, ptr noundef %ecc_caps, i32 noundef %sub) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body21, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.35) #12
  br label %cleanup

do.body21:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cadence_nand_attach_chip.__UNIQUE_ID_ddebug562, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cadence_nand_attach_chip, %if.then26)) #9
          to label %do.end33 [label %if.then26], !srcloc !335

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 8
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %28 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %strength, align 4
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %30 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bytes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cadence_nand_attach_chip.__UNIQUE_ID_ddebug562, ptr noundef %25, ptr noundef nonnull @.str.38, i32 noundef %27, i32 noundef %29, i32 noundef %31) #9
  br label %do.end33

do.end33:                                         ; preds = %if.then26, %do.body21
  %size35 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %32 = ptrtoint ptr %size35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size35, align 8
  %sector_size = getelementptr i8, ptr %chip, i32 2184
  %34 = ptrtoint ptr %sector_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %sector_size, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %35 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %writesize, align 4
  %div = udiv i32 %36, %33
  %sector_count = getelementptr i8, ptr %chip, i32 2188
  %37 = ptrtoint ptr %sector_count to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div, ptr %sector_count, align 4
  %bytes39 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %38 = ptrtoint ptr %bytes39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bytes39, align 4
  %mul = mul i32 %39, %div
  %40 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %oobsize, align 4
  %sub41 = sub i32 %41, %mul
  %avail_oob_size = getelementptr i8, ptr %chip, i32 2180
  %42 = ptrtoint ptr %avail_oob_size to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub41, ptr %avail_oob_size, align 4
  %bch_metadata_size = getelementptr i8, ptr %1, i32 368
  %43 = ptrtoint ptr %bch_metadata_size to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bch_metadata_size, align 4
  %conv43 = zext i8 %44 to i32
  %45 = tail call i32 @llvm.umin.i32(i32 %sub41, i32 %conv43)
  %46 = ptrtoint ptr %avail_oob_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %avail_oob_size, align 4
  %47 = ptrtoint ptr %bbm_len to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bbm_len, align 1
  %conv52 = zext i8 %48 to i32
  %add = add i32 %45, %mul
  %add53 = add i32 %add, %conv52
  call void @__sanitizer_cov_trace_cmp4(i32 %add53, i32 %41)
  %cmp55 = icmp ugt i32 %add53, %41
  br i1 %cmp55, label %if.then57, label %do.end33.if.end60_crit_edge

do.end33.if.end60_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then57:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  %sub59 = add nsw i32 %45, -4
  %49 = ptrtoint ptr %avail_oob_size to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub59, ptr %avail_oob_size, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %do.end33.if.end60_crit_edge
  %strength62 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %50 = ptrtoint ptr %strength62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %strength62, align 4
  %conv.i = and i32 %51, 255
  %arrayidx.i = getelementptr i8, ptr %1, i32 268
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %conv.i)
  %cmp1.i = icmp eq i32 %53, %conv.i
  br i1 %cmp1.i, label %if.end60.if.end68_crit_edge, label %for.inc.i

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

for.inc.i:                                        ; preds = %if.end60
  %arrayidx.1.i = getelementptr i8, ptr %1, i32 272
  %54 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv.i)
  %cmp1.1.i = icmp eq i32 %55, %conv.i
  br i1 %cmp1.1.i, label %for.inc.i.if.end68_crit_edge, label %for.inc.1.i

for.inc.i.if.end68_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr i8, ptr %1, i32 276
  %56 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv.i)
  %cmp1.2.i = icmp eq i32 %57, %conv.i
  br i1 %cmp1.2.i, label %for.inc.1.i.if.end68_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end68_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr i8, ptr %1, i32 280
  %58 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %conv.i)
  %cmp1.3.i = icmp eq i32 %59, %conv.i
  br i1 %cmp1.3.i, label %for.inc.2.i.if.end68_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end68_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %arrayidx.4.i = getelementptr i8, ptr %1, i32 284
  %60 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %conv.i)
  %cmp1.4.i = icmp eq i32 %61, %conv.i
  br i1 %cmp1.4.i, label %for.inc.3.i.if.end68_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end68_crit_edge:                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %arrayidx.5.i = getelementptr i8, ptr %1, i32 288
  %62 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %conv.i)
  %cmp1.5.i = icmp eq i32 %63, %conv.i
  br i1 %cmp1.5.i, label %for.inc.4.i.if.end68_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end68_crit_edge:                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %arrayidx.6.i = getelementptr i8, ptr %1, i32 292
  %64 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %conv.i)
  %cmp1.6.i = icmp eq i32 %65, %conv.i
  br i1 %cmp1.6.i, label %for.inc.5.i.if.end68_crit_edge, label %for.inc.6.i

for.inc.5.i.if.end68_crit_edge:                   ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %arrayidx.7.i = getelementptr i8, ptr %1, i32 296
  %66 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %conv.i)
  %cmp1.7.i = icmp eq i32 %67, %conv.i
  br i1 %cmp1.7.i, label %for.inc.6.i.if.end68_crit_edge, label %for.inc.6.i.cleanup_crit_edge

for.inc.6.i.cleanup_crit_edge:                    ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.6.i.if.end68_crit_edge:                   ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.end68:                                         ; preds = %for.inc.6.i.if.end68_crit_edge, %for.inc.5.i.if.end68_crit_edge, %for.inc.4.i.if.end68_crit_edge, %for.inc.3.i.if.end68_crit_edge, %for.inc.2.i.if.end68_crit_edge, %for.inc.1.i.if.end68_crit_edge, %for.inc.i.if.end68_crit_edge, %if.end60.if.end68_crit_edge
  %corr_str_idx.0.i.ph = phi i8 [ 6, %for.inc.5.i.if.end68_crit_edge ], [ 5, %for.inc.4.i.if.end68_crit_edge ], [ 4, %for.inc.3.i.if.end68_crit_edge ], [ 3, %for.inc.2.i.if.end68_crit_edge ], [ 2, %for.inc.1.i.if.end68_crit_edge ], [ 1, %for.inc.i.if.end68_crit_edge ], [ 0, %if.end60.if.end68_crit_edge ], [ 7, %for.inc.6.i.if.end68_crit_edge ]
  %corr_str_idx = getelementptr i8, ptr %chip, i32 2194
  %68 = ptrtoint ptr %corr_str_idx to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %corr_str_idx.0.i.ph, ptr %corr_str_idx, align 2
  %call70 = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %add.ptr.i, i32 noundef 280, i32 noundef 1000000, i32 noundef 256, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end73:                                         ; preds = %if.end68
  %69 = ptrtoint ptr %corr_str_idx to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %corr_str_idx, align 2
  %curr_corr_str_idx.i = getelementptr i8, ptr %1, i32 124
  %71 = ptrtoint ptr %curr_corr_str_idx.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %curr_corr_str_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %70)
  %cmp.i = icmp eq i8 %72, %70
  br i1 %cmp.i, label %if.end73.cadence_nand_set_ecc_strength.exit_crit_edge, label %if.end.i183

if.end73.cadence_nand_set_ecc_strength.exit_crit_edge: ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_set_ecc_strength.exit

if.end.i183:                                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i = zext i8 %70 to i32
  %reg3.i = getelementptr i8, ptr %1, i32 128
  %73 = ptrtoint ptr %reg3.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg3.i, align 4
  %add.ptr.i181 = getelementptr i8, ptr %74, i32 1064
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i181) #9, !srcloc !334
  %76 = and i32 %75, -458753
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #9
  %shl.i = shl nuw nsw i32 %conv1.i, 8
  %and22.i = and i32 %shl.i, 1792
  %or.i = or i32 %77, %and22.i
  %78 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %79 = ptrtoint ptr %reg3.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg3.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %80, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %78) #9, !srcloc !333
  %81 = ptrtoint ptr %curr_corr_str_idx.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %70, ptr %curr_corr_str_idx.i, align 4
  br label %cadence_nand_set_ecc_strength.exit

cadence_nand_set_ecc_strength.exit:               ; preds = %if.end.i183, %if.end73.cadence_nand_set_ecc_strength.exit_crit_edge
  %82 = ptrtoint ptr %strength62 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %strength62, align 4
  %reg1.i184 = getelementptr i8, ptr %1, i32 128
  %84 = ptrtoint ptr %reg1.i184 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg1.i184, align 4
  %add.ptr.i185 = getelementptr i8, ptr %85, i32 1064
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i185) #9, !srcloc !334
  %87 = or i32 %86, 33554432
  %88 = ptrtoint ptr %reg1.i184 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg1.i184, align 4
  %add.ptr3.i = getelementptr i8, ptr %89, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %87) #9, !srcloc !333
  %conv.i186 = shl i32 %83, 24
  %90 = ptrtoint ptr %reg1.i184 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %reg1.i184, align 4
  %add.ptr5.i = getelementptr i8, ptr %91, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %conv.i186) #9, !srcloc !333
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %92 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @cadence_nand_read_page, ptr %read_page, align 8
  %read_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 16
  %93 = ptrtoint ptr %read_page_raw to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @cadence_nand_read_page_raw, ptr %read_page_raw, align 8
  %write_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %94 = ptrtoint ptr %write_page to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @cadence_nand_write_page, ptr %write_page, align 4
  %write_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 17
  %95 = ptrtoint ptr %write_page_raw to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @cadence_nand_write_page_raw, ptr %write_page_raw, align 4
  %read_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 24
  %96 = ptrtoint ptr %read_oob to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @cadence_nand_read_oob, ptr %read_oob, align 8
  %write_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 25
  %97 = ptrtoint ptr %write_oob to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @cadence_nand_write_oob, ptr %write_oob, align 4
  %read_oob_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 23
  %98 = ptrtoint ptr %read_oob_raw to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @cadence_nand_read_oob_raw, ptr %read_oob_raw, align 4
  %write_oob_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 22
  %99 = ptrtoint ptr %write_oob_raw to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @cadence_nand_write_oob_raw, ptr %write_oob_raw, align 8
  %100 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %writesize, align 4
  %102 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %oobsize, align 4
  %add88 = add i32 %103, %101
  %buf_size = getelementptr i8, ptr %1, i32 120
  %104 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add88, i32 %105)
  %cmp89 = icmp ugt i32 %add88, %105
  br i1 %cmp89, label %if.then91, label %cadence_nand_set_ecc_strength.exit.if.end96_crit_edge

cadence_nand_set_ecc_strength.exit.if.end96_crit_edge: ; preds = %cadence_nand_set_ecc_strength.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.then91:                                        ; preds = %cadence_nand_set_ecc_strength.exit
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %add88, ptr %buf_size, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then91, %cadence_nand_set_ecc_strength.exit.if.end96_crit_edge
  %107 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr.i, align 4
  %call98 = tail call i32 @dma_set_mask(ptr noundef %108, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end105, label %do.end103

do.end103:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.40) #12
  br label %cleanup

if.end105:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %111 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @cadence_nand_ooblayout_ops, ptr %ooblayout1.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %do.end103, %if.end68.cleanup_crit_edge, %for.inc.6.i.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %do.end ], [ %call98, %do.end103 ], [ 0, %if.end105 ], [ -110, %if.end68.cleanup_crit_edge ], [ -110, %if.then.cleanup_crit_edge ], [ -22, %for.inc.6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_exec_op(ptr noundef %chip, ptr noundef %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %check_only, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @cadence_nand_select_target(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %call5 = tail call i32 @nand_op_parser_exec_op(ptr noundef %chip, ptr noundef nonnull @cadence_nand_op_parser, ptr noundef %op, i1 noundef zeroext %check_only) #9
  br label %return

return:                                           ; preds = %if.end3, %if.then.return_crit_edge
  %retval.1 = phi i32 [ %call5, %if.end3 ], [ %call, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_setup_interface(ptr nocapture noundef %chip, i32 noundef %chipnr, ptr noundef %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %add.ptr.i1499 = getelementptr i8, ptr %chip, i32 -32
  %board_delay2 = getelementptr i8, ptr %1, i32 348
  %2 = ptrtoint ptr %board_delay2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board_delay2, align 4
  %nf_clk_rate = getelementptr i8, ptr %1, i32 344
  %4 = ptrtoint ptr %nf_clk_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nf_clk_rate, align 4
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %5, i64 1000000000000) #14, !srcloc !336
  %asmresult1.i = extractvalue { i64, i64 } %6, 1
  %extract.t1732 = trunc i64 %asmresult1.i to i32
  %caps1 = getelementptr i8, ptr %1, i32 100
  %7 = ptrtoint ptr %caps1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caps1, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %sub186 = sub i32 %3, %10
  %11 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i = icmp eq i32 %12, 0
  %13 = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1
  %retval.0.i1501 = select i1 %cmp.i.i, ptr %13, ptr inttoptr (i32 -22 to ptr)
  %cmp.i = icmp ugt ptr %retval.0.i1501, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then190, label %if.end192

if.then190:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %retval.0.i1501 to i32
  br label %cleanup

if.end192:                                        ; preds = %entry
  %add187 = add i32 %10, %3
  %15 = call ptr @memset(ptr %add.ptr.i1499, i32 0, i32 32)
  %is_phy_type_dll = getelementptr i8, ptr %1, i32 107
  %16 = ptrtoint ptr %is_phy_type_dll to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_phy_type_dll, align 1, !range !337
  %18 = zext i8 %17 to i32
  %div1971726 = lshr i32 %extract.t1732, %18
  %tREA_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 23
  %19 = ptrtoint ptr %tREA_max to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tREA_max, align 4
  %add198 = add i32 %add187, %20
  %tRC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 22
  %21 = ptrtoint ptr %tRC_min to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tRC_min, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %extract.t1732)
  %cmp199.not = icmp ugt i32 %22, %extract.t1732
  br i1 %cmp199.not, label %if.end192.if.else230_crit_edge, label %land.lhs.true201

if.end192.if.else230_crit_edge:                   ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else230

land.lhs.true201:                                 ; preds = %if.end192
  %tRP_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 29
  %23 = ptrtoint ptr %tRP_min to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tRP_min, align 4
  %div2021430 = lshr i32 %extract.t1732, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %div2021430)
  %cmp203.not = icmp ugt i32 %24, %div2021430
  br i1 %cmp203.not, label %land.lhs.true201.if.else230_crit_edge, label %land.lhs.true205

land.lhs.true201.if.else230_crit_edge:            ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else230

land.lhs.true205:                                 ; preds = %land.lhs.true201
  %tREH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 24
  %25 = ptrtoint ptr %tREH_min to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tREH_min, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %div2021430)
  %cmp207.not = icmp ugt i32 %26, %div2021430
  br i1 %cmp207.not, label %land.lhs.true205.if.else230_crit_edge, label %if.then209

land.lhs.true205.if.else230_crit_edge:            ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else230

if.then209:                                       ; preds = %land.lhs.true205
  %tRHOH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 25
  %27 = ptrtoint ptr %tRHOH_min to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tRHOH_min, align 4
  %add1.i = sub i32 %28, %20
  %add1.i1504 = add i32 %sub186, %div2021430
  %add2.i = add i32 %add1.i1504, %28
  %sub.i1502 = sub nsw i32 0, %div2021430
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %sub.i1502)
  %cmp214.not = icmp eq i32 %add1.i, %sub.i1502
  br i1 %cmp214.not, label %if.else224, label %if.then216

if.then216:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.i, i32 %add198)
  %cmp217.not = icmp ugt i32 %add2.i, %add198
  br i1 %cmp217.not, label %lor.lhs.false, label %if.then216.if.then222_crit_edge

if.then216.if.then222_crit_edge:                  ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then222

lor.lhs.false:                                    ; preds = %if.then216
  %rem219 = urem i32 %add2.i, %div1971726
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem219)
  %cmp220 = icmp eq i32 %rem219, 0
  br i1 %cmp220, label %lor.lhs.false.if.then222_crit_edge, label %lor.lhs.false.if.end277_crit_edge

lor.lhs.false.if.end277_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end277

lor.lhs.false.if.then222_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then222

if.then222:                                       ; preds = %lor.lhs.false.if.then222_crit_edge, %if.then216.if.then222_crit_edge
  br label %if.end277

if.else224:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #11
  %add227 = add i32 %div1971726, %add198
  %div228 = udiv i32 %add227, %extract.t1732
  br label %if.end277

if.else230:                                       ; preds = %land.lhs.true205.if.else230_crit_edge, %land.lhs.true201.if.else230_crit_edge, %if.end192.if.else230_crit_edge
  %tRP_min231 = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 29
  %29 = ptrtoint ptr %tRP_min231 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tRP_min231, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i1505 = icmp eq i32 %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extract.t1732)
  %cmp1.i1506 = icmp eq i32 %extract.t1732, 0
  %or.cond.i = or i1 %cmp1.i1506, %cmp.i1505
  br i1 %or.cond.i, label %if.else230.calc_cycl.exit_crit_edge, label %if.end.i

if.else230.calc_cycl.exit_crit_edge:              ; preds = %if.else230
  call void @__sanitizer_cov_trace_pc() #11
  br label %calc_cycl.exit

if.end.i:                                         ; preds = %if.else230
  call void @__sanitizer_cov_trace_pc() #11
  %.frozen = freeze i32 %30
  %extract.t1732.frozen = freeze i32 %extract.t1732
  %div4.i = udiv i32 %.frozen, %extract.t1732.frozen
  %31 = mul i32 %div4.i, %extract.t1732.frozen
  %rem.i.decomposed = sub i32 %.frozen, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %cmp2.not.i = icmp eq i32 %rem.i.decomposed, 0
  %sub.i1507 = sext i1 %cmp2.not.i to i32
  %spec.select.i1508 = add i32 %div4.i, %sub.i1507
  br label %calc_cycl.exit

calc_cycl.exit:                                   ; preds = %if.end.i, %if.else230.calc_cycl.exit_crit_edge
  %retval.0.i1509 = phi i32 [ 0, %if.else230.calc_cycl.exit_crit_edge ], [ %spec.select.i1508, %if.end.i ]
  %add234 = add i32 %retval.0.i1509, 1
  %mul235 = mul i32 %add234, %extract.t1732
  %sub236 = sub i32 %22, %mul235
  %tREH_min237 = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 24
  %32 = ptrtoint ptr %tREH_min237 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tREH_min237, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %sub236)
  %cmp238.not = icmp ult i32 %33, %sub236
  br i1 %cmp238.not, label %if.else243, label %if.then240

if.then240:                                       ; preds = %calc_cycl.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i1510 = icmp eq i32 %33, 0
  %or.cond.i1512 = or i1 %cmp1.i1506, %cmp.i1510
  br i1 %or.cond.i1512, label %if.then240.if.end245_crit_edge, label %if.then240.if.end245.sink.split_crit_edge

if.then240.if.end245.sink.split_crit_edge:        ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end245.sink.split

if.then240.if.end245_crit_edge:                   ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end245

if.else243:                                       ; preds = %calc_cycl.exit
  br i1 %cmp1.i1506, label %if.else243.if.end245_crit_edge, label %if.else243.if.end245.sink.split_crit_edge

if.else243.if.end245.sink.split_crit_edge:        ; preds = %if.else243
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end245.sink.split

if.else243.if.end245_crit_edge:                   ; preds = %if.else243
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end245

if.end245.sink.split:                             ; preds = %if.else243.if.end245.sink.split_crit_edge, %if.then240.if.end245.sink.split_crit_edge
  %sub236.sink1731 = phi i32 [ %33, %if.then240.if.end245.sink.split_crit_edge ], [ %sub236, %if.else243.if.end245.sink.split_crit_edge ]
  %sub236.sink1731.frozen = freeze i32 %sub236.sink1731
  %extract.t1732.frozen1738 = freeze i32 %extract.t1732
  %div4.i1526 = udiv i32 %sub236.sink1731.frozen, %extract.t1732.frozen1738
  %34 = mul i32 %div4.i1526, %extract.t1732.frozen1738
  %rem.i1524.decomposed = sub i32 %sub236.sink1731.frozen, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i1524.decomposed)
  %cmp2.not.i1525 = icmp eq i32 %rem.i1524.decomposed, 0
  %sub.i1527 = sext i1 %cmp2.not.i1525 to i32
  %spec.select.i1528 = add i32 %div4.i1526, %sub.i1527
  br label %if.end245

if.end245:                                        ; preds = %if.end245.sink.split, %if.else243.if.end245_crit_edge, %if.then240.if.end245_crit_edge
  %trh_cnt.0 = phi i32 [ 0, %if.then240.if.end245_crit_edge ], [ 0, %if.else243.if.end245_crit_edge ], [ %spec.select.i1528, %if.end245.sink.split ]
  %tRHOH_min246 = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 25
  %35 = ptrtoint ptr %tRHOH_min246 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tRHOH_min246, align 4
  %add1.i1532 = sub i32 %36, %20
  %sub.i1533 = sub i32 0, %mul235
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i1532, i32 %sub.i1533)
  %cmp249.not = icmp eq i32 %add1.i1532, %sub.i1533
  br i1 %cmp249.not, label %if.else271, label %if.then251

if.then251:                                       ; preds = %if.end245
  %add1.i1536 = add i32 %mul235, %sub186
  %add2.i1537 = add i32 %add1.i1536, %36
  %add2.i1537.frozen = freeze i32 %add2.i1537
  %div1971726.frozen = freeze i32 %div1971726
  %div254 = udiv i32 %add2.i1537.frozen, %div1971726.frozen
  %mul255 = mul i32 %div254, %div1971726
  call void @__sanitizer_cov_trace_cmp4(i32 %mul255, i32 %add198)
  %cmp256.not = icmp ugt i32 %mul255, %add198
  br i1 %cmp256.not, label %lor.lhs.false258, label %if.then251.if.then268_crit_edge

if.then251.if.then268_crit_edge:                  ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then268

lor.lhs.false258:                                 ; preds = %if.then251
  %37 = mul i32 %div254, %div1971726.frozen
  %rem259.decomposed = sub i32 %add2.i1537.frozen, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem259.decomposed)
  %cmp260 = icmp eq i32 %rem259.decomposed, 0
  br i1 %cmp260, label %land.lhs.true262, label %lor.lhs.false258.if.end277_crit_edge

lor.lhs.false258.if.end277_crit_edge:             ; preds = %lor.lhs.false258
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end277

land.lhs.true262:                                 ; preds = %lor.lhs.false258
  %sub264 = add i32 %div254, -1
  %mul265 = mul i32 %sub264, %div1971726
  call void @__sanitizer_cov_trace_cmp4(i32 %mul265, i32 %add198)
  %cmp266.not = icmp ugt i32 %mul265, %add198
  br i1 %cmp266.not, label %land.lhs.true262.if.end277_crit_edge, label %land.lhs.true262.if.then268_crit_edge

land.lhs.true262.if.then268_crit_edge:            ; preds = %land.lhs.true262
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then268

land.lhs.true262.if.end277_crit_edge:             ; preds = %land.lhs.true262
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end277

if.then268:                                       ; preds = %land.lhs.true262.if.then268_crit_edge, %if.then251.if.then268_crit_edge
  br label %if.end277

if.else271:                                       ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #11
  %add274 = add i32 %div1971726, %add198
  %div275 = udiv i32 %add274, %extract.t1732
  br label %if.end277

if.end277:                                        ; preds = %if.else271, %if.then268, %land.lhs.true262.if.end277_crit_edge, %lor.lhs.false258.if.end277_crit_edge, %if.else224, %if.then222, %lor.lhs.false.if.end277_crit_edge
  %tobool786.not = phi i1 [ false, %if.else224 ], [ false, %if.then222 ], [ true, %lor.lhs.false.if.end277_crit_edge ], [ false, %lor.lhs.false258.if.end277_crit_edge ], [ false, %land.lhs.true262.if.end277_crit_edge ], [ false, %if.then268 ], [ false, %if.else271 ]
  %trh_cnt.1 = phi i32 [ 0, %if.else224 ], [ 0, %if.then222 ], [ 0, %lor.lhs.false.if.end277_crit_edge ], [ %trh_cnt.0, %lor.lhs.false258.if.end277_crit_edge ], [ %trh_cnt.0, %land.lhs.true262.if.end277_crit_edge ], [ %trh_cnt.0, %if.then268 ], [ %trh_cnt.0, %if.else271 ]
  %trp_cnt.1 = phi i32 [ %div228, %if.else224 ], [ 0, %if.then222 ], [ 0, %lor.lhs.false.if.end277_crit_edge ], [ %retval.0.i1509, %lor.lhs.false258.if.end277_crit_edge ], [ %retval.0.i1509, %land.lhs.true262.if.end277_crit_edge ], [ %add234, %if.then268 ], [ %div275, %if.else271 ]
  %tRHOH_min278 = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 25
  %38 = ptrtoint ptr %tRHOH_min278 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tRHOH_min278, align 4
  %div4.i1539 = zext i1 %tobool786.not to i32
  %spec.select.i1540 = lshr i32 %extract.t1732, %div4.i1539
  %add.i1541 = add i32 %trp_cnt.1, 1
  %mul.i1542 = mul i32 %add.i1541, %spec.select.i1540
  %add1.i1543 = add i32 %39, %sub186
  %add2.i1544 = add i32 %add1.i1543, %mul.i1542
  %tWC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 33
  %40 = ptrtoint ptr %tWC_min to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tWC_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %extract.t1732)
  %cmp280.not = icmp ugt i32 %41, %extract.t1732
  br i1 %cmp280.not, label %if.end277.if.else293_crit_edge, label %land.lhs.true282

if.end277.if.else293_crit_edge:                   ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else293

land.lhs.true282:                                 ; preds = %if.end277
  %tWP_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 36
  %42 = ptrtoint ptr %tWP_min to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tWP_min, align 8
  %add283 = add i32 %43, %10
  %div2841429 = lshr i32 %extract.t1732, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add283, i32 %div2841429)
  %cmp285.not = icmp ugt i32 %add283, %div2841429
  br i1 %cmp285.not, label %land.lhs.true282.if.else293_crit_edge, label %land.lhs.true287

land.lhs.true282.if.else293_crit_edge:            ; preds = %land.lhs.true282
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else293

land.lhs.true287:                                 ; preds = %land.lhs.true282
  %tWH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 34
  %44 = ptrtoint ptr %tWH_min to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tWH_min, align 8
  %add288 = add i32 %45, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add288, i32 %div2841429)
  %cmp290.not = icmp ugt i32 %add288, %div2841429
  br i1 %cmp290.not, label %land.lhs.true287.if.else293_crit_edge, label %land.lhs.true287.do.end411_crit_edge

land.lhs.true287.do.end411_crit_edge:             ; preds = %land.lhs.true287
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end411

land.lhs.true287.if.else293_crit_edge:            ; preds = %land.lhs.true287
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else293

if.else293:                                       ; preds = %land.lhs.true287.if.else293_crit_edge, %land.lhs.true282.if.else293_crit_edge, %if.end277.if.else293_crit_edge
  %tWP_min294 = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 36
  %46 = ptrtoint ptr %tWP_min294 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tWP_min294, align 8
  %add295 = add i32 %47, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add295)
  %cmp.i1545 = icmp eq i32 %add295, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extract.t1732)
  %cmp1.i1546 = icmp eq i32 %extract.t1732, 0
  %or.cond.i1547 = or i1 %cmp1.i1546, %cmp.i1545
  br i1 %or.cond.i1547, label %if.else293.calc_cycl.exit1555_crit_edge, label %if.end.i1553

if.else293.calc_cycl.exit1555_crit_edge:          ; preds = %if.else293
  call void @__sanitizer_cov_trace_pc() #11
  br label %calc_cycl.exit1555

if.end.i1553:                                     ; preds = %if.else293
  call void @__sanitizer_cov_trace_pc() #11
  %add295.frozen = freeze i32 %add295
  %extract.t1732.frozen1739 = freeze i32 %extract.t1732
  %div4.i1550 = udiv i32 %add295.frozen, %extract.t1732.frozen1739
  %48 = mul i32 %div4.i1550, %extract.t1732.frozen1739
  %rem.i1548.decomposed = sub i32 %add295.frozen, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i1548.decomposed)
  %cmp2.not.i1549 = icmp eq i32 %rem.i1548.decomposed, 0
  %sub.i1551 = sext i1 %cmp2.not.i1549 to i32
  %spec.select.i1552 = add i32 %div4.i1550, %sub.i1551
  br label %calc_cycl.exit1555

calc_cycl.exit1555:                               ; preds = %if.end.i1553, %if.else293.calc_cycl.exit1555_crit_edge
  %retval.0.i1554 = phi i32 [ 0, %if.else293.calc_cycl.exit1555_crit_edge ], [ %spec.select.i1552, %if.end.i1553 ]
  %add297 = add i32 %retval.0.i1554, 1
  %mul298 = mul i32 %add297, %extract.t1732
  %tALS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 6
  %49 = ptrtoint ptr %tALS_min to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tALS_min, align 8
  %add299 = add i32 %50, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul298, i32 %add299)
  %cmp300 = icmp uge i32 %mul298, %add299
  %brmerge = or i1 %cmp1.i1546, %cmp300
  %retval.0.i1554.mux = select i1 %cmp300, i32 %retval.0.i1554, i32 0
  br i1 %brmerge, label %calc_cycl.exit1555.if.end306_crit_edge, label %if.end.i1564

calc_cycl.exit1555.if.end306_crit_edge:           ; preds = %calc_cycl.exit1555
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end306

if.end.i1564:                                     ; preds = %calc_cycl.exit1555
  call void @__sanitizer_cov_trace_pc() #11
  %add299.frozen = freeze i32 %add299
  %extract.t1732.frozen1740 = freeze i32 %extract.t1732
  %div4.i1561 = udiv i32 %add299.frozen, %extract.t1732.frozen1740
  %51 = mul i32 %div4.i1561, %extract.t1732.frozen1740
  %rem.i1559.decomposed = sub i32 %add299.frozen, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i1559.decomposed)
  %cmp2.not.i1560 = icmp eq i32 %rem.i1559.decomposed, 0
  %sub.i1562 = sext i1 %cmp2.not.i1560 to i32
  %spec.select.i1563 = add i32 %div4.i1561, %sub.i1562
  br label %if.end306

if.end306:                                        ; preds = %if.end.i1564, %calc_cycl.exit1555.if.end306_crit_edge
  %twp_cnt.0 = phi i32 [ %retval.0.i1554.mux, %calc_cycl.exit1555.if.end306_crit_edge ], [ %spec.select.i1563, %if.end.i1564 ]
  %add308.neg = xor i32 %twp_cnt.0, -1
  %mul309.neg = mul i32 %extract.t1732, %add308.neg
  %sub310 = add i32 %mul309.neg, %41
  %tWH_min311 = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 34
  %52 = ptrtoint ptr %tWH_min311 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tWH_min311, align 8
  %54 = tail call i32 @llvm.umax.i32(i32 %53, i32 %sub310)
  %add317 = add i32 %54, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add317)
  %cmp.i1567 = icmp eq i32 %add317, 0
  %or.cond.i1569 = or i1 %cmp1.i1546, %cmp.i1567
  br i1 %or.cond.i1569, label %if.end306.do.end411_crit_edge, label %if.end.i1575

if.end306.do.end411_crit_edge:                    ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end411

if.end.i1575:                                     ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #11
  %add317.frozen = freeze i32 %add317
  %extract.t1732.frozen1741 = freeze i32 %extract.t1732
  %div4.i1572 = udiv i32 %add317.frozen, %extract.t1732.frozen1741
  %55 = mul i32 %div4.i1572, %extract.t1732.frozen1741
  %rem.i1570.decomposed = sub i32 %add317.frozen, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i1570.decomposed)
  %cmp2.not.i1571 = icmp eq i32 %rem.i1570.decomposed, 0
  %sub.i1573 = sext i1 %cmp2.not.i1571 to i32
  %spec.select.i1574 = add i32 %div4.i1572, %sub.i1573
  br label %do.end411

do.end411:                                        ; preds = %if.end.i1575, %if.end306.do.end411_crit_edge, %land.lhs.true287.do.end411_crit_edge
  %tobool782.not = phi i32 [ 16777216, %land.lhs.true287.do.end411_crit_edge ], [ 16908288, %if.end306.do.end411_crit_edge ], [ 16908288, %if.end.i1575 ]
  %twp_cnt.1 = phi i32 [ 0, %land.lhs.true287.do.end411_crit_edge ], [ %twp_cnt.0, %if.end306.do.end411_crit_edge ], [ %twp_cnt.0, %if.end.i1575 ]
  %twh_cnt.0 = phi i32 [ 0, %land.lhs.true287.do.end411_crit_edge ], [ 0, %if.end306.do.end411_crit_edge ], [ %spec.select.i1574, %if.end.i1575 ]
  %shl339 = shl i32 %trh_cnt.1, 24
  %and340 = and i32 %shl339, 520093696
  %shl363 = shl i32 %trp_cnt.1, 16
  %and364 = and i32 %shl363, 2031616
  %or365 = or i32 %and364, %and340
  %shl388 = shl i32 %twh_cnt.0, 8
  %and389 = and i32 %shl388, 7936
  %and414 = and i32 %twp_cnt.1, 31
  %or390 = or i32 %or365, %and414
  %or415 = or i32 %or390, %and389
  %56 = ptrtoint ptr %add.ptr.i1499 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or415, ptr %add.ptr.i1499, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cadence_nand_setup_interface, %if.then426)) #9
          to label %do.end429 [label %if.then426], !srcloc !335

if.then426:                                       ; preds = %do.end411
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cadence_nand_setup_interface.__UNIQUE_ID_ddebug470, ptr noundef %58, ptr noundef nonnull @.str.124, i32 noundef %or415) #9
  br label %do.end429

do.end429:                                        ; preds = %if.then426, %do.end411
  %tADL_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 5
  %59 = ptrtoint ptr %tADL_min to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tADL_min, align 4
  %add430 = add i32 %60, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add430)
  %cmp.i1578 = icmp eq i32 %add430, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extract.t1732)
  %cmp1.i1579 = icmp eq i32 %extract.t1732, 0
  %or.cond.i1580 = or i1 %cmp1.i1579, %cmp.i1578
  br i1 %or.cond.i1580, label %do.end429.calc_cycl.exit1588_crit_edge, label %if.end.i1586

do.end429.calc_cycl.exit1588_crit_edge:           ; preds = %do.end429
  call void @__sanitizer_cov_trace_pc() #11
  br label %calc_cycl.exit1588

if.end.i1586:                                     ; preds = %do.end429
  call void @__sanitizer_cov_trace_pc() #11
  %add430.frozen = freeze i32 %add430
  %extract.t1732.frozen1742 = freeze i32 %extract.t1732
  %div4.i1583 = udiv i32 %add430.frozen, %extract.t1732.frozen1742
  %61 = mul i32 %div4.i1583, %extract.t1732.frozen1742
  %rem.i1581.decomposed = sub i32 %add430.frozen, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i1581.decomposed)
  %cmp2.not.i1582 = icmp eq i32 %rem.i1581.decomposed, 0
  %sub.i1584 = sext i1 %cmp2.not.i1582 to i32
  %spec.select.i1585 = add i32 %div4.i1583, %sub.i1584
  br label %calc_cycl.exit1588

calc_cycl.exit1588:                               ; preds = %if.end.i1586, %do.end429.calc_cycl.exit1588_crit_edge
  %retval.0.i1587 = phi i32 [ 0, %do.end429.calc_cycl.exit1588_crit_edge ], [ %spec.select.i1585, %if.end.i1586 ]
  %tCCS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 1
  %62 = ptrtoint ptr %tCCS_min to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tCCS_min, align 8
  %add432 = add i32 %63, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add432)
  %cmp.i1589 = icmp eq i32 %add432, 0
  %or.cond.i1591 = or i1 %cmp1.i1579, %cmp.i1589
  br i1 %or.cond.i1591, label %calc_cycl.exit1588.calc_cycl.exit1599_crit_edge, label %if.end.i1597

calc_cycl.exit1588.calc_cycl.exit1599_crit_edge:  ; preds = %calc_cycl.exit1588
  call void @__sanitizer_cov_trace_pc() #11
  br label %calc_cycl.exit1599

if.end.i1597:                                     ; preds = %calc_cycl.exit1588
  call void @__sanitizer_cov_trace_pc() #11
  %add432.frozen = freeze i32 %add432
  %extract.t1732.frozen1743 = freeze i32 %extract.t1732
  %div4.i1594 = udiv i32 %add432.frozen, %extract.t1732.frozen1743
  %64 = mul i32 %div4.i1594, %extract.t1732.frozen1743
  %rem.i1592.decomposed = sub i32 %add432.frozen, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i1592.decomposed)
  %cmp2.not.i1593 = icmp eq i32 %rem.i1592.decomposed, 0
  %sub.i1595 = sext i1 %cmp2.not.i1593 to i32
  %spec.select.i1596 = add i32 %div4.i1594, %sub.i1595
  br label %calc_cycl.exit1599

calc_cycl.exit1599:                               ; preds = %if.end.i1597, %calc_cycl.exit1588.calc_cycl.exit1599_crit_edge
  %retval.0.i1598 = phi i32 [ 0, %calc_cycl.exit1588.calc_cycl.exit1599_crit_edge ], [ %spec.select.i1596, %if.end.i1597 ]
  %tWHR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 35
  %65 = ptrtoint ptr %tWHR_min to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tWHR_min, align 4
  %add434 = add i32 %66, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add434)
  %cmp.i1600 = icmp eq i32 %add434, 0
  %or.cond.i1602 = or i1 %cmp1.i1579, %cmp.i1600
  br i1 %or.cond.i1602, label %calc_cycl.exit1599.calc_cycl.exit1610_crit_edge, label %if.end.i1608

calc_cycl.exit1599.calc_cycl.exit1610_crit_edge:  ; preds = %calc_cycl.exit1599
  call void @__sanitizer_cov_trace_pc() #11
  br label %calc_cycl.exit1610

if.end.i1608:                                     ; preds = %calc_cycl.exit1599
  call void @__sanitizer_cov_trace_pc() #11
  %add434.frozen = freeze i32 %add434
  %extract.t1732.frozen1744 = freeze i32 %extract.t1732
  %div4.i1605 = udiv i32 %add434.frozen, %extract.t1732.frozen1744
  %67 = mul i32 %div4.i1605, %extract.t1732.frozen1744
  %rem.i1603.decomposed = sub i32 %add434.frozen, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i1603.decomposed)
  %cmp2.not.i1604 = icmp eq i32 %rem.i1603.decomposed, 0
  %sub.i1606 = sext i1 %cmp2.not.i1604 to i32
  %spec.select.i1607 = add i32 %div4.i1605, %sub.i1606
  br label %calc_cycl.exit1610

calc_cycl.exit1610:                               ; preds = %if.end.i1608, %calc_cycl.exit1599.calc_cycl.exit1610_crit_edge
  %retval.0.i1609 = phi i32 [ 0, %calc_cycl.exit1599.calc_cycl.exit1610_crit_edge ], [ %spec.select.i1607, %if.end.i1608 ]
  %tRHW_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 26
  %68 = ptrtoint ptr %tRHW_min to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tRHW_min, align 8
  %add436 = add i32 %69, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add436)
  %cmp.i1611 = icmp eq i32 %add436, 0
  %or.cond.i1613 = or i1 %cmp1.i1579, %cmp.i1611
  br i1 %or.cond.i1613, label %calc_cycl.exit1610.do.end458_crit_edge, label %if.end.i1619

calc_cycl.exit1610.do.end458_crit_edge:           ; preds = %calc_cycl.exit1610
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end458

if.end.i1619:                                     ; preds = %calc_cycl.exit1610
  call void @__sanitizer_cov_trace_pc() #11
  %add436.frozen = freeze i32 %add436
  %extract.t1732.frozen1745 = freeze i32 %extract.t1732
  %div4.i1616 = udiv i32 %add436.frozen, %extract.t1732.frozen1745
  %70 = mul i32 %div4.i1616, %extract.t1732.frozen1745
  %rem.i1614.decomposed = sub i32 %add436.frozen, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i1614.decomposed)
  %cmp2.not.i1615 = icmp eq i32 %rem.i1614.decomposed, 0
  %sub.i1617 = sext i1 %cmp2.not.i1615 to i32
  %spec.select.i1618 = add i32 %div4.i1616, %sub.i1617
  br label %do.end458

do.end458:                                        ; preds = %if.end.i1619, %calc_cycl.exit1610.do.end458_crit_edge
  %retval.0.i1620 = phi i32 [ 0, %calc_cycl.exit1610.do.end458_crit_edge ], [ %spec.select.i1618, %if.end.i1619 ]
  %shl460 = shl i32 %retval.0.i1587, 24
  %shl478 = shl i32 %retval.0.i1598, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %shl478)
  %tobool480.not = icmp ult i32 %shl478, 16777216
  %and508 = and i32 %shl478, 16711680
  %and508.pn = select i1 %tobool480.not, i32 %and508, i32 16711680
  %reg.0 = or i32 %and508.pn, %shl460
  %shl535 = shl i32 %retval.0.i1609, 8
  %and536 = and i32 %shl535, 65280
  %or537 = or i32 %reg.0, %and536
  %and561 = and i32 %retval.0.i1620, 255
  %or562 = or i32 %or537, %and561
  %timings0 = getelementptr i8, ptr %chip, i32 -28
  %71 = ptrtoint ptr %timings0 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or562, ptr %timings0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cadence_nand_setup_interface, %if.then575)) #9
          to label %do.end579 [label %if.then575], !srcloc !335

if.then575:                                       ; preds = %do.end458
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cadence_nand_setup_interface.__UNIQUE_ID_ddebug496, ptr noundef %73, ptr noundef nonnull @.str.125, i32 noundef %or562) #9
  br label %do.end579

do.end579:                                        ; preds = %if.then575, %do.end458
  %tRHZ_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 27
  %74 = ptrtoint ptr %tRHZ_max to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tRHZ_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i1622 = icmp eq i32 %75, 0
  %or.cond.i1624 = or i1 %cmp1.i1579, %cmp.i1622
  br i1 %or.cond.i1624, label %do.end579.calc_cycl.exit1632_crit_edge, label %if.end.i1630

do.end579.calc_cycl.exit1632_crit_edge:           ; preds = %do.end579
  call void @__sanitizer_cov_trace_pc() #11
  br label %calc_cycl.exit1632

if.end.i1630:                                     ; preds = %do.end579
  call void @__sanitizer_cov_trace_pc() #11
  %.frozen1746 = freeze i32 %75
  %extract.t1732.frozen1747 = freeze i32 %extract.t1732
  %div4.i1627 = udiv i32 %.frozen1746, %extract.t1732.frozen1747
  %76 = mul i32 %div4.i1627, %extract.t1732.frozen1747
  %rem.i1625.decomposed = sub i32 %.frozen1746, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i1625.decomposed)
  %cmp2.not.i1626 = icmp eq i32 %rem.i1625.decomposed, 0
  %sub.i1628 = sext i1 %cmp2.not.i1626 to i32
  %spec.select.i1629 = add i32 %div4.i1627, %sub.i1628
  br label %calc_cycl.exit1632

calc_cycl.exit1632:                               ; preds = %if.end.i1630, %do.end579.calc_cycl.exit1632_crit_edge
  %retval.0.i1631 = phi i32 [ 0, %do.end579.calc_cycl.exit1632_crit_edge ], [ %spec.select.i1629, %if.end.i1630 ]
  %tWB_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 32
  %77 = ptrtoint ptr %tWB_max to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tWB_max, align 8
  %add582 = add i32 %78, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add582)
  %cmp.i1633 = icmp eq i32 %add582, 0
  %or.cond.i1635 = or i1 %cmp1.i1579, %cmp.i1633
  br i1 %or.cond.i1635, label %calc_cycl.exit1632.calc_cycl.exit1643_crit_edge, label %if.end.i1641

calc_cycl.exit1632.calc_cycl.exit1643_crit_edge:  ; preds = %calc_cycl.exit1632
  call void @__sanitizer_cov_trace_pc() #11
  br label %calc_cycl.exit1643

if.end.i1641:                                     ; preds = %calc_cycl.exit1632
  call void @__sanitizer_cov_trace_pc() #11
  %add582.frozen = freeze i32 %add582
  %extract.t1732.frozen1748 = freeze i32 %extract.t1732
  %div4.i1638 = udiv i32 %add582.frozen, %extract.t1732.frozen1748
  %79 = mul i32 %div4.i1638, %extract.t1732.frozen1748
  %rem.i1636.decomposed = sub i32 %add582.frozen, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i1636.decomposed)
  %cmp2.not.i1637 = icmp eq i32 %rem.i1636.decomposed, 0
  %sub.i1639 = sext i1 %cmp2.not.i1637 to i32
  %spec.select.i1640 = add i32 %div4.i1638, %sub.i1639
  br label %calc_cycl.exit1643

calc_cycl.exit1643:                               ; preds = %if.end.i1641, %calc_cycl.exit1632.calc_cycl.exit1643_crit_edge
  %retval.0.i1642 = phi i32 [ 0, %calc_cycl.exit1632.calc_cycl.exit1643_crit_edge ], [ %spec.select.i1640, %if.end.i1641 ]
  %add585 = add i32 %retval.0.i1642, 8
  %add586 = add i32 %10, 500000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add586)
  %cmp.i1644 = icmp eq i32 %add586, 0
  %or.cond.i1646 = or i1 %cmp1.i1579, %cmp.i1644
  br i1 %or.cond.i1646, label %calc_cycl.exit1643.do.end657_crit_edge, label %if.end.i1652

calc_cycl.exit1643.do.end657_crit_edge:           ; preds = %calc_cycl.exit1643
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end657

if.end.i1652:                                     ; preds = %calc_cycl.exit1643
  call void @__sanitizer_cov_trace_pc() #11
  %add586.frozen = freeze i32 %add586
  %extract.t1732.frozen1749 = freeze i32 %extract.t1732
  %div4.i1649 = udiv i32 %add586.frozen, %extract.t1732.frozen1749
  %80 = mul i32 %div4.i1649, %extract.t1732.frozen1749
  %rem.i1647.decomposed = sub i32 %add586.frozen, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i1647.decomposed)
  %cmp2.not.i1648 = icmp eq i32 %rem.i1647.decomposed, 0
  %sub.i1650 = sext i1 %cmp2.not.i1648 to i32
  %spec.select.i1651 = add i32 %div4.i1649, %sub.i1650
  br label %do.end657

do.end657:                                        ; preds = %if.end.i1652, %calc_cycl.exit1643.do.end657_crit_edge
  %retval.0.i1653 = phi i32 [ 0, %calc_cycl.exit1643.do.end657_crit_edge ], [ %spec.select.i1651, %if.end.i1652 ]
  %add581 = shl i32 %retval.0.i1631, 24
  %shl610 = add i32 %add581, 16777216
  %shl634 = shl i32 %add585, 16
  %and635 = and i32 %shl634, 16711680
  %or636 = or i32 %and635, %shl610
  %and660 = and i32 %retval.0.i1653, 255
  %or661 = or i32 %and660, %or636
  %timings1 = getelementptr i8, ptr %chip, i32 -24
  %81 = ptrtoint ptr %timings1 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or661, ptr %timings1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cadence_nand_setup_interface, %if.then674)) #9
          to label %do.end678 [label %if.then674], !srcloc !335

if.then674:                                       ; preds = %do.end657
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cadence_nand_setup_interface.__UNIQUE_ID_ddebug512, ptr noundef %83, ptr noundef nonnull @.str.126, i32 noundef %or661) #9
  br label %do.end678

do.end678:                                        ; preds = %if.then674, %do.end657
  %tFEAT_max = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 19
  %84 = ptrtoint ptr %tFEAT_max to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tFEAT_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp.i1655 = icmp eq i32 %85, 0
  %or.cond.i1657 = or i1 %cmp1.i1579, %cmp.i1655
  br i1 %or.cond.i1657, label %do.end678.calc_cycl.exit1665_crit_edge, label %if.end.i1663

do.end678.calc_cycl.exit1665_crit_edge:           ; preds = %do.end678
  call void @__sanitizer_cov_trace_pc() #11
  br label %calc_cycl.exit1665

if.end.i1663:                                     ; preds = %do.end678
  call void @__sanitizer_cov_trace_pc() #11
  %.frozen1750 = freeze i32 %85
  %extract.t1732.frozen1751 = freeze i32 %extract.t1732
  %div4.i1660 = udiv i32 %.frozen1750, %extract.t1732.frozen1751
  %86 = mul i32 %div4.i1660, %extract.t1732.frozen1751
  %rem.i1658.decomposed = sub i32 %.frozen1750, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i1658.decomposed)
  %cmp2.not.i1659 = icmp eq i32 %rem.i1658.decomposed, 0
  %sub.i1661 = sext i1 %cmp2.not.i1659 to i32
  %spec.select.i1662 = add i32 %div4.i1660, %sub.i1661
  br label %calc_cycl.exit1665

calc_cycl.exit1665:                               ; preds = %if.end.i1663, %do.end678.calc_cycl.exit1665_crit_edge
  %retval.0.i1664 = phi i32 [ 0, %do.end678.calc_cycl.exit1665_crit_edge ], [ %spec.select.i1662, %if.end.i1663 ]
  %87 = tail call i32 @llvm.umax.i32(i32 %retval.0.i1664, i32 %add585)
  %tCEH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 9
  %88 = ptrtoint ptr %tCEH_min to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tCEH_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.i1666 = icmp eq i32 %89, 0
  %or.cond.i1668 = or i1 %cmp1.i1579, %cmp.i1666
  br i1 %or.cond.i1668, label %calc_cycl.exit1665.calc_cycl.exit1676_crit_edge, label %if.end.i1674

calc_cycl.exit1665.calc_cycl.exit1676_crit_edge:  ; preds = %calc_cycl.exit1665
  call void @__sanitizer_cov_trace_pc() #11
  br label %calc_cycl.exit1676

if.end.i1674:                                     ; preds = %calc_cycl.exit1665
  call void @__sanitizer_cov_trace_pc() #11
  %.frozen1752 = freeze i32 %89
  %extract.t1732.frozen1753 = freeze i32 %extract.t1732
  %div4.i1671 = udiv i32 %.frozen1752, %extract.t1732.frozen1753
  %90 = mul i32 %div4.i1671, %extract.t1732.frozen1753
  %rem.i1669.decomposed = sub i32 %.frozen1752, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i1669.decomposed)
  %cmp2.not.i1670 = icmp eq i32 %rem.i1669.decomposed, 0
  %sub.i1672 = sext i1 %cmp2.not.i1670 to i32
  %spec.select.i1673 = add i32 %div4.i1671, %sub.i1672
  %phi.bo = shl i32 %spec.select.i1673, 8
  %phi.bo1734 = and i32 %phi.bo, 16128
  br label %calc_cycl.exit1676

calc_cycl.exit1676:                               ; preds = %if.end.i1674, %calc_cycl.exit1665.calc_cycl.exit1676_crit_edge
  %retval.0.i1675 = phi i32 [ 0, %calc_cycl.exit1665.calc_cycl.exit1676_crit_edge ], [ %phi.bo1734, %if.end.i1674 ]
  %tCS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i1501, i32 0, i32 16
  %91 = ptrtoint ptr %tCS_min to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tCS_min, align 8
  %add685 = add i32 %92, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add685)
  %cmp.i1677 = icmp eq i32 %add685, 0
  %or.cond.i1679 = or i1 %cmp1.i1579, %cmp.i1677
  br i1 %or.cond.i1679, label %calc_cycl.exit1676.do.end756_crit_edge, label %if.end.i1685

calc_cycl.exit1676.do.end756_crit_edge:           ; preds = %calc_cycl.exit1676
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end756

if.end.i1685:                                     ; preds = %calc_cycl.exit1676
  call void @__sanitizer_cov_trace_pc() #11
  %add685.frozen = freeze i32 %add685
  %extract.t1732.frozen1754 = freeze i32 %extract.t1732
  %div4.i1682 = udiv i32 %add685.frozen, %extract.t1732.frozen1754
  %93 = mul i32 %div4.i1682, %extract.t1732.frozen1754
  %rem.i1680.decomposed = sub i32 %add685.frozen, %93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i1680.decomposed)
  %cmp2.not.i1681 = icmp eq i32 %rem.i1680.decomposed, 0
  %sub.i1683 = sext i1 %cmp2.not.i1681 to i32
  %spec.select.i1684 = add i32 %div4.i1682, %sub.i1683
  %phi.bo1735 = and i32 %spec.select.i1684, 63
  br label %do.end756

do.end756:                                        ; preds = %if.end.i1685, %calc_cycl.exit1676.do.end756_crit_edge
  %retval.0.i1686 = phi i32 [ 0, %calc_cycl.exit1676.do.end756_crit_edge ], [ %phi.bo1735, %if.end.i1685 ]
  %shl709 = shl i32 %87, 16
  %and710 = and i32 %shl709, 67043328
  %or735 = or i32 %retval.0.i1675, %and710
  %or760 = or i32 %or735, %retval.0.i1686
  %timings2 = getelementptr i8, ptr %chip, i32 -20
  %94 = ptrtoint ptr %timings2 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %or760, ptr %timings2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cadence_nand_setup_interface, %if.then773)) #9
          to label %do.end777 [label %if.then773], !srcloc !335

if.then773:                                       ; preds = %do.end756
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cadence_nand_setup_interface.__UNIQUE_ID_ddebug528, ptr noundef %96, ptr noundef nonnull @.str.127, i32 noundef %or760) #9
  br label %do.end777

do.end777:                                        ; preds = %if.then773, %do.end756
  %97 = ptrtoint ptr %is_phy_type_dll to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %is_phy_type_dll, align 1, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool780.not = icmp eq i8 %98, 0
  br i1 %tobool780.not, label %do.end777.if.end841_crit_edge, label %if.then781

do.end777.if.end841_crit_edge:                    ; preds = %do.end777
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end841

if.then781:                                       ; preds = %do.end777
  call void @__sanitizer_cov_trace_pc() #11
  %or788 = or i32 %tobool782.not, 65536
  %reg.2 = select i1 %tobool786.not, i32 %tobool782.not, i32 %or788
  %or823 = or i32 %reg.2, 1799
  %dll_phy_ctrl = getelementptr i8, ptr %chip, i32 -16
  %99 = ptrtoint ptr %dll_phy_ctrl to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or823, ptr %dll_phy_ctrl, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cadence_nand_setup_interface, %if.then836)) #9
          to label %if.end841 [label %if.then836], !srcloc !335

if.then836:                                       ; preds = %if.then781
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cadence_nand_setup_interface.__UNIQUE_ID_ddebug539, ptr noundef %101, ptr noundef nonnull @.str.128, i32 noundef %or823) #9
  br label %if.end841

if.end841:                                        ; preds = %if.then836, %if.then781, %do.end777.if.end841_crit_edge
  %add2.i1544.frozen = freeze i32 %add2.i1544
  %div1971726.frozen1755 = freeze i32 %div1971726
  %div882 = udiv i32 %add2.i1544.frozen, %div1971726.frozen1755
  %102 = mul i32 %div882, %div1971726.frozen1755
  %rem842.decomposed = sub i32 %add2.i1544.frozen, %102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem842.decomposed)
  %cmp843.not = icmp eq i32 %rem842.decomposed, 0
  %div848 = udiv i32 %add2.i1544, %div1971726
  %sub849 = sext i1 %cmp843.not to i32
  %sampling_point.0 = add i32 %div848, %sub849
  %mul851 = mul i32 %sampling_point.0, %div1971726
  call void @__sanitizer_cov_trace_cmp4(i32 %mul851, i32 %add198)
  %cmp852 = icmp ugt i32 %mul851, %add198
  br i1 %cmp852, label %do.end869, label %do.end898

do.end869:                                        ; preds = %if.end841
  %div8721727 = lshr i32 %sampling_point.0, %18
  %rem873 = and i32 %sampling_point.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem873)
  %cmp874.not = icmp eq i32 %rem873, 0
  br i1 %cmp874.not, label %if.else891, label %if.then876

if.then876:                                       ; preds = %do.end869
  call void @__sanitizer_cov_trace_pc() #11
  %div8831729 = lshr i32 %div882, %18
  %sub884 = add i32 %div8831729, -1
  %phony_dqs_timing.0 = select i1 %cmp843.not, i32 %sub884, i32 %div8721727
  %103 = ptrtoint ptr %is_phy_type_dll to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %is_phy_type_dll, align 1, !range !337
  %sext = add nsw i8 %104, -1
  %dec = sext i8 %sext to i32
  %spec.select1460 = add i32 %phony_dqs_timing.0, %dec
  br label %if.end893

if.else891:                                       ; preds = %do.end869
  call void @__sanitizer_cov_trace_pc() #11
  %dec892 = add i32 %div8721727, -1
  br label %if.end893

if.end893:                                        ; preds = %if.else891, %if.then876
  %phony_dqs_timing.1 = phi i32 [ %dec892, %if.else891 ], [ %spec.select1460, %if.then876 ]
  %dll_phy_dqs_timing.0 = phi i32 [ 1048580, %if.else891 ], [ 1114116, %if.then876 ]
  %add894 = shl i32 %phony_dqs_timing.1, 19
  %phi.bo1736 = add i32 %add894, 1572864
  %phi.bo1737 = and i32 %phi.bo1736, 33030144
  br label %do.end921

do.end898:                                        ; preds = %if.end841
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %106, ptr noundef nonnull @.str.129) #12
  br label %do.end921

do.end921:                                        ; preds = %do.end898, %if.end893
  %phony_dqs_timing.2 = phi i32 [ %phony_dqs_timing.1, %if.end893 ], [ 0, %do.end898 ]
  %rd_del_sel.0 = phi i32 [ %phi.bo1737, %if.end893 ], [ 0, %do.end898 ]
  %dll_phy_dqs_timing.1 = phi i32 [ %dll_phy_dqs_timing.0, %if.end893 ], [ 0, %do.end898 ]
  %shl923 = shl i32 %phony_dqs_timing.2, 4
  %and924 = and i32 %shl923, 1008
  %107 = ptrtoint ptr %is_phy_type_dll to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %is_phy_type_dll, align 1, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool927.not = icmp eq i8 %108, 0
  %or929 = or i32 %and924, 16384
  %spec.select1463 = select i1 %tobool927.not, i32 %and924, i32 %or929
  %phy_ctrl = getelementptr i8, ptr %chip, i32 -12
  %109 = ptrtoint ptr %phy_ctrl to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %spec.select1463, ptr %phy_ctrl, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cadence_nand_setup_interface, %if.then943)) #9
          to label %do.end947 [label %if.then943], !srcloc !335

if.then943:                                       ; preds = %do.end921
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cadence_nand_setup_interface.__UNIQUE_ID_ddebug550, ptr noundef %111, ptr noundef nonnull @.str.130, i32 noundef %spec.select1463) #9
  br label %do.end947

do.end947:                                        ; preds = %if.then943, %do.end921
  %112 = ptrtoint ptr %is_phy_type_dll to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %is_phy_type_dll, align 1, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool950.not = icmp eq i8 %113, 0
  br i1 %tobool950.not, label %do.end947.cleanup_crit_edge, label %do.body952

do.end947.cleanup_crit_edge:                      ; preds = %do.end947
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body952:                                       ; preds = %do.end947
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug551, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cadence_nand_setup_interface, %if.then964)) #9
          to label %do.body969 [label %if.then964], !srcloc !335

if.then964:                                       ; preds = %do.body952
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cadence_nand_setup_interface.__UNIQUE_ID_ddebug551, ptr noundef %115, ptr noundef nonnull @.str.131, i32 noundef 0) #9
  br label %do.body969

do.body969:                                       ; preds = %if.then964, %do.body952
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug552, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cadence_nand_setup_interface, %if.then981)) #9
          to label %do.body986 [label %if.then981], !srcloc !335

if.then981:                                       ; preds = %do.body969
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cadence_nand_setup_interface.__UNIQUE_ID_ddebug552, ptr noundef %117, ptr noundef nonnull @.str.132, i32 noundef 2) #9
  br label %do.body986

do.body986:                                       ; preds = %if.then981, %do.body969
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cadence_nand_setup_interface, %if.then998)) #9
          to label %do.end1002 [label %if.then998], !srcloc !335

if.then998:                                       ; preds = %do.body986
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cadence_nand_setup_interface.__UNIQUE_ID_ddebug553, ptr noundef %119, ptr noundef nonnull @.str.133, i32 noundef %dll_phy_dqs_timing.1) #9
  br label %do.end1002

do.end1002:                                       ; preds = %if.then998, %do.body986
  %phy_dqs_timing = getelementptr i8, ptr %chip, i32 -8
  %120 = ptrtoint ptr %phy_dqs_timing to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %dll_phy_dqs_timing.1, ptr %phy_dqs_timing, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug559, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cadence_nand_setup_interface, %if.then1039)) #9
          to label %do.end1043 [label %if.then1039], !srcloc !335

if.then1039:                                      ; preds = %do.end1002
  call void @__sanitizer_cov_trace_pc() #11
  %121 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cadence_nand_setup_interface.__UNIQUE_ID_ddebug559, ptr noundef %122, ptr noundef nonnull @.str.134, i32 noundef %rd_del_sel.0) #9
  br label %do.end1043

do.end1043:                                       ; preds = %if.then1039, %do.end1002
  %phy_gate_lpbk_ctrl = getelementptr i8, ptr %chip, i32 -4
  %123 = ptrtoint ptr %phy_gate_lpbk_ctrl to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %rd_del_sel.0, ptr %phy_gate_lpbk_ctrl, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug560, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cadence_nand_setup_interface, %if.then1056)) #9
          to label %do.body1061 [label %if.then1056], !srcloc !335

if.then1056:                                      ; preds = %do.end1043
  call void @__sanitizer_cov_trace_pc() #11
  %124 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cadence_nand_setup_interface.__UNIQUE_ID_ddebug560, ptr noundef %125, ptr noundef nonnull @.str.135, i32 noundef 8388608) #9
  br label %do.body1061

do.body1061:                                      ; preds = %if.then1056, %do.end1043
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug561, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cadence_nand_setup_interface, %if.then1073)) #9
          to label %cleanup [label %if.then1073], !srcloc !335

if.then1073:                                      ; preds = %do.body1061
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cadence_nand_setup_interface.__UNIQUE_ID_ddebug561, ptr noundef %127, ptr noundef nonnull @.str.136, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then1073, %do.body1061, %do.end947.cleanup_crit_edge, %if.then190
  %retval.0 = phi i32 [ %14, %if.then190 ], [ 0, %if.then1073 ], [ 0, %do.end947.cleanup_crit_edge ], [ 0, %do.body1061 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_ecc_choose_conf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_read_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %add.ptr.i115 = getelementptr i8, ptr %chip, i32 -32
  %call3 = tail call fastcc i32 @cadence_nand_select_target(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bbm_len = getelementptr i8, ptr %chip, i32 2193
  %2 = ptrtoint ptr %bbm_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bbm_len, align 1
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  %bbm_offs = getelementptr i8, ptr %chip, i32 2192
  %6 = ptrtoint ptr %bbm_offs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bbm_offs, align 8
  %call.i = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %add.ptr.i, i32 noundef 280, i32 noundef 1000000, i32 noundef 256, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cadence_nand_set_skip_bytes_conf.exit_crit_edge

if.end.cadence_nand_set_skip_bytes_conf.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_set_skip_bytes_conf.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %7 to i32
  %add = add i32 %5, %conv
  %reg4.i = getelementptr i8, ptr %1, i32 128
  %8 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg4.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %9, i32 4108
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #9, !srcloc !334
  %11 = and i32 %10, 16777215
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  %13 = zext i8 %3 to i32
  %or.i = or i32 %12, %13
  %and48.i = and i32 %add, 16777215
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %15 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg4.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %16, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %14) #9, !srcloc !333
  %17 = tail call i32 @llvm.bswap.i32(i32 %and48.i) #9
  %18 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg4.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %19, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 %17) #9, !srcloc !333
  br label %cadence_nand_set_skip_bytes_conf.exit

cadence_nand_set_skip_bytes_conf.exit:            ; preds = %if.end.i, %if.end.cadence_nand_set_skip_bytes_conf.exit_crit_edge
  %20 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %writesize, align 4
  %data_dma_width1.i = getelementptr i8, ptr %1, i32 105
  %22 = ptrtoint ptr %data_dma_width1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data_dma_width1.i, align 1
  %tobool.not.i117 = icmp eq ptr %buf, null
  br i1 %tobool.not.i117, label %cadence_nand_set_skip_bytes_conf.exit.if.else18_crit_edge, label %land.lhs.true.i

cadence_nand_set_skip_bytes_conf.exit.if.else18_crit_edge: ; preds = %cadence_nand_set_skip_bytes_conf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else18

land.lhs.true.i:                                  ; preds = %cadence_nand_set_skip_bytes_conf.exit
  %24 = ptrtoint ptr %buf to i32
  %cmp.i = icmp ugt ptr %buf, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true2.i, label %land.lhs.true.i.if.else18_crit_edge

land.lhs.true.i.if.else18_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else18

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %25 = load ptr, ptr @high_memory, align 4
  %cmp3.i = icmp ugt ptr %25, %buf
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true2.i.if.else18_crit_edge

land.lhs.true2.i.if.else18_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else18

land.lhs.true4.i:                                 ; preds = %land.lhs.true2.i
  %sub.i = add i32 %24, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %26 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %26, %shr.i
  %call.i118 = tail call i32 @pfn_valid(i32 noundef %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool5.not.i = icmp eq i32 %call.i118, 0
  br i1 %tobool5.not.i, label %land.lhs.true4.i.if.else18_crit_edge, label %land.lhs.true6.i

land.lhs.true4.i.if.else18_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else18

land.lhs.true6.i:                                 ; preds = %land.lhs.true4.i
  %conv.i = zext i8 %23 to i32
  %sub7.i = add nsw i32 %conv.i, -1
  %and.i = and i32 %sub7.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp8.i = icmp eq i32 %and.i, 0
  %and12.i = and i32 %21, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %cmp13.i = icmp eq i32 %and12.i, 0
  %or.cond = select i1 %cmp8.i, i1 %cmp13.i, i1 false
  br i1 %or.cond, label %land.lhs.true, label %land.lhs.true6.i.if.else18_crit_edge, !prof !338

land.lhs.true6.i.if.else18_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else18

land.lhs.true:                                    ; preds = %land.lhs.true6.i
  %data_control_supp = getelementptr i8, ptr %1, i32 106
  %27 = ptrtoint ptr %data_control_supp to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %data_control_supp, align 2, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool8.not = icmp eq i8 %28, 0
  br i1 %tobool8.not, label %land.lhs.true.if.else18_crit_edge, label %if.then10

land.lhs.true.if.else18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else18

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool11.not = icmp eq i32 %oob_required, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %29 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %oob_poi, align 4
  br label %if.end15

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %buf13 = getelementptr i8, ptr %1, i32 116
  %31 = ptrtoint ptr %buf13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf13, align 4
  %33 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %writesize, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 %34
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %oob.0 = phi ptr [ %30, %if.then12 ], [ %add.ptr, %if.else ]
  %35 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %controller, align 4
  %curr_trans_type.i = getelementptr i8, ptr %36, i32 336
  %37 = ptrtoint ptr %curr_trans_type.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %curr_trans_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %38)
  %cmp.i119 = icmp eq i32 %38, 5
  br i1 %cmp.i119, label %if.end15.cadence_nand_prepare_data_size.exit_crit_edge, label %if.end.i120

if.end15.cadence_nand_prepare_data_size.exit_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_prepare_data_size.exit

if.end.i120:                                      ; preds = %if.end15
  %sector_size.i = getelementptr i8, ptr %chip, i32 2184
  %39 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sector_size.i, align 8
  %avail_oob_size.i = getelementptr i8, ptr %chip, i32 2180
  %41 = ptrtoint ptr %avail_oob_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %avail_oob_size.i, align 4
  %sector_count.i = getelementptr i8, ptr %chip, i32 2188
  %43 = ptrtoint ptr %sector_count.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sector_count.i, align 4
  %and52.i = shl i32 %44, 24
  %reg54.i = getelementptr i8, ptr %36, i32 128
  %45 = ptrtoint ptr %reg54.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg54.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %46, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %and52.i) #9, !srcloc !333
  %shl77.i = shl i32 %40, 16
  %and103.i = and i32 %40, 65535
  %or104.i = or i32 %and103.i, %shl77.i
  %47 = tail call i32 @llvm.bswap.i32(i32 %or104.i) #9
  %48 = ptrtoint ptr %reg54.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg54.i, align 4
  %add.ptr106.i = getelementptr i8, ptr %49, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.i, i32 %47) #9, !srcloc !333
  %data_control_supp.i = getelementptr i8, ptr %36, i32 106
  %50 = ptrtoint ptr %data_control_supp.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %data_control_supp.i, align 2, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool107.not.i = icmp eq i8 %51, 0
  br i1 %tobool107.not.i, label %if.end.i120.if.end141.i_crit_edge, label %if.then108.i

if.end.i120.if.end141.i_crit_edge:                ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141.i

if.then108.i:                                     ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %reg54.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg54.i, align 4
  %add.ptr110.i = getelementptr i8, ptr %53, i32 1172
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110.i) #9, !srcloc !334
  %55 = and i32 %54, 65535
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #9
  %and137.i = and i32 %42, 65535
  %or138.i = or i32 %56, %and137.i
  %57 = tail call i32 @llvm.bswap.i32(i32 %or138.i) #9
  %58 = ptrtoint ptr %reg54.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg54.i, align 4
  %add.ptr140.i = getelementptr i8, ptr %59, i32 1172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140.i, i32 %57) #9, !srcloc !333
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.then108.i, %if.end.i120.if.end141.i_crit_edge
  %60 = ptrtoint ptr %curr_trans_type.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 5, ptr %curr_trans_type.i, align 4
  br label %cadence_nand_prepare_data_size.exit

cadence_nand_prepare_data_size.exit:              ; preds = %if.end141.i, %if.end15.cadence_nand_prepare_data_size.exit_crit_edge
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %61 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cur_cs, align 4
  %arrayidx = getelementptr %struct.cdns_nand_chip, ptr %add.ptr.i115, i32 0, i32 10, i32 %62
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx, align 1
  %65 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %writesize, align 4
  %avail_oob_size = getelementptr i8, ptr %chip, i32 2180
  %67 = ptrtoint ptr %avail_oob_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %avail_oob_size, align 4
  %call17 = tail call fastcc i32 @cadence_nand_cdma_transfer(ptr noundef %add.ptr.i, i8 noundef zeroext %64, i32 noundef %page, ptr noundef nonnull %buf, ptr noundef %oob.0, i32 noundef %66, i32 noundef %68, i32 noundef 2, i1 noundef zeroext true)
  br label %if.end36

if.else18:                                        ; preds = %land.lhs.true.if.else18_crit_edge, %land.lhs.true6.i.if.else18_crit_edge, %land.lhs.true4.i.if.else18_crit_edge, %land.lhs.true2.i.if.else18_crit_edge, %land.lhs.true.i.if.else18_crit_edge, %cadence_nand_set_skip_bytes_conf.exit.if.else18_crit_edge
  tail call fastcc void @cadence_nand_prepare_data_size(ptr noundef %chip, i32 noundef 2)
  %cur_cs20 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %69 = ptrtoint ptr %cur_cs20 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cur_cs20, align 4
  %arrayidx21 = getelementptr %struct.cdns_nand_chip, ptr %add.ptr.i115, i32 0, i32 10, i32 %70
  %71 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx21, align 1
  %buf22 = getelementptr i8, ptr %1, i32 116
  %73 = ptrtoint ptr %buf22 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buf22, align 4
  %75 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %writesize, align 4
  %avail_oob_size24 = getelementptr i8, ptr %chip, i32 2180
  %77 = ptrtoint ptr %avail_oob_size24 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %avail_oob_size24, align 4
  %add25 = add i32 %78, %76
  %call26 = tail call fastcc i32 @cadence_nand_cdma_transfer(ptr noundef %add.ptr.i, i8 noundef zeroext %72, i32 noundef %page, ptr noundef %74, ptr noundef null, i32 noundef %add25, i32 noundef 0, i32 noundef 2, i1 noundef zeroext true)
  %79 = ptrtoint ptr %buf22 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %buf22, align 4
  %81 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %writesize, align 4
  %83 = call ptr @memcpy(ptr %buf, ptr %80, i32 %82)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool29.not = icmp eq i32 %oob_required, 0
  br i1 %tobool29.not, label %if.else18.if.end36_crit_edge, label %if.then30

if.else18.if.end36_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then30:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #11
  %oob_poi31 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %84 = ptrtoint ptr %oob_poi31 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %oob_poi31, align 4
  %86 = ptrtoint ptr %buf22 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %buf22, align 4
  %88 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %writesize, align 4
  %add.ptr34 = getelementptr i8, ptr %87, i32 %89
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %90 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %oobsize, align 4
  %92 = call ptr @memcpy(ptr %85, ptr %add.ptr34, i32 %91)
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.else18.if.end36_crit_edge, %cadence_nand_prepare_data_size.exit
  %status.0 = phi i32 [ %call17, %cadence_nand_prepare_data_size.exit ], [ %call26, %if.then30 ], [ %call26, %if.else18.if.end36_crit_edge ]
  %93 = zext i32 %status.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %status.0, label %do.end57 [
    i32 3, label %sw.bb
    i32 6, label %do.end50
    i32 5, label %if.end36.sw.epilog_crit_edge
    i32 0, label %if.end36.sw.epilog_crit_edge130
  ]

if.end36.sw.epilog_crit_edge130:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end36.sw.epilog_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  %94 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %failed, align 4
  br label %sw.epilog.sink.split

do.end50:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %cdma_desc = getelementptr i8, ptr %1, i32 96
  %96 = ptrtoint ptr %cdma_desc to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cdma_desc, align 4
  %status51 = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %97, i32 0, i32 9
  %98 = ptrtoint ptr %status51 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %status51, align 8
  %and = lshr i32 %99, 2
  %shr = and i32 %and, 255
  %ecc_stats52 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %100 = ptrtoint ptr %ecc_stats52 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ecc_stats52, align 4
  br label %sw.epilog.sink.split

do.end57:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.42) #12
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %do.end50, %sw.bb
  %.sink = phi i32 [ %101, %do.end50 ], [ 1, %sw.bb ]
  %shr.sink = phi i32 [ %shr, %do.end50 ], [ %95, %sw.bb ]
  %ecc_stats52.sink = phi ptr [ %ecc_stats52, %do.end50 ], [ %failed, %sw.bb ]
  %ecc_err_count.0.ph = phi i32 [ %shr, %do.end50 ], [ 1, %sw.bb ]
  %add53 = add i32 %shr.sink, %.sink
  %104 = ptrtoint ptr %ecc_stats52.sink to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add53, ptr %ecc_stats52.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end36.sw.epilog_crit_edge, %if.end36.sw.epilog_crit_edge130
  %ecc_err_count.0 = phi i32 [ 0, %if.end36.sw.epilog_crit_edge ], [ 0, %if.end36.sw.epilog_crit_edge130 ], [ %ecc_err_count.0.ph, %sw.epilog.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool58.not = icmp eq i32 %oob_required, 0
  br i1 %tobool58.not, label %sw.epilog.cleanup_crit_edge, label %if.then59

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then59:                                        ; preds = %sw.epilog
  %oob_poi60 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %105 = ptrtoint ptr %oob_poi60 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %oob_poi60, align 4
  %107 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %controller, align 4
  %add.ptr.i.i = getelementptr i8, ptr %108, i32 -4
  tail call fastcc void @cadence_nand_prepare_data_size(ptr noundef %chip, i32 noundef 4) #9
  %call.i.i = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %add.ptr.i.i, i32 noundef 280, i32 noundef 1000000, i32 noundef 256, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then59.cadence_nand_set_skip_bytes_conf.exit.i_crit_edge

if.then59.cadence_nand_set_skip_bytes_conf.exit.i_crit_edge: ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_set_skip_bytes_conf.exit.i

if.end.i.i:                                       ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  %reg4.i.i = getelementptr i8, ptr %108, i32 128
  %109 = ptrtoint ptr %reg4.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reg4.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %110, i32 4108
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #9, !srcloc !334
  %112 = and i32 %111, 16777215
  %113 = ptrtoint ptr %reg4.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %reg4.i.i, align 4
  %add.ptr50.i.i = getelementptr i8, ptr %114, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i.i, i32 %112) #9, !srcloc !333
  %115 = ptrtoint ptr %reg4.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reg4.i.i, align 4
  %add.ptr52.i.i = getelementptr i8, ptr %116, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i.i, i32 0) #9, !srcloc !333
  br label %cadence_nand_set_skip_bytes_conf.exit.i

cadence_nand_set_skip_bytes_conf.exit.i:          ; preds = %if.end.i.i, %if.then59.cadence_nand_set_skip_bytes_conf.exit.i_crit_edge
  %cur_cs.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %117 = ptrtoint ptr %cur_cs.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cur_cs.i, align 4
  %arrayidx.i = getelementptr %struct.cdns_nand_chip, ptr %add.ptr.i115, i32 0, i32 10, i32 %118
  %119 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i, align 1
  %buf4.i = getelementptr i8, ptr %108, i32 116
  %121 = ptrtoint ptr %buf4.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %buf4.i, align 4
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %123 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %oobsize.i, align 4
  %call5.i = tail call fastcc i32 @cadence_nand_cdma_transfer(ptr noundef %add.ptr.i.i, i8 noundef zeroext %120, i32 noundef %page, ptr noundef %122, ptr noundef null, i32 noundef %124, i32 noundef 0, i32 noundef 2, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i124 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i124, label %cadence_nand_read_bbm.exit.thread, label %cadence_nand_read_bbm.exit

cadence_nand_read_bbm.exit.thread:                ; preds = %cadence_nand_set_skip_bytes_conf.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %bbm_offs to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %bbm_offs, align 8
  %conv.i125 = zext i8 %126 to i32
  %add.ptr.i126 = getelementptr i8, ptr %106, i32 %conv.i125
  %127 = ptrtoint ptr %buf4.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %buf4.i, align 4
  %129 = ptrtoint ptr %bbm_len to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %bbm_len, align 1
  %conv7.i = zext i8 %130 to i32
  %131 = call ptr @memcpy(ptr %add.ptr.i126, ptr %128, i32 %conv7.i)
  br label %cleanup

cadence_nand_read_bbm.exit:                       ; preds = %cadence_nand_set_skip_bytes_conf.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.73) #12
  br label %cleanup

cleanup:                                          ; preds = %cadence_nand_read_bbm.exit, %cadence_nand_read_bbm.exit.thread, %sw.epilog.cleanup_crit_edge, %do.end57, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end57 ], [ %call3, %entry.cleanup_crit_edge ], [ -5, %cadence_nand_read_bbm.exit ], [ %ecc_err_count.0, %cadence_nand_read_bbm.exit.thread ], [ %ecc_err_count.0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_read_page_raw(ptr noundef %chip, ptr noundef writeonly %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %add.ptr.i199 = getelementptr i8, ptr %chip, i32 -32
  %bbm_len = getelementptr i8, ptr %chip, i32 2193
  %2 = ptrtoint ptr %bbm_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bbm_len, align 1
  %conv = zext i8 %3 to i32
  %writesize3 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %writesize3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize3, align 4
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %6 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %steps, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 8
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %10 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytes, align 4
  %buf6 = getelementptr i8, ptr %1, i32 116
  %12 = ptrtoint ptr %buf6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf6, align 4
  %call7 = tail call fastcc i32 @cadence_nand_select_target(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %add.ptr.i, i32 noundef 280, i32 noundef 1000000, i32 noundef 256, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cadence_nand_set_skip_bytes_conf.exit_crit_edge

if.end.cadence_nand_set_skip_bytes_conf.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_set_skip_bytes_conf.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %reg4.i = getelementptr i8, ptr %1, i32 128
  %14 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg4.i, align 4
  %add.ptr.i200 = getelementptr i8, ptr %15, i32 4108
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i200) #9, !srcloc !334
  %17 = and i32 %16, 16777215
  %18 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg4.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %19, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %17) #9, !srcloc !333
  %20 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg4.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %21, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 0) #9, !srcloc !333
  br label %cadence_nand_set_skip_bytes_conf.exit

cadence_nand_set_skip_bytes_conf.exit:            ; preds = %if.end.i, %if.end.cadence_nand_set_skip_bytes_conf.exit_crit_edge
  tail call fastcc void @cadence_nand_prepare_data_size(ptr noundef %chip, i32 noundef 3)
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %22 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_cs, align 4
  %arrayidx = getelementptr %struct.cdns_nand_chip, ptr %add.ptr.i199, i32 0, i32 10, i32 %23
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  %26 = ptrtoint ptr %buf6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf6, align 4
  %28 = ptrtoint ptr %writesize3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %writesize3, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %30 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %oobsize, align 4
  %add = add i32 %31, %29
  %call11 = tail call fastcc i32 @cadence_nand_cdma_transfer(ptr noundef %add.ptr.i, i8 noundef zeroext %25, i32 noundef %page, ptr noundef %27, ptr noundef null, i32 noundef %add, i32 noundef 0, i32 noundef 2, i1 noundef zeroext false)
  %32 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %call11, label %do.end [
    i32 5, label %cadence_nand_set_skip_bytes_conf.exit.sw.epilog_crit_edge
    i32 0, label %cadence_nand_set_skip_bytes_conf.exit.sw.epilog_crit_edge218
  ]

cadence_nand_set_skip_bytes_conf.exit.sw.epilog_crit_edge218: ; preds = %cadence_nand_set_skip_bytes_conf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

cadence_nand_set_skip_bytes_conf.exit.sw.epilog_crit_edge: ; preds = %cadence_nand_set_skip_bytes_conf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %cadence_nand_set_skip_bytes_conf.exit
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.75) #12
  br label %cleanup

sw.epilog:                                        ; preds = %cadence_nand_set_skip_bytes_conf.exit.sw.epilog_crit_edge, %cadence_nand_set_skip_bytes_conf.exit.sw.epilog_crit_edge218
  %tobool12.not = icmp ne ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp211 = icmp sgt i32 %7, 0
  %or.cond = select i1 %tobool12.not, i1 %cmp211, i1 false
  br i1 %or.cond, label %for.body.lr.ph, label %sw.epilog.if.end35_crit_edge

sw.epilog.if.end35_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

for.body.lr.ph:                                   ; preds = %sw.epilog
  %add15 = add i32 %11, %9
  %add.ptr31 = getelementptr i8, ptr %13, i32 %5
  %add.ptr32 = getelementptr i8, ptr %add.ptr31, i32 %conv
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0213 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %buf.addr.0212 = phi ptr [ %buf, %for.body.lr.ph ], [ %buf.addr.1, %for.inc.for.body_crit_edge ]
  %mul = mul i32 %i.0213, %add15
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mul)
  %cmp16.not = icmp sgt i32 %5, %mul
  br i1 %cmp16.not, label %if.end25, label %if.end25.thread

if.end25.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add19 = add i32 %mul, %conv
  %add.ptr203 = getelementptr i8, ptr %13, i32 %add19
  %35 = call ptr @memcpy(ptr %buf.addr.0212, ptr %add.ptr203, i32 %9)
  %add.ptr26204 = getelementptr i8, ptr %buf.addr.0212, i32 %9
  br label %for.inc

if.end25:                                         ; preds = %for.body
  %add20 = add i32 %mul, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %5)
  %cmp21 = icmp sgt i32 %add20, %5
  %sub = sub i32 %5, %mul
  %spec.select = select i1 %cmp21, i32 %sub, i32 %9
  %add.ptr = getelementptr i8, ptr %13, i32 %mul
  %36 = call ptr @memcpy(ptr %buf.addr.0212, ptr %add.ptr, i32 %spec.select)
  %add.ptr26 = getelementptr i8, ptr %buf.addr.0212, i32 %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %spec.select)
  %cmp27 = icmp sgt i32 %9, %spec.select
  br i1 %cmp27, label %if.then29, label %if.end25.for.inc_crit_edge

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %sub30 = sub i32 %9, %spec.select
  %37 = call ptr @memcpy(ptr %add.ptr26, ptr %add.ptr32, i32 %sub30)
  %add.ptr33 = getelementptr i8, ptr %buf.addr.0212, i32 %9
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %if.end25.for.inc_crit_edge, %if.end25.thread
  %buf.addr.1 = phi ptr [ %add.ptr33, %if.then29 ], [ %add.ptr26, %if.end25.for.inc_crit_edge ], [ %add.ptr26204, %if.end25.thread ]
  %inc = add nuw nsw i32 %i.0213, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.if.end35_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end35_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end35:                                         ; preds = %for.inc.if.end35_crit_edge, %sw.epilog.if.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool36.not = icmp eq i32 %oob_required, 0
  br i1 %tobool36.not, label %if.end35.cleanup_crit_edge, label %if.then37

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then37:                                        ; preds = %if.end35
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %38 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %oob_poi, align 4
  %sector_count = getelementptr i8, ptr %chip, i32 2188
  %40 = ptrtoint ptr %sector_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sector_count, align 4
  %sub38 = add i32 %41, -1
  %sector_size = getelementptr i8, ptr %chip, i32 2184
  %42 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sector_size, align 8
  %44 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bytes, align 4
  %add41 = add i32 %45, %43
  %mul42 = mul i32 %add41, %sub38
  %add44 = add i32 %43, %conv
  %add45 = add i32 %add44, %mul42
  %add.ptr46 = getelementptr i8, ptr %13, i32 %add45
  %avail_oob_size = getelementptr i8, ptr %chip, i32 2180
  %46 = ptrtoint ptr %avail_oob_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %avail_oob_size, align 4
  %48 = call ptr @memcpy(ptr %39, ptr %add.ptr46, i32 %47)
  %add.ptr47 = getelementptr i8, ptr %13, i32 %5
  %49 = call ptr @memcpy(ptr %39, ptr %add.ptr47, i32 %conv)
  br i1 %cmp211, label %for.body53.lr.ph, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body53.lr.ph:                                 ; preds = %if.then37
  %50 = ptrtoint ptr %avail_oob_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %avail_oob_size, align 4
  %add.ptr49 = getelementptr i8, ptr %39, i32 %51
  %add54 = add i32 %11, %9
  %sub57 = add nsw i32 %7, -1
  %add.ptr83 = getelementptr i8, ptr %add.ptr47, i32 %conv
  br label %for.body53

for.body53:                                       ; preds = %for.inc86.for.body53_crit_edge, %for.body53.lr.ph
  %oob.0216 = phi ptr [ %add.ptr49, %for.body53.lr.ph ], [ %oob.1, %for.inc86.for.body53_crit_edge ]
  %i.1215 = phi i32 [ 0, %for.body53.lr.ph ], [ %inc87, %for.inc86.for.body53_crit_edge ]
  %mul55 = mul i32 %i.1215, %add54
  %add56 = add i32 %mul55, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1215, i32 %sub57)
  %cmp58 = icmp eq i32 %i.1215, %sub57
  br i1 %cmp58, label %if.then60, label %for.body53.if.end63_crit_edge

for.body53.if.end63_crit_edge:                    ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then60:                                        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %avail_oob_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %avail_oob_size, align 4
  %add62 = add i32 %53, %add56
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %for.body53.if.end63_crit_edge
  %pos.1 = phi i32 [ %add62, %if.then60 ], [ %add56, %for.body53.if.end63_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pos.1)
  %cmp64.not = icmp sgt i32 %5, %pos.1
  br i1 %cmp64.not, label %if.end75, label %if.end75.thread

if.end75.thread:                                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %add67 = add i32 %pos.1, %conv
  %add.ptr76208 = getelementptr i8, ptr %13, i32 %add67
  %54 = call ptr @memcpy(ptr %oob.0216, ptr %add.ptr76208, i32 %11)
  %add.ptr77209 = getelementptr i8, ptr %oob.0216, i32 %11
  br label %for.inc86

if.end75:                                         ; preds = %if.end63
  %add69 = add i32 %pos.1, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add69, i32 %5)
  %cmp70 = icmp sgt i32 %add69, %5
  %sub73 = sub i32 %5, %pos.1
  %spec.select198 = select i1 %cmp70, i32 %sub73, i32 %11
  %add.ptr76 = getelementptr i8, ptr %13, i32 %pos.1
  %55 = call ptr @memcpy(ptr %oob.0216, ptr %add.ptr76, i32 %spec.select198)
  %add.ptr77 = getelementptr i8, ptr %oob.0216, i32 %spec.select198
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %spec.select198)
  %cmp78 = icmp sgt i32 %11, %spec.select198
  br i1 %cmp78, label %if.then80, label %if.end75.for.inc86_crit_edge

if.end75.for.inc86_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc86

if.then80:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %sub81 = sub i32 %11, %spec.select198
  %56 = call ptr @memcpy(ptr %add.ptr77, ptr %add.ptr83, i32 %sub81)
  %add.ptr84 = getelementptr i8, ptr %oob.0216, i32 %11
  br label %for.inc86

for.inc86:                                        ; preds = %if.then80, %if.end75.for.inc86_crit_edge, %if.end75.thread
  %oob.1 = phi ptr [ %add.ptr84, %if.then80 ], [ %add.ptr77, %if.end75.for.inc86_crit_edge ], [ %add.ptr77209, %if.end75.thread ]
  %inc87 = add nuw nsw i32 %i.1215, 1
  %exitcond217.not = icmp eq i32 %inc87, %7
  br i1 %exitcond217.not, label %for.inc86.cleanup_crit_edge, label %for.inc86.for.body53_crit_edge

for.inc86.for.body53_crit_edge:                   ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body53

for.inc86.cleanup_crit_edge:                      ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc86.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %call7, %entry.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ 0, %if.then37.cleanup_crit_edge ], [ 0, %for.inc86.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_write_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %add.ptr.i101 = getelementptr i8, ptr %chip, i32 -32
  %call3 = tail call fastcc i32 @cadence_nand_select_target(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup53_crit_edge

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

if.end:                                           ; preds = %entry
  %bbm_len = getelementptr i8, ptr %chip, i32 2193
  %2 = ptrtoint ptr %bbm_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bbm_len, align 1
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  %bbm_offs = getelementptr i8, ptr %chip, i32 2192
  %6 = ptrtoint ptr %bbm_offs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bbm_offs, align 8
  %call.i = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %add.ptr.i, i32 noundef 280, i32 noundef 1000000, i32 noundef 256, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cadence_nand_set_skip_bytes_conf.exit_crit_edge

if.end.cadence_nand_set_skip_bytes_conf.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_set_skip_bytes_conf.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %7 to i32
  %add = add i32 %5, %conv
  %reg4.i = getelementptr i8, ptr %1, i32 128
  %8 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg4.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %9, i32 4108
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #9, !srcloc !334
  %11 = and i32 %10, 16777215
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  %13 = zext i8 %3 to i32
  %or.i = or i32 %12, %13
  %and48.i = and i32 %add, 16777215
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %15 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg4.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %16, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %14) #9, !srcloc !333
  %17 = tail call i32 @llvm.bswap.i32(i32 %and48.i) #9
  %18 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg4.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %19, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 %17) #9, !srcloc !333
  br label %cadence_nand_set_skip_bytes_conf.exit

cadence_nand_set_skip_bytes_conf.exit:            ; preds = %if.end.i, %if.end.cadence_nand_set_skip_bytes_conf.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool5.not = icmp eq i32 %oob_required, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %cadence_nand_set_skip_bytes_conf.exit
  call void @__sanitizer_cov_trace_pc() #11
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %20 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %oob_poi, align 4
  %22 = ptrtoint ptr %bbm_offs to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bbm_offs, align 8
  %conv8 = zext i8 %23 to i32
  %add.ptr = getelementptr i8, ptr %21, i32 %conv8
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr, align 2
  %phi.cast = zext i16 %25 to i32
  %phi.bo = shl nuw i32 %phi.cast, 16
  br label %if.end12

if.else:                                          ; preds = %cadence_nand_set_skip_bytes_conf.exit
  call void @__sanitizer_cov_trace_pc() #11
  %buf9 = getelementptr i8, ptr %1, i32 116
  %26 = ptrtoint ptr %buf9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf9, align 4
  %28 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %writesize, align 4
  %add.ptr11 = getelementptr i8, ptr %27, i32 %29
  %avail_oob_size = getelementptr i8, ptr %chip, i32 2180
  %30 = ptrtoint ptr %avail_oob_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %avail_oob_size, align 4
  %32 = call ptr @memset(ptr %add.ptr11, i32 255, i32 %31)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then6
  %marker_val.0 = phi i32 [ %phi.bo, %if.then6 ], [ -65536, %if.else ]
  %call.i103 = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %add.ptr.i, i32 noundef 280, i32 noundef 1000000, i32 noundef 256, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool.not.i104 = icmp eq i32 %call.i103, 0
  br i1 %tobool.not.i104, label %if.end.i107, label %if.end12.cadence_nand_set_skip_marker_val.exit_crit_edge

if.end12.cadence_nand_set_skip_marker_val.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_set_skip_marker_val.exit

if.end.i107:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %reg1.i = getelementptr i8, ptr %1, i32 128
  %33 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg1.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %34, i32 4108
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #9, !srcloc !334
  %36 = and i32 %35, -65536
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  %or.i106 = or i32 %37, %marker_val.0
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i106) #9
  %39 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg1.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %40, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %38) #9, !srcloc !333
  br label %cadence_nand_set_skip_marker_val.exit

cadence_nand_set_skip_marker_val.exit:            ; preds = %if.end.i107, %if.end12.cadence_nand_set_skip_marker_val.exit_crit_edge
  %41 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %controller, align 4
  %curr_trans_type.i = getelementptr i8, ptr %42, i32 336
  %43 = ptrtoint ptr %curr_trans_type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %curr_trans_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %44)
  %cmp.i = icmp eq i32 %44, 5
  br i1 %cmp.i, label %cadence_nand_set_skip_marker_val.exit.cadence_nand_prepare_data_size.exit_crit_edge, label %if.end.i108

cadence_nand_set_skip_marker_val.exit.cadence_nand_prepare_data_size.exit_crit_edge: ; preds = %cadence_nand_set_skip_marker_val.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_prepare_data_size.exit

if.end.i108:                                      ; preds = %cadence_nand_set_skip_marker_val.exit
  %sector_size.i = getelementptr i8, ptr %chip, i32 2184
  %45 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sector_size.i, align 8
  %avail_oob_size.i = getelementptr i8, ptr %chip, i32 2180
  %47 = ptrtoint ptr %avail_oob_size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %avail_oob_size.i, align 4
  %sector_count.i = getelementptr i8, ptr %chip, i32 2188
  %49 = ptrtoint ptr %sector_count.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sector_count.i, align 4
  %and52.i = shl i32 %50, 24
  %reg54.i = getelementptr i8, ptr %42, i32 128
  %51 = ptrtoint ptr %reg54.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg54.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %52, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %and52.i) #9, !srcloc !333
  %shl77.i = shl i32 %46, 16
  %and103.i = and i32 %46, 65535
  %or104.i = or i32 %and103.i, %shl77.i
  %53 = tail call i32 @llvm.bswap.i32(i32 %or104.i) #9
  %54 = ptrtoint ptr %reg54.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg54.i, align 4
  %add.ptr106.i = getelementptr i8, ptr %55, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.i, i32 %53) #9, !srcloc !333
  %data_control_supp.i = getelementptr i8, ptr %42, i32 106
  %56 = ptrtoint ptr %data_control_supp.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %data_control_supp.i, align 2, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool107.not.i = icmp eq i8 %57, 0
  br i1 %tobool107.not.i, label %if.end.i108.if.end141.i_crit_edge, label %if.then108.i

if.end.i108.if.end141.i_crit_edge:                ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141.i

if.then108.i:                                     ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %reg54.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg54.i, align 4
  %add.ptr110.i = getelementptr i8, ptr %59, i32 1172
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110.i) #9, !srcloc !334
  %61 = and i32 %60, 65535
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #9
  %and137.i = and i32 %48, 65535
  %or138.i = or i32 %62, %and137.i
  %63 = tail call i32 @llvm.bswap.i32(i32 %or138.i) #9
  %64 = ptrtoint ptr %reg54.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg54.i, align 4
  %add.ptr140.i = getelementptr i8, ptr %65, i32 1172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140.i, i32 %63) #9, !srcloc !333
  br label %if.end141.i

if.end141.i:                                      ; preds = %if.then108.i, %if.end.i108.if.end141.i_crit_edge
  %66 = ptrtoint ptr %curr_trans_type.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 5, ptr %curr_trans_type.i, align 4
  br label %cadence_nand_prepare_data_size.exit

cadence_nand_prepare_data_size.exit:              ; preds = %if.end141.i, %cadence_nand_set_skip_marker_val.exit.cadence_nand_prepare_data_size.exit_crit_edge
  %67 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %writesize, align 4
  %data_dma_width1.i = getelementptr i8, ptr %1, i32 105
  %69 = ptrtoint ptr %data_dma_width1.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %data_dma_width1.i, align 1
  %tobool.not.i112 = icmp eq ptr %buf, null
  br i1 %tobool.not.i112, label %cadence_nand_prepare_data_size.exit.if.end34_crit_edge, label %land.lhs.true.i

cadence_nand_prepare_data_size.exit.if.end34_crit_edge: ; preds = %cadence_nand_prepare_data_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true.i:                                  ; preds = %cadence_nand_prepare_data_size.exit
  %71 = ptrtoint ptr %buf to i32
  %cmp.i113 = icmp ugt ptr %buf, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i113, label %land.lhs.true2.i, label %land.lhs.true.i.if.end34_crit_edge

land.lhs.true.i.if.end34_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %72 = load ptr, ptr @high_memory, align 4
  %cmp3.i = icmp ugt ptr %72, %buf
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true2.i.if.end34_crit_edge

land.lhs.true2.i.if.end34_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true4.i:                                 ; preds = %land.lhs.true2.i
  %sub.i = add i32 %71, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %73 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %73, %shr.i
  %call.i114 = tail call i32 @pfn_valid(i32 noundef %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool5.not.i = icmp eq i32 %call.i114, 0
  br i1 %tobool5.not.i, label %land.lhs.true4.i.if.end34_crit_edge, label %land.lhs.true6.i

land.lhs.true4.i.if.end34_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true6.i:                                 ; preds = %land.lhs.true4.i
  %conv.i = zext i8 %70 to i32
  %sub7.i = add nsw i32 %conv.i, -1
  %and.i = and i32 %sub7.i, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp8.i = icmp eq i32 %and.i, 0
  %and12.i = and i32 %68, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %cmp13.i = icmp eq i32 %and12.i, 0
  %or.cond = select i1 %cmp8.i, i1 %cmp13.i, i1 false
  br i1 %or.cond, label %land.lhs.true, label %land.lhs.true6.i.if.end34_crit_edge, !prof !338

land.lhs.true6.i.if.end34_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true:                                    ; preds = %land.lhs.true6.i
  %data_control_supp = getelementptr i8, ptr %1, i32 106
  %74 = ptrtoint ptr %data_control_supp to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %data_control_supp, align 2, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool17.not = icmp eq i8 %75, 0
  br i1 %tobool17.not, label %land.lhs.true.if.end34_crit_edge, label %if.then19

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then19:                                        ; preds = %land.lhs.true
  br i1 %tobool5.not, label %if.else23, label %if.then21

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %oob_poi22 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %76 = ptrtoint ptr %oob_poi22 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %oob_poi22, align 4
  br label %if.end27

if.else23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %buf24 = getelementptr i8, ptr %1, i32 116
  %78 = ptrtoint ptr %buf24 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %buf24, align 4
  %80 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %writesize, align 4
  %add.ptr26 = getelementptr i8, ptr %79, i32 %81
  br label %if.end27

if.end27:                                         ; preds = %if.else23, %if.then21
  %oob.0 = phi ptr [ %77, %if.then21 ], [ %add.ptr26, %if.else23 ]
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %82 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cur_cs, align 4
  %arrayidx = getelementptr %struct.cdns_nand_chip, ptr %add.ptr.i101, i32 0, i32 10, i32 %83
  %84 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx, align 1
  %86 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %writesize, align 4
  %avail_oob_size29 = getelementptr i8, ptr %chip, i32 2180
  %88 = ptrtoint ptr %avail_oob_size29 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %avail_oob_size29, align 4
  %call30 = tail call fastcc i32 @cadence_nand_cdma_transfer(ptr noundef %add.ptr.i, i8 noundef zeroext %85, i32 noundef %page, ptr noundef nonnull %buf, ptr noundef %oob.0, i32 noundef %87, i32 noundef %89, i32 noundef 1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end27.cleanup53_crit_edge, label %do.end

if.end27.cleanup53_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.77) #12
  br label %cleanup53

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %land.lhs.true6.i.if.end34_crit_edge, %land.lhs.true4.i.if.end34_crit_edge, %land.lhs.true2.i.if.end34_crit_edge, %land.lhs.true.i.if.end34_crit_edge, %cadence_nand_prepare_data_size.exit.if.end34_crit_edge
  br i1 %tobool5.not, label %if.end34.if.end42_crit_edge, label %if.then36

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %buf37 = getelementptr i8, ptr %1, i32 116
  %92 = ptrtoint ptr %buf37 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %buf37, align 4
  %94 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %writesize, align 4
  %add.ptr39 = getelementptr i8, ptr %93, i32 %95
  %oob_poi40 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %96 = ptrtoint ptr %oob_poi40 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %oob_poi40, align 4
  %avail_oob_size41 = getelementptr i8, ptr %chip, i32 2180
  %98 = ptrtoint ptr %avail_oob_size41 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %avail_oob_size41, align 4
  %100 = call ptr @memcpy(ptr %add.ptr39, ptr %97, i32 %99)
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %if.end34.if.end42_crit_edge
  %buf43 = getelementptr i8, ptr %1, i32 116
  %101 = ptrtoint ptr %buf43 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %buf43, align 4
  %103 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %writesize, align 4
  %105 = call ptr @memcpy(ptr %102, ptr %buf, i32 %104)
  tail call fastcc void @cadence_nand_prepare_data_size(ptr noundef %chip, i32 noundef 2)
  %cur_cs46 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %106 = ptrtoint ptr %cur_cs46 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cur_cs46, align 4
  %arrayidx47 = getelementptr %struct.cdns_nand_chip, ptr %add.ptr.i101, i32 0, i32 10, i32 %107
  %108 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx47, align 1
  %110 = ptrtoint ptr %buf43 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %buf43, align 4
  %112 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %writesize, align 4
  %avail_oob_size50 = getelementptr i8, ptr %chip, i32 2180
  %114 = ptrtoint ptr %avail_oob_size50 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %avail_oob_size50, align 4
  %add51 = add i32 %115, %113
  %call52 = tail call fastcc i32 @cadence_nand_cdma_transfer(ptr noundef %add.ptr.i, i8 noundef zeroext %109, i32 noundef %page, ptr noundef %111, ptr noundef null, i32 noundef %add51, i32 noundef 0, i32 noundef 1, i1 noundef zeroext true)
  br label %cleanup53

cleanup53:                                        ; preds = %if.end42, %do.end, %if.end27.cleanup53_crit_edge, %entry.cleanup53_crit_edge
  %retval.1 = phi i32 [ %call52, %if.end42 ], [ %call3, %entry.cleanup53_crit_edge ], [ -5, %do.end ], [ 0, %if.end27.cleanup53_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_write_page_raw(ptr noundef %chip, ptr noundef readonly %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %add.ptr.i212 = getelementptr i8, ptr %chip, i32 -32
  %writesize3 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %writesize3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize3, align 4
  %oobsize4 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %4 = ptrtoint ptr %oobsize4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oobsize4, align 4
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %6 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %steps, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 8
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %10 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytes, align 4
  %buf7 = getelementptr i8, ptr %1, i32 116
  %12 = ptrtoint ptr %buf7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf7, align 4
  %bbm_len = getelementptr i8, ptr %chip, i32 2193
  %14 = ptrtoint ptr %bbm_len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bbm_len, align 1
  %conv = zext i8 %15 to i32
  %add = add i32 %5, %3
  %call9 = tail call fastcc i32 @cadence_nand_select_target(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool10.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool11.not = icmp eq i32 %oob_required, 0
  %or.cond = or i1 %tobool10.not, %tobool11.not
  br i1 %or.cond, label %if.then12, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = call ptr @memset(ptr %13, i32 255, i32 %add)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.if.end13_crit_edge
  %call.i = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %add.ptr.i, i32 noundef 280, i32 noundef 1000000, i32 noundef 256, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.cadence_nand_set_skip_bytes_conf.exit_crit_edge

if.end13.cadence_nand_set_skip_bytes_conf.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_set_skip_bytes_conf.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %reg4.i = getelementptr i8, ptr %1, i32 128
  %17 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg4.i, align 4
  %add.ptr.i213 = getelementptr i8, ptr %18, i32 4108
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i213) #9, !srcloc !334
  %20 = and i32 %19, 16777215
  %21 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg4.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %22, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %20) #9, !srcloc !333
  %23 = ptrtoint ptr %reg4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg4.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %24, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52.i, i32 0) #9, !srcloc !333
  br label %cadence_nand_set_skip_bytes_conf.exit

cadence_nand_set_skip_bytes_conf.exit:            ; preds = %if.end.i, %if.end13.cadence_nand_set_skip_bytes_conf.exit_crit_edge
  %tobool10.not.not = xor i1 %tobool10.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp224 = icmp sgt i32 %7, 0
  %or.cond230 = select i1 %tobool10.not.not, i1 %cmp224, i1 false
  br i1 %or.cond230, label %for.body.lr.ph, label %cadence_nand_set_skip_bytes_conf.exit.if.end38_crit_edge

cadence_nand_set_skip_bytes_conf.exit.if.end38_crit_edge: ; preds = %cadence_nand_set_skip_bytes_conf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

for.body.lr.ph:                                   ; preds = %cadence_nand_set_skip_bytes_conf.exit
  %add18 = add i32 %11, %9
  %add.ptr34 = getelementptr i8, ptr %13, i32 %3
  %add.ptr35 = getelementptr i8, ptr %add.ptr34, i32 %conv
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0226 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %buf.addr.0225 = phi ptr [ %buf, %for.body.lr.ph ], [ %buf.addr.1, %for.inc.for.body_crit_edge ]
  %mul = mul i32 %i.0226, %add18
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %mul)
  %cmp19.not = icmp sgt i32 %3, %mul
  br i1 %cmp19.not, label %if.end28, label %if.end28.thread

if.end28.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add22 = add i32 %mul, %conv
  %add.ptr216 = getelementptr i8, ptr %13, i32 %add22
  %25 = call ptr @memcpy(ptr %add.ptr216, ptr %buf.addr.0225, i32 %9)
  %add.ptr29217 = getelementptr i8, ptr %buf.addr.0225, i32 %9
  br label %for.inc

if.end28:                                         ; preds = %for.body
  %add23 = add i32 %mul, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %3)
  %cmp24 = icmp sgt i32 %add23, %3
  %sub = sub i32 %3, %mul
  %spec.select = select i1 %cmp24, i32 %sub, i32 %9
  %add.ptr = getelementptr i8, ptr %13, i32 %mul
  %26 = call ptr @memcpy(ptr %add.ptr, ptr %buf.addr.0225, i32 %spec.select)
  %add.ptr29 = getelementptr i8, ptr %buf.addr.0225, i32 %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %spec.select)
  %cmp30 = icmp sgt i32 %9, %spec.select
  br i1 %cmp30, label %if.then32, label %if.end28.for.inc_crit_edge

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %sub33 = sub i32 %9, %spec.select
  %27 = call ptr @memcpy(ptr %add.ptr35, ptr %add.ptr29, i32 %sub33)
  %add.ptr36 = getelementptr i8, ptr %buf.addr.0225, i32 %9
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %if.end28.for.inc_crit_edge, %if.end28.thread
  %buf.addr.1 = phi ptr [ %add.ptr36, %if.then32 ], [ %add.ptr29, %if.end28.for.inc_crit_edge ], [ %add.ptr29217, %if.end28.thread ]
  %inc = add nuw nsw i32 %i.0226, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.if.end38_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end38_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.end38:                                         ; preds = %for.inc.if.end38_crit_edge, %cadence_nand_set_skip_bytes_conf.exit.if.end38_crit_edge
  br i1 %tobool11.not, label %if.end38.if.end92_crit_edge, label %if.then40

if.end38.if.end92_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then40:                                        ; preds = %if.end38
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %28 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %oob_poi, align 4
  %sector_count = getelementptr i8, ptr %chip, i32 2188
  %30 = ptrtoint ptr %sector_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sector_count, align 4
  %sub41 = add i32 %31, -1
  %sector_size = getelementptr i8, ptr %chip, i32 2184
  %32 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sector_size, align 8
  %34 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bytes, align 4
  %add44 = add i32 %35, %33
  %mul45 = mul i32 %add44, %sub41
  %add47 = add i32 %33, %conv
  %add48 = add i32 %add47, %mul45
  %add.ptr49 = getelementptr i8, ptr %13, i32 %3
  %36 = call ptr @memcpy(ptr %add.ptr49, ptr %29, i32 %conv)
  %add.ptr50 = getelementptr i8, ptr %13, i32 %add48
  %avail_oob_size = getelementptr i8, ptr %chip, i32 2180
  %37 = ptrtoint ptr %avail_oob_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %avail_oob_size, align 4
  %39 = call ptr @memcpy(ptr %add.ptr50, ptr %29, i32 %38)
  br i1 %cmp224, label %for.body56.lr.ph, label %if.then40.if.end92_crit_edge

if.then40.if.end92_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

for.body56.lr.ph:                                 ; preds = %if.then40
  %40 = ptrtoint ptr %avail_oob_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %avail_oob_size, align 4
  %add.ptr52 = getelementptr i8, ptr %29, i32 %41
  %add57 = add i32 %11, %9
  %sub60 = add nsw i32 %7, -1
  %add.ptr86 = getelementptr i8, ptr %add.ptr49, i32 %conv
  br label %for.body56

for.body56:                                       ; preds = %for.inc89.for.body56_crit_edge, %for.body56.lr.ph
  %oob.0229 = phi ptr [ %add.ptr52, %for.body56.lr.ph ], [ %oob.1, %for.inc89.for.body56_crit_edge ]
  %i.1228 = phi i32 [ 0, %for.body56.lr.ph ], [ %inc90, %for.inc89.for.body56_crit_edge ]
  %mul58 = mul i32 %i.1228, %add57
  %add59 = add i32 %mul58, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1228, i32 %sub60)
  %cmp61 = icmp eq i32 %i.1228, %sub60
  br i1 %cmp61, label %if.then63, label %for.body56.if.end66_crit_edge

for.body56.if.end66_crit_edge:                    ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then63:                                        ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %avail_oob_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %avail_oob_size, align 4
  %add65 = add i32 %43, %add59
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %for.body56.if.end66_crit_edge
  %pos.1 = phi i32 [ %add65, %if.then63 ], [ %add59, %for.body56.if.end66_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %pos.1)
  %cmp67.not = icmp sgt i32 %3, %pos.1
  br i1 %cmp67.not, label %if.end78, label %if.end78.thread

if.end78.thread:                                  ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %add70 = add i32 %pos.1, %conv
  %add.ptr79221 = getelementptr i8, ptr %13, i32 %add70
  %44 = call ptr @memcpy(ptr %add.ptr79221, ptr %oob.0229, i32 %11)
  %add.ptr80222 = getelementptr i8, ptr %oob.0229, i32 %11
  br label %for.inc89

if.end78:                                         ; preds = %if.end66
  %add72 = add i32 %pos.1, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add72, i32 %3)
  %cmp73 = icmp sgt i32 %add72, %3
  %sub76 = sub i32 %3, %pos.1
  %spec.select211 = select i1 %cmp73, i32 %sub76, i32 %11
  %add.ptr79 = getelementptr i8, ptr %13, i32 %pos.1
  %45 = call ptr @memcpy(ptr %add.ptr79, ptr %oob.0229, i32 %spec.select211)
  %add.ptr80 = getelementptr i8, ptr %oob.0229, i32 %spec.select211
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %spec.select211)
  %cmp81 = icmp sgt i32 %11, %spec.select211
  br i1 %cmp81, label %if.then83, label %if.end78.for.inc89_crit_edge

if.end78.for.inc89_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc89

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %sub84 = sub i32 %11, %spec.select211
  %46 = call ptr @memcpy(ptr %add.ptr86, ptr %add.ptr80, i32 %sub84)
  %add.ptr87 = getelementptr i8, ptr %oob.0229, i32 %11
  br label %for.inc89

for.inc89:                                        ; preds = %if.then83, %if.end78.for.inc89_crit_edge, %if.end78.thread
  %oob.1 = phi ptr [ %add.ptr87, %if.then83 ], [ %add.ptr80, %if.end78.for.inc89_crit_edge ], [ %add.ptr80222, %if.end78.thread ]
  %inc90 = add nuw nsw i32 %i.1228, 1
  %exitcond231.not = icmp eq i32 %inc90, %7
  br i1 %exitcond231.not, label %for.inc89.if.end92_crit_edge, label %for.inc89.for.body56_crit_edge

for.inc89.for.body56_crit_edge:                   ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body56

for.inc89.if.end92_crit_edge:                     ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.end92:                                         ; preds = %for.inc89.if.end92_crit_edge, %if.then40.if.end92_crit_edge, %if.end38.if.end92_crit_edge
  tail call fastcc void @cadence_nand_prepare_data_size(ptr noundef %chip, i32 noundef 3)
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %47 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cur_cs, align 4
  %arrayidx = getelementptr %struct.cdns_nand_chip, ptr %add.ptr.i212, i32 0, i32 10, i32 %48
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx, align 1
  %51 = ptrtoint ptr %buf7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buf7, align 4
  %53 = ptrtoint ptr %writesize3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %writesize3, align 4
  %55 = ptrtoint ptr %oobsize4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %oobsize4, align 4
  %add96 = add i32 %56, %54
  %call97 = tail call fastcc i32 @cadence_nand_cdma_transfer(ptr noundef %add.ptr.i, i8 noundef zeroext %50, i32 noundef %page, ptr noundef %52, ptr noundef null, i32 noundef %add96, i32 noundef 0, i32 noundef 1, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call97, %if.end92 ], [ %call9, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_read_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %buf = getelementptr i8, ptr %1, i32 116
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %call1 = tail call i32 @cadence_nand_read_page(ptr noundef %chip, ptr noundef %3, i32 noundef 1, i32 noundef %page)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_write_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %buf = getelementptr i8, ptr %1, i32 116
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize, align 4
  %6 = call ptr @memset(ptr %3, i32 255, i32 %5)
  %7 = load ptr, ptr %buf, align 4
  %call3 = tail call i32 @cadence_nand_write_page(ptr noundef %chip, ptr noundef %7, i32 noundef 1, i32 noundef %page)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_read_oob_raw(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cadence_nand_read_page_raw(ptr noundef %chip, ptr noundef null, i32 noundef 1, i32 noundef %page)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_write_oob_raw(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cadence_nand_write_page_raw(ptr noundef %chip, ptr noundef null, i32 noundef 1, i32 noundef %page)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cadence_nand_select_target(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i18 = getelementptr i8, ptr %chip, i32 -32
  %selected_chip = getelementptr i8, ptr %1, i32 352
  %2 = ptrtoint ptr %selected_chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %selected_chip, align 4
  %cmp = icmp eq ptr %3, %chip
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %call2 = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %add.ptr.i, i32 noundef 280, i32 noundef 1000000, i32 noundef 256, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %add.ptr.i18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i18, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  %reg.i = getelementptr i8, ptr %1, i32 128
  %7 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %8, i32 4124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %6) #9, !srcloc !333
  %timings0.i = getelementptr i8, ptr %chip, i32 -28
  %9 = ptrtoint ptr %timings0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timings0.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %13, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %11) #9, !srcloc !333
  %timings1.i = getelementptr i8, ptr %chip, i32 -24
  %14 = ptrtoint ptr %timings1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timings1.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %18, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %16) #9, !srcloc !333
  %timings2.i = getelementptr i8, ptr %chip, i32 -20
  %19 = ptrtoint ptr %timings2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %timings2.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %23, i32 4140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %21) #9, !srcloc !333
  %is_phy_type_dll.i = getelementptr i8, ptr %1, i32 107
  %24 = ptrtoint ptr %is_phy_type_dll.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_phy_type_dll.i, align 1, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.end4.if.end.i_crit_edge, label %if.then.i

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %dll_phy_ctrl.i = getelementptr i8, ptr %chip, i32 -16
  %26 = ptrtoint ptr %dll_phy_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dll_phy_ctrl.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  %29 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %30, i32 4148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %28) #9, !srcloc !333
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end4.if.end.i_crit_edge
  %phy_ctrl.i = getelementptr i8, ptr %chip, i32 -12
  %31 = ptrtoint ptr %phy_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phy_ctrl.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  %34 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %35, i32 8320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %33) #9, !srcloc !333
  %36 = ptrtoint ptr %is_phy_type_dll.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_phy_type_dll.i, align 1, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool13.not.i = icmp eq i8 %37, 0
  br i1 %tobool13.not.i, label %if.end.i.cadence_nand_set_timings.exit_crit_edge, label %if.then14.i

if.end.i.cadence_nand_set_timings.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_set_timings.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %39, i32 8324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 0) #9, !srcloc !333
  %40 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %41, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 33554432) #9, !srcloc !333
  %phy_dqs_timing.i = getelementptr i8, ptr %chip, i32 -8
  %42 = ptrtoint ptr %phy_dqs_timing.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %phy_dqs_timing.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  %45 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %46, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %44) #9, !srcloc !333
  %phy_gate_lpbk_ctrl.i = getelementptr i8, ptr %chip, i32 -4
  %47 = ptrtoint ptr %phy_gate_lpbk_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %phy_gate_lpbk_ctrl.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  %50 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %51, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %49) #9, !srcloc !333
  %52 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %53, i32 8204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 32768) #9, !srcloc !333
  %54 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %55, i32 8208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 0) #9, !srcloc !333
  br label %cadence_nand_set_timings.exit

cadence_nand_set_timings.exit:                    ; preds = %if.then14.i, %if.end.i.cadence_nand_set_timings.exit_crit_edge
  %corr_str_idx = getelementptr i8, ptr %chip, i32 2194
  %56 = ptrtoint ptr %corr_str_idx to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %corr_str_idx, align 2
  %curr_corr_str_idx.i = getelementptr i8, ptr %1, i32 124
  %58 = ptrtoint ptr %curr_corr_str_idx.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %curr_corr_str_idx.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %57)
  %cmp.i = icmp eq i8 %59, %57
  br i1 %cmp.i, label %cadence_nand_set_timings.exit.cadence_nand_set_ecc_strength.exit_crit_edge, label %if.end.i22

cadence_nand_set_timings.exit.cadence_nand_set_ecc_strength.exit_crit_edge: ; preds = %cadence_nand_set_timings.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_set_ecc_strength.exit

if.end.i22:                                       ; preds = %cadence_nand_set_timings.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i = zext i8 %57 to i32
  %60 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %61, i32 1064
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #9, !srcloc !334
  %63 = and i32 %62, -458753
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #9
  %shl.i = shl nuw nsw i32 %conv1.i, 8
  %and22.i = and i32 %shl.i, 1792
  %or.i = or i32 %64, %and22.i
  %65 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %66 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg.i, align 4
  %add.ptr24.i23 = getelementptr i8, ptr %67, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i23, i32 %65) #9, !srcloc !333
  %68 = ptrtoint ptr %curr_corr_str_idx.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %57, ptr %curr_corr_str_idx.i, align 4
  br label %cadence_nand_set_ecc_strength.exit

cadence_nand_set_ecc_strength.exit:               ; preds = %if.end.i22, %cadence_nand_set_timings.exit.cadence_nand_set_ecc_strength.exit_crit_edge
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %69 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %strength, align 4
  %71 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %72, i32 1064
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #9, !srcloc !334
  %74 = or i32 %73, 33554432
  %75 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %76, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %74) #9, !srcloc !333
  %conv.i = shl i32 %70, 24
  %77 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %78, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %conv.i) #9, !srcloc !333
  %curr_trans_type = getelementptr i8, ptr %1, i32 336
  %79 = ptrtoint ptr %curr_trans_type to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %curr_trans_type, align 4
  %80 = ptrtoint ptr %selected_chip to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %chip, ptr %selected_chip, align 4
  br label %cleanup

cleanup:                                          ; preds = %cadence_nand_set_ecc_strength.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cadence_nand_set_ecc_strength.exit ], [ 0, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cadence_nand_prepare_data_size(ptr nocapture noundef readonly %chip, i32 noundef %transfer_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %sector_size = getelementptr i8, ptr %chip, i32 2184
  %2 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sector_size, align 8
  %curr_trans_type = getelementptr i8, ptr %1, i32 336
  %4 = ptrtoint ptr %curr_trans_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %curr_trans_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %transfer_type)
  %cmp = icmp eq i32 %5, %transfer_type
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %transfer_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %transfer_type, label %if.end.do.end49_crit_edge [
    i32 5, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb9
    i32 4, label %sw.bb11
  ]

if.end.do.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sector_count = getelementptr i8, ptr %chip, i32 2188
  %7 = ptrtoint ptr %sector_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sector_count, align 4
  %avail_oob_size = getelementptr i8, ptr %chip, i32 2180
  %9 = ptrtoint ptr %avail_oob_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %avail_oob_size, align 4
  %phi.bo198 = and i32 %10, 65535
  br label %do.end49

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sector_count5 = getelementptr i8, ptr %chip, i32 2188
  %11 = ptrtoint ptr %sector_count5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sector_count5, align 4
  %avail_oob_size7 = getelementptr i8, ptr %chip, i32 2180
  %13 = ptrtoint ptr %avail_oob_size7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %avail_oob_size7, align 4
  %add = add i32 %14, %3
  br label %do.end49

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %15 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %writesize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %17 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %oobsize, align 4
  %add10 = add i32 %18, %16
  br label %do.end49

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %writesize12 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %19 = ptrtoint ptr %writesize12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %writesize12, align 4
  %bbm_offs = getelementptr i8, ptr %chip, i32 2192
  %21 = ptrtoint ptr %bbm_offs to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bbm_offs, align 8
  %conv = zext i8 %22 to i32
  %add13 = add i32 %20, %conv
  %phi.bo = shl i32 %add13, 16
  br label %do.end49

do.end49:                                         ; preds = %sw.bb11, %sw.bb9, %sw.bb4, %sw.bb, %if.end.do.end49_crit_edge
  %data_ctrl_size.0 = phi i32 [ 0, %if.end.do.end49_crit_edge ], [ 0, %sw.bb11 ], [ 0, %sw.bb9 ], [ 0, %sw.bb4 ], [ %phi.bo198, %sw.bb ]
  %last_sec_size.0 = phi i32 [ %3, %if.end.do.end49_crit_edge ], [ 8, %sw.bb11 ], [ %add10, %sw.bb9 ], [ %add, %sw.bb4 ], [ %3, %sw.bb ]
  %sec_cnt.0 = phi i32 [ 1, %if.end.do.end49_crit_edge ], [ 1, %sw.bb11 ], [ 1, %sw.bb9 ], [ %12, %sw.bb4 ], [ %8, %sw.bb ]
  %offset.0 = phi i32 [ 0, %if.end.do.end49_crit_edge ], [ %phi.bo, %sw.bb11 ], [ 0, %sw.bb9 ], [ 0, %sw.bb4 ], [ 0, %sw.bb ]
  %sec_size.0 = phi i32 [ 0, %if.end.do.end49_crit_edge ], [ 0, %sw.bb11 ], [ 0, %sw.bb9 ], [ %3, %sw.bb4 ], [ %3, %sw.bb ]
  %and52 = and i32 %sec_cnt.0, 255
  %or53 = or i32 %offset.0, %and52
  %23 = tail call i32 @llvm.bswap.i32(i32 %or53)
  %reg54 = getelementptr i8, ptr %1, i32 128
  %24 = ptrtoint ptr %reg54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg54, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %23) #9, !srcloc !333
  %shl77 = shl i32 %last_sec_size.0, 16
  %and103 = and i32 %sec_size.0, 65535
  %or104 = or i32 %and103, %shl77
  %26 = tail call i32 @llvm.bswap.i32(i32 %or104)
  %27 = ptrtoint ptr %reg54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg54, align 4
  %add.ptr106 = getelementptr i8, ptr %28, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 %26) #9, !srcloc !333
  %data_control_supp = getelementptr i8, ptr %1, i32 106
  %29 = ptrtoint ptr %data_control_supp to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data_control_supp, align 2, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool107.not = icmp eq i8 %30, 0
  br i1 %tobool107.not, label %do.end49.if.end141_crit_edge, label %if.then108

do.end49.if.end141_crit_edge:                     ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.then108:                                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %reg54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg54, align 4
  %add.ptr110 = getelementptr i8, ptr %32, i32 1172
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110) #9, !srcloc !334
  %34 = and i32 %33, 65535
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %or138 = or i32 %35, %data_ctrl_size.0
  %36 = tail call i32 @llvm.bswap.i32(i32 %or138)
  %37 = ptrtoint ptr %reg54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg54, align 4
  %add.ptr140 = getelementptr i8, ptr %38, i32 1172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140, i32 %36) #9, !srcloc !333
  br label %if.end141

if.end141:                                        ; preds = %if.then108, %do.end49.if.end141_crit_edge
  %39 = ptrtoint ptr %curr_trans_type to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %transfer_type, ptr %curr_trans_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end141, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cadence_nand_cdma_transfer(ptr noundef %cdns_ctrl, i8 noundef zeroext %chip_nr, i32 noundef %page, ptr noundef %buf, ptr noundef %ctrl_dat, i32 noundef %buf_size, i32 noundef %ctrl_dat_size, i32 noundef %dir, i1 noundef zeroext %with_ecc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp = icmp eq i32 %dir, 2
  %. = select i1 %cmp, i16 8704, i16 8448
  %call.i = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %cdns_ctrl, i32 noundef 280, i32 noundef 1000000, i32 noundef 256, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cadence_nand_set_ecc_enable.exit_crit_edge

entry.cadence_nand_set_ecc_enable.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_set_ecc_enable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reg1.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 10
  %0 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1064
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !334
  %3 = and i32 %2, -16777217
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %masksel.i = zext i1 %with_ecc to i32
  %reg.0.i = or i32 %4, %masksel.i
  %5 = tail call i32 @llvm.bswap.i32(i32 %reg.0.i) #9
  %6 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg1.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %7, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %5) #9, !srcloc !333
  br label %cadence_nand_set_ecc_enable.exit

cadence_nand_set_ecc_enable.exit:                 ; preds = %if.end.i, %entry.cadence_nand_set_ecc_enable.exit_crit_edge
  %8 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cdns_ctrl, align 4
  %call.i72 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buf) #9
  br i1 %call.i72, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %cadence_nand_set_ecc_enable.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !332

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %9) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %14 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cdns_ctrl, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %15, i32 noundef -1) #9
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %cadence_nand_set_ecc_enable.exit
  tail call void @debug_dma_map_single(ptr noundef %9, ptr noundef %buf, i32 noundef %buf_size) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %17 = ptrtoint ptr %buf to i32
  %sub.i = add i32 %17, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i73 = getelementptr %struct.page, ptr %16, i32 %shr.i
  %and.i = and i32 %17, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %9, ptr noundef %add.ptr.i73, i32 noundef %and.i, i32 noundef %buf_size, i32 noundef %dir, i32 noundef 0) #9
  %18 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cdns_ctrl, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %19, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end7

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  %20 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.44) #12
  br label %cleanup

if.end7:                                          ; preds = %dma_map_single_attrs.exit
  %tobool8.not = icmp eq ptr %ctrl_dat, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctrl_dat_size)
  %tobool9.not = icmp eq i32 %ctrl_dat_size, 0
  %or.cond = or i1 %tobool8.not, %tobool9.not
  br i1 %or.cond, label %if.end7.if.end23_crit_edge, label %if.then10

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then10:                                        ; preds = %if.end7
  %22 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cdns_ctrl, align 4
  %call.i74 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %ctrl_dat) #9
  br i1 %call.i74, label %land.rhs.i76, label %dma_map_single_attrs.exit91

land.rhs.i76:                                     ; preds = %if.then10
  %.b1.i75 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i75, label %land.rhs.i76.dma_map_single_attrs.exit91.thread_crit_edge, label %if.then.i80, !prof !332

land.rhs.i76.dma_map_single_attrs.exit91.thread_crit_edge: ; preds = %land.rhs.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit91.thread

if.then.i80:                                      ; preds = %land.rhs.i76
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i77 = tail call ptr @dev_driver_string(ptr noundef %23) #9
  %init_name.i.i78 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %init_name.i.i78 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i78, align 8
  %tobool.not.i.i79 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i79, label %if.end.i.i81, label %if.then.i80.dev_name.exit.i83_crit_edge

if.then.i80.dev_name.exit.i83_crit_edge:          ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i83

if.end.i.i81:                                     ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  br label %dev_name.exit.i83

dev_name.exit.i83:                                ; preds = %if.end.i.i81, %if.then.i80.dev_name.exit.i83_crit_edge
  %retval.0.i.i82 = phi ptr [ %27, %if.end.i.i81 ], [ %25, %if.then.i80.dev_name.exit.i83_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %call16.i77, ptr noundef %retval.0.i.i82) #9
  br label %dma_map_single_attrs.exit91.thread

dma_map_single_attrs.exit91.thread:               ; preds = %dev_name.exit.i83, %land.rhs.i76.dma_map_single_attrs.exit91.thread_crit_edge
  %28 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cdns_ctrl, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %29, i32 noundef -1) #9
  br label %if.then16

dma_map_single_attrs.exit91:                      ; preds = %if.then10
  tail call void @debug_dma_map_single(ptr noundef %23, ptr noundef nonnull %ctrl_dat, i32 noundef %ctrl_dat_size) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %30 = load ptr, ptr @mem_map, align 4
  %31 = ptrtoint ptr %ctrl_dat to i32
  %sub.i84 = add i32 %31, 1073741824
  %shr.i85 = lshr i32 %sub.i84, 12
  %add.ptr.i86 = getelementptr %struct.page, ptr %30, i32 %shr.i85
  %and.i87 = and i32 %31, 4095
  %call41.i88 = tail call i32 @dma_map_page_attrs(ptr noundef %23, ptr noundef %add.ptr.i86, i32 noundef %and.i87, i32 noundef %ctrl_dat_size, i32 noundef %dir, i32 noundef 0) #9
  %32 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cdns_ctrl, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %33, i32 noundef %call41.i88) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i88)
  %cmp.i92 = icmp eq i32 %call41.i88, -1
  br i1 %cmp.i92, label %dma_map_single_attrs.exit91.if.then16_crit_edge, label %dma_map_single_attrs.exit91.if.end23_crit_edge

dma_map_single_attrs.exit91.if.end23_crit_edge:   ; preds = %dma_map_single_attrs.exit91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

dma_map_single_attrs.exit91.if.then16_crit_edge:  ; preds = %dma_map_single_attrs.exit91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then16:                                        ; preds = %dma_map_single_attrs.exit91.if.then16_crit_edge, %dma_map_single_attrs.exit91.thread
  %34 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cdns_ctrl, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %35, i32 noundef %call41.i, i32 noundef %buf_size, i32 noundef %dir, i32 noundef 0) #9
  %36 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.44) #12
  br label %cleanup

if.end23:                                         ; preds = %dma_map_single_attrs.exit91.if.end23_crit_edge, %if.end7.if.end23_crit_edge
  %dma_ctrl_dat.0 = phi i32 [ 0, %if.end7.if.end23_crit_edge ], [ %call41.i88, %dma_map_single_attrs.exit91.if.end23_crit_edge ]
  %cdma_desc1.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 2
  %38 = ptrtoint ptr %cdma_desc1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cdma_desc1.i, align 4
  %40 = call ptr @memset(ptr %39, i32 0, i32 64)
  %flash_pointer.i = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %39, i32 0, i32 1
  %41 = ptrtoint ptr %flash_pointer.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %page, ptr %flash_pointer.i, align 8
  %ctrl_rev.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 5
  %42 = ptrtoint ptr %ctrl_rev.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ctrl_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %43)
  %cmp.i94 = icmp ugt i8 %43, 12
  br i1 %cmp.i94, label %if.then.i95, label %if.else.i

if.then.i95:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %conv3.i = zext i8 %chip_nr to i16
  %bank.i = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %39, i32 0, i32 2
  %44 = ptrtoint ptr %bank.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv3.i, ptr %bank.i, align 4
  br label %cadence_nand_cdma_desc_prepare.exit

if.else.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %conv4.i = zext i8 %chip_nr to i32
  %shl.i = shl nuw i32 %conv4.i, 24
  %or.i = or i32 %shl.i, %page
  %45 = ptrtoint ptr %flash_pointer.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i, ptr %flash_pointer.i, align 8
  br label %cadence_nand_cdma_desc_prepare.exit

cadence_nand_cdma_desc_prepare.exit:              ; preds = %if.else.i, %if.then.i95
  %command_flags.i = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %39, i32 0, i32 6
  %46 = ptrtoint ptr %command_flags.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %command_flags.i, align 4
  %48 = or i16 %47, 1280
  store i16 %48, ptr %command_flags.i, align 4
  %conv13.i = zext i32 %call41.i to i64
  %memory_pointer.i = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %39, i32 0, i32 8
  %49 = ptrtoint ptr %memory_pointer.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv13.i, ptr %memory_pointer.i, align 8
  %status.i = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %39, i32 0, i32 9
  %50 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %status.i, align 8
  %sync_flag_pointer.i = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %39, i32 0, i32 11
  %51 = ptrtoint ptr %sync_flag_pointer.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %sync_flag_pointer.i, align 8
  %sync_arguments.i = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %39, i32 0, i32 12
  %52 = ptrtoint ptr %sync_arguments.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %sync_arguments.i, align 8
  %command_type.i = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %39, i32 0, i32 4
  %53 = ptrtoint ptr %command_type.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %., ptr %command_type.i, align 8
  %conv14.i = zext i32 %dma_ctrl_dat.0 to i64
  %ctrl_data_ptr15.i = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %39, i32 0, i32 14
  %54 = ptrtoint ptr %ctrl_data_ptr15.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv14.i, ptr %ctrl_data_ptr15.i, align 8
  %call24 = tail call fastcc i32 @cadence_nand_cdma_send_and_wait(ptr noundef %cdns_ctrl, i8 noundef zeroext %chip_nr)
  %55 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cdns_ctrl, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %56, i32 noundef %call41.i, i32 noundef %buf_size, i32 noundef %dir, i32 noundef 0) #9
  br i1 %or.cond, label %cadence_nand_cdma_desc_prepare.exit.if.end31_crit_edge, label %if.then29

cadence_nand_cdma_desc_prepare.exit.if.end31_crit_edge: ; preds = %cadence_nand_cdma_desc_prepare.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then29:                                        ; preds = %cadence_nand_cdma_desc_prepare.exit
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cdns_ctrl, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %58, i32 noundef %dma_ctrl_dat.0, i32 noundef %ctrl_dat_size, i32 noundef %dir, i32 noundef 0) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %cadence_nand_cdma_desc_prepare.exit.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool32.not = icmp eq i32 %call24, 0
  br i1 %tobool32.not, label %if.end34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call fastcc i32 @cadence_nand_cdma_finish(ptr noundef %cdns_ctrl)
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end31.cleanup_crit_edge, %if.then16, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %if.then16 ], [ %call35, %if.end34 ], [ %call24, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cadence_nand_cdma_send_and_wait(ptr noundef %cdns_ctrl, i8 noundef zeroext %thread) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %thread to i32
  %shl = shl nuw i32 1, %conv
  %reg.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 10
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 640) #9, !srcloc !333
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %4, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %2) #9, !srcloc !333
  %call.i = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %cdns_ctrl, i32 noundef 288, i32 noundef 1000000, i32 noundef %shl, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %irq_lock.i.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 16
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i.i) #9
  %irq_status.i.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 13
  %5 = call ptr @memset(ptr %irq_status.i.i, i32 0, i32 24)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i.i, i32 noundef %call2.i.i) #9
  %complete.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 15
  %6 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %complete.i, align 4
  %dma_cdma_desc.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 6
  %7 = ptrtoint ptr %dma_cdma_desc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_cdma_desc.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %9) #9, !srcloc !333
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #9, !srcloc !333
  %and38.i = and i32 %conv, 15
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %and38.i) #9, !srcloc !333
  %call1.i = tail call i32 @wait_for_completion_timeout(ptr noundef %complete.i, i32 noundef 1000) #9
  %16 = ptrtoint ptr %irq_status.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %irq_status.sroa.0.0.copyload = load i32, ptr %irq_status.i.i, align 4
  %irq_status.sroa.6.0.irq_status2.i.sroa_idx = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 13, i32 1
  %17 = ptrtoint ptr %irq_status.sroa.6.0.irq_status2.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %irq_status.sroa.6.0.copyload = load i32, ptr %irq_status.sroa.6.0.irq_status2.i.sroa_idx, align 4
  %irq_status.sroa.8.0.irq_status2.i.sroa_idx = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 13, i32 2
  %18 = ptrtoint ptr %irq_status.sroa.8.0.irq_status2.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %irq_status.sroa.8.0.copyload = load i32, ptr %irq_status.sroa.8.0.irq_status2.i.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i.cadence_nand_wait_for_irq.exit_crit_edge

if.end.i.cadence_nand_wait_for_irq.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_wait_for_irq.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.55) #12
  %21 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.58, i32 noundef %irq_status.sroa.8.0.copyload, i32 noundef 131072) #12
  %23 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.61, i32 noundef %irq_status.sroa.0.0.copyload, i32 noundef %shl) #12
  %25 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.64, i32 noundef %irq_status.sroa.6.0.copyload, i32 noundef %shl) #12
  br label %cadence_nand_wait_for_irq.exit

cadence_nand_wait_for_irq.exit:                   ; preds = %do.end.i, %if.end.i.cadence_nand_wait_for_irq.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_status.sroa.8.0.copyload)
  %cmp = icmp eq i32 %irq_status.sroa.8.0.copyload, 0
  br i1 %cmp, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %cadence_nand_wait_for_irq.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_status.sroa.0.0.copyload)
  %cmp7 = icmp eq i32 %irq_status.sroa.0.0.copyload, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_status.sroa.6.0.copyload)
  %cmp11 = icmp eq i32 %irq_status.sroa.6.0.copyload, 0
  %or.cond = select i1 %cmp7, i1 %cmp11, i1 false
  br i1 %or.cond, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end14:                                         ; preds = %cadence_nand_wait_for_irq.exit
  %and = and i32 %irq_status.sroa.8.0.copyload, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.end14.cleanup.sink.split_crit_edge

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end14.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %.str.53.sink = phi ptr [ @.str.50, %land.lhs.true.cleanup.sink.split_crit_edge ], [ @.str.53, %if.end14.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -110, %land.lhs.true.cleanup.sink.split_crit_edge ], [ -5, %if.end14.cleanup.sink.split_crit_edge ]
  %27 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull %.str.53.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end14.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cadence_nand_cdma_finish(ptr nocapture noundef readonly %cdns_ctrl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cdma_desc = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %cdma_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdma_desc, align 4
  %status1 = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 8
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and.i = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cadence_nand_check_desc_error.exit_crit_edge

if.then.cadence_nand_check_desc_error.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_check_desc_error.exit

if.end.i:                                         ; preds = %if.then
  %and1.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cadence_nand_check_desc_error.exit_crit_edge

if.end.i.cadence_nand_check_desc_error.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_check_desc_error.exit

if.end4.i:                                        ; preds = %if.end.i
  %and5.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.end18.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.71) #12
  br label %cadence_nand_check_desc_error.exit

do.end18.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = and i32 %3, 1020
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool20.not.i = icmp eq i32 %6, 0
  %phi.cast26 = select i1 %tobool20.not.i, i32 2, i32 6
  br label %cadence_nand_check_desc_error.exit

cadence_nand_check_desc_error.exit:               ; preds = %do.end18.i, %do.end.i, %if.end.i.cadence_nand_check_desc_error.exit_crit_edge, %if.then.cadence_nand_check_desc_error.exit_crit_edge
  %retval.0.i = phi i32 [ 2, %do.end.i ], [ 5, %if.then.cadence_nand_check_desc_error.exit_crit_edge ], [ 3, %if.end.i.cadence_nand_check_desc_error.exit_crit_edge ], [ %phi.cast26, %do.end18.i ]
  %7 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cdns_ctrl, align 4
  %9 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.66, i32 noundef %10) #12
  br label %if.end17

if.else:                                          ; preds = %entry
  %and5 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else.if.end17_crit_edge, label %if.then7

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then7:                                         ; preds = %if.else
  %command_flags = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %command_flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %command_flags, align 4
  %13 = and i16 %12, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool9.not = icmp eq i16 %13, 0
  br i1 %tobool9.not, label %if.then7.if.end17_crit_edge, label %do.end13

if.then7.if.end17_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.69) #12
  br label %if.end17

if.end17:                                         ; preds = %do.end13, %if.then7.if.end17_crit_edge, %if.else.if.end17_crit_edge, %cadence_nand_check_desc_error.exit
  %status.0 = phi i32 [ %retval.0.i, %cadence_nand_check_desc_error.exit ], [ 7, %do.end13 ], [ 255, %if.else.if.end17_crit_edge ], [ 0, %if.then7.if.end17_crit_edge ]
  ret i32 %status.0
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
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cadence_nand_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
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
  %avail_oob_size = getelementptr i8, ptr %mtd, i32 2180
  %0 = ptrtoint ptr %avail_oob_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %avail_oob_size, align 4
  %2 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %oobregion, align 4
  %total = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 6
  %3 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total, align 8
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cadence_nand_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
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
  %bbm_len = getelementptr i8, ptr %mtd, i32 2193
  %0 = ptrtoint ptr %bbm_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bbm_len, align 1
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %oobregion, align 4
  %avail_oob_size = getelementptr i8, ptr %mtd, i32 2180
  %3 = ptrtoint ptr %avail_oob_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %avail_oob_size, align 4
  %5 = load i8, ptr %bbm_len, align 1
  %conv3 = zext i8 %5 to i32
  %sub = sub i32 %4, %conv3
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_op_parser_exec_op(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_cmd_erase(ptr noundef %chip, ptr noundef %subop) #2 align 64 {
entry:
  %nand_op = alloca %struct.nand_operation, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %instrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  %0 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instrs, align 4
  %ctx = getelementptr inbounds %struct.nand_op_instr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %3)
  %cmp = icmp eq i8 %3, 96
  br i1 %cmp, label %if.then, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %entry
  %ninstrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 2
  %4 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1444.not = icmp eq i32 %5, 0
  br i1 %cmp1444.not, label %for.cond13.preheader.cleanup28_crit_edge, label %for.body16.lr.ph

for.cond13.preheader.cleanup28_crit_edge:         ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

for.body16.lr.ph:                                 ; preds = %for.cond13.preheader
  %6 = getelementptr inbounds %struct.nand_operation, ptr %nand_op, i32 0, i32 1
  %7 = getelementptr inbounds %struct.nand_operation, ptr %nand_op, i32 0, i32 2
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  br label %for.body16

if.then:                                          ; preds = %entry
  %call = tail call i32 @nand_subop_get_addr_start_off(ptr noundef %subop, i32 noundef 1) #9
  %call4 = tail call i32 @nand_subop_get_num_addr_cyc(ptr noundef %subop, i32 noundef 1) #9
  %addrs6 = getelementptr %struct.nand_op_instr, ptr %1, i32 1, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %addrs6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addrs6, align 4
  %arrayidx7 = getelementptr i8, ptr %9, i32 %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp847.not = icmp eq i32 %call4, 0
  br i1 %cmp847.not, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %page.049 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %i.048 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %arrayidx10 = getelementptr i8, ptr %arrayidx7, i32 %i.048
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %11 to i32
  %mul = shl i32 %i.048, 3
  %shl = shl i32 %conv11, %mul
  %or = or i32 %shl, %page.049
  %inc = add nuw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %call4
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %page.0.lcssa = phi i32 [ 0, %if.then.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %12 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %controller.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 -4
  %add.ptr.i22.i = getelementptr i8, ptr %chip, i32 -32
  %cur_cs.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %14 = ptrtoint ptr %cur_cs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur_cs.i, align 4
  %arrayidx.i = getelementptr %struct.cdns_nand_chip, ptr %add.ptr.i22.i, i32 0, i32 10, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %cdma_desc1.i.i = getelementptr i8, ptr %13, i32 96
  %18 = ptrtoint ptr %cdma_desc1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cdma_desc1.i.i, align 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 64)
  %flash_pointer.i.i = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %flash_pointer.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %page.0.lcssa, ptr %flash_pointer.i.i, align 8
  %ctrl_rev.i.i = getelementptr i8, ptr %13, i32 108
  %22 = ptrtoint ptr %ctrl_rev.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ctrl_rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %23)
  %cmp.i.i = icmp ugt i8 %23, 12
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv3.i.i = zext i8 %17 to i16
  %bank.i.i = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv3.i.i, ptr %bank.i.i, align 4
  br label %cadence_nand_cdma_desc_prepare.exit.i

if.else.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv4.i.i = zext i8 %17 to i32
  %shl.i.i = shl nuw i32 %conv4.i.i, 24
  %or.i.i = or i32 %shl.i.i, %page.0.lcssa
  %25 = ptrtoint ptr %flash_pointer.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i.i, ptr %flash_pointer.i.i, align 8
  br label %cadence_nand_cdma_desc_prepare.exit.i

cadence_nand_cdma_desc_prepare.exit.i:            ; preds = %if.else.i.i, %if.then.i.i
  %command_flags.i.i = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %19, i32 0, i32 6
  %26 = ptrtoint ptr %command_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %command_flags.i.i, align 4
  %28 = or i16 %27, 1280
  store i16 %28, ptr %command_flags.i.i, align 4
  %memory_pointer.i.i = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %19, i32 0, i32 8
  %29 = ptrtoint ptr %memory_pointer.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %memory_pointer.i.i, align 8
  %status.i.i = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %19, i32 0, i32 9
  %30 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %status.i.i, align 8
  %sync_flag_pointer.i.i = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %19, i32 0, i32 11
  %31 = ptrtoint ptr %sync_flag_pointer.i.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %sync_flag_pointer.i.i, align 8
  %sync_arguments.i.i = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %19, i32 0, i32 12
  %32 = ptrtoint ptr %sync_arguments.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %sync_arguments.i.i, align 8
  %command_type.i.i = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %19, i32 0, i32 4
  %33 = ptrtoint ptr %command_type.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 4096, ptr %command_type.i.i, align 8
  %ctrl_data_ptr15.i.i = getelementptr inbounds %struct.cadence_nand_cdma_desc, ptr %19, i32 0, i32 14
  %34 = ptrtoint ptr %ctrl_data_ptr15.i.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %ctrl_data_ptr15.i.i, align 8
  %call5.i = tail call fastcc i32 @cadence_nand_cdma_send_and_wait(ptr noundef %add.ptr.i.i, i8 noundef zeroext %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %cadence_nand_cdma_desc_prepare.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.85) #12
  br label %cleanup28

if.end.i:                                         ; preds = %cadence_nand_cdma_desc_prepare.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i = tail call fastcc i32 @cadence_nand_cdma_finish(ptr noundef %add.ptr.i.i) #9
  br label %cleanup28

for.cond13:                                       ; preds = %for.body16
  %inc26 = add nuw i32 %op_id.045, 1
  %37 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ninstrs, align 4
  %cmp14 = icmp ult i32 %inc26, %38
  br i1 %cmp14, label %for.cond13.for.body16_crit_edge, label %for.cond13.cleanup28_crit_edge

for.cond13.cleanup28_crit_edge:                   ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

for.cond13.for.body16_crit_edge:                  ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16

for.body16:                                       ; preds = %for.cond13.for.body16_crit_edge, %for.body16.lr.ph
  %op_id.045 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc26, %for.cond13.for.body16_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nand_op) #9
  %39 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cur_cs, align 4
  %41 = ptrtoint ptr %nand_op to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %nand_op, align 4
  %42 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %instrs, align 4
  %arrayidx19 = getelementptr %struct.nand_op_instr, ptr %43, i32 %op_id.045
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx19, ptr %6, align 4
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %7, align 4
  %46 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %controller, align 4
  %ops = getelementptr inbounds %struct.nand_controller, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops, align 4
  %exec_op = getelementptr inbounds %struct.nand_controller_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %exec_op to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %exec_op, align 4
  %call21 = call i32 %51(ptr noundef %chip, ptr noundef nonnull %nand_op, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nand_op) #9
  br i1 %tobool.not, label %for.cond13, label %for.body16.cleanup28_crit_edge

for.body16.cleanup28_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28

cleanup28:                                        ; preds = %for.body16.cleanup28_crit_edge, %for.cond13.cleanup28_crit_edge, %if.end.i, %do.end.i, %for.cond13.preheader.cleanup28_crit_edge
  %retval.2 = phi i32 [ -5, %do.end.i ], [ %call6.i, %if.end.i ], [ 0, %for.cond13.preheader.cleanup28_crit_edge ], [ %call21, %for.body16.cleanup28_crit_edge ], [ 0, %for.cond13.cleanup28_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_cmd_opcode(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %subop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %add.ptr.i62 = getelementptr i8, ptr %chip, i32 -32
  %instrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  %2 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instrs, align 4
  %delay_ns = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %delay_ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delay_ns, align 4
  %ctx = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctx, align 4
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %8 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_cs, align 4
  %arrayidx40 = getelementptr %struct.cdns_nand_chip, ptr %add.ptr.i62, i32 0, i32 10, i32 %9
  %10 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx40, align 1
  %call.i = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %add.ptr.i, i32 noundef 280, i32 noundef 1000000, i32 noundef 256, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool18.not.i, label %cadence_nand_generic_cmd_send.exit.thread, label %do.end46

cadence_nand_generic_cmd_send.exit.thread:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv37 = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  %spec.select = select i1 %cmp.not, i32 0, i32 64
  %or39 = or i32 %shl, %spec.select
  %conv13.i = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %conv13.i, 8
  %and14.i = and i32 %shl.i, 3840
  %or.i = or i32 %and14.i, %or39
  %irq_lock.i.i = getelementptr i8, ptr %1, i32 224
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i.i) #9
  %irq_status.i.i = getelementptr i8, ptr %1, i32 144
  %12 = call ptr @memset(ptr %irq_status.i.i, i32 0, i32 24)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i.i, i32 noundef %call2.i.i) #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %reg21.i = getelementptr i8, ptr %1, i32 128
  %14 = ptrtoint ptr %reg21.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg21.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %13) #9, !srcloc !333
  %16 = ptrtoint ptr %reg21.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg21.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 0) #9, !srcloc !333
  %18 = ptrtoint ptr %reg21.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg21.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 192) #9, !srcloc !333
  br label %if.end50

do.end46:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ctx, align 4
  %conv49 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.87, i32 noundef %conv49) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end46, %cadence_nand_generic_cmd_send.exit.thread
  %retval.0.i66 = phi i32 [ 0, %cadence_nand_generic_cmd_send.exit.thread ], [ -110, %do.end46 ]
  ret i32 %retval.0.i66
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_cmd_address(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %add.ptr.i105 = getelementptr i8, ptr %chip, i32 -32
  %instrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  %2 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instrs, align 4
  %delay_ns = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %delay_ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  %spec.select = select i1 %cmp.not, i64 1, i64 65
  %call15 = tail call i32 @nand_subop_get_addr_start_off(ptr noundef %subop, i32 noundef 0) #9
  %call16 = tail call i32 @nand_subop_get_num_addr_cyc(ptr noundef %subop, i32 noundef 0) #9
  %addrs17 = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %addrs17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addrs17, align 4
  %arrayidx18 = getelementptr i8, ptr %7, i32 %call15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp19110.not = icmp eq i32 %call16, 0
  br i1 %cmp19110.not, label %entry.do.end65_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0112 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %address.0111 = phi i64 [ %or21, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx20 = getelementptr i8, ptr %arrayidx18, i32 %i.0112
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx20, align 1
  %conv = zext i8 %9 to i64
  %mul = shl i32 %i.0112, 3
  %sh_prom = zext i32 %mul to i64
  %shl = shl i64 %conv, %sh_prom
  %or21 = or i64 %shl, %address.0111
  %inc = add nuw i32 %i.0112, 1
  %exitcond.not = icmp eq i32 %inc, %call16
  br i1 %exitcond.not, label %for.body.do.end65_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.do.end65_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

do.end65:                                         ; preds = %for.body.do.end65_crit_edge, %entry.do.end65_crit_edge
  %address.0.lcssa = phi i64 [ 0, %entry.do.end65_crit_edge ], [ %or21, %for.body.do.end65_crit_edge ]
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %10 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_cs, align 4
  %arrayidx72 = getelementptr %struct.cdns_nand_chip, ptr %add.ptr.i105, i32 0, i32 10, i32 %11
  %12 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx72, align 1
  %call.i = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %add.ptr.i, i32 noundef 280, i32 noundef 1000000, i32 noundef 256, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool18.not.i, label %cadence_nand_generic_cmd_send.exit.thread, label %do.end78

cadence_nand_generic_cmd_send.exit.thread:        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %call16, 7
  %conv68 = zext i32 %sub to i64
  %shl69 = shl nuw nsw i64 %conv68, 11
  %and70 = and i64 %shl69, 14336
  %shl40 = shl i64 %address.0.lcssa, 16
  %shr.i = lshr i64 %shl40, 32
  %conv17.i = trunc i64 %shr.i to i32
  %conv13.i = zext i8 %13 to i64
  %shl.i = shl nuw nsw i64 %conv13.i, 8
  %and14.i = and i64 %shl.i, 3840
  %or42 = or i64 %and70, %spec.select
  %or71 = or i64 %or42, %shl40
  %or.i = or i64 %or71, %and14.i
  %conv16.i = trunc i64 %or.i to i32
  %irq_lock.i.i = getelementptr i8, ptr %1, i32 224
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i.i) #9
  %irq_status.i.i = getelementptr i8, ptr %1, i32 144
  %14 = call ptr @memset(ptr %irq_status.i.i, i32 0, i32 24)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i.i, i32 noundef %call2.i.i) #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv16.i) #9
  %reg21.i = getelementptr i8, ptr %1, i32 128
  %16 = ptrtoint ptr %reg21.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg21.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %15) #9, !srcloc !333
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv17.i) #9
  %19 = ptrtoint ptr %reg21.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg21.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %18) #9, !srcloc !333
  %21 = ptrtoint ptr %reg21.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg21.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 192) #9, !srcloc !333
  br label %if.end79

do.end78:                                         ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.89, i64 noundef %address.0.lcssa) #12
  br label %if.end79

if.end79:                                         ; preds = %do.end78, %cadence_nand_generic_cmd_send.exit.thread
  %retval.0.i109 = phi i32 [ 0, %cadence_nand_generic_cmd_send.exit.thread ], [ -110, %do.end78 ]
  ret i32 %retval.0.i109
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_cmd_data(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  %thread_nr.i185 = alloca i8, align 1
  %sdma_size.i186 = alloca i32, align 4
  %thread_nr.i = alloca i8, align 1
  %sdma_size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %add.ptr.i172 = getelementptr i8, ptr %chip, i32 -32
  %instrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  %2 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instrs, align 4
  %delay_ns = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %delay_ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delay_ns, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %call35 = tail call i32 @nand_subop_get_data_len(ptr noundef %subop, i32 noundef 0) #9
  %call36 = tail call i32 @nand_subop_get_data_start_off(ptr noundef %subop, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp15 = icmp eq i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  %spec.select = select i1 %cmp.not, i64 2, i64 66
  %or33 = or i64 %spec.select, 2048
  %mini_ctrl_cmd.1 = select i1 %cmp15, i64 %or33, i64 %spec.select
  %force_8bit = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %force_8bit to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %force_8bit, align 4, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool75.not = icmp eq i8 %9, 0
  br i1 %tobool75.not, label %entry.if.end84_crit_edge, label %if.then76

entry.if.end84_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then76:                                        ; preds = %entry
  %10 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %controller, align 4
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %12 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %options.i, align 8
  %and.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then76.if.end84_crit_edge, label %if.end.i

if.then76.if.end84_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.end.i:                                         ; preds = %if.then76
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 -4
  %call.i.i = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %add.ptr.i.i, i32 noundef 280, i32 noundef 1000000, i32 noundef 256, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end82

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %reg1.i.i = getelementptr i8, ptr %11, i32 128
  %14 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg1.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %15, i32 4104
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #9, !srcloc !334
  %17 = and i32 %16, -65537
  %18 = ptrtoint ptr %reg1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg1.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %19, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %17) #9, !srcloc !333
  br label %if.end84

do.end82:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.91) #12
  br label %cleanup

if.end84:                                         ; preds = %if.end.i.i, %if.then76.if.end84_crit_edge, %entry.if.end84_crit_edge
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %22 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_cs, align 4
  %arrayidx85 = getelementptr %struct.cdns_nand_chip, ptr %add.ptr.i172, i32 0, i32 10, i32 %23
  %24 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx85, align 1
  %call.i = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %add.ptr.i, i32 noundef 280, i32 noundef 1000000, i32 noundef 256, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool18.not.i, label %if.end93, label %do.end91

do.end91:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.94) #12
  br label %cleanup

if.end93:                                         ; preds = %if.end84
  %28 = shl i32 %call35, 8
  %or74 = and i32 %28, 16776960
  %shr.i = or i32 %or74, 1
  %conv13.i = zext i8 %25 to i64
  %shl.i = shl nuw nsw i64 %conv13.i, 8
  %and14.i = and i64 %shl.i, 3840
  %or.i = or i64 %and14.i, %mini_ctrl_cmd.1
  %conv16.i = trunc i64 %or.i to i32
  %irq_lock.i.i = getelementptr i8, ptr %1, i32 224
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i.i) #9
  %irq_status.i.i = getelementptr i8, ptr %1, i32 144
  %29 = call ptr @memset(ptr %irq_status.i.i, i32 0, i32 24)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i.i, i32 noundef %call2.i.i) #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %conv16.i) #9
  %reg21.i = getelementptr i8, ptr %1, i32 128
  %31 = ptrtoint ptr %reg21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg21.i, align 4
  %add.ptr.i174 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 %30) #9, !srcloc !333
  %33 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #9
  %34 = ptrtoint ptr %reg21.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg21.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %35, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %33) #9, !srcloc !333
  %36 = ptrtoint ptr %reg21.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg21.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 192) #9, !srcloc !333
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp95 = icmp eq i32 %39, 2
  %buf99 = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %buf99 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf99, align 4
  %add.ptr = getelementptr i8, ptr %41, i32 %call36
  br i1 %cmp95, label %if.then97, label %if.else

if.then97:                                        ; preds = %if.end93
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %thread_nr.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sdma_size.i) #9
  %42 = ptrtoint ptr %sdma_size.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %sdma_size.i, align 4, !annotation !331
  %call.i176 = call fastcc i32 @cadence_nand_wait_on_sdma(ptr noundef %add.ptr.i, ptr noundef nonnull %thread_nr.i, ptr noundef nonnull %sdma_size.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %tobool.not.i177 = icmp eq i32 %call.i176, 0
  br i1 %tobool.not.i177, label %if.end.i178, label %if.then97.cadence_nand_read_buf.exit_crit_edge

if.then97.cadence_nand_read_buf.exit_crit_edge:   ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_read_buf.exit

if.end.i178:                                      ; preds = %if.then97
  %caps1.i = getelementptr i8, ptr %1, i32 100
  %43 = ptrtoint ptr %caps1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %caps1.i, align 4
  %has_dma.i = getelementptr inbounds %struct.cadence_nand_dt_devdata, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %has_dma.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i = load i8, ptr %has_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool1.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end11.i

if.then2.i:                                       ; preds = %if.end.i178
  %shr.i179 = ashr i32 %call35, 2
  %io.i = getelementptr i8, ptr %1, i32 132
  %46 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io.i, align 4
  tail call void @__raw_readsl(ptr noundef %47, ptr noundef %add.ptr, i32 noundef %shr.i179) #9
  %48 = ptrtoint ptr %sdma_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sdma_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %call35)
  %cmp.i = icmp ugt i32 %49, %call35
  br i1 %cmp.i, label %if.then3.i, label %if.then2.i.cadence_nand_read_buf.exit_crit_edge

if.then2.i.cadence_nand_read_buf.exit_crit_edge:  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_read_buf.exit

if.then3.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io.i, align 4
  %buf6.i = getelementptr i8, ptr %1, i32 116
  %52 = ptrtoint ptr %buf6.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buf6.i, align 4
  %div64.i = lshr i32 %49, 2
  %sub.i = sub nsw i32 %div64.i, %shr.i179
  tail call void @__raw_readsl(ptr noundef %51, ptr noundef %53, i32 noundef %sub.i) #9
  %shl.i180 = and i32 %call35, -4
  %add.ptr.i181 = getelementptr i8, ptr %add.ptr, i32 %shl.i180
  %54 = ptrtoint ptr %buf6.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %buf6.i, align 4
  %sub9.i = and i32 %call35, 3
  %56 = call ptr @memcpy(ptr %add.ptr.i181, ptr %55, i32 %sub9.i)
  br label %cadence_nand_read_buf.exit

if.end11.i:                                       ; preds = %if.end.i178
  %data_dma_width1.i.i = getelementptr i8, ptr %1, i32 105
  %57 = ptrtoint ptr %data_dma_width1.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %data_dma_width1.i.i, align 1
  %tobool.not.i.i182 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i.i182, label %if.end11.i.if.end19.i_crit_edge, label %land.lhs.true.i.i

if.end11.i.if.end19.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

land.lhs.true.i.i:                                ; preds = %if.end11.i
  %59 = ptrtoint ptr %add.ptr to i32
  %cmp.i.i = icmp ugt ptr %add.ptr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true2.i.i, label %land.lhs.true.i.i.if.end19.i_crit_edge

land.lhs.true.i.i.if.end19.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %60 = load ptr, ptr @high_memory, align 4
  %cmp3.i.i = icmp ugt ptr %60, %add.ptr
  br i1 %cmp3.i.i, label %land.lhs.true4.i.i, label %land.lhs.true2.i.i.if.end19.i_crit_edge

land.lhs.true2.i.i.if.end19.i_crit_edge:          ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true2.i.i
  %sub.i.i = add i32 %59, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %61 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %61, %shr.i.i
  %call.i.i183 = tail call i32 @pfn_valid(i32 noundef %add.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i183)
  %tobool5.not.i.i = icmp eq i32 %call.i.i183, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true4.i.i.if.end19.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true4.i.i.if.end19.i_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true4.i.i
  %conv.i.i = zext i8 %58 to i32
  %sub7.i.i = add nsw i32 %conv.i.i, -1
  %and.i.i = and i32 %sub7.i.i, %59
  %and12.i.i = and i32 %call35, 7
  %62 = or i32 %and.i.i, %and12.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %if.then13.i, label %land.lhs.true6.i.i.if.end19.i_crit_edge, !prof !338

land.lhs.true6.i.i.if.end19.i_crit_edge:          ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then13.i:                                      ; preds = %land.lhs.true6.i.i
  %call15.i = tail call fastcc i32 @cadence_nand_slave_dma_transfer(ptr noundef %add.ptr.i, ptr noundef nonnull %add.ptr, i32 noundef %call35, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp eq i32 %call15.i, 0
  br i1 %cmp16.i, label %if.then13.i.cadence_nand_read_buf.exit_crit_edge, label %do.end.i

if.then13.i.cadence_nand_read_buf.exit_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_read_buf.exit

do.end.i:                                         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %65, ptr noundef nonnull @.str.101) #12
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i, %land.lhs.true6.i.i.if.end19.i_crit_edge, %land.lhs.true4.i.i.if.end19.i_crit_edge, %land.lhs.true2.i.i.if.end19.i_crit_edge, %land.lhs.true.i.i.if.end19.i_crit_edge, %if.end11.i.if.end19.i_crit_edge
  %buf20.i = getelementptr i8, ptr %1, i32 116
  %66 = ptrtoint ptr %buf20.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buf20.i, align 4
  %68 = ptrtoint ptr %sdma_size.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sdma_size.i, align 4
  %call23.i = tail call fastcc i32 @cadence_nand_slave_dma_transfer(ptr noundef %add.ptr.i, ptr noundef %67, i32 noundef %69, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end30.i, label %do.end28.i

do.end28.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.105) #12
  br label %cadence_nand_read_buf.exit

if.end30.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %buf20.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %buf20.i, align 4
  %74 = call ptr @memcpy(ptr %add.ptr, ptr %73, i32 %call35)
  br label %cadence_nand_read_buf.exit

cadence_nand_read_buf.exit:                       ; preds = %if.end30.i, %do.end28.i, %if.then13.i.cadence_nand_read_buf.exit_crit_edge, %if.then3.i, %if.then2.i.cadence_nand_read_buf.exit_crit_edge, %if.then97.cadence_nand_read_buf.exit_crit_edge
  %retval.0.i184 = phi i32 [ %call23.i, %do.end28.i ], [ 0, %if.end30.i ], [ %call.i176, %if.then97.cadence_nand_read_buf.exit_crit_edge ], [ 0, %if.then3.i ], [ 0, %if.then2.i.cadence_nand_read_buf.exit_crit_edge ], [ 0, %if.then13.i.cadence_nand_read_buf.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sdma_size.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %thread_nr.i) #9
  br label %if.end106

if.else:                                          ; preds = %if.end93
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %thread_nr.i185) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sdma_size.i186) #9
  %75 = ptrtoint ptr %sdma_size.i186 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %sdma_size.i186, align 4, !annotation !331
  %call.i187 = call fastcc i32 @cadence_nand_wait_on_sdma(ptr noundef %add.ptr.i, ptr noundef nonnull %thread_nr.i185, ptr noundef nonnull %sdma_size.i186) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %tobool.not.i188 = icmp eq i32 %call.i187, 0
  br i1 %tobool.not.i188, label %if.end.i193, label %if.else.cadence_nand_write_buf.exit_crit_edge

if.else.cadence_nand_write_buf.exit_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_write_buf.exit

if.end.i193:                                      ; preds = %if.else
  %caps1.i189 = getelementptr i8, ptr %1, i32 100
  %76 = ptrtoint ptr %caps1.i189 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %caps1.i189, align 4
  %has_dma.i190 = getelementptr inbounds %struct.cadence_nand_dt_devdata, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %has_dma.i190 to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load.i191 = load i8, ptr %has_dma.i190, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i191)
  %tobool1.not.i192 = icmp sgt i8 %bf.load.i191, -1
  br i1 %tobool1.not.i192, label %if.then2.i197, label %if.end11.i206

if.then2.i197:                                    ; preds = %if.end.i193
  %shr.i194 = ashr i32 %call35, 2
  %io.i195 = getelementptr i8, ptr %1, i32 132
  %79 = ptrtoint ptr %io.i195 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %io.i195, align 4
  tail call void @__raw_writesl(ptr noundef %80, ptr noundef %add.ptr, i32 noundef %shr.i194) #9
  %81 = ptrtoint ptr %sdma_size.i186 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sdma_size.i186, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %call35)
  %cmp.i196 = icmp ugt i32 %82, %call35
  br i1 %cmp.i196, label %if.then3.i203, label %if.then2.i197.cadence_nand_write_buf.exit_crit_edge

if.then2.i197.cadence_nand_write_buf.exit_crit_edge: ; preds = %if.then2.i197
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_write_buf.exit

if.then3.i203:                                    ; preds = %if.then2.i197
  call void @__sanitizer_cov_trace_pc() #11
  %buf4.i = getelementptr i8, ptr %1, i32 116
  %83 = ptrtoint ptr %buf4.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buf4.i, align 4
  %shl.i198 = and i32 %call35, -4
  %add.ptr.i199 = getelementptr i8, ptr %add.ptr, i32 %shl.i198
  %sub.i200 = and i32 %call35, 3
  %85 = call ptr @memcpy(ptr %84, ptr %add.ptr.i199, i32 %sub.i200)
  %86 = ptrtoint ptr %io.i195 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %io.i195, align 4
  %88 = load ptr, ptr %buf4.i, align 4
  %div64.i201 = lshr i32 %82, 2
  %sub9.i202 = sub nsw i32 %div64.i201, %shr.i194
  tail call void @__raw_writesl(ptr noundef %87, ptr noundef %88, i32 noundef %sub9.i202) #9
  br label %cadence_nand_write_buf.exit

if.end11.i206:                                    ; preds = %if.end.i193
  %data_dma_width1.i.i204 = getelementptr i8, ptr %1, i32 105
  %89 = ptrtoint ptr %data_dma_width1.i.i204 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %data_dma_width1.i.i204, align 1
  %tobool.not.i.i205 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i.i205, label %if.end11.i206.if.end19.i227_crit_edge, label %land.lhs.true.i.i208

if.end11.i206.if.end19.i227_crit_edge:            ; preds = %if.end11.i206
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i227

land.lhs.true.i.i208:                             ; preds = %if.end11.i206
  %91 = ptrtoint ptr %add.ptr to i32
  %cmp.i.i207 = icmp ugt ptr %add.ptr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i207, label %land.lhs.true2.i.i210, label %land.lhs.true.i.i208.if.end19.i227_crit_edge

land.lhs.true.i.i208.if.end19.i227_crit_edge:     ; preds = %land.lhs.true.i.i208
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i227

land.lhs.true2.i.i210:                            ; preds = %land.lhs.true.i.i208
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %92 = load ptr, ptr @high_memory, align 4
  %cmp3.i.i209 = icmp ugt ptr %92, %add.ptr
  br i1 %cmp3.i.i209, label %land.lhs.true4.i.i216, label %land.lhs.true2.i.i210.if.end19.i227_crit_edge

land.lhs.true2.i.i210.if.end19.i227_crit_edge:    ; preds = %land.lhs.true2.i.i210
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i227

land.lhs.true4.i.i216:                            ; preds = %land.lhs.true2.i.i210
  %sub.i.i211 = add i32 %91, 1073741824
  %shr.i.i212 = lshr i32 %sub.i.i211, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %93 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i213 = add i32 %93, %shr.i.i212
  %call.i.i214 = tail call i32 @pfn_valid(i32 noundef %add.i.i213) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i214)
  %tobool5.not.i.i215 = icmp eq i32 %call.i.i214, 0
  br i1 %tobool5.not.i.i215, label %land.lhs.true4.i.i216.if.end19.i227_crit_edge, label %land.lhs.true6.i.i221

land.lhs.true4.i.i216.if.end19.i227_crit_edge:    ; preds = %land.lhs.true4.i.i216
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i227

land.lhs.true6.i.i221:                            ; preds = %land.lhs.true4.i.i216
  %conv.i.i217 = zext i8 %90 to i32
  %sub7.i.i218 = add nsw i32 %conv.i.i217, -1
  %and.i.i219 = and i32 %sub7.i.i218, %91
  %and12.i.i220 = and i32 %call35, 7
  %94 = or i32 %and.i.i219, %and12.i.i220
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %if.then13.i224, label %land.lhs.true6.i.i221.if.end19.i227_crit_edge, !prof !338

land.lhs.true6.i.i221.if.end19.i227_crit_edge:    ; preds = %land.lhs.true6.i.i221
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i227

if.then13.i224:                                   ; preds = %land.lhs.true6.i.i221
  %call15.i222 = tail call fastcc i32 @cadence_nand_slave_dma_transfer(ptr noundef %add.ptr.i, ptr noundef nonnull %add.ptr, i32 noundef %call35, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i222)
  %cmp16.i223 = icmp eq i32 %call15.i222, 0
  br i1 %cmp16.i223, label %if.then13.i224.cadence_nand_write_buf.exit_crit_edge, label %do.end.i225

if.then13.i224.cadence_nand_write_buf.exit_crit_edge: ; preds = %if.then13.i224
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_write_buf.exit

do.end.i225:                                      ; preds = %if.then13.i224
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %97, ptr noundef nonnull @.str.101) #12
  br label %if.end19.i227

if.end19.i227:                                    ; preds = %do.end.i225, %land.lhs.true6.i.i221.if.end19.i227_crit_edge, %land.lhs.true4.i.i216.if.end19.i227_crit_edge, %land.lhs.true2.i.i210.if.end19.i227_crit_edge, %land.lhs.true.i.i208.if.end19.i227_crit_edge, %if.end11.i206.if.end19.i227_crit_edge
  %buf20.i226 = getelementptr i8, ptr %1, i32 116
  %98 = ptrtoint ptr %buf20.i226 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %buf20.i226, align 4
  %100 = call ptr @memcpy(ptr %99, ptr %add.ptr, i32 %call35)
  %101 = load ptr, ptr %buf20.i226, align 4
  %102 = ptrtoint ptr %sdma_size.i186 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sdma_size.i186, align 4
  %call24.i = tail call fastcc i32 @cadence_nand_slave_dma_transfer(ptr noundef %add.ptr.i, ptr noundef %101, i32 noundef %103, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end19.i227.cadence_nand_write_buf.exit_crit_edge, label %do.end29.i

if.end19.i227.cadence_nand_write_buf.exit_crit_edge: ; preds = %if.end19.i227
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_write_buf.exit

do.end29.i:                                       ; preds = %if.end19.i227
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.105) #12
  br label %cadence_nand_write_buf.exit

cadence_nand_write_buf.exit:                      ; preds = %do.end29.i, %if.end19.i227.cadence_nand_write_buf.exit_crit_edge, %if.then13.i224.cadence_nand_write_buf.exit_crit_edge, %if.then3.i203, %if.then2.i197.cadence_nand_write_buf.exit_crit_edge, %if.else.cadence_nand_write_buf.exit_crit_edge
  %retval.0.i228 = phi i32 [ %call.i187, %if.else.cadence_nand_write_buf.exit_crit_edge ], [ 0, %if.then3.i203 ], [ 0, %if.then2.i197.cadence_nand_write_buf.exit_crit_edge ], [ 0, %if.then13.i224.cadence_nand_write_buf.exit_crit_edge ], [ %call24.i, %do.end29.i ], [ 0, %if.end19.i227.cadence_nand_write_buf.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sdma_size.i186) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %thread_nr.i185) #9
  br label %if.end106

if.end106:                                        ; preds = %cadence_nand_write_buf.exit, %cadence_nand_read_buf.exit
  %ret.0 = phi i32 [ %retval.0.i184, %cadence_nand_read_buf.exit ], [ %retval.0.i228, %cadence_nand_write_buf.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool107.not = icmp eq i32 %ret.0, 0
  br i1 %tobool107.not, label %if.end113, label %do.end111

do.end111:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.97) #12
  br label %cleanup

if.end113:                                        ; preds = %if.end106
  %108 = ptrtoint ptr %force_8bit to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %force_8bit, align 4, !range !337
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool116.not = icmp eq i8 %109, 0
  br i1 %tobool116.not, label %if.end113.cleanup_crit_edge, label %if.then117

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then117:                                       ; preds = %if.end113
  %110 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %controller, align 4
  %options.i230 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %112 = ptrtoint ptr %options.i230 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %options.i230, align 8
  %and.i231 = and i32 %113, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i231)
  %tobool.not.i232 = icmp eq i32 %and.i231, 0
  br i1 %tobool.not.i232, label %if.then117.cleanup_crit_edge, label %if.end.i236

if.then117.cleanup_crit_edge:                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i236:                                      ; preds = %if.then117
  %add.ptr.i.i233 = getelementptr i8, ptr %111, i32 -4
  %call.i.i234 = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %add.ptr.i.i233, i32 noundef 280, i32 noundef 1000000, i32 noundef 256, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i234)
  %tobool.not.i.i235 = icmp eq i32 %call.i.i234, 0
  br i1 %tobool.not.i.i235, label %if.end.i.i240, label %do.end123

if.end.i.i240:                                    ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #11
  %reg1.i.i237 = getelementptr i8, ptr %111, i32 128
  %114 = ptrtoint ptr %reg1.i.i237 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %reg1.i.i237, align 4
  %add.ptr.i5.i238 = getelementptr i8, ptr %115, i32 4104
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i238) #9, !srcloc !334
  %117 = or i32 %116, 65536
  %118 = ptrtoint ptr %reg1.i.i237 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %reg1.i.i237, align 4
  %add.ptr7.i.i239 = getelementptr i8, ptr %119, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i239, i32 %117) #9, !srcloc !333
  br label %cleanup

do.end123:                                        ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.91) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end123, %if.end.i.i240, %if.then117.cleanup_crit_edge, %if.end113.cleanup_crit_edge, %do.end111, %do.end91, %do.end82
  %retval.0 = phi i32 [ -110, %do.end82 ], [ -110, %do.end91 ], [ %ret.0, %do.end111 ], [ -110, %do.end123 ], [ 0, %if.end113.cleanup_crit_edge ], [ 0, %if.then117.cleanup_crit_edge ], [ 0, %if.end.i.i240 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cadence_nand_cmd_waitrdy(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %subop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %add.ptr.i6 = getelementptr i8, ptr %chip, i32 -32
  %instrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  %2 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instrs, align 4
  %ctx = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctx, align 4
  %mul = mul i32 %5, 1000
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %6 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_cs, align 4
  %arrayidx2 = getelementptr %struct.cdns_nand_chip, ptr %add.ptr.i6, i32 0, i32 10, i32 %7
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv
  %call3 = tail call fastcc i32 @cadence_nand_wait_for_value(ptr noundef %add.ptr.i, i32 noundef 4100, i32 noundef %mul, i32 noundef %shl, i1 noundef zeroext false)
  ret i32 %call3
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
define internal fastcc i32 @cadence_nand_wait_on_sdma(ptr noundef %cdns_ctrl, ptr nocapture noundef writeonly %out_sdma_trd, ptr nocapture noundef writeonly %out_sdma_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 10
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 26752) #9, !srcloc !333
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #9, !srcloc !333
  %complete.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 15
  %call1.i = tail call i32 @wait_for_completion_timeout(ptr noundef %complete.i, i32 noundef 1000) #9
  %irq_status.sroa.7.0.irq_status2.i.sroa_idx = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %irq_status.sroa.7.0.irq_status2.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %irq_status.sroa.7.0.copyload = load i32, ptr %irq_status.sroa.7.0.irq_status2.i.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.cadence_nand_wait_for_irq.exit_crit_edge

entry.cadence_nand_wait_for_irq.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cadence_nand_wait_for_irq.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %irq_status2.i = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 13
  %irq_status.sroa.5.0.irq_status2.i.sroa_idx = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %irq_status.sroa.5.0.irq_status2.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %irq_status.sroa.5.0.copyload = load i32, ptr %irq_status.sroa.5.0.irq_status2.i.sroa_idx, align 4
  %6 = ptrtoint ptr %irq_status2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %irq_status.sroa.0.0.copyload = load i32, ptr %irq_status2.i, align 4
  %7 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.55) #12
  %9 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.58, i32 noundef %irq_status.sroa.7.0.copyload, i32 noundef 6815744) #12
  %11 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.61, i32 noundef %irq_status.sroa.0.0.copyload, i32 noundef 0) #12
  %13 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.64, i32 noundef %irq_status.sroa.5.0.copyload, i32 noundef 0) #12
  br label %cadence_nand_wait_for_irq.exit

cadence_nand_wait_for_irq.exit:                   ; preds = %do.end.i, %entry.cadence_nand_wait_for_irq.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_status.sroa.7.0.copyload)
  %cmp = icmp eq i32 %irq_status.sroa.7.0.copyload, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %cadence_nand_wait_for_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.107) #12
  br label %cleanup

if.end:                                           ; preds = %cadence_nand_wait_for_irq.exit
  %and = and i32 %irq_status.sroa.7.0.copyload, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end30, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 1088
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !334
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %out_sdma_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %out_sdma_size, align 4
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i, align 4
  %add.ptr6 = getelementptr i8, ptr %23, i32 1092
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #9, !srcloc !334
  %25 = lshr i32 %24, 24
  %26 = trunc i32 %25 to i8
  %conv27 = and i8 %26, 7
  %27 = ptrtoint ptr %out_sdma_trd to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv27, ptr %out_sdma_trd, align 1
  br label %cleanup

do.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cdns_ctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.110, i32 noundef %irq_status.sroa.7.0.copyload) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.then3, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %if.then3 ], [ -5, %do.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cadence_nand_slave_dma_transfer(ptr nocapture noundef readonly %cdns_ctrl, ptr noundef %buf, i32 noundef %len, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  %finished = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %finished) #9
  %0 = getelementptr inbounds i8, ptr %finished, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %finished to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %finished, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %finished, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #9
  %dmac = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 21
  %3 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dmac, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %buf) #9
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !332

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = call ptr @dev_driver_string(ptr noundef %8) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.then.i.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.49, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void @debug_dma_mapping_error(ptr noundef %14, i32 noundef -1) #9
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %entry
  call void @debug_dma_map_single(ptr noundef %8, ptr noundef %buf, i32 noundef %len) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %buf to i32
  %sub.i = add i32 %16, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %15, i32 %shr.i
  %and.i = and i32 %16, 4095
  %call41.i = call i32 @dma_map_page_attrs(ptr noundef %8, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %len, i32 noundef %dir, i32 noundef 0) #9
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  call void @debug_dma_mapping_error(ptr noundef %18, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  %19 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cdns_ctrl, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.44) #12
  br label %do.body29

if.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp = icmp eq i32 %dir, 2
  %dma = getelementptr inbounds %struct.cdns_nand_ctrl, ptr %cdns_ctrl, i32 0, i32 11, i32 1
  %21 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma, align 4
  %call41.i. = select i1 %cmp, i32 %call41.i, i32 %22
  %.call41.i = select i1 %cmp, i32 %22, i32 %call41.i
  %23 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dmac, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.err_unmap_crit_edge, label %lor.lhs.false.i

if.end.err_unmap_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unmap

lor.lhs.false.i:                                  ; preds = %if.end
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool1.not.i = icmp eq ptr %26, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.err_unmap_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.err_unmap_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unmap

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_dma_memcpy.i = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 30
  %27 = ptrtoint ptr %device_prep_dma_memcpy.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device_prep_dma_memcpy.i, align 4
  %tobool4.not.i = icmp eq ptr %28, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.err_unmap_crit_edge, label %dmaengine_prep_dma_memcpy.exit

lor.lhs.false2.i.err_unmap_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unmap

dmaengine_prep_dma_memcpy.exit:                   ; preds = %lor.lhs.false2.i
  %call.i2 = call ptr %28(ptr noundef nonnull %24, i32 noundef %call41.i., i32 noundef %.call41.i, i32 noundef %len, i32 noundef 3) #9
  %tobool10.not = icmp eq ptr %call.i2, null
  br i1 %tobool10.not, label %dmaengine_prep_dma_memcpy.exit.err_unmap_crit_edge, label %if.end16

dmaengine_prep_dma_memcpy.exit.err_unmap_crit_edge: ; preds = %dmaengine_prep_dma_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unmap

if.end16:                                         ; preds = %dmaengine_prep_dma_memcpy.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i2, i32 0, i32 6
  %29 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @cadence_nand_slave_dma_transfer_finished, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i2, i32 0, i32 8
  %30 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %finished, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i2, i32 0, i32 4
  %31 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_submit.i, align 4
  %call.i4 = call i32 %32(ptr noundef nonnull %call.i2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i4)
  %tobool19.not = icmp sgt i32 %call.i4, -1
  br i1 %tobool19.not, label %if.end25, label %if.end16.err_unmap_crit_edge

if.end16.err_unmap_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_unmap

if.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %dmac to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dmac, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 50
  %37 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device_issue_pending.i, align 4
  call void %38(ptr noundef %34) #9
  call void @wait_for_completion(ptr noundef nonnull %finished) #9
  %39 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cdns_ctrl, align 4
  call void @dma_unmap_page_attrs(ptr noundef %40, i32 noundef %call41.i, i32 noundef %len, i32 noundef %dir, i32 noundef 0) #9
  br label %cleanup

err_unmap:                                        ; preds = %if.end16.err_unmap_crit_edge, %dmaengine_prep_dma_memcpy.exit.err_unmap_crit_edge, %lor.lhs.false2.i.err_unmap_crit_edge, %lor.lhs.false.i.err_unmap_crit_edge, %if.end.err_unmap_crit_edge
  %.str.117.sink = phi ptr [ @.str.114, %if.end.err_unmap_crit_edge ], [ @.str.114, %lor.lhs.false.i.err_unmap_crit_edge ], [ @.str.114, %lor.lhs.false2.i.err_unmap_crit_edge ], [ @.str.114, %dmaengine_prep_dma_memcpy.exit.err_unmap_crit_edge ], [ @.str.117, %if.end16.err_unmap_crit_edge ]
  %41 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cdns_ctrl, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull %.str.117.sink) #12
  %43 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cdns_ctrl, align 4
  call void @dma_unmap_page_attrs(ptr noundef %44, i32 noundef %call41.i, i32 noundef %len, i32 noundef %dir, i32 noundef 0) #9
  br label %do.body29

do.body29:                                        ; preds = %err_unmap, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cadence_nand_slave_dma_transfer.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cadence_nand_slave_dma_transfer, %if.then35)) #9
          to label %cleanup [label %if.then35], !srcloc !335

if.then35:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %cdns_ctrl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cdns_ctrl, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cadence_nand_slave_dma_transfer.__UNIQUE_ID_ddebug404, ptr noundef %46, ptr noundef nonnull @.str.119) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %do.body29, %if.end25
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -5, %if.then35 ], [ -5, %do.body29 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %finished) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cadence_nand_slave_dma_transfer_finished(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @complete(ptr noundef %data) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 171)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 171)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !36, !37, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !167, !169, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !200, !201, !202, !203, !204, !206, !207, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !234, !235, !236, !238, !239, !241, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !257, !258, !259, !261, !262, !264, !265, !267, !268, !270, !271, !273, !274, !276, !277, !279, !280, !282, !283, !284, !285, !287, !289, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !320}
!llvm.module.flags = !{!322, !323, !324, !325, !326, !327, !328, !329}
!llvm.ident = !{!330}

!0 = !{ptr @__initcall__kmod_cadence_nand_controller__563_3034_cadence_nand_dt_driver_init6, !1, !"__initcall__kmod_cadence_nand_controller__563_3034_cadence_nand_dt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 3034, i32 1}
!2 = !{ptr @__exitcall_cadence_nand_dt_driver_exit, !1, !"__exitcall_cadence_nand_dt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author564, !4, !"__UNIQUE_ID_author564", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 3036, i32 1}
!5 = !{ptr @__UNIQUE_ID_file565, !6, !"__UNIQUE_ID_file565", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 3037, i32 1}
!7 = !{ptr @__UNIQUE_ID_license566, !6, !"__UNIQUE_ID_license566", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description567, !9, !"__UNIQUE_ID_description567", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 3038, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 3029, i32 11}
!12 = !{ptr @cadence_nand_dt_driver, !13, !"cadence_nand_dt_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 3025, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2964, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cadence_nand_dt_probe._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @cadence_nand_dt_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2980, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cadence_nand_dt_probe._entry.4, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @cadence_nand_dt_probe._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2992, i32 41}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2999, i32 8}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 3002, i32 3}
!32 = !{ptr @cadence_nand_dt_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cadence_nand_dt_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2853, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cadence_nand_init._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @cadence_nand_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @cadence_nand_init.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2858, i32 2}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2871, i32 4}
!45 = !{ptr @cadence_nand_init._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @cadence_nand_init._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2886, i32 3}
!49 = !{ptr @cadence_nand_init._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @cadence_nand_init._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @init_completion.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../include/linux/completion.h", i32 87, i32 2}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1172, i32 2}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @cadence_nand_hw_init._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @cadence_nand_hw_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 572, i32 3}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cadence_nand_wait_for_value._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @cadence_nand_wait_for_value._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1086, i32 3}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @cadence_nand_read_bch_caps._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @cadence_nand_read_bch_caps._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1148, i32 3}
!71 = !{ptr @cadence_nand_read_bch_caps._entry.31, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @cadence_nand_read_bch_caps._entry_ptr.33, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @nand_controller_init.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @cadence_nand_controller_ops, !77, !"cadence_nand_controller_ops", i1 false, i1 false}
!77 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2691, i32 41}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2627, i32 3}
!80 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @cadence_nand_attach_chip._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @cadence_nand_attach_chip._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2631, i32 2}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @cadence_nand_attach_chip.__UNIQUE_ID_ddebug562, !84, !"__UNIQUE_ID_ddebug562", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2682, i32 3}
!89 = !{ptr @cadence_nand_attach_chip._entry.39, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @cadence_nand_attach_chip._entry_ptr.41, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1677, i32 3}
!93 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @cadence_nand_read_page._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @cadence_nand_read_page._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1279, i32 3}
!98 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @cadence_nand_cdma_transfer._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @cadence_nand_cdma_transfer._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @cadence_nand_cdma_transfer._entry.46, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1289, i32 4}
!103 = !{ptr @cadence_nand_cdma_transfer._entry_ptr.47, !102, !"_entry_ptr", i1 false, i1 false}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!106 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1040, i32 3}
!110 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @cadence_nand_cdma_send_and_wait._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @cadence_nand_cdma_send_and_wait._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1044, i32 3}
!115 = !{ptr @cadence_nand_cdma_send_and_wait._entry.52, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @cadence_nand_cdma_send_and_wait._entry_ptr.54, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 817, i32 3}
!119 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @cadence_nand_wait_for_irq._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @cadence_nand_wait_for_irq._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 818, i32 3}
!124 = !{ptr @cadence_nand_wait_for_irq._entry.57, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @cadence_nand_wait_for_irq._entry_ptr.59, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 820, i32 3}
!128 = !{ptr @cadence_nand_wait_for_irq._entry.60, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @cadence_nand_wait_for_irq._entry_ptr.62, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 823, i32 3}
!132 = !{ptr @cadence_nand_wait_for_irq._entry.63, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @cadence_nand_wait_for_irq._entry_ptr.65, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 973, i32 3}
!136 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @cadence_nand_cdma_finish._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @cadence_nand_cdma_finish._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 977, i32 4}
!141 = !{ptr @cadence_nand_cdma_finish._entry.68, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @cadence_nand_cdma_finish._entry_ptr.70, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 955, i32 3}
!145 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @cadence_nand_check_desc_error._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @cadence_nand_check_desc_error._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1410, i32 3}
!150 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @cadence_nand_read_bbm._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @cadence_nand_read_bbm._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1730, i32 3}
!155 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @cadence_nand_read_page_raw._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @cadence_nand_read_page_raw._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1467, i32 4}
!160 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @cadence_nand_write_page._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @cadence_nand_write_page._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @cadence_nand_ooblayout_ops, !164, !"cadence_nand_ooblayout_ops", i1 false, i1 false}
!164 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2269, i32 39}
!165 = !{ptr @cadence_nand_op_parser, !166, !"cadence_nand_op_parser", i1 false, i1 false}
!166 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2199, i32 36}
!167 = !{ptr @.str.85, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1378, i32 3}
!169 = !{ptr @.str.86, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @cadence_nand_erase._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @cadence_nand_erase._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2022, i32 3}
!174 = !{ptr @.str.88, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @cadence_nand_cmd_opcode._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @cadence_nand_cmd_opcode._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.89, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2066, i32 3}
!179 = !{ptr @.str.90, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @cadence_nand_cmd_address._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @cadence_nand_cmd_address._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2142, i32 4}
!184 = !{ptr @.str.92, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @cadence_nand_cmd_data._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @cadence_nand_cmd_data._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.94, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2152, i32 3}
!189 = !{ptr @cadence_nand_cmd_data._entry.93, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @cadence_nand_cmd_data._entry_ptr.95, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.97, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2167, i32 3}
!193 = !{ptr @cadence_nand_cmd_data._entry.96, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @cadence_nand_cmd_data._entry_ptr.98, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @cadence_nand_cmd_data._entry.99, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2174, i32 4}
!197 = !{ptr @cadence_nand_cmd_data._entry_ptr.100, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.101, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1907, i32 3}
!200 = !{ptr @.str.102, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.103, !199, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @cadence_nand_read_buf._entry, !199, !"_entry", i1 false, i1 false}
!203 = !{ptr @cadence_nand_read_buf._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.105, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1917, i32 3}
!206 = !{ptr @cadence_nand_read_buf._entry.104, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @cadence_nand_read_buf._entry_ptr.106, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.107, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 877, i32 3}
!210 = !{ptr @.str.108, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @cadence_nand_wait_on_sdma._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @cadence_nand_wait_on_sdma._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.110, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 887, i32 3}
!215 = !{ptr @cadence_nand_wait_on_sdma._entry.109, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @cadence_nand_wait_on_sdma._entry_ptr.111, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.112, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1828, i32 3}
!219 = !{ptr @cadence_nand_slave_dma_transfer._entry, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @cadence_nand_slave_dma_transfer._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.114, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1843, i32 3}
!223 = !{ptr @cadence_nand_slave_dma_transfer._entry.113, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @cadence_nand_slave_dma_transfer._entry_ptr.115, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.117, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1852, i32 3}
!227 = !{ptr @cadence_nand_slave_dma_transfer._entry.116, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @cadence_nand_slave_dma_transfer._entry_ptr.118, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.119, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1867, i32 2}
!231 = !{ptr @cadence_nand_slave_dma_transfer.__UNIQUE_ID_ddebug404, !230, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!232 = !{ptr @.str.120, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1961, i32 3}
!234 = !{ptr @cadence_nand_write_buf._entry, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @cadence_nand_write_buf._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @cadence_nand_write_buf._entry.121, !237, !"_entry", i1 false, i1 false}
!237 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 1973, i32 3}
!238 = !{ptr @cadence_nand_write_buf._entry_ptr.122, !237, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.123, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2469, i32 2}
!241 = !{ptr @.str.124, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug470, !240, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!243 = !{ptr @.str.125, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2489, i32 2}
!245 = !{ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug496, !244, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!246 = !{ptr @.str.126, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2510, i32 2}
!248 = !{ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug512, !247, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!249 = !{ptr @.str.127, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2523, i32 2}
!251 = !{ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug528, !250, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!252 = !{ptr @.str.128, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2535, i32 3}
!254 = !{ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug539, !253, !"__UNIQUE_ID_ddebug539", i1 false, i1 false}
!255 = !{ptr @.str.129, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2568, i32 3}
!257 = !{ptr @cadence_nand_setup_interface._entry, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @cadence_nand_setup_interface._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.130, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2576, i32 2}
!261 = !{ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug550, !260, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!262 = !{ptr @.str.131, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2579, i32 3}
!264 = !{ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug551, !263, !"__UNIQUE_ID_ddebug551", i1 false, i1 false}
!265 = !{ptr @.str.132, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2580, i32 3}
!267 = !{ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug552, !266, !"__UNIQUE_ID_ddebug552", i1 false, i1 false}
!268 = !{ptr @.str.133, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2581, i32 3}
!270 = !{ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug553, !269, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!271 = !{ptr @.str.134, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2586, i32 3}
!273 = !{ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug559, !272, !"__UNIQUE_ID_ddebug559", i1 false, i1 false}
!274 = !{ptr @.str.135, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2590, i32 3}
!276 = !{ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug560, !275, !"__UNIQUE_ID_ddebug560", i1 false, i1 false}
!277 = !{ptr @.str.136, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2592, i32 3}
!279 = !{ptr @cadence_nand_setup_interface.__UNIQUE_ID_ddebug561, !278, !"__UNIQUE_ID_ddebug561", i1 false, i1 false}
!280 = !{ptr @.str.137, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2806, i32 3}
!282 = !{ptr @.str.138, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @cadence_nand_chips_init._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @cadence_nand_chips_init._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.139, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2706, i32 46}
!287 = !{ptr @.str.140, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2708, i32 3}
!289 = !{ptr @.str.141, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @cadence_nand_chip_init._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @cadence_nand_chip_init._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.143, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2717, i32 3}
!294 = !{ptr @cadence_nand_chip_init._entry.142, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @cadence_nand_chip_init._entry_ptr.144, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.146, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2727, i32 4}
!298 = !{ptr @cadence_nand_chip_init._entry.145, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @cadence_nand_chip_init._entry_ptr.147, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.149, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2734, i32 4}
!302 = !{ptr @cadence_nand_chip_init._entry.148, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @cadence_nand_chip_init._entry_ptr.150, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.152, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2741, i32 4}
!306 = !{ptr @cadence_nand_chip_init._entry.151, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @cadence_nand_chip_init._entry_ptr.153, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.155, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2764, i32 3}
!310 = !{ptr @cadence_nand_chip_init._entry.154, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @cadence_nand_chip_init._entry_ptr.156, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.158, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2770, i32 3}
!314 = !{ptr @cadence_nand_chip_init._entry.157, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @cadence_nand_chip_init._entry_ptr.159, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.160, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!318 = !{ptr @cadence_nand_dt_ids, !319, !"cadence_nand_dt_ids", i1 false, i1 false}
!319 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2940, i32 34}
!320 = !{ptr @cadence_nand_default, !321, !"cadence_nand_default", i1 false, i1 false}
!321 = !{!"../drivers/mtd/nand/raw/cadence-nand-controller.c", i32 2935, i32 45}
!322 = !{i32 1, !"wchar_size", i32 2}
!323 = !{i32 1, !"min_enum_size", i32 4}
!324 = !{i32 8, !"branch-target-enforcement", i32 0}
!325 = !{i32 8, !"sign-return-address", i32 0}
!326 = !{i32 8, !"sign-return-address-all", i32 0}
!327 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!328 = !{i32 7, !"uwtable", i32 1}
!329 = !{i32 7, !"frame-pointer", i32 2}
!330 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!331 = !{!"auto-init"}
!332 = !{!"branch_weights", i32 2000, i32 1}
!333 = !{i64 6356924}
!334 = !{i64 6357342}
!335 = !{i64 2148834585, i64 2148834590, i64 2148834603, i64 2148834647, i64 2148834681, i64 2148834702}
!336 = !{i64 2148743304, i64 2148743584, i64 2148743918, i64 2148744252}
!337 = !{i8 0, i8 2}
!338 = !{!"branch_weights", i32 2000, i32 2002}
