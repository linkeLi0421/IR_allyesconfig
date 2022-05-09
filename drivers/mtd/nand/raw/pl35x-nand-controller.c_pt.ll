; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/pl35x-nand-controller.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/pl35x-nand-controller.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nand_op_parser = type { ptr, i32 }
%struct.nand_op_parser_pattern_elem = type { i32, i8, %union.anon.91 }
%union.anon.91 = type { %struct.nand_op_parser_addr_constraints }
%struct.nand_op_parser_addr_constraints = type { i32 }
%struct.nand_op_parser_data_constraints = type { i32 }
%struct.nand_op_parser_pattern = type { ptr, i32, ptr }
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
%struct.pl35x_nandc = type { ptr, ptr, ptr, %struct.nand_controller, %struct.list_head, ptr, i32, ptr }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.pl35x_nand = type { %struct.list_head, %struct.nand_chip, i32, i32, i32, i32 }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.90, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.84 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.84 = type { %struct.mtd_part, [160 x i8] }
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
%struct.anon.90 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.nand_subop = type { i32, ptr, i32, i32, i32 }
%struct.nand_op_instr = type { i32, %union.anon.85, i32 }
%union.anon.85 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.86, i8 }
%union.anon.86 = type { ptr }

@__initcall__kmod_pl35x_nand_controller__303_1189_pl35x_nandc_driver_init6 = internal global ptr @pl35x_nandc_driver_init, section ".initcall6.init", align 4
@pl35x_nandc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pl35x_nand_probe, ptr @pl35x_nand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pl35x_nand_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pl35x_nandc_driver_exit = internal global ptr @pl35x_nandc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [42 x i8] c"pl35x_nand_controller.author=Xilinx, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [59 x i8] c"pl35x_nand_controller.alias=platform:pl35x-nand-controller\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [67 x i8] c"pl35x_nand_controller.description=ARM PL35X NAND controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [70 x i8] c"pl35x_nand_controller.file=drivers/mtd/nand/raw/pl35x-nand-controller\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [34 x i8] c"pl35x_nand_controller.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pl35x-nand-controller\00", [42 x i8] zeroinitializer }, align 32
@pl35x_nand_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,pl353-nand-r2p1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pl35x_nandc_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @pl35x_nand_attach_chip, ptr null, ptr @pl35x_nfc_exec_op, ptr @pl35x_nfc_setup_interface }, [16 x i8] zeroinitializer }, align 32
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@pl35x_nand_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 948, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No minimum ECC strength, using 1b/512B\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pl35x_nand_attach_chip\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/mtd/nand/raw/pl35x-nand-controller.c\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pl35x_nand_attach_chip._entry_ptr = internal global ptr @pl35x_nand_attach_chip._entry, section ".printk_index", align 4
@bbt_main_descr = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 9106, [8 x i32] zeroinitializer, i32 4, i32 20, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @bbt_pattern }, [60 x i8] zeroinitializer }, align 32
@bbt_mirror_descr = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 9106, [8 x i32] zeroinitializer, i32 4, i32 20, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @mirror_pattern }, [60 x i8] zeroinitializer }, align 32
@pl35x_nand_attach_chip._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 980, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported ECC mode: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pl35x_nand_attach_chip._entry_ptr.10 = internal global ptr @pl35x_nand_attach_chip._entry.7, section ".printk_index", align 4
@bbt_pattern = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"Bbt0", [28 x i8] zeroinitializer }, align 32
@mirror_pattern = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"1tbB", [28 x i8] zeroinitializer }, align 32
@pl35x_nand_init_hw_ecc_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 897, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"The hardware ECC engine is limited to pages up to 2kiB\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pl35x_nand_init_hw_ecc_controller\00", [62 x i8] zeroinitializer }, align 32
@pl35x_nand_init_hw_ecc_controller._entry_ptr = internal global ptr @pl35x_nand_init_hw_ecc_controller._entry, section ".printk_index", align 4
@pl35x_ecc_ooblayout16_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @pl35x_ecc_ooblayout16_ecc, ptr @pl35x_ecc_ooblayout16_free }, [24 x i8] zeroinitializer }, align 32
@pl35x_nand_init_hw_ecc_controller._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 925, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unsupported OOB size\0A\00", [42 x i8] zeroinitializer }, align 32
@pl35x_nand_init_hw_ecc_controller._entry_ptr.15 = internal global ptr @pl35x_nand_init_hw_ecc_controller._entry.13, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pl35x_smc_wait_for_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 251, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Timeout polling on NAND controller interrupt (0x%x)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pl35x_smc_wait_for_irq\00", [41 x i8] zeroinitializer }, align 32
@pl35x_smc_wait_for_irq._entry_ptr = internal global ptr @pl35x_smc_wait_for_irq._entry, section ".printk_index", align 4
@pl35x_smc_force_byte_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 311, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Error in Buswidth\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pl35x_smc_force_byte_access\00", [36 x i8] zeroinitializer }, align 32
@pl35x_smc_force_byte_access._entry_ptr = internal global ptr @pl35x_smc_force_byte_access._entry, section ".printk_index", align 4
@pl35x_smc_wait_for_ecc_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 268, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Timeout polling on ECC controller interrupt\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pl35x_smc_wait_for_ecc_done\00", [36 x i8] zeroinitializer }, align 32
@pl35x_smc_wait_for_ecc_done._entry_ptr = internal global ptr @pl35x_smc_wait_for_ecc_done._entry, section ".printk_index", align 4
@pl35x_nandc_op_parser = internal constant { %struct.nand_op_parser, [24 x i8] } { %struct.nand_op_parser { ptr @.compoundliteral.24, i32 3 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }>, [36 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }> <{ %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.91 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 1, i8 1, %union.anon.91 { %struct.nand_op_parser_addr_constraints { i32 7 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.91 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.91 zeroinitializer }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 1, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 2112 } } } }>, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem }>, [36 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem }> <{ %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.91 { %struct.nand_op_parser_addr_constraints { i32 7 } } }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 2112 } } }, %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.91 zeroinitializer } }>, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem }>, [36 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem }> <{ %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.91 { %struct.nand_op_parser_addr_constraints { i32 7 } } }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 2112 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.91 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.91 zeroinitializer } }>, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal constant { [3 x %struct.nand_op_parser_pattern], [60 x i8] } { [3 x %struct.nand_op_parser_pattern] [%struct.nand_op_parser_pattern { ptr @.compoundliteral, i32 5, ptr @pl35x_nand_exec_op }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.22, i32 5, ptr @pl35x_nand_exec_op }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.23, i32 5, ptr @pl35x_nand_exec_op }], [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memclk\00", [25 x i8] zeroinitializer }, align 32
@pl35x_nfc_setup_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 793, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to retrieve SMC memclk\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pl35x_nfc_setup_interface\00", [38 x i8] zeroinitializer }, align 32
@pl35x_nfc_setup_interface._entry_ptr = internal global ptr @pl35x_nfc_setup_interface._entry, section ".printk_index", align 4
@pl35x_nand_chips_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 1113, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Incorrect number of NAND chips (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pl35x_nand_chips_init\00", [42 x i8] zeroinitializer }, align 32
@pl35x_nand_chips_init._entry_ptr = internal global ptr @pl35x_nand_chips_init._entry, section ".printk_index", align 4
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@pl35x_nand_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 1048, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Wrong CS %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pl35x_nand_chip_init\00", [43 x i8] zeroinitializer }, align 32
@pl35x_nand_chip_init._entry_ptr = internal global ptr @pl35x_nand_chip_init._entry, section ".printk_index", align 4
@pl35x_nand_chip_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.4, i32 1053, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Already assigned CS %d\0A\00", [40 x i8] zeroinitializer }, align 32
@pl35x_nand_chip_init._entry_ptr.35 = internal global ptr @pl35x_nand_chip_init._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@pl35x_nand_chip_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.4, i32 1070, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate mtd->name\0A\00", [34 x i8] zeroinitializer }, align 32
@pl35x_nand_chip_init._entry_ptr.39 = internal global ptr @pl35x_nand_chip_init._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 64]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c"pl35x_nandc_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1181, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1185, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [20 x i8] c"pl35x_nand_of_match\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1175, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"pl35x_nandc_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 987, i32 41 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1105, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 947, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"bbt_main_descr\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 196, i32 30 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"bbt_mirror_descr\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 206, i32 30 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 979, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"bbt_pattern\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 193, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant [15 x i8] c"mirror_pattern\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 194, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 896, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [26 x i8] c"pl35x_ecc_ooblayout16_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 187, i32 39 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 925, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 249, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 311, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 267, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [22 x i8] c"pl35x_nandc_op_parser\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 745, i32 36 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 791, i32 55 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 793, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1112, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1043, i32 33 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1048, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1053, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1068, i32 9 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private constant [48 x i8] c"../drivers/mtd/nand/raw/pl35x-nand-controller.c\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 1070, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 464, i32 31 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_pl35x_nandc_driver_exit, ptr @__initcall__kmod_pl35x_nand_controller__303_1189_pl35x_nandc_driver_init6, ptr @pl35x_nand_attach_chip._entry, ptr @pl35x_nand_attach_chip._entry.7, ptr @pl35x_nand_attach_chip._entry_ptr, ptr @pl35x_nand_attach_chip._entry_ptr.10, ptr @pl35x_nand_chip_init._entry, ptr @pl35x_nand_chip_init._entry.33, ptr @pl35x_nand_chip_init._entry.37, ptr @pl35x_nand_chip_init._entry_ptr, ptr @pl35x_nand_chip_init._entry_ptr.35, ptr @pl35x_nand_chip_init._entry_ptr.39, ptr @pl35x_nand_chips_init._entry, ptr @pl35x_nand_chips_init._entry_ptr, ptr @pl35x_nand_init_hw_ecc_controller._entry, ptr @pl35x_nand_init_hw_ecc_controller._entry.13, ptr @pl35x_nand_init_hw_ecc_controller._entry_ptr, ptr @pl35x_nand_init_hw_ecc_controller._entry_ptr.15, ptr @pl35x_nandc_driver_exit, ptr @pl35x_nfc_setup_interface._entry, ptr @pl35x_nfc_setup_interface._entry_ptr, ptr @pl35x_smc_force_byte_access._entry, ptr @pl35x_smc_force_byte_access._entry_ptr, ptr @pl35x_smc_wait_for_ecc_done._entry, ptr @pl35x_smc_wait_for_ecc_done._entry_ptr, ptr @pl35x_smc_wait_for_irq._entry, ptr @pl35x_smc_wait_for_irq._entry_ptr, ptr @pl35x_nandc_driver, ptr @.str, ptr @pl35x_nand_of_match, ptr @pl35x_nandc_ops, ptr @nand_controller_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @bbt_main_descr, ptr @bbt_mirror_descr, ptr @.str.8, ptr @.str.9, ptr @bbt_pattern, ptr @mirror_pattern, ptr @.str.11, ptr @.str.12, ptr @pl35x_ecc_ooblayout16_ops, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @pl35x_nandc_op_parser, ptr @.compoundliteral, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl35x_nandc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl35x_nand_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl35x_nandc_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl35x_nand_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_main_descr to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_mirror_descr to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl35x_nand_attach_chip._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_pattern to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirror_pattern to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl35x_nand_init_hw_ecc_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl35x_ecc_ooblayout16_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl35x_nand_init_hw_ecc_controller._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl35x_smc_wait_for_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl35x_smc_force_byte_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl35x_smc_wait_for_ecc_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl35x_nandc_op_parser to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl35x_nfc_setup_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl35x_nand_chips_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl35x_nand_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl35x_nand_chip_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl35x_nand_chip_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pl35x_nandc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pl35x_nandc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pl35x_nandc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @pl35x_nandc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl35x_nand_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cs.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 128, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %controller = getelementptr inbounds %struct.pl35x_nandc, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %controller, ptr noundef nonnull @.str.1, ptr noundef nonnull @nand_controller_init.__key) #7
  %ops = getelementptr inbounds %struct.pl35x_nandc, ptr %call.i, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @pl35x_nandc_ops, ptr %ops, align 4
  %chips = getelementptr inbounds %struct.pl35x_nandc, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %chips to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %chips, ptr %chips, align 4
  %prev.i = getelementptr inbounds %struct.pl35x_nandc, ptr %call.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %chips, ptr %prev.i, align 4
  %res = getelementptr inbounds %struct.amba_device, ptr %1, i32 0, i32 1
  %call6 = tail call ptr @devm_ioremap_resource(ptr noundef %1, ptr noundef %res) #7
  %conf_regs = getelementptr inbounds %struct.pl35x_nandc, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %conf_regs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %conf_regs, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %io_regs = getelementptr inbounds %struct.pl35x_nandc, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %io_regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13, ptr %io_regs, align 4
  %cmp.i52 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52, label %if.then16, label %if.end23

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %conf_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %conf_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1375731712) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %conf_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %conf_regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %conf_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %conf_regs, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16386) #7, !srcloc !113
  %16 = ptrtoint ptr %conf_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %conf_regs, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %17, i32 1028
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %19 = and i32 %18, -201326593
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %conf_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %conf_regs, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %21, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %19) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %conf_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %conf_regs, align 4
  %add.ptr9.i = getelementptr i8, ptr %23, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 -2147471359) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %conf_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %conf_regs, align 4
  %add.ptr14.i = getelementptr i8, ptr %25, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 -2063212543) #7, !srcloc !113
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @of_get_next_child(ptr noundef %29, ptr noundef null) #7
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %if.end23.do.end.i_crit_edge, label %if.end23.for.body.i.i_crit_edge

if.end23.for.body.i.i_crit_edge:                  ; preds = %if.end23
  br label %for.body.i.i

if.end23.do.end.i_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end23.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end23.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end23.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef %29, ptr noundef nonnull %child.06.i.i) #7
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %tobool.not.i = icmp eq i32 %inc.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i.i)
  %cmp.i53 = icmp sgt i32 %inc.i.i, 1
  %or.cond.i = or i1 %tobool.not.i, %cmp.i53
  br i1 %or.cond.i, label %of_get_child_count.exit.i.do.end.i_crit_edge, label %if.end.i

of_get_child_count.exit.i.do.end.i_crit_edge:     ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %of_get_child_count.exit.i.do.end.i_crit_edge, %if.end23.do.end.i_crit_edge
  %num.0.lcssa.i36.i = phi i32 [ %inc.i.i, %of_get_child_count.exit.i.do.end.i_crit_edge ], [ 0, %if.end23.do.end.i_crit_edge ]
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.28, i32 noundef %num.0.lcssa.i36.i) #10
  br label %cleanup

if.end.i:                                         ; preds = %of_get_child_count.exit.i
  %call2.i = tail call ptr @of_get_next_child(ptr noundef %29, ptr noundef null) #7
  %cmp3.not67.i = icmp eq ptr %call2.i, null
  br i1 %cmp3.not67.i, label %if.end.i.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %assigned_cs.i.i = getelementptr inbounds %struct.pl35x_nandc, ptr %call.i, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %pl35x_nand_chip_init.exit.thread41.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %nand_np.068.i = phi ptr [ %call2.i, %for.body.lr.ph.i ], [ %call8.i, %pl35x_nand_chip_init.exit.thread41.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs.i.i) #7
  %32 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %cs.i.i, align 4, !annotation !121
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %34, i32 noundef 2192, i32 noundef 3520) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.pl35x_nand_chip_init.exit.thread.i_crit_edge, label %if.end.i.i

for.body.i.pl35x_nand_chip_init.exit.thread.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_chip_init.exit.thread.i

if.end.i.i:                                       ; preds = %for.body.i
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %nand_np.068.i, ptr noundef nonnull @.str.30, ptr noundef nonnull %cs.i.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool2.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %pl35x_nand_chip_init.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %35 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i = icmp sgt i32 %36, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end7.i.i

