; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/vf610_nfc.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/vf610_nfc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nand_op_parser = type { ptr, i32 }
%struct.nand_op_parser_data_constraints = type { i32 }
%struct.nand_op_parser_pattern_elem = type { i32, i8, %union.anon.51 }
%union.anon.51 = type { %struct.nand_op_parser_addr_constraints }
%struct.nand_op_parser_addr_constraints = type { i32 }
%struct.nand_op_parser_pattern = type { ptr, i32, ptr }
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
%struct.vf610_nfc = type { %struct.nand_controller, %struct.nand_chip, ptr, ptr, %struct.completion, i32, ptr, i8, i32 }
%struct.nand_controller = type { %struct.mutex, ptr }
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
%struct.nand_subop = type { i32, ptr, i32, i32, i32 }
%struct.nand_op_instr = type { i32, %union.anon.43, i32 }
%union.anon.43 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.44, i8 }
%union.anon.44 = type { ptr }

@__initcall__kmod_vf610_nfc__207_961_vf610_nfc_driver_init6 = internal global ptr @vf610_nfc_driver_init, section ".initcall6.init", align 4
@vf610_nfc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vf610_nfc_probe, ptr @vf610_nfc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vf610_nfc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vf610_nfc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vf610_nfc_driver_exit = internal global ptr @vf610_nfc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author208 = internal constant [57 x i8] c"vf610_nfc.author=Stefan Agner <stefan.agner@toradex.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description209 = internal constant [66 x i8] c"vf610_nfc.description=Freescale VF610/MPC5125 NFC MTD NAND driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file210 = internal constant [46 x i8] c"vf610_nfc.file=drivers/mtd/nand/raw/vf610_nfc\00", section ".modinfo", align 1
@__UNIQUE_ID_license211 = internal constant [22 x i8] c"vf610_nfc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vf610_nfc\00", [22 x i8] zeroinitializer }, align 32
@vf610_nfc_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-nfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@vf610_nfc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @vf610_nfc_suspend, ptr @vf610_nfc_resume, ptr @vf610_nfc_suspend, ptr @vf610_nfc_resume, ptr @vf610_nfc_suspend, ptr @vf610_nfc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vf610_nfc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 843, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to enable clock!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vf610_nfc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mtd/nand/raw/vf610_nfc.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vf610_nfc_probe._entry_ptr = internal global ptr @vf610_nfc_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,vf610-nfc-nandcs\00", [43 x i8] zeroinitializer }, align 32
@vf610_nfc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 860, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Only one NAND chip supported!\0A\00", [33 x i8] zeroinitializer }, align 32
@vf610_nfc_probe._entry_ptr.9 = internal global ptr @vf610_nfc_probe._entry.7, section ".printk_index", align 4
@vf610_nfc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 871, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NAND chip sub-node missing!\0A\00", [35 x i8] zeroinitializer }, align 32
@vf610_nfc_probe._entry_ptr.12 = internal global ptr @vf610_nfc_probe._entry.10, section ".printk_index", align 4
@vf610_nfc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 882, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error requesting IRQ!\0A\00", [41 x i8] zeroinitializer }, align 32
@vf610_nfc_probe._entry_ptr.15 = internal global ptr @vf610_nfc_probe._entry.13, section ".printk_index", align 4
@vf610_nfc_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @vf610_nfc_attach_chip, ptr null, ptr @vf610_nfc_exec_op, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@vf610_nfc_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 755, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported flash page size\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vf610_nfc_attach_chip\00", [42 x i8] zeroinitializer }, align 32
@vf610_nfc_attach_chip._entry_ptr = internal global ptr @vf610_nfc_attach_chip._entry, section ".printk_index", align 4
@vf610_nfc_attach_chip._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 763, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported flash with hwecc\0A\00", [34 x i8] zeroinitializer }, align 32
@vf610_nfc_attach_chip._entry_ptr.23 = internal global ptr @vf610_nfc_attach_chip._entry.21, section ".printk_index", align 4
@vf610_nfc_attach_chip._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 768, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Step size needs to be page size\0A\00", [63 x i8] zeroinitializer }, align 32
@vf610_nfc_attach_chip._entry_ptr.26 = internal global ptr @vf610_nfc_attach_chip._entry.24, section ".printk_index", align 4
@vf610_nfc_attach_chip._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.3, i32 785, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported ECC strength\0A\00", [38 x i8] zeroinitializer }, align 32
@vf610_nfc_attach_chip._entry_ptr.29 = internal global ptr @vf610_nfc_attach_chip._entry.27, section ".printk_index", align 4
@vf610_nfc_run.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vf610_nfc_run\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"col 0x%04x, row 0x%08x, cmd1 0x%08x, cmd2 0x%08x, len %d\0A\00", [38 x i8] zeroinitializer }, align 32
@vf610_nfc_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 304, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Timeout while waiting for BUSY.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vf610_nfc_done\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vf610_nfc_done._entry_ptr = internal global ptr @vf610_nfc_done._entry, section ".printk_index", align 4
@vf610_nfc_op_parser = internal constant { %struct.nand_op_parser, [24 x i8] } { %struct.nand_op_parser { ptr @.compoundliteral.36, i32 2 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem }>, [36 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem }> <{ %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.51 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 1, i8 1, %union.anon.51 { %struct.nand_op_parser_addr_constraints { i32 5 } } }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 1, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 2304 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.51 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.51 zeroinitializer } }>, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }>, [36 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }> <{ %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.51 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 1, i8 1, %union.anon.51 { %struct.nand_op_parser_addr_constraints { i32 5 } } }, %struct.nand_op_parser_pattern_elem { i32 0, i8 1, %union.anon.51 zeroinitializer }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.51 zeroinitializer }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 1, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 2304 } } } }>, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal constant { [2 x %struct.nand_op_parser_pattern], [40 x i8] } { [2 x %struct.nand_op_parser_pattern] [%struct.nand_op_parser_pattern { ptr @.compoundliteral, i32 5, ptr @vf610_nfc_cmd }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.35, i32 5, ptr @vf610_nfc_cmd }], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 32]
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"vf610_nfc_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 951, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 953, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"vf610_nfc_dt_ids\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 702, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"vf610_nfc_pm_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 949, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 843, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 856, i32 38 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 859, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 871, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 882, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [25 x i8] c"vf610_nfc_controller_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 801, i32 41 }
@___asan_gen_.92 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 464, i32 31 }
@___asan_gen_.98 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 87, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1105, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 755, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 763, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 768, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 785, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 339, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 304, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c"vf610_nfc_op_parser\00", align 1
@___asan_gen_.152 = private constant [36 x i8] c"../drivers/mtd/nand/raw/vf610_nfc.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 461, i32 36 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author208, ptr @__UNIQUE_ID_description209, ptr @__UNIQUE_ID_file210, ptr @__UNIQUE_ID_license211, ptr @__exitcall_vf610_nfc_driver_exit, ptr @__initcall__kmod_vf610_nfc__207_961_vf610_nfc_driver_init6, ptr @vf610_nfc_attach_chip._entry, ptr @vf610_nfc_attach_chip._entry.21, ptr @vf610_nfc_attach_chip._entry.24, ptr @vf610_nfc_attach_chip._entry.27, ptr @vf610_nfc_attach_chip._entry_ptr, ptr @vf610_nfc_attach_chip._entry_ptr.23, ptr @vf610_nfc_attach_chip._entry_ptr.26, ptr @vf610_nfc_attach_chip._entry_ptr.29, ptr @vf610_nfc_done._entry, ptr @vf610_nfc_done._entry_ptr, ptr @vf610_nfc_driver_exit, ptr @vf610_nfc_probe._entry, ptr @vf610_nfc_probe._entry.10, ptr @vf610_nfc_probe._entry.13, ptr @vf610_nfc_probe._entry.7, ptr @vf610_nfc_probe._entry_ptr, ptr @vf610_nfc_probe._entry_ptr.12, ptr @vf610_nfc_probe._entry_ptr.15, ptr @vf610_nfc_probe._entry_ptr.9, ptr @vf610_nfc_driver, ptr @.str, ptr @vf610_nfc_dt_ids, ptr @vf610_nfc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @vf610_nfc_controller_ops, ptr @.str.16, ptr @init_completion.__key, ptr @.str.17, ptr @nand_controller_init.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @vf610_nfc_op_parser, ptr @.compoundliteral, ptr @.compoundliteral.35, ptr @.compoundliteral.36], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_nfc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_nfc_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_nfc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_nfc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_nfc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_nfc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_nfc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_nfc_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_nfc_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_nfc_attach_chip._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_nfc_attach_chip._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_nfc_attach_chip._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_nfc_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_nfc_op_parser to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_nfc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @vf610_nfc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vf610_nfc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @vf610_nfc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_nfc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2344, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.vf610_nfc, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 8
  %chip3 = getelementptr inbounds %struct.vf610_nfc, ptr %call.i, i32 0, i32 1
  %owner = getelementptr inbounds %struct.vf610_nfc, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 55
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %owner, align 4
  %parent = getelementptr inbounds %struct.vf610_nfc, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %parent, align 8
  %name = getelementptr inbounds %struct.vf610_nfc, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 13
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %name, align 8
  %call7 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp = icmp slt i32 %call7, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %regs = getelementptr inbounds %struct.vf610_nfc, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.vf610_nfc, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call18, ptr %clk, align 4
  %cmp.i141 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %call.i142 = tail call i32 @clk_prepare(ptr noundef %call18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool.not.i = icmp eq i32 %call.i142, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end24.do.end_crit_edge

if.end24.do.end_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %if.end24
  %call1.i = tail call i32 @clk_enable(ptr noundef %call18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end30, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call18) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end24.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i142, %if.end24.do.end_crit_edge ]
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end.i
  %call32 = tail call ptr @of_match_device(ptr noundef nonnull @vf610_nfc_dt_ids, ptr noundef %dev) #7
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end30.err_disable_clk_crit_edge, label %if.end35