do.end.i.i:                                       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.31, i32 noundef %36) #10
  br label %pl35x_nand_chip_init.exit.thread.i

if.end7.i.i:                                      ; preds = %if.end4.i.i
  %call8.i.i = call i32 @_test_and_set_bit(i32 noundef %36, ptr noundef %assigned_cs.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end15.i.i, label %do.end13.i.i

do.end13.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %41 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cs.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.34, i32 noundef %42) #10
  br label %pl35x_nand_chip_init.exit.thread.i

if.end15.i.i:                                     ; preds = %if.end7.i.i
  %43 = ptrtoint ptr %cs.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cs.i.i, align 4
  %cs16.i.i = getelementptr inbounds %struct.pl35x_nand, ptr %call.i.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %cs16.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %cs16.i.i, align 8
  %chip17.i.i = getelementptr inbounds %struct.pl35x_nand, ptr %call.i.i.i, i32 0, i32 1
  %options.i.i = getelementptr inbounds %struct.pl35x_nand, ptr %call.i.i.i, i32 0, i32 1, i32 6
  %46 = ptrtoint ptr %options.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1573376, ptr %options.i.i, align 8
  %bbt_options.i.i = getelementptr inbounds %struct.pl35x_nand, ptr %call.i.i.i, i32 0, i32 1, i32 10
  %47 = ptrtoint ptr %bbt_options.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 131072, ptr %bbt_options.i.i, align 8
  %controller18.i.i = getelementptr inbounds %struct.pl35x_nand, ptr %call.i.i.i, i32 0, i32 1, i32 32
  %48 = ptrtoint ptr %controller18.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %controller, ptr %controller18.i.i, align 4
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  %parent.i.i = getelementptr inbounds %struct.pl35x_nand, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  %51 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %parent.i.i, align 8
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 27
  %52 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %of_node.i.i, align 8
  %of_node.i.i.i.i = getelementptr inbounds %struct.pl35x_nand, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 27
  %54 = ptrtoint ptr %of_node.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %of_node.i.i.i.i, align 8
  %name.i.i.i.i = getelementptr inbounds %struct.pl35x_nand, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 13
  %55 = ptrtoint ptr %name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i.i.i, label %nand_set_flash_node.exit.i.i, label %if.end15.i.i.if.end36.i.i_crit_edge

if.end15.i.i.if.end36.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i.i

nand_set_flash_node.exit.i.i:                     ; preds = %if.end15.i.i
  %call.i.i77.i.i = call i32 @of_property_read_string(ptr noundef %53, ptr noundef nonnull @.str.40, ptr noundef %name.i.i.i.i) #7
  %57 = ptrtoint ptr %name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr.i.i = load ptr, ptr %name.i.i.i.i, align 8
  %tobool23.not.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool23.not.i.i, label %if.then24.i.i, label %nand_set_flash_node.exit.i.i.if.end36.i.i_crit_edge

nand_set_flash_node.exit.i.i.if.end36.i.i_crit_edge: ; preds = %nand_set_flash_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i.i

if.then24.i.i:                                    ; preds = %nand_set_flash_node.exit.i.i
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  %call26.i.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %59, i32 noundef 3264, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str) #7
  %60 = ptrtoint ptr %name.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call26.i.i, ptr %name.i.i.i.i, align 8
  %tobool29.not.i.i = icmp eq ptr %call26.i.i, null
  br i1 %tobool29.not.i.i, label %do.end33.i.i, label %if.then24.i.i.if.end36.i.i_crit_edge

if.then24.i.i.if.end36.i.i_crit_edge:             ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i.i

do.end33.i.i:                                     ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.38) #10
  br label %pl35x_nand_chip_init.exit.thread.i

if.end36.i.i:                                     ; preds = %if.then24.i.i.if.end36.i.i_crit_edge, %nand_set_flash_node.exit.i.i.if.end36.i.i_crit_edge, %if.end15.i.i.if.end36.i.i_crit_edge
  %call.i78.i.i = call i32 @nand_scan_with_ids(ptr noundef %chip17.i.i, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i.i)
  %tobool38.not.i.i = icmp eq i32 %call.i78.i.i, 0
  br i1 %tobool38.not.i.i, label %if.end40.i.i, label %if.end36.i.i.pl35x_nand_chip_init.exit.thread.i_crit_edge

if.end36.i.i.pl35x_nand_chip_init.exit.thread.i_crit_edge: ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_chip_init.exit.thread.i

if.end40.i.i:                                     ; preds = %if.end36.i.i
  %call41.i.i = call i32 @mtd_device_parse_register(ptr noundef %chip17.i.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i.i)
  %tobool42.not.i.i = icmp eq i32 %call41.i.i, 0
  br i1 %tobool42.not.i.i, label %if.end44.i.i, label %if.then43.i.i

if.then43.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @nand_cleanup(ptr noundef %chip17.i.i) #7
  br label %pl35x_nand_chip_init.exit.thread.i

if.end44.i.i:                                     ; preds = %if.end40.i.i
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i, align 4
  %call.i.i79.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i, ptr noundef %64, ptr noundef %chips) #7
  br i1 %call.i.i79.i.i, label %if.end.i.i.i.i, label %if.end44.i.i.pl35x_nand_chip_init.exit.thread41.i_crit_edge

if.end44.i.i.pl35x_nand_chip_init.exit.thread41.i_crit_edge: ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_chip_init.exit.thread41.i

if.end.i.i.i.i:                                   ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i.i.i, ptr %prev.i, align 4
  %66 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %chips, ptr %call.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %call.i.i.i, ptr %64, align 4
  br label %pl35x_nand_chip_init.exit.thread41.i

pl35x_nand_chip_init.exit.thread.i:               ; preds = %if.then43.i.i, %if.end36.i.i.pl35x_nand_chip_init.exit.thread.i_crit_edge, %do.end33.i.i, %do.end13.i.i, %do.end.i.i, %for.body.i.pl35x_nand_chip_init.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -12, %do.end33.i.i ], [ %call41.i.i, %if.then43.i.i ], [ -22, %do.end13.i.i ], [ -22, %do.end.i.i ], [ -12, %for.body.i.pl35x_nand_chip_init.exit.thread.i_crit_edge ], [ %call.i78.i.i, %if.end36.i.i.pl35x_nand_chip_init.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i.i) #7
  br label %if.then6.i

pl35x_nand_chip_init.exit.thread41.i:             ; preds = %if.end.i.i.i.i, %if.end44.i.i.pl35x_nand_chip_init.exit.thread41.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i.i) #7
  %call8.i = call ptr @of_get_next_child(ptr noundef %29, ptr noundef nonnull %nand_np.068.i) #7
  %cmp3.not.i = icmp eq ptr %call8.i, null
  br i1 %cmp3.not.i, label %pl35x_nand_chip_init.exit.thread41.i.if.end27_crit_edge, label %pl35x_nand_chip_init.exit.thread41.i.for.body.i_crit_edge

pl35x_nand_chip_init.exit.thread41.i.for.body.i_crit_edge: ; preds = %pl35x_nand_chip_init.exit.thread41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

pl35x_nand_chip_init.exit.thread41.i.if.end27_crit_edge: ; preds = %pl35x_nand_chip_init.exit.thread41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

pl35x_nand_chip_init.exit.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i.i) #7
  br label %if.then6.i

if.then6.i:                                       ; preds = %pl35x_nand_chip_init.exit.i, %pl35x_nand_chip_init.exit.thread.i
  %retval.0.i39.i = phi i32 [ %retval.0.i.ph.i, %pl35x_nand_chip_init.exit.thread.i ], [ %call.i.i.i.i, %pl35x_nand_chip_init.exit.i ]
  call void @of_node_put(ptr noundef nonnull %nand_np.068.i) #7
  %69 = ptrtoint ptr %chips to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chips, align 4
  %cmp.not45.i.i = icmp eq ptr %70, %chips
  br i1 %cmp.not45.i.i, label %if.then6.i.cleanup_crit_edge, label %if.then6.i.for.body.i25.i_crit_edge

if.then6.i.for.body.i25.i_crit_edge:              ; preds = %if.then6.i
  br label %for.body.i25.i

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i25.i:                                   ; preds = %list_del.exit.i.i.for.body.i25.i_crit_edge, %if.then6.i.for.body.i25.i_crit_edge
  %plnand.046.i.i = phi ptr [ %tmp.048.i.i, %list_del.exit.i.i.for.body.i25.i_crit_edge ], [ %70, %if.then6.i.for.body.i25.i_crit_edge ]
  %71 = ptrtoint ptr %plnand.046.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %tmp.048.i.i = load ptr, ptr %plnand.046.i.i, align 8
  %chip8.i.i = getelementptr inbounds %struct.pl35x_nand, ptr %plnand.046.i.i, i32 0, i32 1
  %call9.i.i = call i32 @mtd_device_unregister(ptr noundef %chip8.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i24.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i24.i, label %for.body.i25.i.if.end.i28.i_crit_edge, label %do.end.i26.i, !prof !122

for.body.i25.i.if.end.i28.i_crit_edge:            ; preds = %for.body.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i28.i

do.end.i26.i:                                     ; preds = %for.body.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1099, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i28.i

if.end.i28.i:                                     ; preds = %do.end.i26.i, %for.body.i25.i.if.end.i28.i_crit_edge
  call void @nand_cleanup(ptr noundef %chip8.i.i) #7
  %call.i.i.i27.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %plnand.046.i.i) #7
  br i1 %call.i.i.i27.i, label %if.end.i.i.i29.i, label %if.end.i28.i.list_del.exit.i.i_crit_edge

if.end.i28.i.list_del.exit.i.i_crit_edge:         ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i

if.end.i.i.i29.i:                                 ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %plnand.046.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i.i.i.i, align 4
  %74 = ptrtoint ptr %plnand.046.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %plnand.046.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev1.i.i.i.i.i, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %75, ptr %73, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i29.i, %if.end.i28.i.list_del.exit.i.i_crit_edge
  %78 = ptrtoint ptr %plnand.046.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 256 to ptr), ptr %plnand.046.i.i, align 4
  %prev.i.i30.i = getelementptr inbounds %struct.list_head, ptr %plnand.046.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i30.i, align 4
  %cmp.not.i31.i = icmp eq ptr %tmp.048.i.i, %chips
  br i1 %cmp.not.i31.i, label %pl35x_nand_chips_init.exit, label %list_del.exit.i.i.for.body.i25.i_crit_edge

list_del.exit.i.i.for.body.i25.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i25.i

pl35x_nand_chips_init.exit:                       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i39.i)
  %tobool25.not = icmp eq i32 %retval.0.i39.i, 0
  br i1 %tobool25.not, label %pl35x_nand_chips_init.exit.if.end27_crit_edge, label %pl35x_nand_chips_init.exit.cleanup_crit_edge

pl35x_nand_chips_init.exit.cleanup_crit_edge:     ; preds = %pl35x_nand_chips_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pl35x_nand_chips_init.exit.if.end27_crit_edge:    ; preds = %pl35x_nand_chips_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end27:                                         ; preds = %pl35x_nand_chips_init.exit.if.end27_crit_edge, %pl35x_nand_chip_init.exit.thread41.i.if.end27_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %80 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %pl35x_nand_chips_init.exit.cleanup_crit_edge, %if.then6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end.i, %if.then16, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then9 ], [ %9, %if.then16 ], [ 0, %if.end27 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i39.i, %pl35x_nand_chips_init.exit.cleanup_crit_edge ], [ -1, %if.end.i.cleanup_crit_edge ], [ %retval.0.i39.i, %if.then6.i.cleanup_crit_edge ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl35x_nand_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chips.i = getelementptr inbounds %struct.pl35x_nandc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %chips.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chips.i, align 4
  %cmp.not45.i = icmp eq ptr %3, %chips.i
  br i1 %cmp.not45.i, label %entry.pl35x_nand_chips_cleanup.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.pl35x_nand_chips_cleanup.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_chips_cleanup.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %plnand.046.i = phi ptr [ %tmp.048.i, %list_del.exit.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %plnand.046.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.048.i = load ptr, ptr %plnand.046.i, align 8
  %chip8.i = getelementptr inbounds %struct.pl35x_nand, ptr %plnand.046.i, i32 0, i32 1
  %call9.i = tail call i32 @mtd_device_unregister(ptr noundef %chip8.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %do.end.i, !prof !122

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1099, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.if.end.i_crit_edge
  tail call void @nand_cleanup(ptr noundef %chip8.i) #7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plnand.046.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %plnand.046.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %plnand.046.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %plnand.046.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %plnand.046.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %plnand.046.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %plnand.046.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.048.i, %chips.i
  br i1 %cmp.not.i, label %list_del.exit.i.pl35x_nand_chips_cleanup.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del.exit.i.pl35x_nand_chips_cleanup.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_chips_cleanup.exit

pl35x_nand_chips_cleanup.exit:                    ; preds = %list_del.exit.i.pl35x_nand_chips_cleanup.exit_crit_edge, %entry.pl35x_nand_chips_cleanup.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl35x_nand_attach_chip(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -12
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %2 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %entry.if.end22_crit_edge, label %land.lhs.true

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

land.lhs.true:                                    ; preds = %entry
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %6 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %strength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end22_crit_edge

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %step_size = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 4
  %8 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %step_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %if.then.do.end_crit_edge, label %land.lhs.true8

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true8:                                   ; preds = %if.then
  %strength9 = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 3
  %10 = ptrtoint ptr %strength9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %strength9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %land.lhs.true8.do.end_crit_edge, label %land.lhs.true8.if.end22.sink.split_crit_edge

land.lhs.true8.if.end22.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.sink.split

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %land.lhs.true8.do.end_crit_edge, %if.then.do.end_crit_edge
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.2) #10
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %do.end, %land.lhs.true8.if.end22.sink.split_crit_edge
  %.sink82 = phi i32 [ 512, %do.end ], [ %9, %land.lhs.true8.if.end22.sink.split_crit_edge ]
  %.sink81 = phi i32 [ 1, %do.end ], [ %11, %land.lhs.true8.if.end22.sink.split_crit_edge ]
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink82, ptr %size, align 8
  %strength17 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %15 = ptrtoint ptr %strength17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink81, ptr %strength17, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %lor.lhs.false.if.end22_crit_edge, %entry.if.end22_crit_edge
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %16 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %17)
  %cmp23 = icmp ult i32 %17, 513
  %.sink = select i1 %cmp23, i32 1, i32 2
  %18 = getelementptr i8, ptr %chip, i32 2172
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %18, align 4
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %20 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %options, align 8
  %and = and i32 %21, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  %.sink84 = select i1 %tobool28.not, i32 2, i32 3
  %add33 = add nuw nsw i32 %.sink, %.sink84
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add33, ptr %18, align 4
  %23 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ecc, align 8
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %do.end45 [
    i32 4, label %sw.bb
    i32 1, label %if.end22.cleanup_crit_edge
    i32 2, label %if.end22.cleanup_crit_edge85
    i32 3, label %sw.bb38
  ]

if.end22.cleanup_crit_edge85:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %bbt_td = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 13
  %26 = ptrtoint ptr %bbt_td to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @bbt_main_descr, ptr %bbt_td, align 4
  %bbt_md = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 14
  %27 = ptrtoint ptr %bbt_md to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @bbt_mirror_descr, ptr %bbt_md, align 8
  br label %cleanup

sw.bb38:                                          ; preds = %if.end22
  %28 = add i32 %17, -2049
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1537, i32 %28)
  %29 = icmp ult i32 %28, -1537
  br i1 %29, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb38
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %32 = ptrtoint ptr %strength.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %strength.i, align 4
  %bytes.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %33 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %bytes.i, align 4
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %34 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 512, ptr %size.i, align 8
  %div52.i = lshr i32 %17, 9
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %35 = ptrtoint ptr %steps.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div52.i, ptr %steps.i, align 4
  %read_page.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %36 = ptrtoint ptr %read_page.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @pl35x_nand_read_page_hwecc, ptr %read_page.i, align 8
  %write_page.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %37 = ptrtoint ptr %write_page.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @pl35x_nand_write_page_hwecc, ptr %write_page.i, align 4
  %write_page_raw.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 17
  %38 = ptrtoint ptr %write_page_raw.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @nand_monolithic_write_page_raw, ptr %write_page_raw.i, align 4
  %39 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %17, label %sw.default.i.i [
    i32 512, label %if.end.i.pl35x_smc_set_ecc_pg_size.exit.i_crit_edge
    i32 1024, label %sw.bb1.i.i
    i32 2048, label %sw.bb2.i.i
  ]

if.end.i.pl35x_smc_set_ecc_pg_size.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_smc_set_ecc_pg_size.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_smc_set_ecc_pg_size.exit.i

sw.bb2.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_smc_set_ecc_pg_size.exit.i

sw.default.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_smc_set_ecc_pg_size.exit.i

pl35x_smc_set_ecc_pg_size.exit.i:                 ; preds = %sw.default.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end.i.pl35x_smc_set_ecc_pg_size.exit.i_crit_edge
  %sz.0.i.i = phi i32 [ 0, %sw.default.i.i ], [ 3, %sw.bb2.i.i ], [ 2, %sw.bb1.i.i ], [ 1, %if.end.i.pl35x_smc_set_ecc_pg_size.exit.i_crit_edge ]
  %conf_regs.i.i = getelementptr i8, ptr %1, i32 -8
  %40 = ptrtoint ptr %conf_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %conf_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 1028
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %ecc_cfg.i.i = getelementptr i8, ptr %chip, i32 2176
  %43 = and i32 %42, -50331649
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  %or.i.i = or i32 %44, %sz.0.i.i
  %45 = ptrtoint ptr %ecc_cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i.i, ptr %ecc_cfg.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %ecc_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ecc_cfg.i.i, align 8
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  %49 = ptrtoint ptr %conf_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %conf_regs.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %50, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %48) #7, !srcloc !113
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i, align 4
  %53 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bytes.i, align 4
  %55 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %steps.i, align 4
  %mul.i = mul i32 %56, %54
  %call18.i = tail call noalias ptr @devm_kmalloc(ptr noundef %52, i32 noundef %mul.i, i32 noundef 3264) #7
  %ecc_buf.i = getelementptr i8, ptr %1, i32 112
  %57 = ptrtoint ptr %ecc_buf.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call18.i, ptr %ecc_buf.i, align 4
  %tobool.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool.not.i, label %pl35x_smc_set_ecc_pg_size.exit.i.cleanup_crit_edge, label %if.end21.i

pl35x_smc_set_ecc_pg_size.exit.i.cleanup_crit_edge: ; preds = %pl35x_smc_set_ecc_pg_size.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21.i:                                       ; preds = %pl35x_smc_set_ecc_pg_size.exit.i
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %58 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %oobsize.i, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %59, label %do.end26.i [
    i32 16, label %sw.bb.i
    i32 64, label %sw.bb22.i
  ]

sw.bb.i:                                          ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %ooblayout1.i.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %61 = ptrtoint ptr %ooblayout1.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @pl35x_ecc_ooblayout16_ops, ptr %ooblayout1.i.i, align 8
  %bbt_options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 10
  %62 = ptrtoint ptr %bbt_options.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bbt_options.i, align 8
  %or.i = or i32 %63, 524288
  store i32 %or.i, ptr %bbt_options.i, align 8
  br label %cleanup

sw.bb22.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %call23.i = tail call ptr @nand_get_large_page_ooblayout() #7
  %ooblayout1.i53.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %64 = ptrtoint ptr %ooblayout1.i53.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call23.i, ptr %ooblayout1.i53.i, align 8
  br label %cleanup

do.end26.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.14) #10
  br label %cleanup

do.end45:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.8, i32 noundef %24) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %do.end26.i, %sw.bb22.i, %sw.bb.i, %pl35x_smc_set_ecc_pg_size.exit.i.cleanup_crit_edge, %do.end.i, %sw.bb, %if.end22.cleanup_crit_edge, %if.end22.cleanup_crit_edge85
  %retval.0 = phi i32 [ -22, %do.end45 ], [ 0, %sw.bb22.i ], [ 0, %sw.bb.i ], [ 0, %sw.bb ], [ 0, %if.end22.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge85 ], [ -12, %pl35x_smc_set_ecc_pg_size.exit.i.cleanup_crit_edge ], [ -95, %do.end26.i ], [ -95, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl35x_nfc_exec_op(ptr noundef %chip, ptr noundef %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %check_only, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 4
  %selected_chip.i = getelementptr i8, ptr %1, i32 104
  %2 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %selected_chip.i, align 4
  %cmp.i = icmp eq ptr %3, %chip
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %do.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  %timings.i = getelementptr i8, ptr %chip, i32 2180
  %4 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timings.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  %conf_regs.i = getelementptr i8, ptr %1, i32 -8
  %7 = ptrtoint ptr %conf_regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conf_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %conf_regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %conf_regs.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 16386) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %ecc_cfg.i = getelementptr i8, ptr %chip, i32 2176
  %11 = ptrtoint ptr %ecc_cfg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ecc_cfg.i, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %14 = ptrtoint ptr %conf_regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %conf_regs.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %15, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %13) #7, !srcloc !113
  %16 = ptrtoint ptr %selected_chip.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %chip, ptr %selected_chip.i, align 4
  br label %if.end

if.end:                                           ; preds = %do.body.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i32 @nand_op_parser_exec_op(ptr noundef %chip, ptr noundef nonnull @pl35x_nandc_op_parser, ptr noundef %op, i1 noundef zeroext %check_only) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl35x_nfc_setup_interface(ptr nocapture noundef %chip, i32 noundef %cs, ptr noundef %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -12
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
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call5 = tail call ptr @of_clk_get_by_name(ptr noundef %11, ptr noundef nonnull @.str.25) #7
  %cmp.i212 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.26) #10
  %14 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @clk_get_rate(ptr noundef %call5) #7
  %div = udiv i32 1000000000, %call11
  %tRC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 22
  %15 = ptrtoint ptr %tRC_min to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tRC_min, align 8
  %div12 = udiv i32 %16, 1000
  %add = add nsw i32 %div, -1
  %sub = add nsw i32 %add, %div12
  %div13 = udiv i32 %sub, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 20001, i32 %16)
  %cmp = icmp ult i32 %16, 20001
  %inc = zext i1 %cmp to i32
  %spec.select = add i32 %div13, %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.select)
  %17 = icmp ugt i32 %spec.select, 15
  %bf.lshr = and i32 %spec.select, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.lshr)
  %cmp21 = icmp eq i32 %bf.lshr, 0
  %or.cond = or i1 %17, %cmp21
  br i1 %or.cond, label %if.end10.cleanup_crit_edge, label %if.end23

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end10
  %tWC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 33
  %18 = ptrtoint ptr %tWC_min to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tWC_min, align 4
  %div24 = udiv i32 %19, 1000
  %sub26 = add nsw i32 %add, %div24
  %div27 = udiv i32 %sub26, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div27)
  %20 = icmp ugt i32 %div27, 15
  %bf.clear35 = and i32 %div27, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear35)
  %cmp41 = icmp eq i32 %bf.clear35, 0
  %or.cond209 = or i1 %20, %cmp41
  br i1 %or.cond209, label %if.end23.cleanup_crit_edge, label %if.end43

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43:                                         ; preds = %if.end23
  %tWP_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 36
  %21 = ptrtoint ptr %tWP_min to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tWP_min, align 8
  %div47 = udiv i32 %22, 1000
  %sub49 = add nsw i32 %add, %div47
  %div50 = udiv i32 %sub49, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %div50)
  %23 = icmp ugt i32 %div50, 7
  %bf.clear58 = and i32 %div50, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear58)
  %cmp64 = icmp eq i32 %bf.clear58, 0
  %or.cond210 = or i1 %23, %cmp64
  br i1 %or.cond210, label %if.end43.cleanup_crit_edge, label %if.end66

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end66:                                         ; preds = %if.end43
  %tCLR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 13
  %24 = ptrtoint ptr %tCLR_min to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tCLR_min, align 4
  %div67 = udiv i32 %25, 1000
  %sub69 = add nsw i32 %add, %div67
  %div70 = udiv i32 %sub69, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div70)
  %26 = icmp ult i32 %div70, 8
  br i1 %26, label %if.end81, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end81:                                         ; preds = %if.end66
  %tAR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 7
  %27 = ptrtoint ptr %tAR_min to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tAR_min, align 4
  %div82 = udiv i32 %28, 1000
  %sub84 = add nsw i32 %add, %div82
  %div85 = udiv i32 %sub84, %div
  %bf.value87 = shl i32 %div85, 17
  %bf.shl88 = and i32 %bf.value87, 917504
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div85)
  %29 = icmp ult i32 %div85, 8
  br i1 %29, label %if.end96, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end96:                                         ; preds = %if.end81
  %tRR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 30
  %30 = ptrtoint ptr %tRR_min to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tRR_min, align 8
  %div97 = udiv i32 %31, 1000
  %sub99 = add nsw i32 %add, %div97
  %div100 = udiv i32 %sub99, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div100)
  %32 = icmp ult i32 %div100, 16
  br i1 %32, label %if.end111, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end111:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cs)
  %cmp112 = icmp eq i32 %cs, -1
  br i1 %cmp112, label %if.end111.cleanup_crit_edge, label %if.end114

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end114:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear119 = shl nuw nsw i32 %div27, 4
  %shl120 = and i32 %bf.clear119, 240
  %bf.clear128 = shl nuw nsw i32 %div50, 11
  %shl129 = and i32 %bf.clear128, 14336
  %bf.clear133 = shl nuw nsw i32 %div70, 14
  %shl134 = and i32 %bf.clear133, 114688
  %bf.clear108 = shl nuw nsw i32 %div100, 20
  %shl144 = and i32 %bf.clear108, 15728640
  %or = or i32 %spec.select, %shl120
  %or125 = or i32 %or, %shl129
  %or130 = or i32 %or125, %shl134
  %or135 = or i32 %or130, %bf.shl88
  %or140 = or i32 %or135, %shl144
  %or145 = or i32 %or140, 256
  %timings = getelementptr i8, ptr %chip, i32 2180
  %33 = ptrtoint ptr %timings to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or145, ptr %timings, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end114, %if.end111.cleanup_crit_edge, %if.end96.cleanup_crit_edge, %if.end81.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %14, %do.end ], [ 0, %if.end114 ], [ -22, %if.end10.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ -22, %if.end43.cleanup_crit_edge ], [ -22, %if.end66.cleanup_crit_edge ], [ -22, %if.end81.cleanup_crit_edge ], [ -22, %if.end96.cleanup_crit_edge ], [ 0, %if.end111.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl35x_nand_read_page_hwecc(ptr noundef %chip, ptr nocapture noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  %calc_ecc.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %5 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 -12
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %7 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %writesize, align 4
  %addr_cycles = getelementptr i8, ptr %chip, i32 2172
  %9 = ptrtoint ptr %addr_cycles to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr_cycles, align 4
  %conf_regs.i = getelementptr i8, ptr %6, i32 -8
  %11 = ptrtoint ptr %conf_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conf_regs.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %12, i32 1028
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %14 = and i32 %13, -201326593
  %15 = or i32 %14, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %conf_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %conf_regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %17, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %15) #7, !srcloc !113
  %tobool.not.i = icmp eq ptr %chip, null
  br i1 %tobool.not.i, label %entry.pl35x_smc_set_ecc_mode.exit_crit_edge, label %if.then.i

entry.pl35x_smc_set_ecc_mode.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_smc_set_ecc_mode.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %15)
  %ecc_cfg5.i = getelementptr i8, ptr %chip, i32 2176
  %19 = ptrtoint ptr %ecc_cfg5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ecc_cfg5.i, align 8
  br label %pl35x_smc_set_ecc_mode.exit

pl35x_smc_set_ecc_mode.exit:                      ; preds = %if.then.i, %entry.pl35x_smc_set_ecc_mode.exit_crit_edge
  %call7.i = tail call fastcc i32 @pl35x_smc_wait_for_ecc_done(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not = icmp eq i32 %call7.i, 0
  br i1 %tobool.not, label %if.end, label %pl35x_smc_set_ecc_mode.exit.cleanup_crit_edge

pl35x_smc_set_ecc_mode.exit.cleanup_crit_edge:    ; preds = %pl35x_smc_set_ecc_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %pl35x_smc_set_ecc_mode.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %8)
  %cmp = icmp ult i32 %8, 513
  %cond = select i1 %cmp, i32 1, i32 2
  %20 = ptrtoint ptr %addr_cycles to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr_cycles, align 4
  %shl = shl i32 %21, 21
  %or9 = or i32 %shl, 1146880
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %cond)
  %cmp10164 = icmp ugt i32 %10, %cond
  br i1 %cmp10164, label %for.body.preheader, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.preheader:                               ; preds = %if.end
  %22 = sub i32 %10, %cond
  br label %for.body

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %for.body.preheader
  %i.0169 = phi i32 [ %inc, %if.end22.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %row.0167 = phi i32 [ %inc23, %if.end22.for.body_crit_edge ], [ %cond, %for.body.preheader ]
  %addr2.0166 = phi i32 [ %addr2.1, %if.end22.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %addr1.0165 = phi i32 [ %addr1.1, %if.end22.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = shl i32 %i.0169, 3
  %and = and i32 %mul, 248
  %shr = ashr i32 %page, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %row.0167)
  %cmp11 = icmp ult i32 %row.0167, 4
  %conv14 = and i32 %shr, 255
  %mul15 = shl i32 %row.0167, 3
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl16 = shl nuw i32 %conv14, %mul15
  %or17 = or i32 %shl16, %addr1.0165
  br label %if.end22

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %mul19 = add i32 %mul15, -32
  %shl20 = shl i32 %conv14, %mul19
  %or21 = or i32 %shl20, %addr2.0166
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then13
  %addr1.1 = phi i32 [ %or17, %if.then13 ], [ %addr1.0165, %if.else ]
  %addr2.1 = phi i32 [ %addr2.0166, %if.then13 ], [ %or21, %if.else ]
  %inc = add nuw i32 %i.0169, 1
  %inc23 = add nuw i32 %row.0167, 1
  %exitcond.not = icmp eq i32 %inc, %22
  br i1 %exitcond.not, label %if.end22.do.body_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end22.do.body_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end22.do.body_crit_edge, %if.end.do.body_crit_edge
  %addr1.0.lcssa = phi i32 [ 0, %if.end.do.body_crit_edge ], [ %addr1.1, %if.end22.do.body_crit_edge ]
  %addr2.0.lcssa = phi i32 [ 0, %if.end.do.body_crit_edge ], [ %addr2.1, %if.end22.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %addr1.0.lcssa)
  %io_regs = getelementptr i8, ptr %6, i32 -4
  %24 = ptrtoint ptr %io_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_regs, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 %or9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %23) #7, !srcloc !113
  %26 = ptrtoint ptr %addr_cycles to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr_cycles, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp25 = icmp ugt i32 %27, 4
  br i1 %cmp25, label %do.body28, label %do.body.cond.false8.i_crit_edge

do.body.cond.false8.i_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false8.i

do.body28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %28 = tail call i32 @llvm.bswap.i32(i32 %addr2.0.lcssa)
  %29 = ptrtoint ptr %io_regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_regs, align 4
  %add.ptr32 = getelementptr i8, ptr %30, i32 %or9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %28) #7, !srcloc !113
  br label %cond.false8.i