if.end30.err_disable_clk_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clk

if.end35:                                         ; preds = %if.end30
  %data = getelementptr inbounds %struct.of_device_id, ptr %call32, i32 0, i32 3
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  %variant = getelementptr inbounds %struct.vf610_nfc, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %variant, align 8
  %14 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev2, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call37 = tail call ptr @of_get_next_available_child(ptr noundef %17, ptr noundef null) #7
  %cmp38.not150 = icmp eq ptr %call37, null
  br i1 %cmp38.not150, label %if.end35.for.end_crit_edge, label %for.body.lr.ph

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end35
  %of_node.i.i.i = getelementptr inbounds %struct.vf610_nfc, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %child.0151 = phi ptr [ %call37, %for.body.lr.ph ], [ %call53, %for.inc.for.body_crit_edge ]
  %call39 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %child.0151, ptr noundef nonnull @.str.6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %for.body.for.inc_crit_edge, label %if.then41

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then41:                                        ; preds = %for.body
  %18 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node.i.i.i, align 8
  %tobool43.not = icmp eq ptr %19, null
  br i1 %tobool43.not, label %if.end49, label %do.end47

do.end47:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.8) #10
  tail call void @of_node_put(ptr noundef nonnull %child.0151) #7
  br label %err_disable_clk

if.end49:                                         ; preds = %if.then41
  %22 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %child.0151, ptr %of_node.i.i.i, align 8
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end49.for.inc_crit_edge

if.end49.for.inc_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then.i.i:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @of_property_read_string(ptr noundef nonnull %child.0151, ptr noundef nonnull @.str.16, ptr noundef %name) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i, %if.end49.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev2, align 8
  %of_node52 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %of_node52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node52, align 8
  %call53 = tail call ptr @of_get_next_available_child(ptr noundef %28, ptr noundef nonnull %child.0151) #7
  %cmp38.not = icmp eq ptr %call53, null
  br i1 %cmp38.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end35.for.end_crit_edge
  %of_node.i.i.i143 = getelementptr inbounds %struct.vf610_nfc, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 27
  %29 = ptrtoint ptr %of_node.i.i.i143 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node.i.i.i143, align 8
  %tobool55.not = icmp eq ptr %30, null
  br i1 %tobool55.not, label %do.end59, label %if.end61

do.end59:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.11) #10
  br label %err_disable_clk

if.end61:                                         ; preds = %for.end
  %options = getelementptr inbounds %struct.vf610_nfc, ptr %call.i, i32 0, i32 1, i32 6
  %33 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %options, align 8
  %or = or i32 %34, 512
  store i32 %or, ptr %options, align 8
  %cmd_done = getelementptr inbounds %struct.vf610_nfc, ptr %call.i, i32 0, i32 4
  %35 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %cmd_done, align 4
  %wait.i = getelementptr inbounds %struct.vf610_nfc, ptr %call.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #7
  %36 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev2, align 8
  %call.i144 = tail call i32 @devm_request_threaded_irq(ptr noundef %37, i32 noundef %call7, ptr noundef nonnull @vf610_nfc_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool64.not = icmp eq i32 %call.i144, 0
  br i1 %tobool64.not, label %if.end70, label %do.end68

do.end68:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.14) #10
  br label %err_disable_clk

if.end70:                                         ; preds = %if.end61
  tail call fastcc void @vf610_nfc_preinit_controller(ptr noundef nonnull %call.i)
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @nand_controller_init.__key) #7
  %ops = getelementptr inbounds %struct.nand_controller, ptr %call.i, i32 0, i32 1
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @vf610_nfc_controller_ops, ptr %ops, align 4
  %controller = getelementptr inbounds %struct.vf610_nfc, ptr %call.i, i32 0, i32 1, i32 32
  %41 = ptrtoint ptr %controller to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %controller, align 4
  %call.i145 = tail call i32 @nand_scan_with_ids(ptr noundef %chip3, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool74.not = icmp eq i32 %call.i145, 0
  br i1 %tobool74.not, label %if.end76, label %if.end70.err_disable_clk_crit_edge

if.end70.err_disable_clk_crit_edge:               ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_clk

if.end76:                                         ; preds = %if.end70
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call77 = tail call i32 @mtd_device_parse_register(ptr noundef %chip3, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end76.cleanup_crit_edge, label %err_cleanup_nand

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_cleanup_nand:                                 ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nand_cleanup(ptr noundef %chip3) #7
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %err_cleanup_nand, %if.end70.err_disable_clk_crit_edge, %do.end68, %do.end59, %do.end47, %if.end30.err_disable_clk_crit_edge
  %err.0 = phi i32 [ -22, %do.end47 ], [ %call.i144, %do.end68 ], [ %call.i145, %if.end70.err_disable_clk_crit_edge ], [ %call77, %err_cleanup_nand ], [ -19, %do.end59 ], [ -19, %if.end30.err_disable_clk_crit_edge ]
  %43 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %44) #7
  tail call void @clk_unprepare(ptr noundef %44) #7
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clk, %if.end76.cleanup_crit_edge, %do.end, %if.then21, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then13 ], [ %7, %if.then21 ], [ %retval.0.i.ph, %do.end ], [ %err.0, %err_disable_clk ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_nfc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.vf610_nfc, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @mtd_device_unregister(ptr noundef %chip1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !88

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 919, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %chip1) #7
  %clk = getelementptr inbounds %struct.vf610_nfc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_nfc_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i = getelementptr inbounds %struct.vf610_nfc, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16184
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %3 = and i32 %2, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %5, i32 16184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %3) #7, !srcloc !92
  %cmd_done = getelementptr inbounds %struct.vf610_nfc, ptr %data, i32 0, i32 4
  tail call void @complete(ptr noundef %cmd_done) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vf610_nfc_preinit_controller(ptr nocapture noundef readonly %nfc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i = getelementptr inbounds %struct.vf610_nfc, ptr %nfc, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16176
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %3 = and i32 %2, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %5, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %3) #7, !srcloc !92
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %7, i32 16176
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i9) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %9 = and i32 %8, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i11 = getelementptr i8, ptr %11, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i11, i32 %9) #7, !srcloc !92
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %13, i32 16176
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %15 = and i32 %14, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i15 = getelementptr i8, ptr %17, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i15, i32 %15) #7, !srcloc !92
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %19, i32 16176
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i17) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %21 = and i32 %20, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i19 = getelementptr i8, ptr %23, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i19, i32 %21) #7, !srcloc !92
  %24 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %25, i32 16176
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %27 = and i32 %26, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i23 = getelementptr i8, ptr %29, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i23, i32 %27) #7, !srcloc !92
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %31, i32 16176
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i25) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %33 = or i32 %32, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i26 = getelementptr i8, ptr %35, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i26, i32 %33) #7, !srcloc !92
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 16176
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %39 = and i32 %38, -3585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %41, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %39) #7, !srcloc !92
  %42 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %43, i32 16176
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %45 = and i32 %44, -251658241
  %46 = or i32 %45, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i31 = getelementptr i8, ptr %48, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i31, i32 %46) #7, !srcloc !92
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_nfc_attach_chip(ptr nocapture noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -96
  tail call fastcc void @vf610_nfc_init_controller(ptr noundef %add.ptr.i)
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %bbt_options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bbt_options, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %1, 262144
  %2 = ptrtoint ptr %bbt_options to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %bbt_options, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %3 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %writesize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %5 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %oobsize, align 4
  %add = add i32 %6, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2296, i32 %add)
  %cmp = icmp ugt i32 %add, 2296
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %chip, i32 2168
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.19) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %9 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp5.not = icmp eq i32 %10, 3
  br i1 %cmp5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %4)
  %cmp9.not = icmp ne i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp11 = icmp ult i32 %6, 64
  %or.cond = select i1 %cmp9.not, i1 %cmp11, i1 false
  br i1 %or.cond, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %dev16 = getelementptr i8, ptr %chip, i32 2168
  %11 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %4)
  %cmp20.not = icmp eq i32 %14, %4
  br i1 %cmp20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %dev25 = getelementptr i8, ptr %chip, i32 2168
  %15 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev25, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.25) #10
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp28 = icmp ugt i32 %6, 64
  br i1 %cmp28, label %if.then29, label %if.end26.if.end31_crit_edge

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %oobsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 64, ptr %oobsize, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26.if.end31_crit_edge
  %call32 = tail call ptr @nand_get_large_page_ooblayout() #7
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %18 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call32, ptr %ooblayout1.i, align 8
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %19 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %strength, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %do.end47 [
    i32 32, label %if.end31.if.end50_crit_edge
    i32 24, label %if.then40
  ]