cond.false8.i:                                    ; preds = %do.body28, %do.body.cond.false8.i_crit_edge
  %tRR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 30
  %31 = ptrtoint ptr %tRR_min to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tRR_min, align 8
  %sub34 = add i32 %32, 999
  %div = udiv i32 %sub34, 1000
  %sub.i = add nuw nsw i32 %div, 999
  %div.i = udiv i32 %sub.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %33(i32 noundef %div.i) #7
  %call37 = tail call fastcc i32 @pl35x_smc_wait_for_irq(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %cond.false8.i.disable_ecc_engine_crit_edge

cond.false8.i.disable_ecc_engine_crit_edge:       ; preds = %cond.false8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_ecc_engine

if.end40:                                         ; preds = %cond.false8.i
  %34 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %writesize, align 4
  %36 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %controller, align 4
  %div1.i = lshr i32 %35, 2
  %and.i = and i32 %35, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp10.not.i = icmp ult i32 %35, 4
  br i1 %cmp10.not.i, label %if.end40.for.cond8.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end40.for.cond8.preheader.i_crit_edge:         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end40
  %io_regs.i = getelementptr i8, ptr %37, i32 -4
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div1.i, i32 1) #7
  br label %for.body.i

for.cond8.preheader.i:                            ; preds = %for.body.i.for.cond8.preheader.i_crit_edge, %if.end40.for.cond8.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %35)
  %cmp912.i = icmp ult i32 %and.i, %35
  br i1 %cmp912.i, label %for.body10.lr.ph.i, label %for.cond8.preheader.i.pl35x_nand_read_data_op.exit_crit_edge

for.cond8.preheader.i.pl35x_nand_read_data_op.exit_crit_edge: ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_read_data_op.exit

for.body10.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %io_regs13.i = getelementptr i8, ptr %37, i32 -4
  br label %for.body10.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add1.i, %for.body.i.for.body.i_crit_edge ]
  %add1.i = add nuw nsw i32 %i.011.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %div1.i)
  %cmp2.i = icmp eq i32 %add1.i, %div1.i
  %spec.select.i = select i1 %cmp2.i, i32 525312, i32 524288
  %38 = ptrtoint ptr %io_regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_regs.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %39, i32 %spec.select.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110) #7, !srcloc !116
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %arrayidx.i = getelementptr i32, ptr %buf, i32 %i.011.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx.i, align 4
  %exitcond.not.i = icmp eq i32 %add1.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.for.cond8.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.cond8.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.preheader.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %i.113.i = phi i32 [ %and.i, %for.body10.lr.ph.i ], [ %inc20.i, %for.body10.i.for.body10.i_crit_edge ]
  %43 = ptrtoint ptr %io_regs13.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io_regs13.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %44, i32 524288
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14.i) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %arrayidx18.i = getelementptr i8, ptr %buf, i32 %i.113.i
  %46 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx18.i, align 1
  %inc20.i = add i32 %i.113.i, 1
  %exitcond14.not.i = icmp eq i32 %inc20.i, %35
  br i1 %exitcond14.not.i, label %for.body10.i.pl35x_nand_read_data_op.exit_crit_edge, label %for.body10.i.for.body10.i_crit_edge

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i

for.body10.i.pl35x_nand_read_data_op.exit_crit_edge: ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_read_data_op.exit

pl35x_nand_read_data_op.exit:                     ; preds = %for.body10.i.pl35x_nand_read_data_op.exit_crit_edge, %for.cond8.preheader.i.pl35x_nand_read_data_op.exit_crit_edge
  %call42 = tail call fastcc i32 @pl35x_smc_wait_for_ecc_done(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %pl35x_nand_read_data_op.exit.disable_ecc_engine_crit_edge

pl35x_nand_read_data_op.exit.disable_ecc_engine_crit_edge: ; preds = %pl35x_nand_read_data_op.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_ecc_engine

if.end45:                                         ; preds = %pl35x_nand_read_data_op.exit
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %47 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %49 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %oobsize, align 4
  %51 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %controller, align 4
  %div1.i112 = lshr i32 %50, 2
  %and.i113 = and i32 %50, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %cmp10.not.i114 = icmp ult i32 %50, 4
  br i1 %cmp10.not.i114, label %if.end45.for.cond8.preheader.i119_crit_edge, label %for.body.lr.ph.i117

if.end45.for.cond8.preheader.i119_crit_edge:      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.preheader.i119

for.body.lr.ph.i117:                              ; preds = %if.end45
  %io_regs.i115 = getelementptr i8, ptr %52, i32 -4
  %umax.i116 = tail call i32 @llvm.umax.i32(i32 %div1.i112, i32 1) #7
  br label %for.body.i129

for.cond8.preheader.i119:                         ; preds = %for.body.i129.for.cond8.preheader.i119_crit_edge, %if.end45.for.cond8.preheader.i119_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i113, i32 %50)
  %cmp912.i118 = icmp ult i32 %and.i113, %50
  br i1 %cmp912.i118, label %for.body10.lr.ph.i121, label %for.cond8.preheader.i119.pl35x_nand_read_data_op.exit136_crit_edge

for.cond8.preheader.i119.pl35x_nand_read_data_op.exit136_crit_edge: ; preds = %for.cond8.preheader.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_read_data_op.exit136

for.body10.lr.ph.i121:                            ; preds = %for.cond8.preheader.i119
  %io_regs13.i120 = getelementptr i8, ptr %52, i32 -4
  br label %for.body10.i135

for.body.i129:                                    ; preds = %for.body.i129.for.body.i129_crit_edge, %for.body.lr.ph.i117
  %i.011.i122 = phi i32 [ 0, %for.body.lr.ph.i117 ], [ %add1.i123, %for.body.i129.for.body.i129_crit_edge ]
  %add1.i123 = add nuw nsw i32 %i.011.i122, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i123, i32 %div1.i112)
  %cmp2.i124 = icmp eq i32 %add1.i123, %div1.i112
  %spec.select.i125 = select i1 %cmp2.i124, i32 2621440, i32 524288
  %53 = ptrtoint ptr %io_regs.i115 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io_regs.i115, align 4
  %add.ptr.i126 = getelementptr i8, ptr %54, i32 %spec.select.i125
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #7, !srcloc !116
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %arrayidx.i127 = getelementptr i32, ptr %48, i32 %i.011.i122
  %57 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx.i127, align 4
  %exitcond.not.i128 = icmp eq i32 %add1.i123, %umax.i116
  br i1 %exitcond.not.i128, label %for.body.i129.for.cond8.preheader.i119_crit_edge, label %for.body.i129.for.body.i129_crit_edge

for.body.i129.for.body.i129_crit_edge:            ; preds = %for.body.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i129

for.body.i129.for.cond8.preheader.i119_crit_edge: ; preds = %for.body.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.preheader.i119

for.body10.i135:                                  ; preds = %for.body10.i135.for.body10.i135_crit_edge, %for.body10.lr.ph.i121
  %i.113.i130 = phi i32 [ %and.i113, %for.body10.lr.ph.i121 ], [ %inc20.i133, %for.body10.i135.for.body10.i135_crit_edge ]
  %58 = ptrtoint ptr %io_regs13.i120 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %io_regs13.i120, align 4
  %add.ptr14.i131 = getelementptr i8, ptr %59, i32 524288
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14.i131) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %arrayidx18.i132 = getelementptr i8, ptr %48, i32 %i.113.i130
  %61 = ptrtoint ptr %arrayidx18.i132 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx18.i132, align 1
  %inc20.i133 = add i32 %i.113.i130, 1
  %exitcond14.not.i134 = icmp eq i32 %inc20.i133, %50
  br i1 %exitcond14.not.i134, label %for.body10.i135.pl35x_nand_read_data_op.exit136_crit_edge, label %for.body10.i135.for.body10.i135_crit_edge

for.body10.i135.for.body10.i135_crit_edge:        ; preds = %for.body10.i135
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i135

for.body10.i135.pl35x_nand_read_data_op.exit136_crit_edge: ; preds = %for.body10.i135
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_read_data_op.exit136

pl35x_nand_read_data_op.exit136:                  ; preds = %for.body10.i135.pl35x_nand_read_data_op.exit136_crit_edge, %for.cond8.preheader.i119.pl35x_nand_read_data_op.exit136_crit_edge
  %ecc_buf = getelementptr i8, ptr %6, i32 112
  %62 = ptrtoint ptr %ecc_buf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ecc_buf, align 4
  %64 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %oob_poi, align 4
  %total = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 6
  %66 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %total, align 8
  %call47 = tail call i32 @mtd_ooblayout_get_eccbytes(ptr noundef %chip, ptr noundef %63, ptr noundef %65, i32 noundef 0, i32 noundef %67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %pl35x_nand_read_data_op.exit136.disable_ecc_engine_crit_edge

pl35x_nand_read_data_op.exit136.disable_ecc_engine_crit_edge: ; preds = %pl35x_nand_read_data_op.exit136
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_ecc_engine

if.end50:                                         ; preds = %pl35x_nand_read_data_op.exit136
  %68 = ptrtoint ptr %conf_regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %conf_regs.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %69, i32 1028
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %71 = and i32 %70, -201326593
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %72 = ptrtoint ptr %conf_regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %conf_regs.i, align 4
  %add.ptr3.i139 = getelementptr i8, ptr %73, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i139, i32 %71) #7, !srcloc !113
  br i1 %tobool.not.i, label %if.end50.pl35x_smc_set_ecc_mode.exit144_crit_edge, label %if.then.i142

if.end50.pl35x_smc_set_ecc_mode.exit144_crit_edge: ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_smc_set_ecc_mode.exit144

if.then.i142:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %74 = tail call i32 @llvm.bswap.i32(i32 %71) #7
  %ecc_cfg5.i141 = getelementptr i8, ptr %chip, i32 2176
  %75 = ptrtoint ptr %ecc_cfg5.i141 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %ecc_cfg5.i141, align 8
  br label %pl35x_smc_set_ecc_mode.exit144

pl35x_smc_set_ecc_mode.exit144:                   ; preds = %if.then.i142, %if.end50.pl35x_smc_set_ecc_mode.exit144_crit_edge
  %76 = ptrtoint ptr %ecc_buf to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ecc_buf, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %calc_ecc.i) #7
  %78 = ptrtoint ptr %calc_ecc.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -1, ptr %calc_ecc.i, align 1, !annotation !121
  %79 = getelementptr inbounds [3 x i8], ptr %calc_ecc.i, i32 0, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -1, ptr %79, align 1, !annotation !121
  %81 = getelementptr inbounds [3 x i8], ptr %calc_ecc.i, i32 0, i32 2
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -1, ptr %81, align 1, !annotation !121
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %83 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %steps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp52.not.i = icmp eq i32 %84, 0
  br i1 %cmp52.not.i, label %pl35x_smc_set_ecc_mode.exit144.pl35x_nand_recover_data_hwecc.exit_crit_edge, label %for.body.lr.ph.i146

pl35x_smc_set_ecc_mode.exit144.pl35x_nand_recover_data_hwecc.exit_crit_edge: ; preds = %pl35x_smc_set_ecc_mode.exit144
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_recover_data_hwecc.exit

for.body.lr.ph.i146:                              ; preds = %pl35x_smc_set_ecc_mode.exit144
  %failed.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  %bytes.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %ecc_stats14.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  br label %for.body.i151

for.body.i151:                                    ; preds = %for.inc.i.for.body.i151_crit_edge, %for.body.lr.ph.i146
  %data.addr.057.i = phi ptr [ %buf, %for.body.lr.ph.i146 ], [ %add.ptr21.i, %for.inc.i.for.body.i151_crit_edge ]
  %read_ecc.addr.055.i = phi ptr [ %77, %for.body.lr.ph.i146 ], [ %add.ptr23.i, %for.inc.i.for.body.i151_crit_edge ]
  %max_bitflips.054.i = phi i32 [ 0, %for.body.lr.ph.i146 ], [ %max_bitflips.1.i, %for.inc.i.for.body.i151_crit_edge ]
  %chunk.053.i = phi i32 [ 0, %for.body.lr.ph.i146 ], [ %inc19.i, %for.inc.i.for.body.i151_crit_edge ]
  %85 = ptrtoint ptr %conf_regs.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %conf_regs.i, align 4
  %mul.i147 = shl i32 %chunk.053.i, 2
  %add.i = add i32 %mul.i147, 1048
  %add.ptr.i148 = getelementptr i8, ptr %86, i32 %add.i
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148) #7, !srcloc !116
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  %and.i149 = and i32 %88, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i149)
  %tobool.not.i150 = icmp eq i32 %and.i149, 0
  br i1 %tobool.not.i150, label %for.body.i151.pl35x_nand_recover_data_hwecc.exit_crit_edge, label %if.end.i

for.body.i151.pl35x_nand_recover_data_hwecc.exit_crit_edge: ; preds = %for.body.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_recover_data_hwecc.exit

if.end.i:                                         ; preds = %for.body.i151
  %and3.i = and i32 %88, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %failed.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %failed.i, align 4
  %inc.i = add i32 %90, 1
  store i32 %inc.i, ptr %failed.i, align 4
  br label %for.inc.i

if.end6.i:                                        ; preds = %if.end.i
  %neg.i.i = xor i32 %88, -1
  %91 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bytes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp4.not.i.i = icmp eq i32 %92, 0
  br i1 %cmp4.not.i.i, label %if.end6.i.pl35x_nand_ecc_reg_to_array.exit.i_crit_edge, label %if.end6.i.for.body.i.i_crit_edge

if.end6.i.for.body.i.i_crit_edge:                 ; preds = %if.end6.i
  br label %for.body.i.i

if.end6.i.pl35x_nand_ecc_reg_to_array.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_ecc_reg_to_array.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end6.i.for.body.i.i_crit_edge
  %ecc_byte.05.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end6.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %ecc_byte.05.i.i, 3
  %shr.i.i = lshr i32 %neg.i.i, %mul.i.i
  %conv.i.i = trunc i32 %shr.i.i to i8
  %arrayidx.i.i = getelementptr i8, ptr %calc_ecc.i, i32 %ecc_byte.05.i.i
  %93 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv.i.i, ptr %arrayidx.i.i, align 1
  %inc.i.i = add nuw i32 %ecc_byte.05.i.i, 1
  %exitcond.not.i152 = icmp eq i32 %inc.i.i, %92
  br i1 %exitcond.not.i152, label %for.body.i.i.pl35x_nand_ecc_reg_to_array.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.pl35x_nand_ecc_reg_to_array.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_ecc_reg_to_array.exit.i