if.end31.if.end50_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then40:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

do.end47:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %dev48 = getelementptr i8, ptr %chip, i32 2168
  %22 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev48, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end50:                                         ; preds = %if.then40, %if.end31.if.end50_crit_edge
  %.sink89 = phi i32 [ 6, %if.then40 ], [ 7, %if.end31.if.end50_crit_edge ]
  %.sink = phi i32 [ 45, %if.then40 ], [ 60, %if.end31.if.end50_crit_edge ]
  %ecc_mode41 = getelementptr i8, ptr %chip, i32 2244
  %24 = ptrtoint ptr %ecc_mode41 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink89, ptr %ecc_mode41, align 4
  %bytes43 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %25 = ptrtoint ptr %bytes43 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %bytes43, align 4
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %26 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @vf610_nfc_read_page, ptr %read_page, align 8
  %write_page = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %27 = ptrtoint ptr %write_page to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @vf610_nfc_write_page, ptr %write_page, align 4
  %read_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 16
  %28 = ptrtoint ptr %read_page_raw to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @vf610_nfc_read_page_raw, ptr %read_page_raw, align 8
  %write_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 17
  %29 = ptrtoint ptr %write_page_raw to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @vf610_nfc_write_page_raw, ptr %write_page_raw, align 4
  %read_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 24
  %30 = ptrtoint ptr %read_oob to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @vf610_nfc_read_oob, ptr %read_oob, align 8
  %write_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 25
  %31 = ptrtoint ptr %write_oob to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @vf610_nfc_write_oob, ptr %write_oob, align 4
  %32 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2048, ptr %size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end47, %do.end24, %do.end15, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -6, %do.end15 ], [ -6, %do.end24 ], [ 0, %if.end50 ], [ -6, %do.end47 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_nfc_exec_op(ptr noundef %chip, ptr noundef %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %check_only, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %variant.i = getelementptr i8, ptr %chip, i32 2232
  %0 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %variant.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op, align 4
  %regs.i.i = getelementptr i8, ptr %chip, i32 2172
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %5, i32 16140
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %7 = and i32 %6, -256
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %shl2.i = shl i32 16777216, %3
  %or.i = or i32 %8, %shl2.i
  %or3.i = or i32 %or.i, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #7
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %11, i32 16140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %9) #7, !srcloc !92
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i32 @nand_op_parser_exec_op(ptr noundef %chip, ptr noundef nonnull @vf610_nfc_op_parser, ptr noundef %op, i1 noundef zeroext %check_only) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vf610_nfc_init_controller(ptr nocapture noundef readonly %nfc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.vf610_nfc, ptr %nfc, i32 0, i32 1, i32 6
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %regs.i.i9 = getelementptr inbounds %struct.vf610_nfc, ptr %nfc, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i.i9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i9, align 4
  %add.ptr.i.i10 = getelementptr i8, ptr %3, i32 16176
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = or i32 %4, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %regs.i.i9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i9, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %7, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %5) #7, !srcloc !92
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = and i32 %4, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %regs.i.i9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i9, align 4
  %add.ptr.i4.i11 = getelementptr i8, ptr %10, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i11, i32 %8) #7, !srcloc !92
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ecc = getelementptr inbounds %struct.vf610_nfc, ptr %nfc, i32 0, i32 1, i32 33
  %11 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp = icmp eq i32 %12, 3
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i.i12 = getelementptr inbounds %struct.vf610_nfc, ptr %nfc, i32 0, i32 3
  %13 = ptrtoint ptr %regs.i.i12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i12, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %14, i32 16176
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %16 = and i32 %15, -49280
  %17 = or i32 %16, 49223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %regs.i.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i12, align 4
  %add.ptr.i4.i16 = getelementptr i8, ptr %19, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i16, i32 %17) #7, !srcloc !92
  %20 = ptrtoint ptr %regs.i.i12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i12, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %21, i32 16176
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %23 = or i32 %22, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %regs.i.i12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i12, align 4
  %add.ptr.i4.i20 = getelementptr i8, ptr %25, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i20, i32 %23) #7, !srcloc !92
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_large_page_ooblayout() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_nfc_read_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -96
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writesize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oobsize, align 4
  %add = add i32 %3, %1
  %variant.i = getelementptr i8, ptr %chip, i32 2232
  %4 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %variant.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 1
  br i1 %cmp.not.i, label %if.end.i, label %entry.vf610_nfc_select_target.exit_crit_edge

entry.vf610_nfc_select_target.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vf610_nfc_select_target.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %6 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_cs, align 4
  %regs.i.i = getelementptr i8, ptr %chip, i32 2172
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %9, i32 16140
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %11 = and i32 %10, -256
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %shl2.i = shl i32 16777216, %7
  %or.i = or i32 %12, %shl2.i
  %or3.i = or i32 %or.i, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #7
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %15, i32 16140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %13) #7, !srcloc !92
  br label %vf610_nfc_select_target.exit

vf610_nfc_select_target.exit:                     ; preds = %if.end.i, %entry.vf610_nfc_select_target.exit_crit_edge
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %16 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %options.i, align 8
  %and5.i = and i32 %17, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i = icmp eq i32 %and5.i, 0
  %row.0.v = select i1 %tobool.not.i, i32 65535, i32 16777215
  %row.0 = and i32 %row.0.v, %page
  %or4 = select i1 %tobool.not.i, i32 8183808, i32 8314880
  %ecc_mode = getelementptr i8, ptr %chip, i32 2244
  %18 = ptrtoint ptr %ecc_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ecc_mode, align 4
  %regs.i.i.i = getelementptr i8, ptr %chip, i32 2172
  %20 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 16176
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %23 = and i32 %22, -3585
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %shl.i.i = shl i32 %19, 17
  %or.i.i = or i32 %24, %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %26 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %27, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %25) #7, !srcloc !92
  tail call fastcc void @vf610_nfc_run(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef %row.0, i32 noundef 805306368, i32 noundef %or4, i32 noundef %add)
  %28 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i52 = getelementptr i8, ptr %29, i32 16176
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i52) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %31 = and i32 %30, -3585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i4.i.i53 = getelementptr i8, ptr %33, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i53, i32 %31) #7, !srcloc !92
  %34 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i.i, align 4
  %36 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %writesize, align 4
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %35, i32 noundef %37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  br i1 %tobool.not, label %vf610_nfc_select_target.exit.if.end_crit_edge, label %if.then

vf610_nfc_select_target.exit.if.end_crit_edge:    ; preds = %vf610_nfc_select_target.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %vf610_nfc_select_target.exit
  call void @__sanitizer_cov_trace_pc() #9
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %38 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %oob_poi, align 4
  %40 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.i.i, align 4
  %42 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %writesize, align 4
  %add.ptr10 = getelementptr i8, ptr %41, i32 %43
  %44 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %oobsize, align 4
  tail call void @mmiocpy(ptr noundef %39, ptr noundef %add.ptr10, i32 noundef %45) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %vf610_nfc_select_target.exit.if.end_crit_edge
  %oob_poi12 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %46 = ptrtoint ptr %oob_poi12 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %oob_poi12, align 4
  %strength.i = getelementptr i8, ptr %chip, i32 2084
  %48 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %strength.i, align 4
  %50 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %51, i32 2300
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #7, !srcloc !89
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %and8.i = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool.not.i55 = icmp eq i32 %and8.i, 0
  br i1 %tobool.not.i55, label %vf610_nfc_correct_data.exit.thread, label %vf610_nfc_correct_data.exit

vf610_nfc_correct_data.exit.thread:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = and i32 %53, 63
  br label %if.else

vf610_nfc_correct_data.exit:                      ; preds = %if.end
  %div.i = sdiv i32 %49, 2
  %data_access.i = getelementptr i8, ptr %chip, i32 2240
  %54 = ptrtoint ptr %data_access.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %data_access.i, align 8
  %55 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %oobsize, align 4
  %call11.i = tail call i32 @nand_read_oob_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %47, i32 noundef %56) #7
  %57 = ptrtoint ptr %data_access.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %data_access.i, align 8
  %size.i = getelementptr i8, ptr %chip, i32 2072
  %58 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size.i, align 8
  %60 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %oobsize, align 4
  %call16.i = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef %buf, i32 noundef %59, ptr noundef %47, i32 noundef %61, ptr noundef null, i32 noundef 0, i32 noundef %div.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp = icmp slt i32 %call16.i, 0
  br i1 %cmp, label %if.then14, label %vf610_nfc_correct_data.exit.if.else_crit_edge

vf610_nfc_correct_data.exit.if.else_crit_edge:    ; preds = %vf610_nfc_correct_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then14:                                        ; preds = %vf610_nfc_correct_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %cleanup