pl35x_nand_ecc_reg_to_array.exit.i:               ; preds = %for.body.i.i.pl35x_nand_ecc_reg_to_array.exit.i_crit_edge, %if.end6.i.pl35x_nand_ecc_reg_to_array.exit.i_crit_edge
  %94 = ptrtoint ptr %read_ecc.addr.055.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %read_ecc.addr.055.i, align 1
  %conv.i47.i = zext i8 %95 to i32
  %arrayidx1.i.i = getelementptr i8, ptr %read_ecc.addr.055.i, i32 1
  %96 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %97 to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %shl.masked.i.i = and i32 %shl.i.i, 3840
  %and.i.i = or i32 %shl.masked.i.i, %conv.i47.i
  %98 = lshr i32 %conv2.i.i, 4
  %arrayidx6.i.i = getelementptr i8, ptr %read_ecc.addr.055.i, i32 2
  %99 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx6.i.i, align 1
  %conv7.i.i = zext i8 %100 to i32
  %shl8.i.i = shl nuw nsw i32 %conv7.i.i, 4
  %or9.i.i = or i32 %shl8.i.i, %98
  %101 = ptrtoint ptr %calc_ecc.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %calc_ecc.i, align 1
  %conv13.i.i = zext i8 %102 to i32
  %103 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %79, align 1
  %conv15.i.i = zext i8 %104 to i32
  %shl16.i.i = shl nuw nsw i32 %conv15.i.i, 8
  %shl16.masked.i.i = and i32 %shl16.i.i, 3840
  %and18.i.i = or i32 %shl16.masked.i.i, %conv13.i.i
  %105 = lshr i32 %conv15.i.i, 4
  %106 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %81, align 1
  %conv24.i.i = zext i8 %107 to i32
  %shl25.i.i = shl nuw nsw i32 %conv24.i.i, 4
  %or26.i.i = or i32 %shl25.i.i, %105
  %xor.i.i = xor i32 %and18.i.i, %and.i.i
  %xor34.i.i = xor i32 %or26.i.i, %or9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i)
  %tobool.not.i.i = icmp eq i32 %xor.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor34.i.i)
  %tobool36.not.i.i = icmp eq i32 %xor34.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i1 %tobool36.not.i.i, i1 false, !prof !122
  br i1 %spec.select.i.i, label %pl35x_nand_ecc_reg_to_array.exit.i.if.else.i_crit_edge, label %if.end.i.i, !prof !122

pl35x_nand_ecc_reg_to_array.exit.i.if.else.i_crit_edge: ; preds = %pl35x_nand_ecc_reg_to_array.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.end.i.i:                                       ; preds = %pl35x_nand_ecc_reg_to_array.exit.i
  %and42.i.i = xor i32 %xor34.i.i, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.i.i, i32 %and42.i.i)
  %cmp.i48.i = icmp eq i32 %xor.i.i, %and42.i.i
  br i1 %cmp.i48.i, label %if.then44.i.i, label %cond.false.i.i

if.then44.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %108 = lshr i32 %xor.i.i, 3
  %conv51.i.i = and i32 %xor.i.i, 7
  %shl53.i.i = shl nuw nsw i32 1, %conv51.i.i
  %arrayidx54.i.i = getelementptr i8, ptr %data.addr.057.i, i32 %108
  %109 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx54.i.i, align 1
  %111 = trunc i32 %shl53.i.i to i8
  %conv57.i.i = xor i8 %110, %111
  store i8 %conv57.i.i, ptr %arrayidx54.i.i, align 1
  br label %if.else.i

cond.false.i.i:                                   ; preds = %if.end.i.i
  %or61.i.i = or i32 %xor.i.i, %xor34.i.i
  %call.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %or61.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp447.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp447.i.i, label %cond.false.i.i.if.else.i_crit_edge, label %if.then10.i

cond.false.i.i.if.else.i_crit_edge:               ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then10.i:                                      ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %failed.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %failed.i, align 4
  %inc13.i = add i32 %113, 1
  store i32 %inc13.i, ptr %failed.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %cond.false.i.i.if.else.i_crit_edge, %if.then44.i.i, %pl35x_nand_ecc_reg_to_array.exit.i.if.else.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ 0, %pl35x_nand_ecc_reg_to_array.exit.i.if.else.i_crit_edge ], [ 1, %if.then44.i.i ], [ 1, %cond.false.i.i.if.else.i_crit_edge ]
  %114 = ptrtoint ptr %ecc_stats14.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ecc_stats14.i, align 4
  %add15.i = add i32 %115, %retval.0.i.ph.i
  store i32 %add15.i, ptr %ecc_stats14.i, align 4
  %116 = tail call i32 @llvm.umax.i32(i32 %max_bitflips.054.i, i32 %retval.0.i.ph.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then10.i, %if.then5.i
  %max_bitflips.1.i = phi i32 [ %max_bitflips.054.i, %if.then5.i ], [ %max_bitflips.054.i, %if.then10.i ], [ %116, %if.else.i ]
  %inc19.i = add nuw i32 %chunk.053.i, 1
  %117 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %size.i, align 8
  %add.ptr21.i = getelementptr i8, ptr %data.addr.057.i, i32 %118
  %119 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %bytes.i.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %read_ecc.addr.055.i, i32 %120
  %121 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %steps.i, align 4
  %cmp.i153 = icmp ult i32 %inc19.i, %122
  br i1 %cmp.i153, label %for.inc.i.for.body.i151_crit_edge, label %for.inc.i.pl35x_nand_recover_data_hwecc.exit_crit_edge

for.inc.i.pl35x_nand_recover_data_hwecc.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_recover_data_hwecc.exit

for.inc.i.for.body.i151_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i151

pl35x_nand_recover_data_hwecc.exit:               ; preds = %for.inc.i.pl35x_nand_recover_data_hwecc.exit_crit_edge, %for.body.i151.pl35x_nand_recover_data_hwecc.exit_crit_edge, %pl35x_smc_set_ecc_mode.exit144.pl35x_nand_recover_data_hwecc.exit_crit_edge
  %retval.0.i154 = phi i32 [ 0, %pl35x_smc_set_ecc_mode.exit144.pl35x_nand_recover_data_hwecc.exit_crit_edge ], [ -22, %for.body.i151.pl35x_nand_recover_data_hwecc.exit_crit_edge ], [ %max_bitflips.1.i, %for.inc.i.pl35x_nand_recover_data_hwecc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %calc_ecc.i) #7
  br label %cleanup

disable_ecc_engine:                               ; preds = %pl35x_nand_read_data_op.exit136.disable_ecc_engine_crit_edge, %pl35x_nand_read_data_op.exit.disable_ecc_engine_crit_edge, %cond.false8.i.disable_ecc_engine_crit_edge
  %ret.0 = phi i32 [ %call37, %cond.false8.i.disable_ecc_engine_crit_edge ], [ %call42, %pl35x_nand_read_data_op.exit.disable_ecc_engine_crit_edge ], [ %call47, %pl35x_nand_read_data_op.exit136.disable_ecc_engine_crit_edge ]
  %123 = ptrtoint ptr %conf_regs.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %conf_regs.i, align 4
  %add.ptr.i156 = getelementptr i8, ptr %124, i32 1028
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %126 = and i32 %125, -201326593
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %127 = ptrtoint ptr %conf_regs.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %conf_regs.i, align 4
  %add.ptr3.i157 = getelementptr i8, ptr %128, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i157, i32 %126) #7, !srcloc !113
  br i1 %tobool.not.i, label %disable_ecc_engine.cleanup_crit_edge, label %if.then.i160

disable_ecc_engine.cleanup_crit_edge:             ; preds = %disable_ecc_engine
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i160:                                     ; preds = %disable_ecc_engine
  call void @__sanitizer_cov_trace_pc() #9
  %129 = tail call i32 @llvm.bswap.i32(i32 %126) #7
  %ecc_cfg5.i159 = getelementptr i8, ptr %chip, i32 2176
  %130 = ptrtoint ptr %ecc_cfg5.i159 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %ecc_cfg5.i159, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i160, %disable_ecc_engine.cleanup_crit_edge, %pl35x_nand_recover_data_hwecc.exit, %pl35x_smc_set_ecc_mode.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i154, %pl35x_nand_recover_data_hwecc.exit ], [ %call7.i, %pl35x_smc_set_ecc_mode.exit.cleanup_crit_edge ], [ %ret.0, %disable_ecc_engine.cleanup_crit_edge ], [ %ret.0, %if.then.i160 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl35x_nand_write_page_hwecc(ptr noundef %chip, ptr nocapture noundef readonly %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -12
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  %addr_cycles = getelementptr i8, ptr %chip, i32 2172
  %4 = ptrtoint ptr %addr_cycles to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr_cycles, align 4
  %conf_regs.i = getelementptr i8, ptr %1, i32 -8
  %6 = ptrtoint ptr %conf_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conf_regs.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %7, i32 1028
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %9 = and i32 %8, -201326593
  %10 = or i32 %9, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %conf_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conf_regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %12, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %10) #7, !srcloc !113
  %tobool.not.i = icmp eq ptr %chip, null
  br i1 %tobool.not.i, label %entry.pl35x_smc_set_ecc_mode.exit_crit_edge, label %if.then.i

entry.pl35x_smc_set_ecc_mode.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_smc_set_ecc_mode.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %10)
  %ecc_cfg5.i = getelementptr i8, ptr %chip, i32 2176
  %14 = ptrtoint ptr %ecc_cfg5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ecc_cfg5.i, align 8
  br label %pl35x_smc_set_ecc_mode.exit

pl35x_smc_set_ecc_mode.exit:                      ; preds = %if.then.i, %entry.pl35x_smc_set_ecc_mode.exit_crit_edge
  %call7.i = tail call fastcc i32 @pl35x_smc_wait_for_ecc_done(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not = icmp eq i32 %call7.i, 0
  br i1 %tobool.not, label %if.end, label %pl35x_smc_set_ecc_mode.exit.cleanup_crit_edge

pl35x_smc_set_ecc_mode.exit.cleanup_crit_edge:    ; preds = %pl35x_smc_set_ecc_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %pl35x_smc_set_ecc_mode.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %3)
  %cmp = icmp ult i32 %3, 513
  %cond = select i1 %cmp, i32 1, i32 2
  %15 = ptrtoint ptr %addr_cycles to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr_cycles, align 4
  %shl = shl i32 %16, 21
  %or5 = or i32 %shl, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cond)
  %cmp6152 = icmp ugt i32 %5, %cond
  br i1 %cmp6152, label %for.body.preheader, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.preheader:                               ; preds = %if.end
  %17 = sub i32 %5, %cond
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.preheader
  %i.0157 = phi i32 [ %inc, %if.end18.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %row.0155 = phi i32 [ %inc19, %if.end18.for.body_crit_edge ], [ %cond, %for.body.preheader ]
  %addr2.0154 = phi i32 [ %addr2.1, %if.end18.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %addr1.0153 = phi i32 [ %addr1.1, %if.end18.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = shl i32 %i.0157, 3
  %and = and i32 %mul, 248
  %shr = ashr i32 %page, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %row.0155)
  %cmp7 = icmp ult i32 %row.0155, 4
  %conv10 = and i32 %shr, 255
  %mul11 = shl i32 %row.0155, 3
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl12 = shl nuw i32 %conv10, %mul11
  %or13 = or i32 %shl12, %addr1.0153
  br label %if.end18

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %mul15 = add i32 %mul11, -32
  %shl16 = shl i32 %conv10, %mul15
  %or17 = or i32 %shl16, %addr2.0154
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then9
  %addr1.1 = phi i32 [ %or13, %if.then9 ], [ %addr1.0153, %if.else ]
  %addr2.1 = phi i32 [ %addr2.0154, %if.then9 ], [ %or17, %if.else ]
  %inc = add nuw i32 %i.0157, 1
  %inc19 = add nuw i32 %row.0155, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %if.end18.do.body_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end18.do.body_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end18.do.body_crit_edge, %if.end.do.body_crit_edge
  %addr1.0.lcssa = phi i32 [ 0, %if.end.do.body_crit_edge ], [ %addr1.1, %if.end18.do.body_crit_edge ]
  %addr2.0.lcssa = phi i32 [ 0, %if.end.do.body_crit_edge ], [ %addr2.1, %if.end18.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %addr1.0.lcssa)
  %io_regs = getelementptr i8, ptr %1, i32 -4
  %19 = ptrtoint ptr %io_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_regs, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %or5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #7, !srcloc !113
  %21 = ptrtoint ptr %addr_cycles to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr_cycles, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp21 = icmp ugt i32 %22, 4
  br i1 %cmp21, label %do.body24, label %do.body.if.end29_crit_edge

do.body.if.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.body24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %addr2.0.lcssa)
  %24 = ptrtoint ptr %io_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_regs, align 4
  %add.ptr28 = getelementptr i8, ptr %25, i32 %or5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %23) #7, !srcloc !113
  br label %if.end29

if.end29:                                         ; preds = %do.body24, %do.body.if.end29_crit_edge
  %26 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %writesize, align 4
  %28 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %controller, align 4
  %div.i = sdiv i32 %27, 4
  %and.i = and i32 %27, -4
  %len.off.i = add i32 %27, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %len.off.i)
  %30 = icmp ult i32 %len.off.i, 7
  br i1 %30, label %if.end29.for.cond6.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end29.for.cond6.preheader.i_crit_edge:         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond6.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end29
  %io_regs.i = getelementptr i8, ptr %29, i32 -4
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div.i, i32 1) #7
  br label %for.body.i

for.cond6.preheader.i:                            ; preds = %for.body.i.for.cond6.preheader.i_crit_edge, %if.end29.for.cond6.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %27)
  %cmp711.i = icmp slt i32 %and.i, %27
  br i1 %cmp711.i, label %do.body9.lr.ph.i, label %for.cond6.preheader.i.pl35x_nand_write_data_op.exit_crit_edge

for.cond6.preheader.i.pl35x_nand_write_data_op.exit_crit_edge: ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_write_data_op.exit

do.body9.lr.ph.i:                                 ; preds = %for.cond6.preheader.i
  %io_regs13.i = getelementptr i8, ptr %29, i32 -4
  br label %do.body9.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add1.i, %for.body.i.for.body.i_crit_edge ]
  %add1.i = add nuw i32 %i.010.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %div.i)
  %cmp2.i = icmp eq i32 %add1.i, %div.i
  %spec.select.i = select i1 %cmp2.i, i32 525312, i32 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %arrayidx.i = getelementptr i32, ptr %buf, i32 %i.010.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  %34 = ptrtoint ptr %io_regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_regs.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %35, i32 %spec.select.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %33) #7, !srcloc !113
  %exitcond.not.i = icmp eq i32 %add1.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.for.cond6.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.cond6.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond6.preheader.i

do.body9.i:                                       ; preds = %do.body9.i.do.body9.i_crit_edge, %do.body9.lr.ph.i
  %i.112.i = phi i32 [ %and.i, %do.body9.lr.ph.i ], [ %inc16.i, %do.body9.i.do.body9.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %arrayidx12.i = getelementptr i8, ptr %buf, i32 %i.112.i
  %36 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx12.i, align 1
  %38 = ptrtoint ptr %io_regs13.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_regs13.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %39, i32 524288
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i, i8 %37) #7, !srcloc !137
  %inc16.i = add i32 %i.112.i, 1
  %exitcond13.not.i = icmp eq i32 %inc16.i, %27
  br i1 %exitcond13.not.i, label %do.body9.i.pl35x_nand_write_data_op.exit_crit_edge, label %do.body9.i.do.body9.i_crit_edge

do.body9.i.do.body9.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i

do.body9.i.pl35x_nand_write_data_op.exit_crit_edge: ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_write_data_op.exit

pl35x_nand_write_data_op.exit:                    ; preds = %do.body9.i.pl35x_nand_write_data_op.exit_crit_edge, %for.cond6.preheader.i.pl35x_nand_write_data_op.exit_crit_edge
  %call31 = tail call fastcc i32 @pl35x_smc_wait_for_ecc_done(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %pl35x_nand_write_data_op.exit.disable_ecc_engine_crit_edge

pl35x_nand_write_data_op.exit.disable_ecc_engine_crit_edge: ; preds = %pl35x_nand_write_data_op.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_ecc_engine

if.end34:                                         ; preds = %pl35x_nand_write_data_op.exit
  %ecc_buf = getelementptr i8, ptr %1, i32 112
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %40 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %steps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp11.i = icmp sgt i32 %41, 0
  br i1 %cmp11.i, label %for.body.lr.ph.i108, label %if.end34.if.end38_crit_edge

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

for.body.lr.ph.i108:                              ; preds = %if.end34
  %42 = ptrtoint ptr %ecc_buf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ecc_buf, align 4
  %bytes.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  br label %for.body.i112

for.body.i112:                                    ; preds = %pl35x_nand_ecc_reg_to_array.exit.i.for.body.i112_crit_edge, %for.body.lr.ph.i108
  %read_ecc.addr.013.i = phi ptr [ %43, %for.body.lr.ph.i108 ], [ %add.ptr3.i113, %pl35x_nand_ecc_reg_to_array.exit.i.for.body.i112_crit_edge ]
  %chunk.012.i = phi i32 [ 0, %for.body.lr.ph.i108 ], [ %inc.i, %pl35x_nand_ecc_reg_to_array.exit.i.for.body.i112_crit_edge ]
  %44 = ptrtoint ptr %conf_regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %conf_regs.i, align 4
  %mul.i = shl i32 %chunk.012.i, 2
  %add.i = add i32 %mul.i, 1048
  %add.ptr.i109 = getelementptr i8, ptr %45, i32 %add.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #7, !srcloc !116
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %and.i110 = and i32 %47, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110)
  %tobool.not.i111 = icmp eq i32 %and.i110, 0
  br i1 %tobool.not.i111, label %for.body.i112.disable_ecc_engine_crit_edge, label %if.end.i

for.body.i112.disable_ecc_engine_crit_edge:       ; preds = %for.body.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_ecc_engine

if.end.i:                                         ; preds = %for.body.i112
  %neg.i.i = xor i32 %47, -1
  %48 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bytes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp4.not.i.i = icmp eq i32 %49, 0
  br i1 %cmp4.not.i.i, label %if.end.i.pl35x_nand_ecc_reg_to_array.exit.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.pl35x_nand_ecc_reg_to_array.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_ecc_reg_to_array.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %ecc_byte.05.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %ecc_byte.05.i.i, 3
  %shr.i.i = lshr i32 %neg.i.i, %mul.i.i
  %conv.i.i = trunc i32 %shr.i.i to i8
  %arrayidx.i.i = getelementptr i8, ptr %read_ecc.addr.013.i, i32 %ecc_byte.05.i.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i.i, ptr %arrayidx.i.i, align 1
  %inc.i.i = add nuw i32 %ecc_byte.05.i.i, 1
  %51 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bytes.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %52
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.pl35x_nand_ecc_reg_to_array.exit.i_crit_edge

for.body.i.i.pl35x_nand_ecc_reg_to_array.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_ecc_reg_to_array.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

pl35x_nand_ecc_reg_to_array.exit.i:               ; preds = %for.body.i.i.pl35x_nand_ecc_reg_to_array.exit.i_crit_edge, %if.end.i.pl35x_nand_ecc_reg_to_array.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %chunk.012.i, 1
  %53 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bytes.i.i, align 4
  %add.ptr3.i113 = getelementptr i8, ptr %read_ecc.addr.013.i, i32 %54
  %55 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %steps.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %56
  br i1 %cmp.i, label %pl35x_nand_ecc_reg_to_array.exit.i.for.body.i112_crit_edge, label %pl35x_nand_ecc_reg_to_array.exit.i.if.end38_crit_edge

pl35x_nand_ecc_reg_to_array.exit.i.if.end38_crit_edge: ; preds = %pl35x_nand_ecc_reg_to_array.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

pl35x_nand_ecc_reg_to_array.exit.i.for.body.i112_crit_edge: ; preds = %pl35x_nand_ecc_reg_to_array.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i112

if.end38:                                         ; preds = %pl35x_nand_ecc_reg_to_array.exit.i.if.end38_crit_edge, %if.end34.if.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool39.not = icmp eq i32 %oob_required, 0
  br i1 %tobool39.not, label %if.then40, label %if.end38.if.end41_crit_edge

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %57 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %59 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %oobsize, align 4
  %61 = call ptr @memset(ptr %58, i32 255, i32 %60)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end38.if.end41_crit_edge
  %62 = ptrtoint ptr %ecc_buf to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ecc_buf, align 4
  %oob_poi43 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %64 = ptrtoint ptr %oob_poi43 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %oob_poi43, align 4
  %total = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 6
  %66 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %total, align 8
  %call44 = tail call i32 @mtd_ooblayout_set_eccbytes(ptr noundef %chip, ptr noundef %63, ptr noundef %65, i32 noundef 0, i32 noundef %67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end41.disable_ecc_engine_crit_edge

if.end41.disable_ecc_engine_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_ecc_engine

if.end47:                                         ; preds = %if.end41
  %68 = ptrtoint ptr %oob_poi43 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %oob_poi43, align 4
  %oobsize49 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %70 = ptrtoint ptr %oobsize49 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %oobsize49, align 4
  %72 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %controller, align 4
  %div.i115 = sdiv i32 %71, 4
  %and.i116 = and i32 %71, -4
  %len.off.i117 = add i32 %71, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %len.off.i117)
  %74 = icmp ult i32 %len.off.i117, 7
  br i1 %74, label %if.end47.for.cond6.preheader.i123_crit_edge, label %for.body.lr.ph.i121

if.end47.for.cond6.preheader.i123_crit_edge:      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond6.preheader.i123

for.body.lr.ph.i121:                              ; preds = %if.end47
  %io_regs.i119 = getelementptr i8, ptr %73, i32 -4
  %umax.i120 = tail call i32 @llvm.umax.i32(i32 %div.i115, i32 1) #7
  br label %for.body.i133

for.cond6.preheader.i123:                         ; preds = %for.body.i133.for.cond6.preheader.i123_crit_edge, %if.end47.for.cond6.preheader.i123_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i116, i32 %71)
  %cmp711.i122 = icmp slt i32 %and.i116, %71
  br i1 %cmp711.i122, label %do.body9.lr.ph.i125, label %for.cond6.preheader.i123.pl35x_nand_write_data_op.exit140_crit_edge

for.cond6.preheader.i123.pl35x_nand_write_data_op.exit140_crit_edge: ; preds = %for.cond6.preheader.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_write_data_op.exit140

do.body9.lr.ph.i125:                              ; preds = %for.cond6.preheader.i123
  %io_regs13.i124 = getelementptr i8, ptr %73, i32 -4
  br label %do.body9.i139

for.body.i133:                                    ; preds = %for.body.i133.for.body.i133_crit_edge, %for.body.lr.ph.i121
  %i.010.i126 = phi i32 [ 0, %for.body.lr.ph.i121 ], [ %add1.i127, %for.body.i133.for.body.i133_crit_edge ]
  %add1.i127 = add nuw i32 %i.010.i126, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i127, i32 %div.i115)
  %cmp2.i128 = icmp eq i32 %add1.i127, %div.i115
  %spec.select.i129 = select i1 %cmp2.i128, i32 3702784, i32 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %arrayidx.i130 = getelementptr i32, ptr %69, i32 %i.010.i126
  %75 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i130, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #7
  %78 = ptrtoint ptr %io_regs.i119 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %io_regs.i119, align 4
  %add.ptr.i131 = getelementptr i8, ptr %79, i32 %spec.select.i129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 %77) #7, !srcloc !113
  %exitcond.not.i132 = icmp eq i32 %add1.i127, %umax.i120
  br i1 %exitcond.not.i132, label %for.body.i133.for.cond6.preheader.i123_crit_edge, label %for.body.i133.for.body.i133_crit_edge

for.body.i133.for.body.i133_crit_edge:            ; preds = %for.body.i133
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i133

for.body.i133.for.cond6.preheader.i123_crit_edge: ; preds = %for.body.i133
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond6.preheader.i123

do.body9.i139:                                    ; preds = %do.body9.i139.do.body9.i139_crit_edge, %do.body9.lr.ph.i125
  %i.112.i134 = phi i32 [ %and.i116, %do.body9.lr.ph.i125 ], [ %inc16.i137, %do.body9.i139.do.body9.i139_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %arrayidx12.i135 = getelementptr i8, ptr %69, i32 %i.112.i134
  %80 = ptrtoint ptr %arrayidx12.i135 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx12.i135, align 1
  %82 = ptrtoint ptr %io_regs13.i124 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %io_regs13.i124, align 4
  %add.ptr14.i136 = getelementptr i8, ptr %83, i32 524288
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14.i136, i8 %81) #7, !srcloc !137
  %inc16.i137 = add i32 %i.112.i134, 1
  %exitcond13.not.i138 = icmp eq i32 %inc16.i137, %71
  br i1 %exitcond13.not.i138, label %do.body9.i139.pl35x_nand_write_data_op.exit140_crit_edge, label %do.body9.i139.do.body9.i139_crit_edge

do.body9.i139.do.body9.i139_crit_edge:            ; preds = %do.body9.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i139

do.body9.i139.pl35x_nand_write_data_op.exit140_crit_edge: ; preds = %do.body9.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %pl35x_nand_write_data_op.exit140

pl35x_nand_write_data_op.exit140:                 ; preds = %do.body9.i139.pl35x_nand_write_data_op.exit140_crit_edge, %for.cond6.preheader.i123.pl35x_nand_write_data_op.exit140_crit_edge
  %call50 = tail call fastcc i32 @pl35x_smc_wait_for_irq(ptr noundef %add.ptr.i)
  br label %disable_ecc_engine

disable_ecc_engine:                               ; preds = %pl35x_nand_write_data_op.exit140, %if.end41.disable_ecc_engine_crit_edge, %for.body.i112.disable_ecc_engine_crit_edge, %pl35x_nand_write_data_op.exit.disable_ecc_engine_crit_edge
  %ret.0 = phi i32 [ %call31, %pl35x_nand_write_data_op.exit.disable_ecc_engine_crit_edge ], [ %call44, %if.end41.disable_ecc_engine_crit_edge ], [ %call50, %pl35x_nand_write_data_op.exit140 ], [ -22, %for.body.i112.disable_ecc_engine_crit_edge ]
  %84 = ptrtoint ptr %conf_regs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %conf_regs.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %85, i32 1028
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %87 = and i32 %86, -201326593
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %88 = ptrtoint ptr %conf_regs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %conf_regs.i, align 4
  %add.ptr3.i143 = getelementptr i8, ptr %89, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i143, i32 %87) #7, !srcloc !113
  br i1 %tobool.not.i, label %disable_ecc_engine.cleanup_crit_edge, label %if.then.i146

disable_ecc_engine.cleanup_crit_edge:             ; preds = %disable_ecc_engine
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i146:                                     ; preds = %disable_ecc_engine
  call void @__sanitizer_cov_trace_pc() #9
  %90 = tail call i32 @llvm.bswap.i32(i32 %87) #7
  %ecc_cfg5.i145 = getelementptr i8, ptr %chip, i32 2176
  %91 = ptrtoint ptr %ecc_cfg5.i145 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %ecc_cfg5.i145, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i146, %disable_ecc_engine.cleanup_crit_edge, %pl35x_smc_set_ecc_mode.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7.i, %pl35x_smc_set_ecc_mode.exit.cleanup_crit_edge ], [ %ret.0, %disable_ecc_engine.cleanup_crit_edge ], [ %ret.0, %if.then.i146 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_monolithic_write_page_raw(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_large_page_ooblayout() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pl35x_smc_wait_for_irq(ptr nocapture noundef readonly %nfc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 247) #7
  %conf_regs = getelementptr inbounds %struct.pl35x_nandc, ptr %nfc, i32 0, i32 1
  %0 = ptrtoint ptr %conf_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf_regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !116
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %and51 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool.not52 = icmp eq i32 %and51, 0
  br i1 %tobool.not52, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then26

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %conf_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conf_regs, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !116
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  br label %for.end

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  %8 = ptrtoint ptr %conf_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %conf_regs, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !116
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %and = and i32 %11, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then26.land.lhs.true_crit_edge, label %if.then26.for.end_crit_edge

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %if.then26.for.end_crit_edge, %if.then16, %entry.for.end_crit_edge
  %reg.0 = phi i32 [ %7, %if.then16 ], [ %3, %entry.for.end_crit_edge ], [ %11, %if.then26.for.end_crit_edge ]
  %and29 = and i32 %reg.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.end35, label %for.end.if.end36_crit_edge

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nfc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.16, i32 noundef %reg.0) #10
  br label %if.end36

if.end36:                                         ; preds = %do.end35, %for.end.if.end36_crit_edge
  %cond = phi i32 [ -110, %do.end35 ], [ 0, %for.end.if.end36_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %conf_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %conf_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 268435456) #7, !srcloc !113
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl35x_nand_read_data_op(ptr nocapture noundef readonly %chip, ptr nocapture noundef writeonly %in, i32 noundef %len, i1 noundef zeroext %force_8bit, i32 noundef %last_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %div1 = lshr i32 %len, 2
  %and = and i32 %len, -4
  br i1 %force_8bit, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options.i, align 8
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %conf_regs.i.i = getelementptr i8, ptr %1, i32 -8
  %4 = ptrtoint ptr %conf_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conf_regs.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 0) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %conf_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conf_regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16386) #7, !srcloc !113
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp10.not = icmp ult i32 %len, 4
  br i1 %cmp10.not, label %if.end.for.cond8.preheader_crit_edge, label %for.body.lr.ph

if.end.for.cond8.preheader_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %add4 = add i32 %last_flags, 524288
  %io_regs = getelementptr i8, ptr %1, i32 -4
  %umax = call i32 @llvm.umax.i32(i32 %div1, i32 1)
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body.for.cond8.preheader_crit_edge, %if.end.for.cond8.preheader_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %len)
  %cmp912 = icmp ult i32 %and, %len
  br i1 %cmp912, label %for.body10.lr.ph, label %for.cond8.preheader.for.end21_crit_edge

for.cond8.preheader.for.end21_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end21

for.body10.lr.ph:                                 ; preds = %for.cond8.preheader
  %io_regs13 = getelementptr i8, ptr %1, i32 -4
  br label %for.body10

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %add1, %for.body.for.body_crit_edge ]
  %add1 = add nuw nsw i32 %i.011, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %div1)
  %cmp2 = icmp eq i32 %add1, %div1
  %spec.select = select i1 %cmp2, i32 %add4, i32 524288
  %8 = ptrtoint ptr %io_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_regs, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %spec.select
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !116
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %arrayidx = getelementptr i32, ptr %in, i32 %i.011
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx, align 4
  %exitcond.not = icmp eq i32 %add1, %umax
  br i1 %exitcond.not, label %for.body.for.cond8.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.cond8.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.preheader

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body10.lr.ph
  %i.113 = phi i32 [ %and, %for.body10.lr.ph ], [ %inc20, %for.body10.for.body10_crit_edge ]
  %13 = ptrtoint ptr %io_regs13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_regs13, align 4
  %add.ptr14 = getelementptr i8, ptr %14, i32 524288
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr14) #7, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %arrayidx18 = getelementptr i8, ptr %in, i32 %i.113
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx18, align 1
  %inc20 = add i32 %i.113, 1
  %exitcond14.not = icmp eq i32 %inc20, %len
  br i1 %exitcond14.not, label %for.body10.for.end21_crit_edge, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

for.body10.for.end21_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end21

for.end21:                                        ; preds = %for.body10.for.end21_crit_edge, %for.cond8.preheader.for.end21_crit_edge
  br i1 %force_8bit, label %if.then23, label %for.end21.if.end24_crit_edge

for.end21.if.end24_crit_edge:                     ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then23:                                        ; preds = %for.end21
  %options.i2 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %17 = ptrtoint ptr %options.i2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %options.i2, align 8
  %and.i3 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3)
  %tobool.not.i4 = icmp eq i32 %and.i3, 0
  br i1 %tobool.not.i4, label %if.then23.if.end24_crit_edge, label %if.end.i8