if.else:                                          ; preds = %vf610_nfc_correct_data.exit.if.else_crit_edge, %vf610_nfc_correct_data.exit.thread
  %retval.0.i64 = phi i32 [ %conv6.i, %vf610_nfc_correct_data.exit.thread ], [ %call16.i, %vf610_nfc_correct_data.exit.if.else_crit_edge ]
  %ecc_stats15 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then14
  %ecc_stats15.sink65 = phi ptr [ %ecc_stats15, %if.else ], [ %failed, %if.then14 ]
  %retval.0.i64.sink = phi i32 [ %retval.0.i64, %if.else ], [ 1, %if.then14 ]
  %retval.0 = phi i32 [ %retval.0.i64, %if.else ], [ 0, %if.then14 ]
  %62 = ptrtoint ptr %ecc_stats15.sink65 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ecc_stats15.sink65, align 4
  %add16 = add i32 %63, %retval.0.i64.sink
  store i32 %add16, ptr %ecc_stats15.sink65, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_nfc_write_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -96
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writesize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oobsize, align 4
  %add = add i32 %3, %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #7
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %status, align 1, !annotation !93
  %variant.i = getelementptr i8, ptr %chip, i32 2232
  %5 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %variant.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 1
  br i1 %cmp.not.i, label %if.end.i, label %entry.vf610_nfc_select_target.exit_crit_edge

entry.vf610_nfc_select_target.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vf610_nfc_select_target.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %7 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_cs, align 4
  %regs.i.i = getelementptr i8, ptr %chip, i32 2172
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %10, i32 16140
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %12 = and i32 %11, -256
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %shl2.i = shl i32 16777216, %8
  %or.i = or i32 %13, %shl2.i
  %or3.i = or i32 %or.i, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #7
  %15 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %16, i32 16140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %14) #7, !srcloc !92
  br label %vf610_nfc_select_target.exit

vf610_nfc_select_target.exit:                     ; preds = %if.end.i, %entry.vf610_nfc_select_target.exit_crit_edge
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %17 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %options.i, align 8
  %and5.i = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i = icmp eq i32 %and5.i, 0
  %row.0.v = select i1 %tobool.not.i, i32 65535, i32 16777215
  %row.0 = and i32 %row.0.v, %page
  %regs = getelementptr i8, ptr %chip, i32 2172
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %21 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %writesize, align 4
  tail call void @mmiocpy(ptr noundef %20, ptr noundef %buf, i32 noundef %22) #7
  %or7 = select i1 %tobool.not.i, i32 -2139242496, i32 -2139111424
  %ecc_mode = getelementptr i8, ptr %chip, i32 2244
  %23 = ptrtoint ptr %ecc_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ecc_mode, align 4
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 16176
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %28 = and i32 %27, -3585
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  %shl.i.i = shl i32 %24, 17
  %or.i.i = or i32 %29, %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %32, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %30) #7, !srcloc !92
  tail call fastcc void @vf610_nfc_run(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef %row.0, i32 noundef 268435456, i32 noundef %or7, i32 noundef %add)
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %add.ptr.i.i.i38 = getelementptr i8, ptr %34, i32 16176
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i38) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %36 = and i32 %35, -3585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %add.ptr.i4.i.i39 = getelementptr i8, ptr %38, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i39, i32 %36) #7, !srcloc !92
  %call8 = call i32 @nand_status_op(ptr noundef %chip, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %vf610_nfc_select_target.exit.cleanup_crit_edge

vf610_nfc_select_target.exit.cleanup_crit_edge:   ; preds = %vf610_nfc_select_target.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %vf610_nfc_select_target.exit
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %status, align 1
  %41 = and i8 %40, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool9.not = icmp eq i8 %41, 0
  %. = select i1 %tobool9.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %vf610_nfc_select_target.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %vf610_nfc_select_target.exit.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_nfc_read_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data_access = getelementptr i8, ptr %chip, i32 2240
  %0 = ptrtoint ptr %data_access to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %data_access, align 8
  %call1 = tail call i32 @nand_read_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #7
  %1 = ptrtoint ptr %data_access to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %data_access, align 8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_nfc_write_page_raw(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data_access = getelementptr i8, ptr %chip, i32 2240
  %0 = ptrtoint ptr %data_access to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %data_access, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %1 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %writesize, align 4
  %call2 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %buf, i32 noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.thread23

if.end.thread23:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %data_access to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %data_access, align 8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool3.not = icmp eq i32 %oob_required, 0
  br i1 %tobool3.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %data_access to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %data_access, align 8
  br label %if.end8

if.end:                                           ; preds = %land.lhs.true
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %5 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %7 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oobsize, align 4
  %call4 = tail call i32 @nand_write_data_op(ptr noundef %chip, ptr noundef %6, i32 noundef %8, i1 noundef zeroext false) #7
  %9 = ptrtoint ptr %data_access to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %data_access, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool6.not = icmp eq i32 %call4, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %if.end.thread
  %call9 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %if.end.thread23
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call4, %if.end.cleanup_crit_edge ], [ %call2, %if.end.thread23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_nfc_read_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data_access = getelementptr i8, ptr %chip, i32 2240
  %0 = ptrtoint ptr %data_access to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %data_access, align 8
  %call1 = tail call i32 @nand_read_oob_std(ptr noundef %chip, i32 noundef %page) #7
  %1 = ptrtoint ptr %data_access to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %data_access, align 8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_nfc_write_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data_access = getelementptr i8, ptr %chip, i32 2240
  %0 = ptrtoint ptr %data_access to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %data_access, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %1 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %writesize, align 4
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %3 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %5 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %oobsize, align 4
  %call2 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef %2, ptr noundef %4, i32 noundef %6) #7
  %7 = ptrtoint ptr %data_access to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %data_access, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vf610_nfc_run(ptr noundef %nfc, i32 noundef %col, i32 noundef %row, i32 noundef %cmd1, i32 noundef %cmd2, i32 noundef %trfr_sz) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i.i = getelementptr inbounds %struct.vf610_nfc, ptr %nfc, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 16136
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %3 = and i32 %2, 65535
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or.i = or i32 %4, %col
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %7, i32 16136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %5) #7, !srcloc !92
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %9, i32 16140
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #7, !srcloc !89
  %11 = shl i32 %10, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %or.i17 = or i32 %11, %row
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i17) #7
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i18 = getelementptr i8, ptr %14, i32 16140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i18, i32 %12) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %trfr_sz) #7
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 16172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %cmd1) #7
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %20, i32 16128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %18) #7, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %cmd2) #7
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %23, i32 16132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %21) #7, !srcloc !92
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vf610_nfc_run.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vf610_nfc_run, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !94

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.vf610_nfc, ptr %nfc, i32 0, i32 2
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vf610_nfc_run.__UNIQUE_ID_ddebug206, ptr noundef %25, ptr noundef nonnull @.str.31, i32 noundef %col, i32 noundef %row, i32 noundef %cmd1, i32 noundef %cmd2, i32 noundef %trfr_sz) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 16184
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %29 = or i32 %28, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %31, i32 16184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %29) #7, !srcloc !92
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i7.i = getelementptr i8, ptr %33, i32 16132
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7.i) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %35 = or i32 %34, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i9.i = getelementptr i8, ptr %37, i32 16132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i9.i, i32 %35) #7, !srcloc !92
  %cmd_done.i = getelementptr inbounds %struct.vf610_nfc, ptr %nfc, i32 0, i32 4
  %call1.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done.i, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.end.vf610_nfc_done.exit_crit_edge

do.end.vf610_nfc_done.exit_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %vf610_nfc_done.exit

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.vf610_nfc, ptr %nfc, i32 0, i32 2
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.32) #10
  br label %vf610_nfc_done.exit