if.then23.if.end24_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end.i8:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %controller, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %conf_regs.i.i6 = getelementptr i8, ptr %20, i32 -8
  %21 = ptrtoint ptr %conf_regs.i.i6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %conf_regs.i.i6, align 4
  %add.ptr.i13.i7 = getelementptr i8, ptr %22, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i7, i32 16777216) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %conf_regs.i.i6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %conf_regs.i.i6, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i16.i, i32 16386) #7, !srcloc !113
  br label %if.end24

if.end24:                                         ; preds = %if.end.i8, %if.then23.if.end24_crit_edge, %for.end21.if.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pl35x_smc_wait_for_ecc_done(ptr nocapture noundef readonly %nfc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 265) #7
  %conf_regs = getelementptr inbounds %struct.pl35x_nandc, ptr %nfc, i32 0, i32 1
  %0 = ptrtoint ptr %conf_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf_regs, align 4
  %add.ptr47 = getelementptr i8, ptr %1, i32 1024
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  %3 = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not49 = icmp eq i32 %3, 0
  br i1 %tobool.not49, label %entry.if.end36_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  %4 = ptrtoint ptr %conf_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conf_regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1024
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  %7 = and i32 %6, 1073741824
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then26.if.end36_crit_edge, label %if.then26.land.lhs.true_crit_edge

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then26.if.end36_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.end:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %conf_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %conf_regs, align 4
  %add.ptr20 = getelementptr i8, ptr %9, i32 1024
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %11 = and i32 %10, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool30.not = icmp eq i32 %11, 0
  br i1 %tobool30.not, label %for.end.if.end36_crit_edge, label %do.end35

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nfc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.20) #10
  br label %if.end36

if.end36:                                         ; preds = %do.end35, %for.end.if.end36_crit_edge, %if.then26.if.end36_crit_edge, %entry.if.end36_crit_edge
  %cond = phi i32 [ -110, %do.end35 ], [ 0, %for.end.if.end36_crit_edge ], [ 0, %entry.if.end36_crit_edge ], [ 0, %if.then26.if.end36_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_get_eccbytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pl35x_nand_write_data_op(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %out, i32 noundef %len, i1 noundef zeroext %force_8bit, i32 noundef %last_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %div = sdiv i32 %len, 4
  %and = and i32 %len, -4
  br i1 %force_8bit, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options.i, align 8
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %conf_regs.i.i = getelementptr i8, ptr %1, i32 -8
  %4 = ptrtoint ptr %conf_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conf_regs.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 0) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %conf_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conf_regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16386) #7, !srcloc !113
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %len.off = add i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %len.off)
  %8 = icmp ult i32 %len.off, 7
  br i1 %8, label %if.end.for.cond6.preheader_crit_edge, label %for.body.lr.ph

if.end.for.cond6.preheader_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond6.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %add4 = add i32 %last_flags, 524288
  %io_regs = getelementptr i8, ptr %1, i32 -4
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.cond6.preheader:                              ; preds = %for.body.for.cond6.preheader_crit_edge, %if.end.for.cond6.preheader_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %len)
  %cmp711 = icmp slt i32 %and, %len
  br i1 %cmp711, label %do.body9.lr.ph, label %for.cond6.preheader.for.end17_crit_edge

for.cond6.preheader.for.end17_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end17

do.body9.lr.ph:                                   ; preds = %for.cond6.preheader
  %io_regs13 = getelementptr i8, ptr %1, i32 -4
  br label %do.body9

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %add1, %for.body.for.body_crit_edge ]
  %add1 = add nuw i32 %i.010, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %div)
  %cmp2 = icmp eq i32 %add1, %div
  %spec.select = select i1 %cmp2, i32 %add4, i32 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %arrayidx = getelementptr i32, ptr %out, i32 %i.010
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %io_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_regs, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %spec.select
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #7, !srcloc !113
  %exitcond.not = icmp eq i32 %add1, %umax
  br i1 %exitcond.not, label %for.body.for.cond6.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.cond6.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond6.preheader

do.body9:                                         ; preds = %do.body9.do.body9_crit_edge, %do.body9.lr.ph
  %i.112 = phi i32 [ %and, %do.body9.lr.ph ], [ %inc16, %do.body9.do.body9_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %arrayidx12 = getelementptr i8, ptr %out, i32 %i.112
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 1
  %16 = ptrtoint ptr %io_regs13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_regs13, align 4
  %add.ptr14 = getelementptr i8, ptr %17, i32 524288
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 %15) #7, !srcloc !137
  %inc16 = add i32 %i.112, 1
  %exitcond13.not = icmp eq i32 %inc16, %len
  br i1 %exitcond13.not, label %do.body9.for.end17_crit_edge, label %do.body9.do.body9_crit_edge

do.body9.do.body9_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9

do.body9.for.end17_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end17

for.end17:                                        ; preds = %do.body9.for.end17_crit_edge, %for.cond6.preheader.for.end17_crit_edge
  br i1 %force_8bit, label %if.then19, label %for.end17.if.end20_crit_edge

for.end17.if.end20_crit_edge:                     ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then19:                                        ; preds = %for.end17
  %options.i1 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %18 = ptrtoint ptr %options.i1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %options.i1, align 8
  %and.i2 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %tobool.not.i3 = icmp eq i32 %and.i2, 0
  br i1 %tobool.not.i3, label %if.then19.if.end20_crit_edge, label %if.end.i7

if.then19.if.end20_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end.i7:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %controller, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %conf_regs.i.i5 = getelementptr i8, ptr %21, i32 -8
  %22 = ptrtoint ptr %conf_regs.i.i5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %conf_regs.i.i5, align 4
  %add.ptr.i13.i6 = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i6, i32 16777216) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %conf_regs.i.i5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %conf_regs.i.i5, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i16.i, i32 16386) #7, !srcloc !113
  br label %if.end20

if.end20:                                         ; preds = %if.end.i7, %if.then19.if.end20_crit_edge, %for.end17.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_set_eccbytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pl35x_ecc_ooblayout16_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %0 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %section)
  %cmp.not = icmp sgt i32 %1, %section
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes, align 4
  %mul = mul i32 %3, %section
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %oobregion, align 4
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
define internal i32 @pl35x_ecc_ooblayout16_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %0 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %steps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %section)
  %cmp.not = icmp sgt i32 %1, %section
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 5
  %2 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytes, align 4
  %mul = mul i32 %3, %section
  %add = add i32 %mul, 8
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %oobregion, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_op_parser_exec_op(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl35x_nand_exec_op(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -12
  %ninstrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 2
  %2 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp175.not = icmp eq i32 %3, 0
  br i1 %cmp175.not, label %entry.for.end42.thread_crit_edge, label %for.body.lr.ph

entry.for.end42.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end42.thread

for.body.lr.ph:                                   ; preds = %entry
  %instrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %cmd1_valid.0.off0191 = phi i1 [ false, %for.body.lr.ph ], [ %cmd1_valid.2.off0, %sw.epilog.for.body_crit_edge ]
  %last_instr_type.0190 = phi i32 [ -1, %for.body.lr.ph ], [ %20, %sw.epilog.for.body_crit_edge ]
  %rdy_del_ns.0189 = phi i32 [ -1, %for.body.lr.ph ], [ %rdy_del_ns.1, %sw.epilog.for.body_crit_edge ]
  %len.0188 = phi i32 [ -1, %for.body.lr.ph ], [ %len.1, %sw.epilog.for.body_crit_edge ]
  %op_id.0185 = phi i32 [ 0, %for.body.lr.ph ], [ %inc41, %sw.epilog.for.body_crit_edge ]
  %cmd_addr.0184 = phi i32 [ 0, %for.body.lr.ph ], [ %cmd_addr.1, %sw.epilog.for.body_crit_edge ]
  %cmd1.0183 = phi i32 [ 0, %for.body.lr.ph ], [ %cmd1.2, %sw.epilog.for.body_crit_edge ]
  %cmd0.0182 = phi i32 [ 0, %for.body.lr.ph ], [ %cmd0.2, %sw.epilog.for.body_crit_edge ]
  %addr2.0181 = phi i32 [ 0, %for.body.lr.ph ], [ %addr2.3, %sw.epilog.for.body_crit_edge ]
  %addr1.0180 = phi i32 [ 0, %for.body.lr.ph ], [ %addr1.3, %sw.epilog.for.body_crit_edge ]
  %cmds.0179 = phi i32 [ 0, %for.body.lr.ph ], [ %cmds.1, %sw.epilog.for.body_crit_edge ]
  %naddrs.0178 = phi i32 [ 0, %for.body.lr.ph ], [ %naddrs.1, %sw.epilog.for.body_crit_edge ]
  %rdy_tim_ms.0177 = phi i32 [ 0, %for.body.lr.ph ], [ %rdy_tim_ms.1, %sw.epilog.for.body_crit_edge ]
  %data_instr.0176 = phi ptr [ null, %for.body.lr.ph ], [ %data_instr.1, %sw.epilog.for.body_crit_edge ]
  %4 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %5, i32 %op_id.0185
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %7, label %for.body.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %for.body.sw.bb35_crit_edge
    i32 3, label %for.body.sw.bb35_crit_edge235
    i32 4, label %sw.bb37
  ]

for.body.sw.bb35_crit_edge235:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb35

for.body.sw.bb35_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb35

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmds.0179)
  %tobool.not = icmp eq i32 %cmds.0179, 0
  %ctx = getelementptr %struct.nand_op_instr, ptr %5, i32 %op_id.0185, i32 1
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctx, align 4
  %conv = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv, 3
  %shl4 = shl nuw nsw i32 %conv, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %last_instr_type.0190)
  %cmp5.not = icmp ne i32 %last_instr_type.0190, 3
  %spec.select = select i1 %cmp5.not, i1 true, i1 %cmd1_valid.0.off0191
  %cmd0.1 = select i1 %tobool.not, i32 %shl, i32 %cmd0.0182
  %cmd1.1 = select i1 %tobool.not, i32 %cmd1.0183, i32 %shl4
  %cmd1_valid.1.off0 = select i1 %tobool.not, i1 %cmd1_valid.0.off0191, i1 %spec.select
  %inc = add i32 %cmds.0179, 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %for.body
  %call10 = tail call i32 @nand_subop_get_addr_start_off(ptr noundef %subop, i32 noundef %op_id.0185) #7
  %call11 = tail call i32 @nand_subop_get_num_addr_cyc(ptr noundef %subop, i32 noundef %op_id.0185) #7
  %addrs13 = getelementptr %struct.nand_op_instr, ptr %5, i32 %op_id.0185, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %addrs13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %addrs13, align 4
  %arrayidx14 = getelementptr i8, ptr %12, i32 %call10
  %shl15 = shl i32 %call11, 21
  %or = or i32 %shl15, %cmd_addr.0184
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %call11)
  %cmp17169 = icmp ult i32 %call10, %call11
  br i1 %cmp17169, label %sw.bb9.for.body19_crit_edge, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb9.for.body19_crit_edge:                      ; preds = %sw.bb9
  br label %for.body19

for.body19:                                       ; preds = %for.inc.for.body19_crit_edge, %sw.bb9.for.body19_crit_edge
  %i.0172 = phi i32 [ %inc34, %for.inc.for.body19_crit_edge ], [ %call10, %sw.bb9.for.body19_crit_edge ]
  %addr2.1171 = phi i32 [ %addr2.2, %for.inc.for.body19_crit_edge ], [ %addr2.0181, %sw.bb9.for.body19_crit_edge ]
  %addr1.1170 = phi i32 [ %addr1.2, %for.inc.for.body19_crit_edge ], [ %addr1.0180, %sw.bb9.for.body19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0172)
  %cmp20 = icmp slt i32 %i.0172, 4
  %arrayidx23 = getelementptr i8, ptr %arrayidx14, i32 %i.0172
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %14 to i32
  %mul = shl i32 %i.0172, 3
  br i1 %cmp20, label %if.then22, label %if.else27

if.then22:                                        ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #9
  %shl25 = shl i32 %conv24, %mul
  %or26 = or i32 %shl25, %addr1.1170
  br label %for.inc

if.else27:                                        ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #9
  %mul30 = add i32 %mul, -32
  %shl31 = shl i32 %conv24, %mul30
  %or32 = or i32 %shl31, %addr2.1171
  br label %for.inc

for.inc:                                          ; preds = %if.else27, %if.then22
  %addr1.2 = phi i32 [ %or26, %if.then22 ], [ %addr1.1170, %if.else27 ]
  %addr2.2 = phi i32 [ %addr2.1171, %if.then22 ], [ %or32, %if.else27 ]
  %inc34 = add nuw i32 %i.0172, 1
  %exitcond.not = icmp eq i32 %inc34, %call11
  br i1 %exitcond.not, label %for.inc.sw.epilog_crit_edge, label %for.inc.for.body19_crit_edge

for.inc.for.body19_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb35:                                          ; preds = %for.body.sw.bb35_crit_edge, %for.body.sw.bb35_crit_edge235
  %call36 = tail call i32 @nand_subop_get_data_len(ptr noundef %subop, i32 noundef %op_id.0185) #7
  br label %sw.epilog