vf610_nfc_done.exit:                              ; preds = %do.end.i, %do.end.vf610_nfc_done.exit_crit_edge
  %40 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i11.i = getelementptr i8, ptr %41, i32 16184
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i11.i) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %43 = or i32 %42, 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i12.i = getelementptr i8, ptr %45, i32 16184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i12.i, i32 %43) #7, !srcloc !92
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_oob_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_status_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_raw(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_write_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_oob_std(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_op_parser_exec_op(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_nfc_cmd(ptr noundef %chip, ptr noundef %subop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chip, i32 -96
  %ninstrs.i = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 2
  %0 = ptrtoint ptr %ninstrs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ninstrs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i.not = icmp eq i32 %1, 0
  br i1 %cmp.not.i.not, label %entry.cleanup_crit_edge, label %vf610_get_next_instr.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

vf610_get_next_instr.exit:                        ; preds = %entry
  %instrs.i = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  %2 = ptrtoint ptr %instrs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instrs.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %vf610_get_next_instr.exit.cleanup_crit_edge, label %land.lhs.true

vf610_get_next_instr.exit.cleanup_crit_edge:      ; preds = %vf610_get_next_instr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %vf610_get_next_instr.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then3, label %land.lhs.true.land.lhs.true8_crit_edge

land.lhs.true.land.lhs.true8_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true8

if.then3:                                         ; preds = %land.lhs.true
  %ctx = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctx, align 4
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 %conv, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not.i205 = icmp ugt i32 %1, 1
  br i1 %cmp.not.i205, label %if.end6, label %if.then3.if.end117.thread456_crit_edge

if.then3.if.end117.thread456_crit_edge:           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117.thread456

if.end6:                                          ; preds = %if.then3
  %8 = ptrtoint ptr %instrs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %instrs.i, align 4
  %arrayidx.i207 = getelementptr %struct.nand_op_instr, ptr %9, i32 1
  %tobool7.not = icmp eq ptr %arrayidx.i207, null
  br i1 %tobool7.not, label %if.end6.if.end117.thread456_crit_edge, label %land.lhs.true8thread-pre-split

if.end6.if.end117.thread456_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117.thread456

land.lhs.true8thread-pre-split:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %arrayidx.i207 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %arrayidx.i207, align 4
  br label %land.lhs.true8

land.lhs.true8:                                   ; preds = %land.lhs.true8thread-pre-split, %land.lhs.true.land.lhs.true8_crit_edge
  %11 = phi i32 [ %.pr, %land.lhs.true8thread-pre-split ], [ %5, %land.lhs.true.land.lhs.true8_crit_edge ]
  %code.0275 = phi i32 [ 16384, %land.lhs.true8thread-pre-split ], [ 0, %land.lhs.true.land.lhs.true8_crit_edge ]
  %cmd2.0274 = phi i32 [ %shl, %land.lhs.true8thread-pre-split ], [ 0, %land.lhs.true.land.lhs.true8_crit_edge ]
  %instr.0273 = phi ptr [ %arrayidx.i207, %land.lhs.true8thread-pre-split ], [ %3, %land.lhs.true.land.lhs.true8_crit_edge ]
  %op_id.2272 = phi i32 [ 1, %land.lhs.true8thread-pre-split ], [ 0, %land.lhs.true.land.lhs.true8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp10 = icmp eq i32 %11, 1
  br i1 %cmp10, label %if.then12, label %land.lhs.true8.land.lhs.true40_crit_edge

land.lhs.true8.land.lhs.true40_crit_edge:         ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true40

if.then12:                                        ; preds = %land.lhs.true8
  %call13 = tail call i32 @nand_subop_get_num_addr_cyc(ptr noundef %subop, i32 noundef %op_id.2272) #7
  %call14 = tail call i32 @nand_subop_get_addr_start_off(ptr noundef %subop, i32 noundef %op_id.2272) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %call13)
  %cmp15472 = icmp slt i32 %call14, %call13
  br i1 %cmp15472, label %for.body.lr.ph, label %if.then12.for.end_crit_edge

if.then12.for.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then12
  %addrs = getelementptr inbounds %struct.nand_op_instr, ptr %instr.0273, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addrs, align 4
  br label %for.body

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %for.body.lr.ph
  %i.0475 = phi i32 [ %call14, %for.body.lr.ph ], [ %inc, %if.end29.for.body_crit_edge ]
  %row.0474 = phi i32 [ 0, %for.body.lr.ph ], [ %row.1, %if.end29.for.body_crit_edge ]
  %col.0473 = phi i32 [ 0, %for.body.lr.ph ], [ %col.1, %if.end29.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %13, i32 %i.0475
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0475)
  %cmp18 = icmp slt i32 %i.0475, 2
  %conv21 = zext i8 %15 to i32
  %mul = shl i32 %i.0475, 3
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %shl22 = shl i32 %conv21, %mul
  %or23 = or i32 %shl22, %col.0473
  br label %if.end29

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %mul26 = add i32 %mul, -16
  %shl27 = shl i32 %conv21, %mul26
  %or28 = or i32 %shl27, %row.0474
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then20
  %col.1 = phi i32 [ %or23, %if.then20 ], [ %col.0473, %if.else ]
  %row.1 = phi i32 [ %row.0474, %if.then20 ], [ %or28, %if.else ]
  %inc = add nsw i32 %i.0475, 1
  %exitcond.not = icmp eq i32 %inc, %call13
  br i1 %exitcond.not, label %if.end29.for.end_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end29.for.end_crit_edge, %if.then12.for.end_crit_edge
  %col.0.lcssa = phi i32 [ 0, %if.then12.for.end_crit_edge ], [ %col.1, %if.end29.for.end_crit_edge ]
  %row.0.lcssa = phi i32 [ 0, %if.then12.for.end_crit_edge ], [ %row.1, %if.end29.for.end_crit_edge ]
  %add = sub i32 14, %call13
  %shl31.neg = shl nsw i32 -1, %add
  %and34 = and i32 %shl31.neg, 16383
  %or36 = or i32 %and34, %code.0275
  %add.i211 = add nuw nsw i32 %op_id.2272, 1
  %16 = ptrtoint ptr %ninstrs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ninstrs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i211, i32 %17)
  %cmp.not.i213 = icmp ult i32 %add.i211, %17
  br i1 %cmp.not.i213, label %if.end38, label %for.end.if.end117.thread456_crit_edge

for.end.if.end117.thread456_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117.thread456

if.end38:                                         ; preds = %for.end
  %18 = ptrtoint ptr %instrs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %instrs.i, align 4
  %arrayidx.i215 = getelementptr %struct.nand_op_instr, ptr %19, i32 %add.i211
  %tobool39.not = icmp eq ptr %arrayidx.i215, null
  br i1 %tobool39.not, label %if.end38.if.end117.thread456_crit_edge, label %if.end38.land.lhs.true40_crit_edge

if.end38.land.lhs.true40_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true40

if.end38.if.end117.thread456_crit_edge:           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117.thread456

land.lhs.true40:                                  ; preds = %if.end38.land.lhs.true40_crit_edge, %land.lhs.true8.land.lhs.true40_crit_edge
  %code.1299 = phi i32 [ %or36, %if.end38.land.lhs.true40_crit_edge ], [ %code.0275, %land.lhs.true8.land.lhs.true40_crit_edge ]
  %row.2298 = phi i32 [ %row.0.lcssa, %if.end38.land.lhs.true40_crit_edge ], [ 0, %land.lhs.true8.land.lhs.true40_crit_edge ]
  %col.2297 = phi i32 [ %col.0.lcssa, %if.end38.land.lhs.true40_crit_edge ], [ 0, %land.lhs.true8.land.lhs.true40_crit_edge ]
  %instr.1296 = phi ptr [ %arrayidx.i215, %if.end38.land.lhs.true40_crit_edge ], [ %instr.0273, %land.lhs.true8.land.lhs.true40_crit_edge ]
  %op_id.4295 = phi i32 [ %add.i211, %if.end38.land.lhs.true40_crit_edge ], [ %op_id.2272, %land.lhs.true8.land.lhs.true40_crit_edge ]
  %20 = ptrtoint ptr %instr.1296 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %instr.1296, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp42 = icmp eq i32 %21, 3
  br i1 %cmp42, label %if.then44, label %land.lhs.true40.land.lhs.true57_crit_edge

land.lhs.true40.land.lhs.true57_crit_edge:        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true57

if.then44:                                        ; preds = %land.lhs.true40
  %call45 = tail call i32 @nand_subop_get_data_len(ptr noundef %subop, i32 noundef %op_id.4295) #7
  %call46 = tail call i32 @nand_subop_get_data_start_off(ptr noundef %subop, i32 noundef %op_id.4295) #7
  %force_8bit = getelementptr inbounds %struct.nand_op_instr, ptr %instr.1296, i32 0, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %force_8bit to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %force_8bit, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool48 = icmp ne i8 %23, 0
  %regs = getelementptr i8, ptr %chip, i32 2172
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr49 = getelementptr i8, ptr %25, i32 %call46
  %buf = getelementptr inbounds %struct.nand_op_instr, ptr %instr.1296, i32 0, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf, align 4
  %add.ptr51 = getelementptr i8, ptr %27, i32 %call46
  tail call void @mmiocpy(ptr noundef %add.ptr49, ptr noundef %add.ptr51, i32 noundef %call45) #7
  %or53 = or i32 %code.1299, 256
  %add.i219 = add nuw nsw i32 %op_id.4295, 1
  %28 = ptrtoint ptr %ninstrs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ninstrs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i219, i32 %29)
  %cmp.not.i221 = icmp ult i32 %add.i219, %29
  br i1 %cmp.not.i221, label %if.end55, label %if.then44.if.end78.thread_crit_edge

if.then44.if.end78.thread_crit_edge:              ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.thread

if.end55:                                         ; preds = %if.then44
  %30 = ptrtoint ptr %instrs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %instrs.i, align 4
  %arrayidx.i223 = getelementptr %struct.nand_op_instr, ptr %31, i32 %add.i219
  %tobool56.not = icmp eq ptr %arrayidx.i223, null
  br i1 %tobool56.not, label %if.end55.if.end78.thread_crit_edge, label %land.lhs.true57thread-pre-split

if.end55.if.end78.thread_crit_edge:               ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.thread

land.lhs.true57thread-pre-split:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %arrayidx.i223 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr478 = load i32, ptr %arrayidx.i223, align 4
  br label %land.lhs.true57

land.lhs.true57:                                  ; preds = %land.lhs.true57thread-pre-split, %land.lhs.true40.land.lhs.true57_crit_edge
  %33 = phi i32 [ %.pr478, %land.lhs.true57thread-pre-split ], [ %21, %land.lhs.true40.land.lhs.true57_crit_edge ]
  %force8bit.0.off0335 = phi i1 [ %tobool48, %land.lhs.true57thread-pre-split ], [ false, %land.lhs.true40.land.lhs.true57_crit_edge ]
  %code.2334 = phi i32 [ %or53, %land.lhs.true57thread-pre-split ], [ %code.1299, %land.lhs.true40.land.lhs.true57_crit_edge ]
  %offset.0333 = phi i32 [ %call46, %land.lhs.true57thread-pre-split ], [ 0, %land.lhs.true40.land.lhs.true57_crit_edge ]
  %trfr_sz.0332 = phi i32 [ %call45, %land.lhs.true57thread-pre-split ], [ 0, %land.lhs.true40.land.lhs.true57_crit_edge ]
  %instr.2331 = phi ptr [ %arrayidx.i223, %land.lhs.true57thread-pre-split ], [ %instr.1296, %land.lhs.true40.land.lhs.true57_crit_edge ]
  %op_id.6330 = phi i32 [ %add.i219, %land.lhs.true57thread-pre-split ], [ %op_id.4295, %land.lhs.true40.land.lhs.true57_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp59 = icmp eq i32 %33, 0
  br i1 %cmp59, label %if.then61, label %land.lhs.true57.land.lhs.true71_crit_edge

land.lhs.true57.land.lhs.true71_crit_edge:        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true71

if.then61:                                        ; preds = %land.lhs.true57
  %ctx62 = getelementptr inbounds %struct.nand_op_instr, ptr %instr.2331, i32 0, i32 1
  %34 = ptrtoint ptr %ctx62 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ctx62, align 4
  %conv64 = zext i8 %35 to i32
  %shl65 = shl nuw i32 %conv64, 24
  %or67 = or i32 %code.2334, 128
  %add.i227 = add nuw nsw i32 %op_id.6330, 1
  %36 = ptrtoint ptr %ninstrs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ninstrs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i227, i32 %37)
  %cmp.not.i229 = icmp ult i32 %add.i227, %37
  br i1 %cmp.not.i229, label %if.end69, label %if.then61.if.end78.thread_crit_edge

if.then61.if.end78.thread_crit_edge:              ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.thread

if.end69:                                         ; preds = %if.then61
  %38 = ptrtoint ptr %instrs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %instrs.i, align 4
  %arrayidx.i231 = getelementptr %struct.nand_op_instr, ptr %39, i32 %add.i227
  %tobool70.not = icmp eq ptr %arrayidx.i231, null
  br i1 %tobool70.not, label %if.end69.if.end78.thread_crit_edge, label %if.end69.land.lhs.true71_crit_edge

if.end69.land.lhs.true71_crit_edge:               ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true71

if.end69.if.end78.thread_crit_edge:               ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.thread

land.lhs.true71:                                  ; preds = %if.end69.land.lhs.true71_crit_edge, %land.lhs.true57.land.lhs.true71_crit_edge
  %code.3375 = phi i32 [ %or67, %if.end69.land.lhs.true71_crit_edge ], [ %code.2334, %land.lhs.true57.land.lhs.true71_crit_edge ]
  %cmd1.0374 = phi i32 [ %shl65, %if.end69.land.lhs.true71_crit_edge ], [ 0, %land.lhs.true57.land.lhs.true71_crit_edge ]
  %instr.3373 = phi ptr [ %arrayidx.i231, %if.end69.land.lhs.true71_crit_edge ], [ %instr.2331, %land.lhs.true57.land.lhs.true71_crit_edge ]
  %op_id.8372 = phi i32 [ %add.i227, %if.end69.land.lhs.true71_crit_edge ], [ %op_id.6330, %land.lhs.true57.land.lhs.true71_crit_edge ]
  %40 = ptrtoint ptr %instr.3373 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %instr.3373, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp73 = icmp eq i32 %41, 4
  br i1 %cmp73, label %if.then75, label %land.lhs.true71.land.lhs.true80_crit_edge

land.lhs.true71.land.lhs.true80_crit_edge:        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true80

if.then75:                                        ; preds = %land.lhs.true71
  %or76 = or i32 %code.3375, 64
  %add.i235 = add nuw i32 %op_id.8372, 1
  %42 = ptrtoint ptr %ninstrs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ninstrs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i235, i32 %43)
  %cmp.not.i237 = icmp ult i32 %add.i235, %43
  br i1 %cmp.not.i237, label %if.end78, label %if.then75.if.end78.thread_crit_edge

if.then75.if.end78.thread_crit_edge:              ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.thread

if.end78.thread:                                  ; preds = %if.then75.if.end78.thread_crit_edge, %if.end69.if.end78.thread_crit_edge, %if.then61.if.end78.thread_crit_edge, %if.end55.if.end78.thread_crit_edge, %if.then44.if.end78.thread_crit_edge
  %cmd1.0353.ph = phi i32 [ %cmd1.0374, %if.then75.if.end78.thread_crit_edge ], [ %shl65, %if.end69.if.end78.thread_crit_edge ], [ %shl65, %if.then61.if.end78.thread_crit_edge ], [ 0, %if.end55.if.end78.thread_crit_edge ], [ 0, %if.then44.if.end78.thread_crit_edge ]
  %trfr_sz.0313349.ph = phi i32 [ %trfr_sz.0332, %if.then75.if.end78.thread_crit_edge ], [ %trfr_sz.0332, %if.end69.if.end78.thread_crit_edge ], [ %trfr_sz.0332, %if.then61.if.end78.thread_crit_edge ], [ %call45, %if.end55.if.end78.thread_crit_edge ], [ %call45, %if.then44.if.end78.thread_crit_edge ]
  %offset.0314348.ph = phi i32 [ %offset.0333, %if.then75.if.end78.thread_crit_edge ], [ %offset.0333, %if.end69.if.end78.thread_crit_edge ], [ %offset.0333, %if.then61.if.end78.thread_crit_edge ], [ %call46, %if.end55.if.end78.thread_crit_edge ], [ %call46, %if.then44.if.end78.thread_crit_edge ]
  %force8bit.0.off0315347.ph = phi i1 [ %force8bit.0.off0335, %if.then75.if.end78.thread_crit_edge ], [ %force8bit.0.off0335, %if.end69.if.end78.thread_crit_edge ], [ %force8bit.0.off0335, %if.then61.if.end78.thread_crit_edge ], [ %tobool48, %if.end55.if.end78.thread_crit_edge ], [ %tobool48, %if.then44.if.end78.thread_crit_edge ]
  %code.4.ph = phi i32 [ %or76, %if.then75.if.end78.thread_crit_edge ], [ %or67, %if.end69.if.end78.thread_crit_edge ], [ %or67, %if.then61.if.end78.thread_crit_edge ], [ %or53, %if.end55.if.end78.thread_crit_edge ], [ %or53, %if.then44.if.end78.thread_crit_edge ]
  br i1 %force8bit.0.off0315347.ph, label %if.end78.thread.land.lhs.true95_crit_edge, label %if.end78.thread.if.end117.thread456_crit_edge

if.end78.thread.if.end117.thread456_crit_edge:    ; preds = %if.end78.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117.thread456

if.end78.thread.land.lhs.true95_crit_edge:        ; preds = %if.end78.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true95

if.end117.thread456:                              ; preds = %if.end78.thread.if.end117.thread456_crit_edge, %if.end38.if.end117.thread456_crit_edge, %for.end.if.end117.thread456_crit_edge, %if.end6.if.end117.thread456_crit_edge, %if.then3.if.end117.thread456_crit_edge
  %code.4.ph471 = phi i32 [ %code.4.ph, %if.end78.thread.if.end117.thread456_crit_edge ], [ 16384, %if.then3.if.end117.thread456_crit_edge ], [ 16384, %if.end6.if.end117.thread456_crit_edge ], [ %or36, %for.end.if.end117.thread456_crit_edge ], [ %or36, %if.end38.if.end117.thread456_crit_edge ]
  %trfr_sz.0313349.ph470 = phi i32 [ %trfr_sz.0313349.ph, %if.end78.thread.if.end117.thread456_crit_edge ], [ 0, %if.then3.if.end117.thread456_crit_edge ], [ 0, %if.end6.if.end117.thread456_crit_edge ], [ 0, %for.end.if.end117.thread456_crit_edge ], [ 0, %if.end38.if.end117.thread456_crit_edge ]
  %cmd2.0265283312350.ph469 = phi i32 [ %cmd2.0274, %if.end78.thread.if.end117.thread456_crit_edge ], [ %shl, %if.then3.if.end117.thread456_crit_edge ], [ %shl, %if.end6.if.end117.thread456_crit_edge ], [ %cmd2.0274, %for.end.if.end117.thread456_crit_edge ], [ %cmd2.0274, %if.end38.if.end117.thread456_crit_edge ]
  %col.2284311351.ph468 = phi i32 [ %col.2297, %if.end78.thread.if.end117.thread456_crit_edge ], [ 0, %if.then3.if.end117.thread456_crit_edge ], [ 0, %if.end6.if.end117.thread456_crit_edge ], [ %col.0.lcssa, %for.end.if.end117.thread456_crit_edge ], [ %col.0.lcssa, %if.end38.if.end117.thread456_crit_edge ]
  %row.2285310352.ph467 = phi i32 [ %row.2298, %if.end78.thread.if.end117.thread456_crit_edge ], [ 0, %if.then3.if.end117.thread456_crit_edge ], [ 0, %if.end6.if.end117.thread456_crit_edge ], [ %row.0.lcssa, %for.end.if.end117.thread456_crit_edge ], [ %row.0.lcssa, %if.end38.if.end117.thread456_crit_edge ]
  %cmd1.0353.ph466 = phi i32 [ %cmd1.0353.ph, %if.end78.thread.if.end117.thread456_crit_edge ], [ 0, %if.then3.if.end117.thread456_crit_edge ], [ 0, %if.end6.if.end117.thread456_crit_edge ], [ 0, %for.end.if.end117.thread456_crit_edge ], [ 0, %if.end38.if.end117.thread456_crit_edge ]
  %shl100446 = shl i32 %code.4.ph471, 8
  %or101447 = or i32 %cmd2.0265283312350.ph469, %shl100446
  tail call fastcc void @vf610_nfc_run(ptr noundef %add.ptr.i, i32 noundef %col.2284311351.ph468, i32 noundef %row.2285310352.ph467, i32 noundef %cmd1.0353.ph466, i32 noundef %or101447, i32 noundef %trfr_sz.0313349.ph470)
  br label %cleanup

if.end78:                                         ; preds = %if.then75
  %44 = ptrtoint ptr %instrs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %instrs.i, align 4
  %arrayidx.i239 = getelementptr %struct.nand_op_instr, ptr %45, i32 %add.i235
  %tobool79.not = icmp eq ptr %arrayidx.i239, null
  br i1 %tobool79.not, label %if.end78.if.end92_crit_edge, label %land.lhs.true80thread-pre-split

if.end78.if.end92_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

land.lhs.true80thread-pre-split:                  ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %arrayidx.i239 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr479 = load i32, ptr %arrayidx.i239, align 4
  br label %land.lhs.true80

land.lhs.true80:                                  ; preds = %land.lhs.true80thread-pre-split, %land.lhs.true71.land.lhs.true80_crit_edge
  %47 = phi i32 [ %.pr479, %land.lhs.true80thread-pre-split ], [ %41, %land.lhs.true71.land.lhs.true80_crit_edge ]
  %code.4414 = phi i32 [ %or76, %land.lhs.true80thread-pre-split ], [ %code.3375, %land.lhs.true71.land.lhs.true80_crit_edge ]
  %instr.4413 = phi ptr [ %arrayidx.i239, %land.lhs.true80thread-pre-split ], [ %instr.3373, %land.lhs.true71.land.lhs.true80_crit_edge ]
  %op_id.10412 = phi i32 [ %add.i235, %land.lhs.true80thread-pre-split ], [ %op_id.8372, %land.lhs.true71.land.lhs.true80_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp82 = icmp eq i32 %47, 2
  br i1 %cmp82, label %if.then84, label %land.lhs.true80.if.end92_crit_edge

land.lhs.true80.if.end92_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then84:                                        ; preds = %land.lhs.true80
  %call85 = tail call i32 @nand_subop_get_data_len(ptr noundef %subop, i32 noundef %op_id.10412) #7
  %call86 = tail call i32 @nand_subop_get_data_start_off(ptr noundef %subop, i32 noundef %op_id.10412) #7
  %force_8bit88 = getelementptr inbounds %struct.nand_op_instr, ptr %instr.4413, i32 0, i32 1, i32 0, i32 2
  %48 = ptrtoint ptr %force_8bit88 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %force_8bit88, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool89.not = icmp eq i8 %49, 0
  %or91 = or i32 %code.4414, 32
  br i1 %tobool89.not, label %if.end99.thread, label %if.then84.land.lhs.true95_crit_edge

if.then84.land.lhs.true95_crit_edge:              ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true95

if.end99.thread:                                  ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  %shl100487 = shl i32 %or91, 8
  %or101488 = or i32 %shl100487, %cmd2.0274
  tail call fastcc void @vf610_nfc_run(ptr noundef %add.ptr.i, i32 noundef %col.2297, i32 noundef %row.2298, i32 noundef %cmd1.0374, i32 noundef %or101488, i32 noundef %call85)
  br label %land.lhs.true103

if.end92:                                         ; preds = %land.lhs.true80.if.end92_crit_edge, %if.end78.if.end92_crit_edge
  %tobool79.not392 = phi i1 [ false, %land.lhs.true80.if.end92_crit_edge ], [ true, %if.end78.if.end92_crit_edge ]
  %instr.4391 = phi ptr [ %instr.4413, %land.lhs.true80.if.end92_crit_edge ], [ null, %if.end78.if.end92_crit_edge ]
  %code.5 = phi i32 [ %code.4414, %land.lhs.true80.if.end92_crit_edge ], [ %or76, %if.end78.if.end92_crit_edge ]
  br i1 %force8bit.0.off0335, label %if.end92.land.lhs.true95_crit_edge, label %if.end92.if.end99_crit_edge

if.end92.if.end99_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.end92.land.lhs.true95_crit_edge:               ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true95

land.lhs.true95:                                  ; preds = %if.end92.land.lhs.true95_crit_edge, %if.then84.land.lhs.true95_crit_edge, %if.end78.thread.land.lhs.true95_crit_edge
  %code.5433 = phi i32 [ %or91, %if.then84.land.lhs.true95_crit_edge ], [ %code.5, %if.end92.land.lhs.true95_crit_edge ], [ %code.4.ph, %if.end78.thread.land.lhs.true95_crit_edge ]
  %offset.1431 = phi i32 [ %call86, %if.then84.land.lhs.true95_crit_edge ], [ %offset.0333, %if.end92.land.lhs.true95_crit_edge ], [ %offset.0314348.ph, %if.end78.thread.land.lhs.true95_crit_edge ]
  %trfr_sz.1429 = phi i32 [ %call85, %if.then84.land.lhs.true95_crit_edge ], [ %trfr_sz.0332, %if.end92.land.lhs.true95_crit_edge ], [ %trfr_sz.0313349.ph, %if.end78.thread.land.lhs.true95_crit_edge ]
  %cmd1.0353387427 = phi i32 [ %cmd1.0374, %if.then84.land.lhs.true95_crit_edge ], [ %cmd1.0374, %if.end92.land.lhs.true95_crit_edge ], [ %cmd1.0353.ph, %if.end78.thread.land.lhs.true95_crit_edge ]
  %instr.4391419 = phi ptr [ %instr.4413, %if.then84.land.lhs.true95_crit_edge ], [ %instr.4391, %if.end92.land.lhs.true95_crit_edge ], [ null, %if.end78.thread.land.lhs.true95_crit_edge ]
  %tobool79.not392417 = phi i1 [ false, %if.then84.land.lhs.true95_crit_edge ], [ %tobool79.not392, %if.end92.land.lhs.true95_crit_edge ], [ true, %if.end78.thread.land.lhs.true95_crit_edge ]
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %50 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %options, align 8
  %and96 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %land.lhs.true95.if.end99_crit_edge, label %if.then98

land.lhs.true95.if.end99_crit_edge:               ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then98:                                        ; preds = %land.lhs.true95
  %regs.i.i = getelementptr i8, ptr %chip, i32 2172
  %52 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 16176
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %55 = and i32 %54, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %56 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %57, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %55) #7, !srcloc !92
  %shl100449 = shl i32 %code.5433, 8
  %or101450 = or i32 %shl100449, %cmd2.0274
  tail call fastcc void @vf610_nfc_run(ptr noundef %add.ptr.i, i32 noundef %col.2297, i32 noundef %row.2298, i32 noundef %cmd1.0353387427, i32 noundef %or101450, i32 noundef %trfr_sz.1429)
  br i1 %tobool79.not392417, label %if.then98.land.lhs.true120_crit_edge, label %if.then98.land.lhs.true103_crit_edge

if.then98.land.lhs.true103_crit_edge:             ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true103

if.then98.land.lhs.true120_crit_edge:             ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true120

if.end99:                                         ; preds = %land.lhs.true95.if.end99_crit_edge, %if.end92.if.end99_crit_edge
  %force8bit.1.off0434 = phi i1 [ true, %land.lhs.true95.if.end99_crit_edge ], [ false, %if.end92.if.end99_crit_edge ]
  %code.5432 = phi i32 [ %code.5433, %land.lhs.true95.if.end99_crit_edge ], [ %code.5, %if.end92.if.end99_crit_edge ]
  %offset.1430 = phi i32 [ %offset.1431, %land.lhs.true95.if.end99_crit_edge ], [ %offset.0333, %if.end92.if.end99_crit_edge ]
  %trfr_sz.1428 = phi i32 [ %trfr_sz.1429, %land.lhs.true95.if.end99_crit_edge ], [ %trfr_sz.0332, %if.end92.if.end99_crit_edge ]
  %cmd1.0353387426 = phi i32 [ %cmd1.0353387427, %land.lhs.true95.if.end99_crit_edge ], [ %cmd1.0374, %if.end92.if.end99_crit_edge ]
  %instr.4391418 = phi ptr [ %instr.4391419, %land.lhs.true95.if.end99_crit_edge ], [ %instr.4391, %if.end92.if.end99_crit_edge ]
  %tobool79.not392416 = phi i1 [ %tobool79.not392417, %land.lhs.true95.if.end99_crit_edge ], [ %tobool79.not392, %if.end92.if.end99_crit_edge ]
  %shl100 = shl i32 %code.5432, 8
  %or101 = or i32 %shl100, %cmd2.0274
  tail call fastcc void @vf610_nfc_run(ptr noundef %add.ptr.i, i32 noundef %col.2297, i32 noundef %row.2298, i32 noundef %cmd1.0353387426, i32 noundef %or101, i32 noundef %trfr_sz.1428)
  br i1 %tobool79.not392416, label %if.end99.if.end117_crit_edge, label %if.end99.land.lhs.true103_crit_edge

if.end99.land.lhs.true103_crit_edge:              ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true103

if.end99.if.end117_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

land.lhs.true103:                                 ; preds = %if.end99.land.lhs.true103_crit_edge, %if.then98.land.lhs.true103_crit_edge, %if.end99.thread
  %instr.4391418454 = phi ptr [ %instr.4391419, %if.then98.land.lhs.true103_crit_edge ], [ %instr.4391418, %if.end99.land.lhs.true103_crit_edge ], [ %instr.4413, %if.end99.thread ]
  %trfr_sz.1428453 = phi i32 [ %trfr_sz.1429, %if.then98.land.lhs.true103_crit_edge ], [ %trfr_sz.1428, %if.end99.land.lhs.true103_crit_edge ], [ %call85, %if.end99.thread ]
  %offset.1430452 = phi i32 [ %offset.1431, %if.then98.land.lhs.true103_crit_edge ], [ %offset.1430, %if.end99.land.lhs.true103_crit_edge ], [ %call86, %if.end99.thread ]
  %force8bit.1.off0434451 = phi i1 [ true, %if.then98.land.lhs.true103_crit_edge ], [ %force8bit.1.off0434, %if.end99.land.lhs.true103_crit_edge ], [ false, %if.end99.thread ]
  %58 = ptrtoint ptr %instr.4391418454 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %instr.4391418454, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp105 = icmp eq i32 %59, 2
  br i1 %cmp105, label %if.then107, label %land.lhs.true103.if.end117_crit_edge

land.lhs.true103.if.end117_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.then107:                                       ; preds = %land.lhs.true103
  %buf109 = getelementptr inbounds %struct.nand_op_instr, ptr %instr.4391418454, i32 0, i32 1, i32 0, i32 1
  %60 = ptrtoint ptr %buf109 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buf109, align 4
  %add.ptr110 = getelementptr i8, ptr %61, i32 %offset.1430452
  %regs111 = getelementptr i8, ptr %chip, i32 2172
  %62 = ptrtoint ptr %regs111 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs111, align 4
  %add.ptr113 = getelementptr i8, ptr %63, i32 %offset.1430452
  tail call void @mmiocpy(ptr noundef %add.ptr110, ptr noundef %add.ptr113, i32 noundef %trfr_sz.1428453) #7
  br i1 %force8bit.1.off0434451, label %if.then107.land.lhs.true120_crit_edge, label %if.then107.cleanup_crit_edge

if.then107.cleanup_crit_edge:                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then107.land.lhs.true120_crit_edge:            ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true120

if.end117:                                        ; preds = %land.lhs.true103.if.end117_crit_edge, %if.end99.if.end117_crit_edge
  %force8bit.1.off0434448 = phi i1 [ %force8bit.1.off0434451, %land.lhs.true103.if.end117_crit_edge ], [ %force8bit.1.off0434, %if.end99.if.end117_crit_edge ]
  br i1 %force8bit.1.off0434448, label %if.end117.land.lhs.true120_crit_edge, label %if.end117.cleanup_crit_edge

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end117.land.lhs.true120_crit_edge:             ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true120

land.lhs.true120:                                 ; preds = %if.end117.land.lhs.true120_crit_edge, %if.then107.land.lhs.true120_crit_edge, %if.then98.land.lhs.true120_crit_edge
  %options121 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %64 = ptrtoint ptr %options121 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %options121, align 8
  %and122 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %land.lhs.true120.cleanup_crit_edge, label %if.then124

land.lhs.true120.cleanup_crit_edge:               ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then124:                                       ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i.i243 = getelementptr i8, ptr %chip, i32 2172
  %66 = ptrtoint ptr %regs.i.i243 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i.i243, align 4
  %add.ptr.i.i244 = getelementptr i8, ptr %67, i32 16176
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i244) #7, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %69 = or i32 %68, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %70 = ptrtoint ptr %regs.i.i243 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i.i243, align 4
  %add.ptr.i4.i245 = getelementptr i8, ptr %71, i32 16176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i245, i32 %69) #7, !srcloc !92
  br label %cleanup

cleanup:                                          ; preds = %if.then124, %land.lhs.true120.cleanup_crit_edge, %if.end117.cleanup_crit_edge, %if.then107.cleanup_crit_edge, %if.end117.thread456, %vf610_get_next_instr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vf610_get_next_instr.exit.cleanup_crit_edge ], [ 0, %if.then124 ], [ 0, %land.lhs.true120.cleanup_crit_edge ], [ 0, %if.end117.cleanup_crit_edge ], [ 0, %if.end117.thread456 ], [ 0, %if.then107.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_num_addr_cyc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_addr_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_data_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_data_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_nfc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.vf610_nfc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_nfc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.vf610_nfc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @vf610_nfc_preinit_controller(ptr noundef %1)
  tail call fastcc void @vf610_nfc_init_controller(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !73, !75, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__initcall__kmod_vf610_nfc__207_961_vf610_nfc_driver_init6, !1, !"__initcall__kmod_vf610_nfc__207_961_vf610_nfc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 961, i32 1}
!2 = !{ptr @__exitcall_vf610_nfc_driver_exit, !1, !"__exitcall_vf610_nfc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author208, !4, !"__UNIQUE_ID_author208", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 963, i32 1}
!5 = !{ptr @__UNIQUE_ID_description209, !6, !"__UNIQUE_ID_description209", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 964, i32 1}
!7 = !{ptr @__UNIQUE_ID_file210, !8, !"__UNIQUE_ID_file210", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 965, i32 1}
!9 = !{ptr @__UNIQUE_ID_license211, !8, !"__UNIQUE_ID_license211", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 953, i32 11}
!12 = !{ptr @vf610_nfc_driver, !13, !"vf610_nfc_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 951, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 843, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @vf610_nfc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @vf610_nfc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 856, i32 38}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 859, i32 5}
!26 = !{ptr @vf610_nfc_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @vf610_nfc_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 871, i32 3}
!30 = !{ptr @vf610_nfc_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @vf610_nfc_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 882, i32 3}
!34 = !{ptr @vf610_nfc_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @vf610_nfc_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!38 = !{ptr @init_completion.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../include/linux/completion.h", i32 87, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @nand_controller_init.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @vf610_nfc_controller_ops, !45, !"vf610_nfc_controller_ops", i1 false, i1 false}
!45 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 801, i32 41}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 755, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @vf610_nfc_attach_chip._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @vf610_nfc_attach_chip._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 763, i32 3}
!53 = !{ptr @vf610_nfc_attach_chip._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @vf610_nfc_attach_chip._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 768, i32 3}
!57 = !{ptr @vf610_nfc_attach_chip._entry.24, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @vf610_nfc_attach_chip._entry_ptr.26, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 785, i32 3}
!61 = !{ptr @vf610_nfc_attach_chip._entry.27, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @vf610_nfc_attach_chip._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 339, i32 2}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @vf610_nfc_run.__UNIQUE_ID_ddebug206, !64, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 304, i32 3}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @vf610_nfc_done._entry, !68, !"_entry", i1 false, i1 false}
!72 = !{ptr @vf610_nfc_done._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @vf610_nfc_op_parser, !74, !"vf610_nfc_op_parser", i1 false, i1 false}
!74 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 461, i32 36}
!75 = !{ptr @vf610_nfc_dt_ids, !76, !"vf610_nfc_dt_ids", i1 false, i1 false}
!76 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 702, i32 34}
!77 = !{ptr @vf610_nfc_pm_ops, !78, !"vf610_nfc_pm_ops", i1 false, i1 false}
!78 = !{!"../drivers/mtd/nand/raw/vf610_nfc.c", i32 949, i32 8}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{i64 4679846}
!90 = !{i64 2153482731}
!91 = !{i64 2153483112}
!92 = !{i64 4679428}
!93 = !{!"auto-init"}
!94 = !{i64 2148977658, i64 2148977663, i64 2148977676, i64 2148977720, i64 2148977754, i64 2148977775}
!95 = !{i8 0, i8 2}