sw.bb37:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %ctx38 = getelementptr %struct.nand_op_instr, ptr %5, i32 %op_id.0185, i32 1
  %15 = ptrtoint ptr %ctx38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctx38, align 4
  %delay_ns = getelementptr %struct.nand_op_instr, ptr %5, i32 %op_id.0185, i32 2
  %17 = ptrtoint ptr %delay_ns to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %delay_ns, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb37, %sw.bb35, %for.inc.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %sw.bb, %for.body.sw.epilog_crit_edge
  %data_instr.1 = phi ptr [ %data_instr.0176, %for.body.sw.epilog_crit_edge ], [ %data_instr.0176, %sw.bb37 ], [ %arrayidx, %sw.bb35 ], [ %data_instr.0176, %sw.bb ], [ %data_instr.0176, %sw.bb9.sw.epilog_crit_edge ], [ %data_instr.0176, %for.inc.sw.epilog_crit_edge ]
  %rdy_tim_ms.1 = phi i32 [ %rdy_tim_ms.0177, %for.body.sw.epilog_crit_edge ], [ %16, %sw.bb37 ], [ %rdy_tim_ms.0177, %sw.bb35 ], [ %rdy_tim_ms.0177, %sw.bb ], [ %rdy_tim_ms.0177, %sw.bb9.sw.epilog_crit_edge ], [ %rdy_tim_ms.0177, %for.inc.sw.epilog_crit_edge ]
  %naddrs.1 = phi i32 [ %naddrs.0178, %for.body.sw.epilog_crit_edge ], [ %naddrs.0178, %sw.bb37 ], [ %naddrs.0178, %sw.bb35 ], [ %naddrs.0178, %sw.bb ], [ %call11, %sw.bb9.sw.epilog_crit_edge ], [ %call11, %for.inc.sw.epilog_crit_edge ]
  %cmds.1 = phi i32 [ %cmds.0179, %for.body.sw.epilog_crit_edge ], [ %cmds.0179, %sw.bb37 ], [ %cmds.0179, %sw.bb35 ], [ %inc, %sw.bb ], [ %cmds.0179, %sw.bb9.sw.epilog_crit_edge ], [ %cmds.0179, %for.inc.sw.epilog_crit_edge ]
  %addr1.3 = phi i32 [ %addr1.0180, %for.body.sw.epilog_crit_edge ], [ %addr1.0180, %sw.bb37 ], [ %addr1.0180, %sw.bb35 ], [ %addr1.0180, %sw.bb ], [ %addr1.0180, %sw.bb9.sw.epilog_crit_edge ], [ %addr1.2, %for.inc.sw.epilog_crit_edge ]
  %addr2.3 = phi i32 [ %addr2.0181, %for.body.sw.epilog_crit_edge ], [ %addr2.0181, %sw.bb37 ], [ %addr2.0181, %sw.bb35 ], [ %addr2.0181, %sw.bb ], [ %addr2.0181, %sw.bb9.sw.epilog_crit_edge ], [ %addr2.2, %for.inc.sw.epilog_crit_edge ]
  %cmd0.2 = phi i32 [ %cmd0.0182, %for.body.sw.epilog_crit_edge ], [ %cmd0.0182, %sw.bb37 ], [ %cmd0.0182, %sw.bb35 ], [ %cmd0.1, %sw.bb ], [ %cmd0.0182, %sw.bb9.sw.epilog_crit_edge ], [ %cmd0.0182, %for.inc.sw.epilog_crit_edge ]
  %cmd1.2 = phi i32 [ %cmd1.0183, %for.body.sw.epilog_crit_edge ], [ %cmd1.0183, %sw.bb37 ], [ %cmd1.0183, %sw.bb35 ], [ %cmd1.1, %sw.bb ], [ %cmd1.0183, %sw.bb9.sw.epilog_crit_edge ], [ %cmd1.0183, %for.inc.sw.epilog_crit_edge ]
  %cmd_addr.1 = phi i32 [ %cmd_addr.0184, %for.body.sw.epilog_crit_edge ], [ %cmd_addr.0184, %sw.bb37 ], [ %cmd_addr.0184, %sw.bb35 ], [ %cmd_addr.0184, %sw.bb ], [ %or, %sw.bb9.sw.epilog_crit_edge ], [ %or, %for.inc.sw.epilog_crit_edge ]
  %len.1 = phi i32 [ %len.0188, %for.body.sw.epilog_crit_edge ], [ %len.0188, %sw.bb37 ], [ %call36, %sw.bb35 ], [ %len.0188, %sw.bb ], [ %len.0188, %sw.bb9.sw.epilog_crit_edge ], [ %len.0188, %for.inc.sw.epilog_crit_edge ]
  %rdy_del_ns.1 = phi i32 [ %rdy_del_ns.0189, %for.body.sw.epilog_crit_edge ], [ %18, %sw.bb37 ], [ %rdy_del_ns.0189, %sw.bb35 ], [ %rdy_del_ns.0189, %sw.bb ], [ %rdy_del_ns.0189, %sw.bb9.sw.epilog_crit_edge ], [ %rdy_del_ns.0189, %for.inc.sw.epilog_crit_edge ]
  %cmd1_valid.2.off0 = phi i1 [ %cmd1_valid.0.off0191, %for.body.sw.epilog_crit_edge ], [ %cmd1_valid.0.off0191, %sw.bb37 ], [ %cmd1_valid.0.off0191, %sw.bb35 ], [ %cmd1_valid.1.off0, %sw.bb ], [ %cmd1_valid.0.off0191, %sw.bb9.sw.epilog_crit_edge ], [ %cmd1_valid.0.off0191, %for.inc.sw.epilog_crit_edge ]
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %inc41 = add nuw i32 %op_id.0185, 1
  %21 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc41, %22
  br i1 %cmp, label %sw.epilog.for.body_crit_edge, label %for.end42

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end42:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or44 = or i32 %cmd1.2, %cmd0.2
  %spec.select234 = select i1 %cmd1_valid.2.off0, i32 1048576, i32 0
  %23 = or i32 %or44, %cmd_addr.1
  %24 = or i32 %23, %spec.select234
  br label %for.end42.thread

for.end42.thread:                                 ; preds = %for.end42, %entry.for.end42.thread_crit_edge
  %rdy_del_ns.0.lcssa232 = phi i32 [ -1, %entry.for.end42.thread_crit_edge ], [ %rdy_del_ns.1, %for.end42 ]
  %len.0.lcssa228 = phi i32 [ -1, %entry.for.end42.thread_crit_edge ], [ %len.1, %for.end42 ]
  %cmd1.0.lcssa226 = phi i32 [ 0, %entry.for.end42.thread_crit_edge ], [ %cmd1.2, %for.end42 ]
  %addr2.0.lcssa225 = phi i32 [ 0, %entry.for.end42.thread_crit_edge ], [ %addr2.3, %for.end42 ]
  %addr1.0.lcssa224 = phi i32 [ 0, %entry.for.end42.thread_crit_edge ], [ %addr1.3, %for.end42 ]
  %cmds.0.lcssa223 = phi i32 [ 0, %entry.for.end42.thread_crit_edge ], [ %cmds.1, %for.end42 ]
  %naddrs.0.lcssa222 = phi i32 [ 0, %entry.for.end42.thread_crit_edge ], [ %naddrs.1, %for.end42 ]
  %rdy_tim_ms.0.lcssa221 = phi i32 [ 0, %entry.for.end42.thread_crit_edge ], [ %rdy_tim_ms.1, %for.end42 ]
  %data_instr.0.lcssa217 = phi ptr [ null, %entry.for.end42.thread_crit_edge ], [ %data_instr.1, %for.end42 ]
  %or48 = phi i32 [ 0, %entry.for.end42.thread_crit_edge ], [ %24, %for.end42 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %addr1.0.lcssa224)
  %io_regs = getelementptr i8, ptr %1, i32 -4
  %26 = ptrtoint ptr %io_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_regs, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 %or48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %25) #7, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %naddrs.0.lcssa222)
  %cmp49 = icmp ugt i32 %naddrs.0.lcssa222, 4
  br i1 %cmp49, label %do.body52, label %for.end42.thread.if.end57_crit_edge

for.end42.thread.if.end57_crit_edge:              ; preds = %for.end42.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

do.body52:                                        ; preds = %for.end42.thread
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %28 = tail call i32 @llvm.bswap.i32(i32 %addr2.0.lcssa225)
  %29 = ptrtoint ptr %io_regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_regs, align 4
  %add.ptr56 = getelementptr i8, ptr %30, i32 %or48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %28) #7, !srcloc !113
  br label %if.end57

if.end57:                                         ; preds = %do.body52, %for.end42.thread.if.end57_crit_edge
  %tobool58.not = icmp eq ptr %data_instr.0.lcssa217, null
  br i1 %tobool58.not, label %if.end72.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end57
  %31 = ptrtoint ptr %data_instr.0.lcssa217 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_instr.0.lcssa217, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp60 = icmp eq i32 %32, 3
  br i1 %cmp60, label %if.then62, label %land.lhs.true.if.end72_crit_edge

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then62:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmds.0.lcssa223)
  %cmp63 = icmp eq i32 %cmds.0.lcssa223, 2
  %or67 = or i32 %cmd1.0.lcssa226, 3145728
  %spec.select167 = select i1 %cmp63, i32 %or67, i32 2097152
  %buf = getelementptr inbounds %struct.nand_op_instr, ptr %data_instr.0.lcssa217, i32 0, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf, align 4
  %force_8bit = getelementptr inbounds %struct.nand_op_instr, ptr %data_instr.0.lcssa217, i32 0, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %force_8bit to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %force_8bit, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool71 = icmp ne i8 %36, 0
  tail call fastcc void @pl35x_nand_write_data_op(ptr noundef %chip, ptr noundef %34, i32 noundef %len.0.lcssa228, i1 noundef zeroext %tobool71, i32 noundef %spec.select167)
  br label %if.end72

if.end72:                                         ; preds = %if.then62, %land.lhs.true.if.end72_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rdy_tim_ms.0.lcssa221)
  %tobool73.not = icmp eq i32 %rdy_tim_ms.0.lcssa221, 0
  br i1 %tobool73.not, label %if.end72.land.lhs.true81_crit_edge, label %if.end72.cond.false8.i_crit_edge

if.end72.cond.false8.i_crit_edge:                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false8.i

if.end72.land.lhs.true81_crit_edge:               ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true81

if.end72.thread:                                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rdy_tim_ms.0.lcssa221)
  %tobool73.not168 = icmp eq i32 %rdy_tim_ms.0.lcssa221, 0
  br i1 %tobool73.not168, label %if.end72.thread.cleanup_crit_edge, label %if.end72.thread.cond.false8.i_crit_edge

if.end72.thread.cond.false8.i_crit_edge:          ; preds = %if.end72.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false8.i

if.end72.thread.cleanup_crit_edge:                ; preds = %if.end72.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.false8.i:                                    ; preds = %if.end72.thread.cond.false8.i_crit_edge, %if.end72.cond.false8.i_crit_edge
  %data_instr.0.lcssa219 = phi ptr [ null, %if.end72.thread.cond.false8.i_crit_edge ], [ %data_instr.0.lcssa217, %if.end72.cond.false8.i_crit_edge ]
  %sub.i = add i32 %rdy_del_ns.0.lcssa232, 999
  %div.i = udiv i32 %sub.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %div.i) #7
  %call75 = tail call fastcc i32 @pl35x_smc_wait_for_irq(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp ne i32 %call75, 0
  %brmerge = select i1 %tobool76.not, i1 true, i1 %tobool58.not
  br i1 %brmerge, label %cond.false8.i.cleanup_crit_edge, label %cond.false8.i.land.lhs.true81_crit_edge

cond.false8.i.land.lhs.true81_crit_edge:          ; preds = %cond.false8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true81

cond.false8.i.cleanup_crit_edge:                  ; preds = %cond.false8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true81:                                  ; preds = %cond.false8.i.land.lhs.true81_crit_edge, %if.end72.land.lhs.true81_crit_edge
  %data_instr.0.lcssa218 = phi ptr [ %data_instr.0.lcssa217, %if.end72.land.lhs.true81_crit_edge ], [ %data_instr.0.lcssa219, %cond.false8.i.land.lhs.true81_crit_edge ]
  %38 = ptrtoint ptr %data_instr.0.lcssa218 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_instr.0.lcssa218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp83 = icmp eq i32 %39, 2
  br i1 %cmp83, label %if.then85, label %land.lhs.true81.cleanup_crit_edge

land.lhs.true81.cleanup_crit_edge:                ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then85:                                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  %buf87 = getelementptr inbounds %struct.nand_op_instr, ptr %data_instr.0.lcssa218, i32 0, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %buf87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf87, align 4
  %force_8bit89 = getelementptr inbounds %struct.nand_op_instr, ptr %data_instr.0.lcssa218, i32 0, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %force_8bit89 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %force_8bit89, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool90 = icmp ne i8 %43, 0
  tail call fastcc void @pl35x_nand_read_data_op(ptr noundef %chip, ptr noundef %41, i32 noundef %len.0.lcssa228, i1 noundef zeroext %tobool90, i32 noundef 2097152)
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %land.lhs.true81.cleanup_crit_edge, %cond.false8.i.cleanup_crit_edge, %if.end72.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ %call75, %cond.false8.i.cleanup_crit_edge ], [ 0, %if.then85 ], [ 0, %land.lhs.true81.cleanup_crit_edge ], [ 0, %if.end72.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_addr_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_num_addr_cyc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_data_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

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
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !98, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_pl35x_nand_controller__303_1189_pl35x_nandc_driver_init6, !1, !"__initcall__kmod_pl35x_nand_controller__303_1189_pl35x_nandc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 1189, i32 1}
!2 = !{ptr @__exitcall_pl35x_nandc_driver_exit, !1, !"__exitcall_pl35x_nandc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author304, !4, !"__UNIQUE_ID_author304", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 1191, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias305, !6, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 1192, i32 1}
!7 = !{ptr @__UNIQUE_ID_description306, !8, !"__UNIQUE_ID_description306", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 1193, i32 1}
!9 = !{ptr @__UNIQUE_ID_file307, !10, !"__UNIQUE_ID_file307", i1 false, i1 false}
!10 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 1194, i32 1}
!11 = !{ptr @__UNIQUE_ID_license308, !10, !"__UNIQUE_ID_license308", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 1185, i32 11}
!14 = !{ptr @pl35x_nandc_driver, !15, !"pl35x_nandc_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 1181, i32 31}
!16 = !{ptr @nand_controller_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pl35x_nandc_ops, !20, !"pl35x_nandc_ops", i1 false, i1 false}
!20 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 987, i32 41}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 947, i32 4}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @pl35x_nand_attach_chip._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @pl35x_nand_attach_chip._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 979, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @pl35x_nand_attach_chip._entry.7, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @pl35x_nand_attach_chip._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @bbt_main_descr, !35, !"bbt_main_descr", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 196, i32 30}
!36 = !{ptr @bbt_pattern, !37, !"bbt_pattern", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 193, i32 11}
!38 = !{ptr @bbt_mirror_descr, !39, !"bbt_mirror_descr", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 206, i32 30}
!40 = !{ptr @mirror_pattern, !41, !"mirror_pattern", i1 false, i1 false}
!41 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 194, i32 11}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 896, i32 3}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pl35x_nand_init_hw_ecc_controller._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @pl35x_nand_init_hw_ecc_controller._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 925, i32 3}
!49 = !{ptr @pl35x_nand_init_hw_ecc_controller._entry.13, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @pl35x_nand_init_hw_ecc_controller._entry_ptr.15, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 249, i32 3}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @pl35x_smc_wait_for_irq._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @pl35x_smc_wait_for_irq._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 311, i32 3}
!58 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @pl35x_smc_force_byte_access._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @pl35x_smc_force_byte_access._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 267, i32 3}
!63 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @pl35x_smc_wait_for_ecc_done._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @pl35x_smc_wait_for_ecc_done._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @pl35x_ecc_ooblayout16_ops, !67, !"pl35x_ecc_ooblayout16_ops", i1 false, i1 false}
!67 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 187, i32 39}
!68 = !{ptr @pl35x_nandc_op_parser, !69, !"pl35x_nandc_op_parser", i1 false, i1 false}
!69 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 745, i32 36}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 791, i32 55}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 793, i32 3}
!74 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @pl35x_nfc_setup_interface._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @pl35x_nfc_setup_interface._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 1112, i32 3}
!79 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @pl35x_nand_chips_init._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @pl35x_nand_chips_init._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 1043, i32 33}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 1048, i32 3}
!86 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @pl35x_nand_chip_init._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @pl35x_nand_chip_init._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 1053, i32 3}
!91 = !{ptr @pl35x_nand_chip_init._entry.33, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @pl35x_nand_chip_init._entry_ptr.35, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 1068, i32 9}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 1070, i32 4}
!97 = !{ptr @pl35x_nand_chip_init._entry.37, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @pl35x_nand_chip_init._entry_ptr.39, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!101 = !{ptr @pl35x_nand_of_match, !102, !"pl35x_nand_of_match", i1 false, i1 false}
!102 = !{!"../drivers/mtd/nand/raw/pl35x-nand-controller.c", i32 1175, i32 34}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2155425775}
!113 = !{i64 5871285}
!114 = !{i64 2155368843}
!115 = !{i64 2155368369}
!116 = !{i64 5871703}
!117 = !{i64 2155378382}
!118 = !{i64 2155378615}
!119 = !{i64 2155426582}
!120 = !{i64 2155427309}
!121 = !{!"auto-init"}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{i64 2155417491}
!124 = !{i64 2155417732}
!125 = !{i64 2155380693}
!126 = !{i64 2155381145}
!127 = !{i64 2155391450}
!128 = !{i64 2155391859}
!129 = !{i64 2155382136}
!130 = !{i64 5871483}
!131 = !{i64 2155382504}
!132 = !{i64 2155387506}
!133 = !{i64 2155390055}
!134 = !{i64 2155390464}
!135 = !{i64 2155382973}
!136 = !{i64 2155383504}
!137 = !{i64 5871088}
!138 = !{i64 2155386789}
!139 = !{i64 2155371373}
!140 = !{i64 2155371871}
!141 = !{i64 2155369346}
!142 = !{i64 2155375563}
!143 = !{i64 2155376069}
!144 = !{i64 2155401410}
!145 = !{i64 2155401819}
!146 = !{i8 0, i8 2}
