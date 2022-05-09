; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/arasan-nand-controller.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/arasan-nand-controller.c"
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
%struct.nand_ecc_caps = type { ptr, i32, ptr }
%struct.nand_ecc_step_info = type { i32, ptr, i32 }
%struct.nand_op_parser = type { ptr, i32 }
%struct.nand_op_parser_pattern_elem = type { i32, i8, %union.anon.81 }
%union.anon.81 = type { %struct.nand_op_parser_addr_constraints }
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
%struct.arasan_nfc = type { ptr, ptr, ptr, ptr, %struct.nand_controller, %struct.list_head, i32, ptr, i32, i32, i32, i32 }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anand = type { %struct.list_head, %struct.nand_chip, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, ptr, ptr, ptr, ptr, i32 }
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
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.75, i32 }
%union.anon.75 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.76, i8 }
%union.anon.76 = type { ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.nand_subop = type { i32, ptr, i32, i32, i32 }
%struct.anfc_op = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr }

@__initcall__kmod_arasan_nand_controller__410_1524_anfc_driver_init6 = internal global ptr @anfc_driver_init, section ".initcall6.init", align 4
@anfc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @anfc_probe, ptr @anfc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @anfc_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_anfc_driver_exit = internal global ptr @anfc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file411 = internal constant [72 x i8] c"arasan_nand_controller.file=drivers/mtd/nand/raw/arasan-nand-controller\00", section ".modinfo", align 1
@__UNIQUE_ID_license412 = internal constant [38 x i8] c"arasan_nand_controller.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author413 = internal constant [77 x i8] c"arasan_nand_controller.author=Punnaiah Choudary Kalluri <punnaia@xilinx.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author414 = internal constant [75 x i8] c"arasan_nand_controller.author=Naga Sureshkumar Relli <nagasure@xilinx.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author415 = internal constant [72 x i8] c"arasan_nand_controller.author=Miquel Raynal <miquel.raynal@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description416 = internal constant [71 x i8] c"arasan_nand_controller.description=Arasan NAND Flash Controller Driver\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arasan-nand-controller\00", [41 x i8] zeroinitializer }, align 32
@anfc_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynqmp-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arasan,nfc-v3p10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@anfc_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @anfc_attach_chip, ptr @anfc_detach_chip, ptr @anfc_exec_op, ptr @anfc_setup_interface }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"controller\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@anfc_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1247, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported ECC mode: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"anfc_attach_chip\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/mtd/nand/raw/arasan-nand-controller.c\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@anfc_attach_chip._entry_ptr = internal global ptr @anfc_attach_chip._entry, section ".printk_index", align 4
@anfc_init_hw_ecc_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 1121, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported page size %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"anfc_init_hw_ecc_controller\00", [36 x i8] zeroinitializer }, align 32
@anfc_init_hw_ecc_controller._entry_ptr = internal global ptr @anfc_init_hw_ecc_controller._entry, section ".printk_index", align 4
@anfc_hw_ecc_caps = internal constant { %struct.nand_ecc_caps, [20 x i8] } { %struct.nand_ecc_caps { ptr @anfc_hw_ecc_step_infos, i32 2, ptr @anfc_calc_hw_ecc_bytes }, [20 x i8] zeroinitializer }, align 32
@anfc_init_hw_ecc_controller._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.6, i32 1143, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported strength %d\0A\00", [39 x i8] zeroinitializer }, align 32
@anfc_init_hw_ecc_controller._entry_ptr.13 = internal global ptr @anfc_init_hw_ecc_controller._entry.11, section ".printk_index", align 4
@anfc_init_hw_ecc_controller._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.6, i32 1157, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported step size %d\0A\00", [38 x i8] zeroinitializer }, align 32
@anfc_init_hw_ecc_controller._entry_ptr.16 = internal global ptr @anfc_init_hw_ecc_controller._entry.14, section ".printk_index", align 4
@anfc_hw_ecc_step_infos = internal constant { [2 x %struct.nand_ecc_step_info], [40 x i8] } { [2 x %struct.nand_ecc_step_info] [%struct.nand_ecc_step_info { i32 512, ptr @anfc_hw_ecc_512_strengths, i32 3 }, %struct.nand_ecc_step_info { i32 1024, ptr @anfc_hw_ecc_1024_strengths, i32 1 }], [40 x i8] zeroinitializer }, align 32
@anfc_hw_ecc_512_strengths = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 8, i32 12], [20 x i8] zeroinitializer }, align 32
@anfc_hw_ecc_1024_strengths = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 24], [28 x i8] zeroinitializer }, align 32
@anfc_select_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.6, i32 353, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to change clock rate\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"anfc_select_target\00", [45 x i8] zeroinitializer }, align 32
@anfc_select_target._entry_ptr = internal global ptr @anfc_select_target._entry, section ".printk_index", align 4
@anfc_select_target._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.6, i32 360, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to re-enable the controller clock\0A\00", [54 x i8] zeroinitializer }, align 32
@anfc_select_target._entry_ptr.21 = internal global ptr @anfc_select_target._entry.19, section ".printk_index", align 4
@anfc_read_page_hw_ecc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 425, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Buffer mapping error\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"anfc_read_page_hw_ecc\00", [42 x i8] zeroinitializer }, align 32
@anfc_read_page_hw_ecc._entry_ptr = internal global ptr @anfc_read_page_hw_ecc._entry, section ".printk_index", align 4
@anfc_read_page_hw_ecc._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.6, i32 437, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error reading page %d\0A\00", [41 x i8] zeroinitializer }, align 32
@anfc_read_page_hw_ecc._entry_ptr.26 = internal global ptr @anfc_read_page_hw_ecc._entry.24, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@anfc_wait_for_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 243, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Timeout waiting for event 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"anfc_wait_for_event\00", [44 x i8] zeroinitializer }, align 32
@anfc_wait_for_event._entry_ptr = internal global ptr @anfc_wait_for_event._entry, section ".printk_index", align 4
@anfc_write_page_hw_ecc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.31, ptr @.str.6, i32 548, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"anfc_write_page_hw_ecc\00", [41 x i8] zeroinitializer }, align 32
@anfc_write_page_hw_ecc._entry_ptr = internal global ptr @anfc_write_page_hw_ecc._entry, section ".printk_index", align 4
@anfc_write_page_hw_ecc._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.6, i32 559, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error writing page %d\0A\00", [41 x i8] zeroinitializer }, align 32
@anfc_write_page_hw_ecc._entry_ptr.34 = internal global ptr @anfc_write_page_hw_ecc._entry.32, section ".printk_index", align 4
@anfc_op_parser = internal constant { %struct.nand_op_parser, [24 x i8] } { %struct.nand_op_parser { ptr @.compoundliteral.42, i32 8 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }>, [48 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }> <{ %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.81 { %struct.nand_op_parser_addr_constraints { i32 5 } } }, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.81 zeroinitializer }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 1048576 } } } }>, [48 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }>, [60 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }> <{ %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.81 { %struct.nand_op_parser_addr_constraints { i32 5 } } }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 4096 } } } }>, [60 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }>, [36 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }> <{ %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.81 { %struct.nand_op_parser_addr_constraints { i32 5 } } }, %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 4, i8 1, %union.anon.81 zeroinitializer }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 1, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 1048576 } } } }>, [36 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal constant { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem }>, [48 x i8] } { <{ %struct.nand_op_parser_pattern_elem, %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } }, %struct.nand_op_parser_pattern_elem }> <{ %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.81 { %struct.nand_op_parser_addr_constraints { i32 5 } } }, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 3, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 1048576 } } }, %struct.nand_op_parser_pattern_elem zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal constant { [2 x %struct.nand_op_parser_pattern_elem], [40 x i8] } { [2 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 4, i8 0, %union.anon.81 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal constant { [4 x %struct.nand_op_parser_pattern_elem], [48 x i8] } { [4 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 1, i8 0, %union.anon.81 { %struct.nand_op_parser_addr_constraints { i32 5 } } }, %struct.nand_op_parser_pattern_elem zeroinitializer, %struct.nand_op_parser_pattern_elem { i32 4, i8 0, %union.anon.81 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal constant { <{ %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }>, [40 x i8] } { <{ %struct.nand_op_parser_pattern_elem, { i32, i8, { %struct.nand_op_parser_data_constraints } } }> <{ %struct.nand_op_parser_pattern_elem zeroinitializer, { i32, i8, { %struct.nand_op_parser_data_constraints } } { i32 2, i8 0, { %struct.nand_op_parser_data_constraints } { %struct.nand_op_parser_data_constraints { i32 1048576 } } } }>, [40 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal constant { [1 x %struct.nand_op_parser_pattern_elem], [20 x i8] } { [1 x %struct.nand_op_parser_pattern_elem] [%struct.nand_op_parser_pattern_elem { i32 4, i8 0, %union.anon.81 zeroinitializer }], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal constant { [8 x %struct.nand_op_parser_pattern], [32 x i8] } { [8 x %struct.nand_op_parser_pattern] [%struct.nand_op_parser_pattern { ptr @.compoundliteral, i32 4, ptr @anfc_param_read_type_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.35, i32 3, ptr @anfc_param_write_type_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.36, i32 5, ptr @anfc_data_read_type_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.37, i32 4, ptr @anfc_data_write_type_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.38, i32 2, ptr @anfc_reset_type_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.39, i32 4, ptr @anfc_erase_type_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.40, i32 2, ptr @anfc_status_type_exec }, %struct.nand_op_parser_pattern { ptr @.compoundliteral.41, i32 1, ptr @anfc_wait_type_exec }], [32 x i8] zeroinitializer }, align 32
@anfc_wait_for_rb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.6, i32 265, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Timeout waiting for R/B 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"anfc_wait_for_rb\00", [47 x i8] zeroinitializer }, align 32
@anfc_wait_for_rb._entry_ptr = internal global ptr @anfc_wait_for_rb._entry, section ".printk_index", align 4
@anfc_rw_pio_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.6, i32 681, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PIO %s ready signal not received\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"anfc_rw_pio_op\00", [17 x i8] zeroinitializer }, align 32
@anfc_rw_pio_op._entry_ptr = internal global ptr @anfc_rw_pio_op._entry, section ".printk_index", align 4
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Read\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Write\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xlnx,zynqmp-nand-controller\00", [36 x i8] zeroinitializer }, align 32
@anfc_parse_cs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.6, i32 1413, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Assign a single native CS when using GPIOs\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"anfc_parse_cs\00", [18 x i8] zeroinitializer }, align 32
@anfc_parse_cs._entry_ptr = internal global ptr @anfc_parse_cs._entry, section ".printk_index", align 4
@anfc_default_cs_array = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@anfc_chips_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.6, i32 1366, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Incorrect number of NAND chips (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"anfc_chips_init\00", [16 x i8] zeroinitializer }, align 32
@anfc_chips_init._entry_ptr = internal global ptr @anfc_chips_init._entry, section ".printk_index", align 4
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@anfc_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.6, i32 1283, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid reg property\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"anfc_chip_init\00", [17 x i8] zeroinitializer }, align 32
@anfc_chip_init._entry_ptr = internal global ptr @anfc_chip_init._entry, section ".printk_index", align 4
@anfc_chip_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.6, i32 1296, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid CS property: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@anfc_chip_init._entry_ptr.59 = internal global ptr @anfc_chip_init._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nand-rb\00", [24 x i8] zeroinitializer }, align 32
@anfc_chip_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.56, ptr @.str.6, i32 1307, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Wrong RB %d\0A\00", [19 x i8] zeroinitializer }, align 32
@anfc_chip_init._entry_ptr.63 = internal global ptr @anfc_chip_init._entry.61, section ".printk_index", align 4
@anfc_chip_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.56, ptr @.str.6, i32 1322, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NAND label property is mandatory\0A\00", [62 x i8] zeroinitializer }, align 32
@anfc_chip_init._entry_ptr.66 = internal global ptr @anfc_chip_init._entry.64, section ".printk_index", align 4
@anfc_chip_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.56, ptr @.str.6, i32 1328, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Scan operation failed\0A\00", [41 x i8] zeroinitializer }, align 32
@anfc_chip_init._entry_ptr.69 = internal global ptr @anfc_chip_init._entry.67, section ".printk_index", align 4
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@switch.table.anfc_attach_chip = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 3, i32 2, i32 1, i32 1, i32 1, i32 4], [40 x i8] zeroinitializer }, align 32
@switch.table.anfc_setup_interface = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 5, i32 4, i32 3, i32 2, i32 2], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.72 = internal global [7 x i64] [i64 5, i64 32, i64 512, i64 2048, i64 4096, i64 8192, i64 16384]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 1024]
@__sancov_gen_cov_switch_values.76 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"anfc_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1516, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1518, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [9 x i8] c"anfc_ids\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1505, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant [9 x i8] c"anfc_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1262, i32 41 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1452, i32 49 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1456, i32 42 }
@___asan_gen_.95 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1105, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1246, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1121, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"anfc_hw_ecc_caps\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1098, i32 35 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1143, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1157, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [23 x i8] c"anfc_hw_ecc_step_infos\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1085, i32 40 }
@___asan_gen_.146 = private unnamed_addr constant [26 x i8] c"anfc_hw_ecc_512_strengths\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1081, i32 18 }
@___asan_gen_.149 = private unnamed_addr constant [27 x i8] c"anfc_hw_ecc_1024_strengths\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1083, i32 18 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 353, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 359, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 425, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 437, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 326, i32 6 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 243, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 548, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 559, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [15 x i8] c"anfc_op_parser\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 847, i32 36 }
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 264, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 680, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1054, i32 34 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1412, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant [22 x i8] c"anfc_default_cs_array\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 121, i32 26 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1365, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1281, i32 55 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1283, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1296, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1302, i32 33 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1307, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1322, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.306 = private constant [49 x i8] c"../drivers/mtd/nand/raw/arasan-nand-controller.c\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1328, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 464, i32 31 }
@___asan_gen_.311 = private unnamed_addr constant [30 x i8] c"switch.table.anfc_attach_chip\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [34 x i8] c"switch.table.anfc_setup_interface\00", align 1
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_author413, ptr @__UNIQUE_ID_author414, ptr @__UNIQUE_ID_author415, ptr @__UNIQUE_ID_description416, ptr @__UNIQUE_ID_file411, ptr @__UNIQUE_ID_license412, ptr @__exitcall_anfc_driver_exit, ptr @__initcall__kmod_arasan_nand_controller__410_1524_anfc_driver_init6, ptr @anfc_attach_chip._entry, ptr @anfc_attach_chip._entry_ptr, ptr @anfc_chip_init._entry, ptr @anfc_chip_init._entry.57, ptr @anfc_chip_init._entry.61, ptr @anfc_chip_init._entry.64, ptr @anfc_chip_init._entry.67, ptr @anfc_chip_init._entry_ptr, ptr @anfc_chip_init._entry_ptr.59, ptr @anfc_chip_init._entry_ptr.63, ptr @anfc_chip_init._entry_ptr.66, ptr @anfc_chip_init._entry_ptr.69, ptr @anfc_chips_init._entry, ptr @anfc_chips_init._entry_ptr, ptr @anfc_driver_exit, ptr @anfc_init_hw_ecc_controller._entry, ptr @anfc_init_hw_ecc_controller._entry.11, ptr @anfc_init_hw_ecc_controller._entry.14, ptr @anfc_init_hw_ecc_controller._entry_ptr, ptr @anfc_init_hw_ecc_controller._entry_ptr.13, ptr @anfc_init_hw_ecc_controller._entry_ptr.16, ptr @anfc_parse_cs._entry, ptr @anfc_parse_cs._entry_ptr, ptr @anfc_read_page_hw_ecc._entry, ptr @anfc_read_page_hw_ecc._entry.24, ptr @anfc_read_page_hw_ecc._entry_ptr, ptr @anfc_read_page_hw_ecc._entry_ptr.26, ptr @anfc_rw_pio_op._entry, ptr @anfc_rw_pio_op._entry_ptr, ptr @anfc_select_target._entry, ptr @anfc_select_target._entry.19, ptr @anfc_select_target._entry_ptr, ptr @anfc_select_target._entry_ptr.21, ptr @anfc_wait_for_event._entry, ptr @anfc_wait_for_event._entry_ptr, ptr @anfc_wait_for_rb._entry, ptr @anfc_wait_for_rb._entry_ptr, ptr @anfc_write_page_hw_ecc._entry, ptr @anfc_write_page_hw_ecc._entry.32, ptr @anfc_write_page_hw_ecc._entry_ptr, ptr @anfc_write_page_hw_ecc._entry_ptr.34, ptr @anfc_driver, ptr @.str, ptr @anfc_ids, ptr @anfc_ops, ptr @.str.1, ptr @.str.2, ptr @nand_controller_init.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @anfc_hw_ecc_caps, ptr @.str.12, ptr @.str.15, ptr @anfc_hw_ecc_step_infos, ptr @anfc_hw_ecc_512_strengths, ptr @anfc_hw_ecc_1024_strengths, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @anfc_op_parser, ptr @.compoundliteral, ptr @.compoundliteral.35, ptr @.compoundliteral.36, ptr @.compoundliteral.37, ptr @.compoundliteral.38, ptr @.compoundliteral.39, ptr @.compoundliteral.40, ptr @.compoundliteral.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @anfc_default_cs_array, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @switch.table.anfc_attach_chip, ptr @switch.table.anfc_setup_interface], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_init_hw_ecc_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_hw_ecc_caps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_init_hw_ecc_controller._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_init_hw_ecc_controller._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_hw_ecc_step_infos to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_hw_ecc_512_strengths to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_hw_ecc_1024_strengths to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_select_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_select_target._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_read_page_hw_ecc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_read_page_hw_ecc._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_wait_for_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_write_page_hw_ecc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_write_page_hw_ecc._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_op_parser to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_wait_for_rb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_rw_pio_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_parse_cs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_default_cs_array to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_chips_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_chip_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_chip_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_chip_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anfc_chip_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.anfc_attach_chip to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.anfc_setup_interface to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @anfc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @anfc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @anfc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @anfc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anfc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 144, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %controller = getelementptr inbounds %struct.arasan_nfc, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %controller, ptr noundef nonnull @.str.3, ptr noundef nonnull @nand_controller_init.__key) #7
  %ops = getelementptr inbounds %struct.arasan_nfc, ptr %call.i, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @anfc_ops, ptr %ops, align 4
  %chips = getelementptr inbounds %struct.arasan_nfc, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %chips to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %chips, ptr %chips, align 4
  %prev.i = getelementptr inbounds %struct.arasan_nfc, ptr %call.i, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %chips, ptr %prev.i, align 4
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.arasan_nfc, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call4, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !157
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr2.i = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -16777216) #7, !srcloc !157
  %cur_cs.i = getelementptr inbounds %struct.arasan_nfc, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %cur_cs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %cur_cs.i, align 4
  %call12 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  %controller_clk = getelementptr inbounds %struct.arasan_nfc, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %controller_clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %controller_clk, align 4
  %cmp.i86 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %call20 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  %bus_clk = getelementptr inbounds %struct.arasan_nfc, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call20, ptr %bus_clk, align 4
  %cmp.i87 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %13 = ptrtoint ptr %controller_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %controller_clk, align 4
  %call.i88 = tail call i32 @clk_prepare(ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end26
  %call1.i = tail call i32 @clk_enable(ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end31, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %14) #7
  br label %cleanup

if.end31:                                         ; preds = %if.end.i
  %15 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus_clk, align 4
  %call.i89 = tail call i32 @clk_prepare(ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool.not.i90 = icmp eq i32 %call.i89, 0
  br i1 %tobool.not.i90, label %if.end.i93, label %if.end31.disable_controller_clk_crit_edge

if.end31.disable_controller_clk_crit_edge:        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_controller_clk

if.end.i93:                                       ; preds = %if.end31
  %call1.i91 = tail call i32 @clk_enable(ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91)
  %tobool2.not.i92 = icmp eq i32 %call1.i91, 0
  br i1 %tobool2.not.i92, label %if.end36, label %if.end.i93.disable_controller_clk.sink.split_crit_edge

if.end.i93.disable_controller_clk.sink.split_crit_edge: ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_controller_clk.sink.split

if.end36:                                         ; preds = %if.end.i93
  %call38 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.disable_bus_clk_crit_edge

if.end36.disable_bus_clk_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_bus_clk

if.end41:                                         ; preds = %if.end36
  %call42 = tail call fastcc i32 @anfc_parse_cs(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.disable_bus_clk_crit_edge

if.end41.disable_bus_clk_crit_edge:               ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_bus_clk

if.end45:                                         ; preds = %if.end41
  %call46 = tail call fastcc i32 @anfc_chips_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.disable_bus_clk_crit_edge

if.end45.disable_bus_clk_crit_edge:               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_bus_clk

if.end49:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

disable_bus_clk:                                  ; preds = %if.end45.disable_bus_clk_crit_edge, %if.end41.disable_bus_clk_crit_edge, %if.end36.disable_bus_clk_crit_edge
  %ret.0 = phi i32 [ %call38, %if.end36.disable_bus_clk_crit_edge ], [ %call42, %if.end41.disable_bus_clk_crit_edge ], [ %call46, %if.end45.disable_bus_clk_crit_edge ]
  %18 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %19) #7
  br label %disable_controller_clk.sink.split

disable_controller_clk.sink.split:                ; preds = %disable_bus_clk, %if.end.i93.disable_controller_clk.sink.split_crit_edge
  %.sink = phi ptr [ %19, %disable_bus_clk ], [ %16, %if.end.i93.disable_controller_clk.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %disable_bus_clk ], [ %call1.i91, %if.end.i93.disable_controller_clk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %disable_controller_clk

disable_controller_clk:                           ; preds = %disable_controller_clk.sink.split, %if.end31.disable_controller_clk_crit_edge
  %ret.1 = phi i32 [ %call.i89, %if.end31.disable_controller_clk_crit_edge ], [ %ret.1.ph, %disable_controller_clk.sink.split ]
  %20 = ptrtoint ptr %controller_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %controller_clk, align 4
  tail call void @clk_disable(ptr noundef %21) #7
  tail call void @clk_unprepare(ptr noundef %21) #7
  br label %cleanup

cleanup:                                          ; preds = %disable_controller_clk, %if.end49, %if.then3.i, %if.end26.cleanup_crit_edge, %if.then23, %if.then15, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then7 ], [ %10, %if.then15 ], [ %12, %if.then23 ], [ %ret.1, %disable_controller_clk ], [ 0, %if.end49 ], [ -12, %entry.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i88, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anfc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chips.i = getelementptr inbounds %struct.arasan_nfc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %chips.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chips.i, align 4
  %cmp.not45.i = icmp eq ptr %3, %chips.i
  br i1 %cmp.not45.i, label %entry.anfc_chips_cleanup.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.anfc_chips_cleanup.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %anfc_chips_cleanup.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %anand.046.i = phi ptr [ %tmp.048.i, %list_del.exit.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %anand.046.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.048.i = load ptr, ptr %anand.046.i, align 8
  %chip8.i = getelementptr inbounds %struct.anand, ptr %anand.046.i, i32 0, i32 1
  %call9.i = tail call i32 @mtd_device_unregister(ptr noundef %chip8.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %do.end.i, !prof !158

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1352, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.if.end.i_crit_edge
  tail call void @nand_cleanup(ptr noundef %chip8.i) #7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %anand.046.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %anand.046.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %anand.046.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %anand.046.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %anand.046.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %anand.046.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %anand.046.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.048.i, %chips.i
  br i1 %cmp.not.i, label %list_del.exit.i.anfc_chips_cleanup.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del.exit.i.anfc_chips_cleanup.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %anfc_chips_cleanup.exit

anfc_chips_cleanup.exit:                          ; preds = %list_del.exit.i.anfc_chips_cleanup.exit_crit_edge, %entry.anfc_chips_cleanup.exit_crit_edge
  %bus_clk = getelementptr inbounds %struct.arasan_nfc, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %14) #7
  tail call void @clk_unprepare(ptr noundef %14) #7
  %controller_clk = getelementptr inbounds %struct.arasan_nfc, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %controller_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %controller_clk, align 4
  tail call void @clk_disable(ptr noundef %16) #7
  tail call void @clk_unprepare(ptr noundef %16) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @anfc_parse_cs(ptr noundef %nfc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nfc, align 4
  %cs_array = getelementptr inbounds %struct.arasan_nfc, ptr %nfc, i32 0, i32 7
  %ncs = getelementptr inbounds %struct.arasan_nfc, ptr %nfc, i32 0, i32 8
  %call = tail call i32 @rawnand_dt_parse_gpio_cs(ptr noundef %1, ptr noundef %cs_array, ptr noundef %ncs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cs_array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cs_array, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then23, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %ncs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ncs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %if.then4, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %land.lhs.true7, label %if.then17

land.lhs.true7:                                   ; preds = %if.then4
  %arrayidx9 = getelementptr ptr, ptr %3, i32 1
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %do.end, label %if.else

do.end:                                           ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nfc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.50) #10
  br label %cleanup

if.then17:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %spare_cs = getelementptr inbounds %struct.arasan_nfc, ptr %nfc, i32 0, i32 11
  %12 = ptrtoint ptr %spare_cs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %spare_cs, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #9
  %spare_cs18 = getelementptr inbounds %struct.arasan_nfc, ptr %nfc, i32 0, i32 11
  %13 = ptrtoint ptr %spare_cs18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %spare_cs18, align 4
  br label %cleanup

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %cs_array to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @anfc_default_cs_array, ptr %cs_array, align 4
  %15 = ptrtoint ptr %ncs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %ncs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.else, %if.then17, %do.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then23 ], [ -22, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then17 ], [ 0, %if.else ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @anfc_chips_init(ptr noundef %nfc) unnamed_addr #2 align 64 {
entry:
  %rb.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nfc, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_get_next_child(ptr noundef %3, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %3, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not = icmp eq i32 %inc.i, 0
  br i1 %tobool.not, label %of_get_child_count.exit.do.end_crit_edge, label %if.end

of_get_child_count.exit.do.end_crit_edge:         ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %of_get_child_count.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nfc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.52, i32 noundef 0) #10
  br label %cleanup

if.end:                                           ; preds = %of_get_child_count.exit
  %call2 = tail call ptr @of_get_next_child(ptr noundef %3, ptr noundef null) #7
  %cmp.not82 = icmp eq ptr %call2, null
  br i1 %cmp.not82, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %ncs.i = getelementptr inbounds %struct.arasan_nfc, ptr %nfc, i32 0, i32 8
  %controller.i = getelementptr inbounds %struct.arasan_nfc, ptr %nfc, i32 0, i32 4
  %chips.i = getelementptr inbounds %struct.arasan_nfc, ptr %nfc, i32 0, i32 5
  %prev.i.i = getelementptr inbounds %struct.arasan_nfc, ptr %nfc, i32 0, i32 5, i32 1
  br label %for.body

for.body:                                         ; preds = %anfc_chip_init.exit.thread39.for.body_crit_edge, %for.body.lr.ph
  %nand_np.083 = phi ptr [ %call2, %for.body.lr.ph ], [ %call7, %anfc_chip_init.exit.thread39.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rb.i) #7
  %6 = ptrtoint ptr %rb.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %rb.i, align 4, !annotation !159
  %7 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nfc, align 4
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 2240, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body.anfc_chip_init.exit.thread_crit_edge, label %if.end.i

for.body.anfc_chip_init.exit.thread_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %anfc_chip_init.exit.thread

if.end.i:                                         ; preds = %for.body
  %call1.i21 = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %nand_np.083, ptr noundef nonnull @.str.54, i32 noundef 4) #7
  %ncs_idx.i = getelementptr inbounds %struct.anand, ptr %call.i.i, i32 0, i32 17
  %9 = ptrtoint ptr %ncs_idx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call1.i21, ptr %ncs_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i21)
  %cmp.i = icmp slt i32 %call1.i21, 1
  br i1 %cmp.i, label %if.end.i.do.end.i_crit_edge, label %lor.lhs.false.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %10 = ptrtoint ptr %ncs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ncs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i21, i32 %11)
  %cmp4.i = icmp ugt i32 %call1.i21, %11
  br i1 %cmp4.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end7.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %12 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nfc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.55) #10
  br label %anfc_chip_init.exit.thread

if.end7.i:                                        ; preds = %lor.lhs.false.i
  %14 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call1.i21, i32 4) #7
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !160

devm_kcalloc.exit.thread.i:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %cs_idx116.i = getelementptr inbounds %struct.anand, ptr %call.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %cs_idx116.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cs_idx116.i, align 4
  br label %anfc_chip_init.exit.thread

devm_kcalloc.exit.i:                              ; preds = %if.end7.i
  %17 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nfc, align 4
  %19 = extractvalue { i32, i1 } %14, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %18, i32 noundef %19, i32 noundef 3520) #7
  %cs_idx.i = getelementptr inbounds %struct.anand, ptr %call.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %cs_idx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i.i.i, ptr %cs_idx.i, align 4
  %tobool12.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool12.not.i, label %devm_kcalloc.exit.i.anfc_chip_init.exit.thread_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.anfc_chip_init.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %anfc_chip_init.exit.thread

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  %21 = ptrtoint ptr %ncs_idx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ncs_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp16119.i = icmp sgt i32 %22, 0
  br i1 %cmp16119.i, label %for.cond.preheader.i.for.body.i23_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.preheader.i.for.body.i23_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i23

for.cond.i:                                       ; preds = %for.body.i23
  %inc.i22 = add nuw nsw i32 %i.0120.i, 1
  %23 = ptrtoint ptr %ncs_idx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ncs_idx.i, align 8
  %cmp16.i = icmp slt i32 %inc.i22, %24
  br i1 %cmp16.i, label %for.cond.i.for.body.i23_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.i.for.body.i23_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i23

for.body.i23:                                     ; preds = %for.cond.i.for.body.i23_crit_edge, %for.cond.preheader.i.for.body.i23_crit_edge
  %i.0120.i = phi i32 [ %inc.i22, %for.cond.i.for.body.i23_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i23_crit_edge ]
  %25 = ptrtoint ptr %cs_idx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cs_idx.i, align 4
  %arrayidx.i = getelementptr i32, ptr %26, i32 %i.0120.i
  %call18.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %nand_np.083, ptr noundef nonnull @.str.54, i32 noundef %i.0120.i, ptr noundef %arrayidx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %for.cond.i, label %do.end23.i

do.end23.i:                                       ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nfc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.58, i32 noundef %call18.i) #10
  br label %anfc_chip_init.exit.thread

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %nand_np.083, ptr noundef nonnull @.str.60, ptr noundef nonnull %rb.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool27.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool27.not.i, label %if.end29.i, label %anfc_chip_init.exit

if.end29.i:                                       ; preds = %for.end.i
  %29 = ptrtoint ptr %rb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp30.i = icmp sgt i32 %30, 1
  br i1 %cmp30.i, label %do.end34.i, label %if.end36.i

do.end34.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nfc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.62, i32 noundef %30) #10
  br label %anfc_chip_init.exit.thread

if.end36.i:                                       ; preds = %if.end29.i
  %rb37.i = getelementptr inbounds %struct.anand, ptr %call.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %rb37.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %rb37.i, align 8
  %chip38.i = getelementptr inbounds %struct.anand, ptr %call.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %nfc, align 4
  %parent.i = getelementptr inbounds %struct.anand, ptr %call.i.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  %36 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %parent.i, align 8
  %controller42.i = getelementptr inbounds %struct.anand, ptr %call.i.i, i32 0, i32 1, i32 32
  %37 = ptrtoint ptr %controller42.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %controller.i, ptr %controller42.i, align 4
  %options.i = getelementptr inbounds %struct.anand, ptr %call.i.i, i32 0, i32 1, i32 6
  %38 = ptrtoint ptr %options.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1573376, ptr %options.i, align 8
  %of_node.i.i.i = getelementptr inbounds %struct.anand, ptr %call.i.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 27
  %39 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %nand_np.083, ptr %of_node.i.i.i, align 8
  %name.i.i.i = getelementptr inbounds %struct.anand, ptr %call.i.i, i32 0, i32 1, i32 0, i32 0, i32 13
  %40 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i, label %nand_set_flash_node.exit.i, label %if.end36.i.if.end49.i_crit_edge

if.end36.i.if.end49.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

nand_set_flash_node.exit.i:                       ; preds = %if.end36.i
  %call.i.i111.i = call i32 @of_property_read_string(ptr noundef nonnull %nand_np.083, ptr noundef nonnull @.str.70, ptr noundef %name.i.i.i) #7
  %42 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr.i = load ptr, ptr %name.i.i.i, align 8
  %tobool43.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool43.not.i, label %do.end47.i, label %nand_set_flash_node.exit.i.if.end49.i_crit_edge

nand_set_flash_node.exit.i.if.end49.i_crit_edge:  ; preds = %nand_set_flash_node.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

do.end47.i:                                       ; preds = %nand_set_flash_node.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %nfc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.65) #10
  br label %anfc_chip_init.exit.thread

if.end49.i:                                       ; preds = %nand_set_flash_node.exit.i.if.end49.i_crit_edge, %if.end36.i.if.end49.i_crit_edge
  %45 = ptrtoint ptr %ncs_idx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ncs_idx.i, align 8
  %call.i112.i = call i32 @nand_scan_with_ids(ptr noundef %chip38.i, i32 noundef %46, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112.i)
  %tobool52.not.i = icmp eq i32 %call.i112.i, 0
  br i1 %tobool52.not.i, label %if.end58.i, label %do.end56.i

do.end56.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nfc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.68) #10
  br label %anfc_chip_init.exit.thread

if.end58.i:                                       ; preds = %if.end49.i
  %call59.i = call i32 @mtd_device_parse_register(ptr noundef %chip38.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end62.i, label %if.then61.i

if.then61.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @nand_cleanup(ptr noundef %chip38.i) #7
  br label %anfc_chip_init.exit.thread

if.end62.i:                                       ; preds = %if.end58.i
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i, align 4
  %call.i.i113.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %50, ptr noundef %chips.i) #7
  br i1 %call.i.i113.i, label %if.end.i.i114.i, label %if.end62.i.anfc_chip_init.exit.thread39_crit_edge

if.end62.i.anfc_chip_init.exit.thread39_crit_edge: ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %anfc_chip_init.exit.thread39

if.end.i.i114.i:                                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i.i, ptr %prev.i.i, align 4
  %52 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %chips.i, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %call.i.i, ptr %50, align 4
  br label %anfc_chip_init.exit.thread39

anfc_chip_init.exit.thread:                       ; preds = %if.then61.i, %do.end56.i, %do.end47.i, %do.end34.i, %do.end23.i, %devm_kcalloc.exit.i.anfc_chip_init.exit.thread_crit_edge, %devm_kcalloc.exit.thread.i, %do.end.i, %for.body.anfc_chip_init.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %devm_kcalloc.exit.thread.i ], [ -22, %do.end47.i ], [ %call59.i, %if.then61.i ], [ %call.i112.i, %do.end56.i ], [ -22, %do.end34.i ], [ %call18.i, %do.end23.i ], [ -22, %do.end.i ], [ -12, %devm_kcalloc.exit.i.anfc_chip_init.exit.thread_crit_edge ], [ -12, %for.body.anfc_chip_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rb.i) #7
  br label %if.then5

anfc_chip_init.exit.thread39:                     ; preds = %if.end.i.i114.i, %if.end62.i.anfc_chip_init.exit.thread39_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rb.i) #7
  %call7 = call ptr @of_get_next_child(ptr noundef %3, ptr noundef nonnull %nand_np.083) #7
  %cmp.not = icmp eq ptr %call7, null
  br i1 %cmp.not, label %anfc_chip_init.exit.thread39.cleanup_crit_edge, label %anfc_chip_init.exit.thread39.for.body_crit_edge

anfc_chip_init.exit.thread39.for.body_crit_edge:  ; preds = %anfc_chip_init.exit.thread39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

anfc_chip_init.exit.thread39.cleanup_crit_edge:   ; preds = %anfc_chip_init.exit.thread39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

anfc_chip_init.exit:                              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rb.i) #7
  br label %if.then5

if.then5:                                         ; preds = %anfc_chip_init.exit, %anfc_chip_init.exit.thread
  %retval.0.i37 = phi i32 [ %retval.0.i.ph, %anfc_chip_init.exit.thread ], [ %call.i.i.i, %anfc_chip_init.exit ]
  call void @of_node_put(ptr noundef nonnull %nand_np.083) #7
  %55 = ptrtoint ptr %chips.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chips.i, align 4
  %cmp.not45.i = icmp eq ptr %56, %chips.i
  br i1 %cmp.not45.i, label %if.then5.cleanup_crit_edge, label %if.then5.for.body.i26_crit_edge

if.then5.for.body.i26_crit_edge:                  ; preds = %if.then5
  br label %for.body.i26

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i26:                                     ; preds = %list_del.exit.i.for.body.i26_crit_edge, %if.then5.for.body.i26_crit_edge
  %anand.046.i = phi ptr [ %tmp.048.i, %list_del.exit.i.for.body.i26_crit_edge ], [ %56, %if.then5.for.body.i26_crit_edge ]
  %57 = ptrtoint ptr %anand.046.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %tmp.048.i = load ptr, ptr %anand.046.i, align 8
  %chip8.i = getelementptr inbounds %struct.anand, ptr %anand.046.i, i32 0, i32 1
  %call9.i = call i32 @mtd_device_unregister(ptr noundef %chip8.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i25 = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i25, label %for.body.i26.if.end.i29_crit_edge, label %do.end.i27, !prof !158

for.body.i26.if.end.i29_crit_edge:                ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i29

do.end.i27:                                       ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1352, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i29

if.end.i29:                                       ; preds = %do.end.i27, %for.body.i26.if.end.i29_crit_edge
  call void @nand_cleanup(ptr noundef %chip8.i) #7
  %call.i.i.i28 = call zeroext i1 @__list_del_entry_valid(ptr noundef %anand.046.i) #7
  br i1 %call.i.i.i28, label %if.end.i.i.i, label %if.end.i29.list_del.exit.i_crit_edge

if.end.i29.list_del.exit.i_crit_edge:             ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %anand.046.i, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i.i, align 4
  %60 = ptrtoint ptr %anand.046.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %anand.046.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i29.list_del.exit.i_crit_edge
  %64 = ptrtoint ptr %anand.046.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 256 to ptr), ptr %anand.046.i, align 4
  %prev.i.i30 = getelementptr inbounds %struct.list_head, ptr %anand.046.i, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i30 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i30, align 4
  %cmp.not.i31 = icmp eq ptr %tmp.048.i, %chips.i
  br i1 %cmp.not.i31, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i26_crit_edge

list_del.exit.i.for.body.i26_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i26

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %anfc_chip_init.exit.thread39.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i37, %if.then5.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %retval.0.i37, %list_del.exit.i.cleanup_crit_edge ], [ 0, %anfc_chip_init.exit.thread39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anfc_attach_chip(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i50 = getelementptr i8, ptr %1, i32 -16
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %3)
  %cmp = icmp ult i32 %3, 513
  %spec.select = select i1 %cmp, i16 1, i16 2
  %4 = getelementptr i8, ptr %chip, i32 2198
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %spec.select, ptr %4, align 2
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %6 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %options, align 8
  %and = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.sink51 = select i1 %tobool.not, i16 2, i16 3
  %8 = getelementptr i8, ptr %chip, i32 2196
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %.sink51, ptr %8, align 4
  %10 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 512, label %entry.sw.epilog_crit_edge
    i32 1024, label %sw.bb9
    i32 2048, label %sw.bb11
    i32 4096, label %sw.bb13
    i32 8192, label %sw.bb15
    i32 16384, label %sw.bb17
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 4, %sw.bb17 ], [ 3, %sw.bb15 ], [ 2, %sw.bb13 ], [ 1, %sw.bb11 ], [ 5, %sw.bb9 ], [ 0, %entry.sw.epilog_crit_edge ]
  %page_sz18 = getelementptr i8, ptr %chip, i32 2172
  %11 = ptrtoint ptr %page_sz18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %page_sz18, align 4
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %read_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 16
  %12 = ptrtoint ptr %read_page_raw to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @nand_monolithic_read_page_raw, ptr %read_page_raw, align 8
  %write_page_raw = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 17
  %13 = ptrtoint ptr %write_page_raw to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @nand_monolithic_write_page_raw, ptr %write_page_raw, align 4
  %14 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ecc, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %15, label %do.end [
    i32 1, label %sw.epilog.cleanup_crit_edge
    i32 2, label %sw.epilog.cleanup_crit_edge52
    i32 4, label %sw.epilog.cleanup_crit_edge53
    i32 3, label %sw.bb22
  ]

sw.epilog.cleanup_crit_edge53:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog.cleanup_crit_edge52:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb22:                                          ; preds = %sw.epilog
  %17 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %3, label %do.end.i [
    i32 512, label %sw.bb22.sw.epilog.i_crit_edge
    i32 2048, label %sw.bb22.sw.epilog.i_crit_edge54
    i32 4096, label %sw.bb22.sw.epilog.i_crit_edge55
    i32 8192, label %sw.bb22.sw.epilog.i_crit_edge56
    i32 16384, label %sw.bb22.sw.epilog.i_crit_edge57
  ]

sw.bb22.sw.epilog.i_crit_edge57:                  ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb22.sw.epilog.i_crit_edge56:                  ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb22.sw.epilog.i_crit_edge55:                  ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb22.sw.epilog.i_crit_edge54:                  ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb22.sw.epilog.i_crit_edge:                    ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

do.end.i:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.9, i32 noundef %3) #10
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb22.sw.epilog.i_crit_edge, %sw.bb22.sw.epilog.i_crit_edge54, %sw.bb22.sw.epilog.i_crit_edge55, %sw.bb22.sw.epilog.i_crit_edge56, %sw.bb22.sw.epilog.i_crit_edge57
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %20 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %oobsize.i, align 4
  %call4.i = tail call i32 @nand_ecc_choose_conf(ptr noundef %chip, ptr noundef nonnull @anfc_hw_ecc_caps, i32 noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.epilog.i.cleanup_crit_edge

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog.i
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %22 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %strength.i, align 4
  %24 = add i32 %23, -4
  %25 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %26 = icmp ult i32 %25, 6
  br i1 %26, label %switch.hole_check, label %if.end.i.do.end16.i_crit_edge

if.end.i.do.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

do.end16.i:                                       ; preds = %switch.hole_check.do.end16.i_crit_edge, %if.end.i.do.end16.i_crit_edge
  %27 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.12, i32 noundef %23) #10
  br label %cleanup

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = trunc i32 %25 to i8
  %switch.shifted = lshr i8 39, %switch.maskindex
  %29 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %switch.lobit.not = icmp eq i8 %29, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end16.i_crit_edge, label %switch.lookup

switch.hole_check.do.end16.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.anfc_attach_chip, i32 0, i32 %25
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load i32, ptr %switch.gep, align 4
  %strength12.i = getelementptr i8, ptr %chip, i32 2192
  %31 = ptrtoint ptr %strength12.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %switch.load, ptr %strength12.i, align 8
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %33, label %do.end25.i [
    i32 512, label %switch.lookup.sw.epilog28.i_crit_edge
    i32 1024, label %sw.bb21.i
  ]

switch.lookup.sw.epilog28.i_crit_edge:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog28.i

sw.bb21.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog28.i

do.end25.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.15, i32 noundef %23) #10
  br label %cleanup

sw.epilog28.i:                                    ; preds = %sw.bb21.i, %switch.lookup.sw.epilog28.i_crit_edge
  %bch_prim_poly.0.i = phi i32 [ 17475, %sw.bb21.i ], [ 8219, %switch.lookup.sw.epilog28.i_crit_edge ]
  %bch_gf_mag.0.i = phi i32 [ 14, %sw.bb21.i ], [ 13, %switch.lookup.sw.epilog28.i_crit_edge ]
  %call29.i = tail call ptr @nand_get_large_page_ooblayout() #7
  %ooblayout1.i.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %37 = ptrtoint ptr %ooblayout1.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call29.i, ptr %ooblayout1.i.i, align 8
  %38 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %writesize, align 4
  %40 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size.i, align 4
  %div.i = udiv i32 %39, %41
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %42 = ptrtoint ptr %steps.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div.i, ptr %steps.i, align 4
  %algo.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %43 = ptrtoint ptr %algo.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %algo.i, align 4
  %44 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %strength.i, align 4
  %mul.i = mul i32 %45, %bch_gf_mag.0.i
  %ecc_bits.i = getelementptr i8, ptr %chip, i32 2200
  %46 = ptrtoint ptr %ecc_bits.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul.i, ptr %ecc_bits.i, align 8
  %sub.i = add i32 %mul.i, 7
  %div34168.i = lshr i32 %sub.i, 3
  %bytes.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %47 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div34168.i, ptr %bytes.i, align 4
  %mul37.i = mul i32 %mul.i, %div.i
  %sub39.i = add i32 %mul37.i, 7
  %div40169.i = lshr i32 %sub39.i, 3
  %ecc_total.i = getelementptr i8, ptr %chip, i32 2204
  %48 = ptrtoint ptr %ecc_total.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div40169.i, ptr %ecc_total.i, align 4
  %49 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %oobsize.i, align 4
  %add43.i = add i32 %50, %39
  %sub45.i = sub i32 %add43.i, %div40169.i
  %and64.i = and i32 %sub45.i, 65535
  %shl90.i = shl i32 %div40169.i, 16
  %and91.i = and i32 %shl90.i, 134152192
  %or.i = or i32 %and91.i, %and64.i
  %or92.i = or i32 %or.i, 134217728
  %ecc_conf.i = getelementptr i8, ptr %chip, i32 2188
  %51 = ptrtoint ptr %ecc_conf.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or92.i, ptr %ecc_conf.i, align 4
  %52 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %45, i32 4) #7
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %devm_kmalloc_array.exit.thread.i, label %devm_kmalloc_array.exit.i, !prof !160

devm_kmalloc_array.exit.thread.i:                 ; preds = %sw.epilog28.i
  call void @__sanitizer_cov_trace_pc() #9
  %errloc173.i = getelementptr i8, ptr %chip, i32 2208
  %54 = ptrtoint ptr %errloc173.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %errloc173.i, align 8
  br label %cleanup

devm_kmalloc_array.exit.i:                        ; preds = %sw.epilog28.i
  %55 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i50, align 4
  %57 = extractvalue { i32, i1 } %52, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %56, i32 noundef %57, i32 noundef 3264) #7
  %errloc.i = getelementptr i8, ptr %chip, i32 2208
  %58 = ptrtoint ptr %errloc.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call5.i.i, ptr %errloc.i, align 8
  %tobool97.not.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool97.not.i, label %devm_kmalloc_array.exit.i.cleanup_crit_edge, label %if.end99.i

devm_kmalloc_array.exit.i.cleanup_crit_edge:      ; preds = %devm_kmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end99.i:                                       ; preds = %devm_kmalloc_array.exit.i
  %59 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr.i50, align 4
  %61 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bytes.i, align 4
  %call102.i = tail call noalias ptr @devm_kmalloc(ptr noundef %60, i32 noundef %62, i32 noundef 3264) #7
  %hw_ecc.i = getelementptr i8, ptr %chip, i32 2212
  %63 = ptrtoint ptr %hw_ecc.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call102.i, ptr %hw_ecc.i, align 4
  %tobool104.not.i = icmp eq ptr %call102.i, null
  br i1 %tobool104.not.i, label %if.end99.i.cleanup_crit_edge, label %if.end106.i

if.end99.i.cleanup_crit_edge:                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end106.i:                                      ; preds = %if.end99.i
  %64 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %strength.i, align 4
  %call108.i = tail call ptr @bch_init(i32 noundef %bch_gf_mag.0.i, i32 noundef %65, i32 noundef %bch_prim_poly.0.i, i1 noundef zeroext true) #7
  %bch.i = getelementptr i8, ptr %chip, i32 2216
  %66 = ptrtoint ptr %bch.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call108.i, ptr %bch.i, align 8
  %tobool110.not.i = icmp eq ptr %call108.i, null
  br i1 %tobool110.not.i, label %if.end106.i.cleanup_crit_edge, label %if.end112.i

if.end106.i.cleanup_crit_edge:                    ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end112.i:                                      ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #9
  %read_page.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 18
  %67 = ptrtoint ptr %read_page.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @anfc_sel_read_page_hw_ecc, ptr %read_page.i, align 4
  %write_page.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 21
  %68 = ptrtoint ptr %write_page.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @anfc_sel_write_page_hw_ecc, ptr %write_page.i, align 4
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr.i50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.4, i32 noundef %15) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end112.i, %if.end106.i.cleanup_crit_edge, %if.end99.i.cleanup_crit_edge, %devm_kmalloc_array.exit.i.cleanup_crit_edge, %devm_kmalloc_array.exit.thread.i, %do.end25.i, %do.end16.i, %sw.epilog.i.cleanup_crit_edge, %do.end.i, %sw.epilog.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge52, %sw.epilog.cleanup_crit_edge53, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge52 ], [ 0, %sw.epilog.cleanup_crit_edge53 ], [ -22, %do.end.i ], [ -22, %do.end16.i ], [ -22, %do.end25.i ], [ 0, %if.end112.i ], [ %call4.i, %sw.epilog.i.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.i.cleanup_crit_edge ], [ -12, %if.end99.i.cleanup_crit_edge ], [ -22, %if.end106.i.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @anfc_detach_chip(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bch = getelementptr i8, ptr %chip, i32 2216
  %0 = ptrtoint ptr %bch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bch, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bch_free(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anfc_exec_op(ptr noundef %chip, ptr noundef %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %check_only, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ninstrs.i = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %0 = ptrtoint ptr %ninstrs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ninstrs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp49.not.i = icmp eq i32 %1, 0
  br i1 %cmp49.not.i, label %if.then.cleanup.sink.split_crit_edge, label %for.body.lr.ph.i

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body.lr.ph.i:                                 ; preds = %if.then
  %instrs.i = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  %2 = ptrtoint ptr %instrs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instrs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %op_id.050.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nand_op_instr, ptr %3, i32 %op_id.050.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %5, label %for.body.i.for.inc.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %for.body.i.sw.bb2.i_crit_edge
    i32 3, label %for.body.i.sw.bb2.i_crit_edge13
  ]

for.body.i.sw.bb2.i_crit_edge13:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

for.body.i.sw.bb2.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  %ctx.i = getelementptr %struct.nand_op_instr, ptr %3, i32 %op_id.050.i, i32 1
  %7 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp1.i = icmp ugt i32 %8, 5
  br i1 %cmp1.i, label %sw.bb.i.cleanup_crit_edge, label %sw.bb.i.for.inc.i_crit_edge

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2.i:                                         ; preds = %for.body.i.sw.bb2.i_crit_edge, %for.body.i.sw.bb2.i_crit_edge13
  %ctx3.i = getelementptr %struct.nand_op_instr, ptr %3, i32 %op_id.050.i, i32 1
  %9 = ptrtoint ptr %ctx3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctx3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %10)
  %cmp4.i = icmp ugt i32 %10, 1048576
  br i1 %cmp4.i, label %sw.bb2.i.cleanup_crit_edge, label %if.end6.i

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %10)
  %cmp1.i.i = icmp ult i32 %10, 2048
  br i1 %cmp1.i.i, label %if.end6.i.for.end.i.i_crit_edge, label %for.inc.i.i

if.end6.i.for.end.i.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %if.end6.i
  %div.122.i.i = lshr i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %10)
  %cmp1.1.i.i = icmp ult i32 %10, 4096
  br i1 %cmp1.1.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %div.223.i.i = lshr i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %10)
  %cmp1.2.i.i = icmp ult i32 %10, 8192
  br i1 %cmp1.2.i.i, label %for.inc.1.i.i.for.end.i.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.for.end.i.i_crit_edge:              ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %div.324.i.i = lshr i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %10)
  %cmp1.3.i.i = icmp ult i32 %10, 16384
  br i1 %cmp1.3.i.i, label %for.inc.2.i.i.for.end.i.i_crit_edge, label %for.inc.3.i.i

for.inc.2.i.i.for.end.i.i_crit_edge:              ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %div.425.i.i = lshr i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %10)
  %cmp1.4.i.i = icmp ult i32 %10, 32768
  br i1 %cmp1.4.i.i, label %for.inc.3.i.i.for.end.i.i_crit_edge, label %for.inc.4.i.i

for.inc.3.i.i.for.end.i.i_crit_edge:              ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %div.526.i.i = lshr i32 %10, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %10)
  %cmp1.5.i.i = icmp ult i32 %10, 65536
  br i1 %cmp1.5.i.i, label %for.inc.4.i.i.for.end.i.i_crit_edge, label %for.inc.5.i.i

for.inc.4.i.i.for.end.i.i_crit_edge:              ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %div.627.i.i = lshr i32 %10, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %10)
  %cmp1.6.i.i = icmp ult i32 %10, 131072
  br i1 %cmp1.6.i.i, label %for.inc.5.i.i.for.end.i.i_crit_edge, label %for.inc.6.i.i

for.inc.5.i.i.for.end.i.i_crit_edge:              ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  %div.728.i.i = lshr i32 %10, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %10)
  %cmp1.7.i.i = icmp ult i32 %10, 262144
  br i1 %cmp1.7.i.i, label %for.inc.6.i.i.for.end.i.i_crit_edge, label %for.inc.7.i.i

for.inc.6.i.i.for.end.i.i_crit_edge:              ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.inc.7.i.i:                                    ; preds = %for.inc.6.i.i
  %div.829.i.i = lshr i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %10)
  %cmp1.8.i.i = icmp ult i32 %10, 524288
  br i1 %cmp1.8.i.i, label %for.inc.7.i.i.for.end.i.i_crit_edge, label %for.inc.8.i.i

for.inc.7.i.i.for.end.i.i_crit_edge:              ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.inc.8.i.i:                                    ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div.930.i.i = lshr i32 %10, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %10)
  %cmp1.9.i.i = icmp ult i32 %10, 1048576
  %spec.select.i = select i1 %cmp1.9.i.i, i32 %div.930.i.i, i32 1024
  %spec.select47.i = select i1 %cmp1.9.i.i, i32 512, i32 1024
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.8.i.i, %for.inc.7.i.i.for.end.i.i_crit_edge, %for.inc.6.i.i.for.end.i.i_crit_edge, %for.inc.5.i.i.for.end.i.i_crit_edge, %for.inc.4.i.i.for.end.i.i_crit_edge, %for.inc.3.i.i.for.end.i.i_crit_edge, %for.inc.2.i.i.for.end.i.i_crit_edge, %for.inc.1.i.i.for.end.i.i_crit_edge, %for.inc.i.i.for.end.i.i_crit_edge, %if.end6.i.for.end.i.i_crit_edge
  %div.lcssa.i.i = phi i32 [ %10, %if.end6.i.for.end.i.i_crit_edge ], [ %div.122.i.i, %for.inc.i.i.for.end.i.i_crit_edge ], [ %div.223.i.i, %for.inc.1.i.i.for.end.i.i_crit_edge ], [ %div.324.i.i, %for.inc.2.i.i.for.end.i.i_crit_edge ], [ %div.425.i.i, %for.inc.3.i.i.for.end.i.i_crit_edge ], [ %div.526.i.i, %for.inc.4.i.i.for.end.i.i_crit_edge ], [ %div.627.i.i, %for.inc.5.i.i.for.end.i.i_crit_edge ], [ %div.728.i.i, %for.inc.6.i.i.for.end.i.i_crit_edge ], [ %div.829.i.i, %for.inc.7.i.i.for.end.i.i_crit_edge ], [ %spec.select.i, %for.inc.8.i.i ]
  %nb.0.lcssa.i.i = phi i32 [ 1, %if.end6.i.for.end.i.i_crit_edge ], [ 2, %for.inc.i.i.for.end.i.i_crit_edge ], [ 4, %for.inc.1.i.i.for.end.i.i_crit_edge ], [ 8, %for.inc.2.i.i.for.end.i.i_crit_edge ], [ 16, %for.inc.3.i.i.for.end.i.i_crit_edge ], [ 32, %for.inc.4.i.i.for.end.i.i_crit_edge ], [ 64, %for.inc.5.i.i.for.end.i.i_crit_edge ], [ 128, %for.inc.6.i.i.for.end.i.i_crit_edge ], [ 256, %for.inc.7.i.i.for.end.i.i_crit_edge ], [ %spec.select47.i, %for.inc.8.i.i ]
  %mul2.i.i = mul nuw nsw i32 %nb.0.lcssa.i.i, %div.lcssa.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul2.i.i, i32 %10)
  %cmp3.not.i.i = icmp eq i32 %mul2.i.i, %10
  br i1 %cmp3.not.i.i, label %for.end.i.i.for.inc.i_crit_edge, label %for.end.i.i.cleanup_crit_edge

for.end.i.i.cleanup_crit_edge:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.i.i.for.inc.i_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.end.i.i.for.inc.i_crit_edge, %sw.bb.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %op_id.050.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp12.i = icmp eq i32 %1, 2
  br i1 %cmp12.i, label %land.lhs.true.i, label %for.end.i.cleanup.sink.split_crit_edge

for.end.i.cleanup.sink.split_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true.i:                                  ; preds = %for.end.i
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp16.i = icmp eq i32 %12, 0
  br i1 %cmp16.i, label %land.lhs.true17.i, label %land.lhs.true.i.cleanup.sink.split_crit_edge

land.lhs.true.i.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true17.i:                                ; preds = %land.lhs.true.i
  %ctx20.i = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %ctx20.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctx20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %14)
  %cmp21.not.i = icmp eq i8 %14, 112
  br i1 %cmp21.not.i, label %land.lhs.true17.i.cleanup.sink.split_crit_edge, label %land.lhs.true23.i

land.lhs.true17.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true23.i:                                ; preds = %land.lhs.true17.i
  %arrayidx25.i = getelementptr %struct.nand_op_instr, ptr %3, i32 1
  %15 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp27.i = icmp eq i32 %16, 2
  br i1 %cmp27.i, label %land.lhs.true23.i.cleanup_crit_edge, label %land.lhs.true23.i.cleanup.sink.split_crit_edge

land.lhs.true23.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true23.i.cleanup_crit_edge:              ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %op, align 4
  %call1 = tail call fastcc i32 @anfc_select_target(ptr noundef %chip, i32 noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %land.lhs.true23.i.cleanup.sink.split_crit_edge, %land.lhs.true17.i.cleanup.sink.split_crit_edge, %land.lhs.true.i.cleanup.sink.split_crit_edge, %for.end.i.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %call31.i = tail call i32 @nand_op_parser_exec_op(ptr noundef %chip, ptr noundef nonnull @anfc_op_parser, ptr noundef %op, i1 noundef zeroext %check_only) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %land.lhs.true23.i.cleanup_crit_edge, %for.end.i.i.cleanup_crit_edge, %sw.bb2.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end.cleanup_crit_edge ], [ -524, %land.lhs.true23.i.cleanup_crit_edge ], [ %call31.i, %cleanup.sink.split ], [ -524, %sw.bb.i.cleanup_crit_edge ], [ -524, %sw.bb2.i.cleanup_crit_edge ], [ -524, %for.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anfc_setup_interface(ptr nocapture noundef %chip, i32 noundef %target, ptr noundef %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i202 = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %add.ptr.i202 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i202, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %6 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1
  %cmp.i203 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end:                                           ; preds = %if.then
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %10 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp eq i32 %11, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end14.thread

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i204 = icmp eq i32 %7, 0
  %12 = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1
  %retval.0.i205 = select i1 %cmp.i.i204, ptr %12, ptr inttoptr (i32 -22 to ptr)
  %cmp.i206 = icmp ugt ptr %retval.0.i205, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %retval.0.i205 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %target)
  %cmp15 = icmp slt i32 %target, 0
  br i1 %cmp15, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %target)
  %cmp15209 = icmp slt i32 %target, 0
  br i1 %cmp15209, label %if.end14.thread.cleanup_crit_edge, label %if.end14.thread.do.body47_crit_edge

if.end14.thread.do.body47_crit_edge:              ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

if.end14.thread.cleanup_crit_edge:                ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  br i1 %cmp.i.i204, label %do.end35, label %if.end17.do.body47_crit_edge

if.end17.do.body47_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body47

do.end35:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %timings = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1
  %14 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timings, align 8
  %and38 = and i32 %15, 7
  %data_iface = getelementptr i8, ptr %chip, i32 2180
  %16 = ptrtoint ptr %data_iface to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and38, ptr %data_iface, align 4
  br label %if.end152

do.body47:                                        ; preds = %if.end17.do.body47_crit_edge, %if.end14.thread.do.body47_crit_edge
  %timings48 = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1
  %17 = ptrtoint ptr %timings48 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timings48, align 8
  %shl69 = shl i32 %18, 3
  %and70 = and i32 %shl69, 56
  %or71 = or i32 %and70, 512
  %data_iface72 = getelementptr i8, ptr %chip, i32 2180
  %19 = ptrtoint ptr %data_iface72 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or71, ptr %data_iface72, align 4
  %tCCS_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %tCCS_min to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tCCS_min, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %21)
  %cmp74 = icmp ult i32 %21, 100001
  br i1 %cmp74, label %do.body47.if.end89_crit_edge, label %if.else76

do.body47.if.end89_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.else76:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_const_cmp4(i32 200001, i32 %21)
  %cmp79 = icmp ult i32 %21, 200001
  br i1 %cmp79, label %if.else76.if.end89_crit_edge, label %if.else81

if.else76.if.end89_crit_edge:                     ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.else81:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 300001, i32 %21)
  %cmp84 = icmp ult i32 %21, 300001
  %. = select i1 %cmp84, i32 3, i32 0
  br label %if.end89

if.end89:                                         ; preds = %if.else81, %if.else76.if.end89_crit_edge, %do.body47.if.end89_crit_edge
  %tccs_min.0 = phi i32 [ 1, %do.body47.if.end89_crit_edge ], [ 2, %if.else76.if.end89_crit_edge ], [ %., %if.else81 ]
  %tCAD_min = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1, i32 1, i32 0, i32 7
  %22 = ptrtoint ptr %tCAD_min to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tCAD_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000, i32 %23)
  %cmp91 = icmp ult i32 %23, 45000
  %spec.store.select = select i1 %cmp91, i32 4, i32 0
  %24 = ptrtoint ptr %timings48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timings48, align 8
  %switch.tableidx = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %26 = icmp ult i32 %switch.tableidx, 5
  br i1 %26, label %switch.lookup, label %if.end89.sw.epilog_crit_edge

if.end89.sw.epilog_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.anfc_setup_interface, i32 0, i32 %switch.tableidx
  %27 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end89.sw.epilog_crit_edge
  %dqs_mode.0 = phi i32 [ %switch.load, %switch.lookup ], [ 6, %if.end89.sw.epilog_crit_edge ]
  %or100 = or i32 %tccs_min.0, %spec.store.select
  %shl123 = shl nuw nsw i32 %dqs_mode.0, 3
  %or125 = or i32 %shl123, %or100
  %shl148 = shl nuw nsw i32 %dqs_mode.0, 15
  %or150 = or i32 %or125, %shl148
  br label %if.end152

if.end152:                                        ; preds = %sw.epilog, %do.end35
  %or150.sink = phi i32 [ %or150, %sw.epilog ], [ 0, %do.end35 ]
  %timings151 = getelementptr i8, ptr %chip, i32 2184
  %28 = ptrtoint ptr %timings151 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or150.sink, ptr %timings151, align 8
  %clk = getelementptr i8, ptr %chip, i32 2176
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 100000000, ptr %clk, align 8
  %call153 = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end152.cleanup_crit_edge, label %land.lhs.true

if.end152.cleanup_crit_edge:                      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end152
  %30 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %conf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i208 = icmp eq i32 %31, 0
  br i1 %cmp.i208, label %land.lhs.true156, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true156:                                 ; preds = %land.lhs.true
  %timings157 = getelementptr inbounds %struct.nand_interface_config, ptr %conf, i32 0, i32 1
  %32 = ptrtoint ptr %timings157 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %timings157, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp159 = icmp ugt i32 %33, 1
  br i1 %cmp159, label %if.then160, label %land.lhs.true156.cleanup_crit_edge

land.lhs.true156.cleanup_crit_edge:               ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then160:                                       ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 80000000, ptr %clk, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then160, %land.lhs.true156.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end152.cleanup_crit_edge, %if.end14.thread.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then11, %if.end.cleanup_crit_edge, %if.then5
  %retval.0 = phi i32 [ %9, %if.then5 ], [ %13, %if.then11 ], [ -524, %if.end.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.then160 ], [ 0, %land.lhs.true156.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end152.cleanup_crit_edge ], [ 0, %if.end14.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_monolithic_read_page_raw(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_monolithic_write_page_raw(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_ecc_choose_conf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_large_page_ooblayout() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bch_init(i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anfc_sel_read_page_hw_ecc(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_cs, align 4
  %call = tail call fastcc i32 @anfc_select_target(ptr noundef %chip, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %2 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -16
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not.i = icmp eq i32 %oob_required, 0
  br i1 %tobool.not.i, label %if.end.cond.end.i_crit_edge, label %cond.true.i

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %6 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oobsize.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.cond.end.i_crit_edge
  %cond.i = phi i32 [ %7, %cond.true.i ], [ 0, %if.end.cond.end.i_crit_edge ]
  %add.i = add i32 %cond.i, %5
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 8
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %10 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %steps.i, align 4
  %and22.i = and i32 %9, 2047
  %shl50.i = shl i32 %11, 12
  %and51.i = and i32 %shl50.i, 16773120
  %or.i = or i32 %and51.i, %and22.i
  %and52.i = and i32 %page, 255
  %caddr_cycles.i = getelementptr i8, ptr %chip, i32 2198
  %12 = ptrtoint ptr %caddr_cycles.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %caddr_cycles.i, align 2
  %conv.i = zext i16 %13 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %shl53.i = shl i32 %and52.i, %mul.i
  %14 = lshr i32 %page, 8
  %and54.i = and i32 %14, 255
  %mul58.i = add nuw nsw i32 %mul.i, 8
  %shl59.i = shl i32 %and54.i, %mul58.i
  %or60.i = or i32 %shl59.i, %shl53.i
  %strength.i = getelementptr i8, ptr %chip, i32 2192
  %15 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %strength.i, align 8
  %native_cs.i = getelementptr i8, ptr %3, i32 120
  %17 = ptrtoint ptr %native_cs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %native_cs.i, align 4
  %19 = lshr i32 %page, 16
  %and62.i = and i32 %19, 255
  %shl87.i = shl i32 %16, 25
  %and88.i = and i32 %shl87.i, 234881024
  %or89.i = or i32 %and62.i, %and88.i
  %shl114.i = shl i32 %18, 30
  %or116.i = or i32 %shl114.i, %or89.i
  %page_sz.i = getelementptr i8, ptr %chip, i32 2172
  %20 = ptrtoint ptr %page_sz.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page_sz.i, align 4
  %raddr_cycles.i = getelementptr i8, ptr %chip, i32 2196
  %22 = ptrtoint ptr %raddr_cycles.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %raddr_cycles.i, align 4
  %conv187.i = zext i16 %23 to i32
  %add188.i = add nuw nsw i32 %conv187.i, %conv.i
  %shl174.i = shl i32 %21, 23
  %and175.i = and i32 %shl174.i, 58720256
  %shl214.i = shl i32 %add188.i, 28
  %and215.i = and i32 %shl214.i, 1879048192
  %or177.i = or i32 %and175.i, %and215.i
  %or216.i = or i32 %or177.i, 134230016
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buf) #7
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %cond.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !158

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %25) #7
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %29, %if.end.i.i.i ], [ %27, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #7
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %31, i32 noundef -1) #7
  br label %do.end227.i

dma_map_single_attrs.exit.i:                      ; preds = %cond.end.i
  tail call void @debug_dma_map_single(ptr noundef %25, ptr noundef %buf, i32 noundef %add.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %32 = load ptr, ptr @mem_map, align 4
  %33 = ptrtoint ptr %buf to i32
  %sub.i.i = add i32 %33, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i455.i = getelementptr %struct.page, ptr %32, i32 %shr.i.i
  %and.i.i = and i32 %33, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %25, ptr noundef %add.ptr.i455.i, i32 noundef %and.i.i, i32 noundef %add.i, i32 noundef 2, i32 noundef 0) #7
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %35, i32 noundef %call41.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.do.end227.i_crit_edge, label %if.end229.i

dma_map_single_attrs.exit.i.do.end227.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end227.i

do.end227.i:                                      ; preds = %dma_map_single_attrs.exit.i.do.end227.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %36 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end229.i:                                      ; preds = %dma_map_single_attrs.exit.i
  %38 = tail call i32 @llvm.bswap.i32(i32 %call41.i.i) #7
  %base.i = getelementptr i8, ptr %3, i32 -12
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %38) #7, !srcloc !157
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %add.ptr234.i = getelementptr i8, ptr %42, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr234.i, i32 0) #7, !srcloc !157
  %43 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #7, !srcloc !157
  %46 = tail call i32 @llvm.bswap.i32(i32 %or60.i) #7
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %46) #7, !srcloc !157
  %49 = tail call i32 @llvm.bswap.i32(i32 %or116.i) #7
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %51, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %49) #7, !srcloc !157
  %52 = tail call i32 @llvm.bswap.i32(i32 %or216.i) #7
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %54, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %52) #7, !srcloc !157
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %56, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 16777216) #7, !srcloc !157
  %call.i456.i = tail call i64 @ktime_get() #7
  %add.i.i.i = add i64 %call.i456.i, 1000000000
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.lhs.true.i.i.for.cond.i.i_crit_edge, %if.end229.i
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i, align 4
  %add.ptr.i458.i = getelementptr i8, ptr %58, i32 28
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i458.i) #7, !srcloc !161
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #7
  %and.i459.i = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i459.i)
  %tobool.not.i.i = icmp eq i32 %and.i459.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %for.cond.i.i.for.end.i.i_crit_edge

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

land.lhs.true.i.i:                                ; preds = %for.cond.i.i
  %call12.i.i = tail call i64 @ktime_get() #7
  %cmp3.i.i.i = icmp sgt i64 %call12.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then15.i.i, label %land.lhs.true.i.i.for.cond.i.i_crit_edge

land.lhs.true.i.i.for.cond.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

if.then15.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %62, i32 28
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i) #7, !srcloc !161
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #7
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.then15.i.i, %for.cond.i.i.for.end.i.i_crit_edge
  %val.0.i.i = phi i32 [ %64, %if.then15.i.i ], [ %60, %for.cond.i.i.for.end.i.i_crit_edge ]
  %and26.i.i = and i32 %val.0.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %do.end241.i, label %if.end243.i

do.end241.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.29, i32 noundef 4) #10
  %67 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %68, i32 noundef %call41.i.i, i32 noundef %add.i, i32 noundef 2, i32 noundef 0) #7
  %69 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.25, i32 noundef %page) #10
  br label %cleanup

if.end243.i:                                      ; preds = %for.end.i.i
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 4
  %add.ptr35.i.i = getelementptr i8, ptr %72, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i.i, i32 67108864) #7, !srcloc !157
  %73 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %74, i32 noundef %call41.i.i, i32 noundef %add.i, i32 noundef 2, i32 noundef 0) #7
  %75 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %writesize.i, align 4
  %oob_poi.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %77 = ptrtoint ptr %oob_poi.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %oob_poi.i, align 4
  %oobsize245.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %79 = ptrtoint ptr %oobsize245.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %oobsize245.i, align 4
  %call246.i = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %76, ptr noundef %78, i32 noundef %80, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246.i)
  %tobool247.not.i = icmp eq i32 %call246.i, 0
  br i1 %tobool247.not.i, label %for.cond.preheader.i, label %if.end243.i.cleanup_crit_edge

if.end243.i.cleanup_crit_edge:                    ; preds = %if.end243.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end243.i
  %81 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %steps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp474.i = icmp sgt i32 %82, 0
  br i1 %cmp474.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.cleanup_crit_edge

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %hw_ecc.i = getelementptr i8, ptr %chip, i32 2212
  %bytes.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %ecc_total.i = getelementptr i8, ptr %chip, i32 2204
  %ecc_bits.i = getelementptr i8, ptr %chip, i32 2200
  %bch.i = getelementptr i8, ptr %chip, i32 2216
  %errloc.i = getelementptr i8, ptr %chip, i32 2208
  %strength308.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %failed.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  %ecc_stats313.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %step.0475.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc338.i, %cleanup.i.for.body.i_crit_edge ]
  %83 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %size.i, align 8
  %mul255.i = mul i32 %84, %step.0475.i
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %mul255.i
  %85 = ptrtoint ptr %hw_ecc.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw_ecc.i, align 4
  %87 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bytes.i, align 4
  %89 = call ptr @memset(ptr %86, i32 0, i32 %88)
  %90 = load ptr, ptr %hw_ecc.i, align 4
  %91 = ptrtoint ptr %oob_poi.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %oob_poi.i, align 4
  %93 = ptrtoint ptr %oobsize245.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %oobsize245.i, align 4
  %95 = ptrtoint ptr %ecc_total.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ecc_total.i, align 4
  %sub.i = sub i32 %94, %96
  %arrayidx260.i = getelementptr i8, ptr %92, i32 %sub.i
  %97 = ptrtoint ptr %ecc_bits.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ecc_bits.i, align 8
  %mul261.i = mul i32 %98, %step.0475.i
  tail call void @nand_extract_bits(ptr noundef %90, i32 noundef 0, ptr noundef %arrayidx260.i, i32 noundef %mul261.i, i32 noundef %98) #7
  %99 = ptrtoint ptr %bch.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bch.i, align 8
  %101 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %size.i, align 8
  %103 = ptrtoint ptr %hw_ecc.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw_ecc.i, align 4
  %105 = ptrtoint ptr %errloc.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %errloc.i, align 8
  %call266.i = tail call i32 @bch_decode(ptr noundef %100, ptr noundef %arrayidx.i, i32 noundef %102, ptr noundef %104, ptr noundef null, ptr noundef null, ptr noundef %106) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call266.i)
  %tobool267.not.i = icmp eq i32 %call266.i, 0
  br i1 %tobool267.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.else.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call266.i)
  %cmp269.i = icmp sgt i32 %call266.i, 0
  br i1 %cmp269.i, label %if.else.i.for.body275.i_crit_edge, label %if.end304.i

if.else.i.for.body275.i_crit_edge:                ; preds = %if.else.i
  br label %for.body275.i

for.body275.i:                                    ; preds = %for.inc.i.for.body275.i_crit_edge, %if.else.i.for.body275.i_crit_edge
  %i.0473.i = phi i32 [ %inc.i, %for.inc.i.for.body275.i_crit_edge ], [ 0, %if.else.i.for.body275.i_crit_edge ]
  %107 = ptrtoint ptr %errloc.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %errloc.i, align 8
  %arrayidx277.i = getelementptr i32, ptr %108, i32 %i.0473.i
  %109 = ptrtoint ptr %arrayidx277.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx277.i, align 4
  %111 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %size.i, align 8
  %mul280.i = shl i32 %112, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %mul280.i)
  %cmp281.i = icmp ult i32 %110, %mul280.i
  br i1 %cmp281.i, label %if.then283.i, label %for.body275.i.for.inc.i_crit_edge

for.body275.i.for.inc.i_crit_edge:                ; preds = %for.body275.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then283.i:                                     ; preds = %for.body275.i
  call void @__sanitizer_cov_trace_pc() #9
  %and286.i = and i32 %110, 7
  %shl287.i = shl nuw nsw i32 1, %and286.i
  %shr290.i = lshr i32 %110, 3
  %arrayidx291.i = getelementptr i8, ptr %arrayidx.i, i32 %shr290.i
  %113 = ptrtoint ptr %arrayidx291.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx291.i, align 1
  %115 = trunc i32 %shl287.i to i8
  %conv293.i = xor i8 %114, %115
  store i8 %conv293.i, ptr %arrayidx291.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then283.i, %for.body275.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0473.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call266.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body275.i_crit_edge

for.inc.i.for.body275.i_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body275.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %ecc_stats313.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ecc_stats313.i, align 4
  %add295.i = add i32 %117, %call266.i
  store i32 %add295.i, ptr %ecc_stats313.i, align 4
  br label %cleanup.i

if.end304.i:                                      ; preds = %if.else.i
  %118 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %size.i, align 8
  %120 = ptrtoint ptr %strength308.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %strength308.i, align 4
  %call309.i = tail call i32 @nand_check_erased_ecc_chunk(ptr noundef %arrayidx.i, i32 noundef %119, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %121) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call309.i)
  %cmp310.i = icmp sgt i32 %call309.i, 0
  br i1 %cmp310.i, label %if.then312.i, label %if.else325.i

if.then312.i:                                     ; preds = %if.end304.i
  call void @__sanitizer_cov_trace_pc() #9
  %122 = ptrtoint ptr %ecc_stats313.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ecc_stats313.i, align 4
  %add315.i = add i32 %123, %call309.i
  store i32 %add315.i, ptr %ecc_stats313.i, align 4
  %124 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %size.i, align 8
  %126 = call ptr @memset(ptr %arrayidx.i, i32 255, i32 %125)
  br label %cleanup.i

if.else325.i:                                     ; preds = %if.end304.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call309.i)
  %cmp326.i = icmp slt i32 %call309.i, 0
  br i1 %cmp326.i, label %if.then328.i, label %if.else325.i.cleanup.i_crit_edge

if.else325.i.cleanup.i_crit_edge:                 ; preds = %if.else325.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.then328.i:                                     ; preds = %if.else325.i
  call void @__sanitizer_cov_trace_pc() #9
  %127 = ptrtoint ptr %failed.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %failed.i, align 4
  %inc330.i = add i32 %128, 1
  store i32 %inc330.i, ptr %failed.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then328.i, %if.else325.i.cleanup.i_crit_edge, %if.then312.i, %for.end.i, %for.body.i.cleanup.i_crit_edge
  %inc338.i = add nuw nsw i32 %step.0475.i, 1
  %129 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %steps.i, align 4
  %cmp.i = icmp slt i32 %inc338.i, %130
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup:                                          ; preds = %cleanup.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %if.end243.i.cleanup_crit_edge, %do.end241.i, %do.end227.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -5, %do.end227.i ], [ -110, %do.end241.i ], [ %call246.i, %if.end243.i.cleanup_crit_edge ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ 0, %cleanup.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anfc_sel_write_page_hw_ecc(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_cs = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %cur_cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_cs, align 4
  %call = tail call fastcc i32 @anfc_select_target(ptr noundef %chip, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %2 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller.i, align 4
  %add.ptr.i368.i = getelementptr i8, ptr %3, i32 -16
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %4 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not.i = icmp eq i32 %oob_required, 0
  br i1 %tobool.not.i, label %if.end.cond.end.i_crit_edge, label %cond.true.i

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %6 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oobsize.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.cond.end.i_crit_edge
  %cond.i = phi i32 [ %7, %cond.true.i ], [ 0, %if.end.cond.end.i_crit_edge ]
  %add.i = add i32 %cond.i, %5
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 8
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %10 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %steps.i, align 4
  %and22.i = and i32 %9, 2047
  %shl50.i = shl i32 %11, 12
  %and51.i = and i32 %shl50.i, 16773120
  %or.i = or i32 %and51.i, %and22.i
  %and52.i = and i32 %page, 255
  %caddr_cycles.i = getelementptr i8, ptr %chip, i32 2198
  %12 = ptrtoint ptr %caddr_cycles.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %caddr_cycles.i, align 2
  %conv.i = zext i16 %13 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %shl53.i = shl i32 %and52.i, %mul.i
  %14 = lshr i32 %page, 8
  %and54.i = and i32 %14, 255
  %mul58.i = add nuw nsw i32 %mul.i, 8
  %shl59.i = shl i32 %and54.i, %mul58.i
  %or60.i = or i32 %shl59.i, %shl53.i
  %strength.i = getelementptr i8, ptr %chip, i32 2192
  %15 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %strength.i, align 8
  %native_cs.i = getelementptr i8, ptr %3, i32 120
  %17 = ptrtoint ptr %native_cs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %native_cs.i, align 4
  %19 = lshr i32 %page, 16
  %and62.i = and i32 %19, 255
  %shl87.i = shl i32 %16, 25
  %and88.i = and i32 %shl87.i, 234881024
  %or89.i = or i32 %and62.i, %and88.i
  %shl114.i = shl i32 %18, 30
  %or116.i = or i32 %shl114.i, %or89.i
  %page_sz.i = getelementptr i8, ptr %chip, i32 2172
  %20 = ptrtoint ptr %page_sz.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page_sz.i, align 4
  %raddr_cycles.i = getelementptr i8, ptr %chip, i32 2196
  %22 = ptrtoint ptr %raddr_cycles.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %raddr_cycles.i, align 4
  %conv187.i = zext i16 %23 to i32
  %add188.i = add nuw nsw i32 %conv187.i, %conv.i
  %shl174.i = shl i32 %21, 23
  %and175.i = and i32 %shl174.i, 58720256
  %shl214.i = shl i32 %add188.i, 28
  %or177.i = or i32 %shl214.i, %and175.i
  %or217.i = or i32 %or177.i, -2013261696
  %ecc_conf.i = getelementptr i8, ptr %chip, i32 2188
  %24 = ptrtoint ptr %ecc_conf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ecc_conf.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %base.i = getelementptr i8, ptr %3, i32 -12
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %26) #7, !srcloc !157
  %29 = ptrtoint ptr %caddr_cycles.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %caddr_cycles.i, align 2
  %conv263.i = zext i16 %30 to i32
  %shl264.i = shl i32 %conv263.i, 28
  %and265.i = and i32 %shl264.i, 1879048192
  %or266.i = or i32 %and265.i, 133
  %31 = tail call i32 @llvm.bswap.i32(i32 %or266.i) #7
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr268.i = getelementptr i8, ptr %33, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr268.i, i32 %31) #7, !srcloc !157
  %34 = ptrtoint ptr %add.ptr.i368.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i368.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buf) #7
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %cond.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !158

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %35) #7
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %39, %if.end.i.i.i ], [ %37, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #7
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %40 = ptrtoint ptr %add.ptr.i368.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i368.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %41, i32 noundef -1) #7
  br label %do.end276.i

dma_map_single_attrs.exit.i:                      ; preds = %cond.end.i
  tail call void @debug_dma_map_single(ptr noundef %35, ptr noundef %buf, i32 noundef %add.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %42 = load ptr, ptr @mem_map, align 4
  %43 = ptrtoint ptr %buf to i32
  %sub.i.i = add i32 %43, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i369.i = getelementptr %struct.page, ptr %42, i32 %shr.i.i
  %and.i.i = and i32 %43, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %35, ptr noundef %add.ptr.i369.i, i32 noundef %and.i.i, i32 noundef %add.i, i32 noundef 1, i32 noundef 0) #7
  %44 = ptrtoint ptr %add.ptr.i368.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i368.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %45, i32 noundef %call41.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.do.end276.i_crit_edge, label %if.end278.i

dma_map_single_attrs.exit.i.do.end276.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end276.i

do.end276.i:                                      ; preds = %dma_map_single_attrs.exit.i.do.end276.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %46 = ptrtoint ptr %add.ptr.i368.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i368.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end278.i:                                      ; preds = %dma_map_single_attrs.exit.i
  %48 = tail call i32 @llvm.bswap.i32(i32 %call41.i.i) #7
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %add.ptr281.i = getelementptr i8, ptr %50, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr281.i, i32 %48) #7, !srcloc !157
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 4
  %add.ptr285.i = getelementptr i8, ptr %52, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr285.i, i32 0) #7, !srcloc !157
  %53 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #7, !srcloc !157
  %56 = tail call i32 @llvm.bswap.i32(i32 %or60.i) #7
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %58, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %56) #7, !srcloc !157
  %59 = tail call i32 @llvm.bswap.i32(i32 %or116.i) #7
  %60 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %61, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %59) #7, !srcloc !157
  %62 = tail call i32 @llvm.bswap.i32(i32 %or217.i) #7
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %64, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %62) #7, !srcloc !157
  %65 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %66, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 268435456) #7, !srcloc !157
  %call.i370.i = tail call i64 @ktime_get() #7
  %add.i.i.i = add i64 %call.i370.i, 1000000000
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.lhs.true.i.i.for.cond.i.i_crit_edge, %if.end278.i
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %add.ptr.i372.i = getelementptr i8, ptr %68, i32 28
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i372.i) #7, !srcloc !161
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #7
  %and.i373.i = and i32 %70, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i373.i)
  %tobool.not.i.i = icmp eq i32 %and.i373.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %for.cond.i.i.for.end.i.i_crit_edge

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

land.lhs.true.i.i:                                ; preds = %for.cond.i.i
  %call12.i.i = tail call i64 @ktime_get() #7
  %cmp3.i.i.i = icmp sgt i64 %call12.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then15.i.i, label %land.lhs.true.i.i.for.cond.i.i_crit_edge

land.lhs.true.i.i.for.cond.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

if.then15.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %72, i32 28
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i) #7, !srcloc !161
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #7
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.then15.i.i, %for.cond.i.i.for.end.i.i_crit_edge
  %val.0.i.i = phi i32 [ %74, %if.then15.i.i ], [ %70, %for.cond.i.i.for.end.i.i_crit_edge ]
  %and26.i.i = and i32 %val.0.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %do.end292.i, label %if.end294.i

do.end292.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %add.ptr.i368.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %add.ptr.i368.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.29, i32 noundef 4) #10
  %77 = ptrtoint ptr %add.ptr.i368.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr.i368.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %78, i32 noundef %call41.i.i, i32 noundef %add.i, i32 noundef 1, i32 noundef 0) #7
  %79 = ptrtoint ptr %add.ptr.i368.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i368.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.33, i32 noundef %page) #10
  br label %cleanup

if.end294.i:                                      ; preds = %for.end.i.i
  %81 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i, align 4
  %add.ptr35.i.i = getelementptr i8, ptr %82, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i.i, i32 67108864) #7, !srcloc !157
  %83 = ptrtoint ptr %add.ptr.i368.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr.i368.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %84, i32 noundef %call41.i.i, i32 noundef %add.i, i32 noundef 1, i32 noundef 0) #7
  br i1 %tobool.not.i, label %if.end294.i.cleanup_crit_edge, label %if.then296.i

if.end294.i.cleanup_crit_edge:                    ; preds = %if.end294.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then296.i:                                     ; preds = %if.end294.i
  call void @__sanitizer_cov_trace_pc() #9
  %call297.i = tail call i32 @nand_write_oob_std(ptr noundef %chip, i32 noundef %page) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then296.i, %if.end294.i.cleanup_crit_edge, %do.end292.i, %do.end276.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -5, %do.end276.i ], [ -110, %do.end292.i ], [ %call297.i, %if.then296.i ], [ 0, %if.end294.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @anfc_calc_hw_ecc_bytes(i32 noundef %step_size, i32 noundef %strength) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %step_size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %step_size, label %entry.cleanup_crit_edge [
    i32 512, label %entry.sw.epilog_crit_edge
    i32 1024, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %bch_gf_mag.0 = phi i32 [ 14, %sw.bb1 ], [ 13, %entry.sw.epilog_crit_edge ]
  %mul = mul i32 %bch_gf_mag.0, %strength
  %sub = add i32 %mul, 7
  %div3 = lshr i32 %sub, 3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div3, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @anfc_select_target(ptr nocapture noundef readonly %chip, i32 noundef %target) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i42 = getelementptr i8, ptr %1, i32 -16
  %cs_idx.i = getelementptr i8, ptr %chip, i32 2220
  %2 = ptrtoint ptr %cs_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cs_idx.i, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 %target
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %cur_cs.i = getelementptr i8, ptr %1, i32 116
  %6 = ptrtoint ptr %cur_cs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_cs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp.i = icmp eq i32 %7, %5
  br i1 %cmp.i, label %entry.anfc_assert_cs.exit_crit_edge, label %if.end.i

entry.anfc_assert_cs.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %anfc_assert_cs.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i.i = icmp sgt i32 %7, -1
  br i1 %cmp.i.i, label %anfc_is_gpio_cs.exit.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

anfc_is_gpio_cs.exit.i:                           ; preds = %if.end.i
  %cs_array.i.i = getelementptr i8, ptr %1, i32 108
  %8 = ptrtoint ptr %cs_array.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cs_array.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %9, i32 %7
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %11, null
  br i1 %tobool.i.not.i, label %anfc_is_gpio_cs.exit.i.if.end4.i_crit_edge, label %if.then2.i

anfc_is_gpio_cs.exit.i.if.end4.i_crit_edge:       ; preds = %anfc_is_gpio_cs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then2.i:                                       ; preds = %anfc_is_gpio_cs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %11, i32 noundef 1) #7
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %anfc_is_gpio_cs.exit.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i26.i = icmp sgt i32 %5, -1
  br i1 %cmp.i26.i, label %anfc_is_gpio_cs.exit31.i, label %if.end4.i.if.else.i_crit_edge

if.end4.i.if.else.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

anfc_is_gpio_cs.exit31.i:                         ; preds = %if.end4.i
  %cs_array.i27.i = getelementptr i8, ptr %1, i32 108
  %12 = ptrtoint ptr %cs_array.i27.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cs_array.i27.i, align 4
  %arrayidx.i28.i = getelementptr ptr, ptr %13, i32 %5
  %14 = ptrtoint ptr %arrayidx.i28.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i28.i, align 4
  %tobool.i29.not.i = icmp eq ptr %15, null
  br i1 %tobool.i29.not.i, label %anfc_is_gpio_cs.exit31.i.if.else.i_crit_edge, label %if.then6.i

anfc_is_gpio_cs.exit31.i.if.else.i_crit_edge:     ; preds = %anfc_is_gpio_cs.exit31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then6.i:                                       ; preds = %anfc_is_gpio_cs.exit31.i
  call void @__sanitizer_cov_trace_pc() #9
  %spare_cs.i = getelementptr i8, ptr %1, i32 124
  %16 = ptrtoint ptr %spare_cs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %spare_cs.i, align 4
  %native_cs.i = getelementptr i8, ptr %1, i32 120
  %18 = ptrtoint ptr %native_cs.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %native_cs.i, align 4
  %19 = ptrtoint ptr %arrayidx.i28.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i28.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %20, i32 noundef 0) #7
  br label %if.end10.i

if.else.i:                                        ; preds = %anfc_is_gpio_cs.exit31.i.if.else.i_crit_edge, %if.end4.i.if.else.i_crit_edge
  %native_cs9.i = getelementptr i8, ptr %1, i32 120
  %21 = ptrtoint ptr %native_cs9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %5, ptr %native_cs9.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then6.i
  %22 = ptrtoint ptr %cur_cs.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %5, ptr %cur_cs.i, align 4
  br label %anfc_assert_cs.exit

anfc_assert_cs.exit:                              ; preds = %if.end10.i, %entry.anfc_assert_cs.exit_crit_edge
  %data_iface = getelementptr i8, ptr %chip, i32 2180
  %23 = ptrtoint ptr %data_iface to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_iface, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %base = getelementptr i8, ptr %1, i32 -12
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %25) #7, !srcloc !157
  %timings = getelementptr i8, ptr %chip, i32 2184
  %28 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %timings, align 8
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %32, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %30) #7, !srcloc !157
  %cur_clk = getelementptr i8, ptr %1, i32 104
  %33 = ptrtoint ptr %cur_clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cur_clk, align 4
  %clk = getelementptr i8, ptr %chip, i32 2176
  %35 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %clk, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp.not = icmp eq i32 %34, %36
  br i1 %cmp.not, label %anfc_assert_cs.exit.cleanup_crit_edge, label %if.then

anfc_assert_cs.exit.cleanup_crit_edge:            ; preds = %anfc_assert_cs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %anfc_assert_cs.exit
  %controller_clk = getelementptr i8, ptr %1, i32 -8
  %37 = ptrtoint ptr %controller_clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %controller_clk, align 4
  tail call void @clk_disable(ptr noundef %38) #7
  tail call void @clk_unprepare(ptr noundef %38) #7
  %39 = ptrtoint ptr %controller_clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %controller_clk, align 4
  %41 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %clk, align 8
  %call7 = tail call i32 @clk_set_rate(ptr noundef %40, i32 noundef %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %add.ptr.i42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %45 = ptrtoint ptr %controller_clk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %controller_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i44, label %if.end.do.end15_crit_edge

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

if.end.i44:                                       ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end17, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %46) #7
  br label %do.end15

do.end15:                                         ; preds = %if.then3.i, %if.end.do.end15_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end15_crit_edge ]
  %47 = ptrtoint ptr %add.ptr.i42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %clk, align 8
  %51 = ptrtoint ptr %cur_clk to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %cur_clk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end15, %do.end, %anfc_assert_cs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ %retval.0.i.ph, %do.end15 ], [ 0, %if.end17 ], [ 0, %anfc_assert_cs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_extract_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_decode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_write_oob_std(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_op_parser_exec_op(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anfc_param_read_type_exec(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @anfc_misc_data_type_exec(ptr noundef %chip, ptr noundef %subop, i32 noundef 128)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anfc_param_write_type_exec(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @anfc_misc_data_type_exec(ptr noundef %chip, ptr noundef %subop, i32 noundef 1024)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anfc_data_read_type_exec(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %instrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  %0 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instrs, align 4
  %ctx = getelementptr inbounds %struct.nand_op_instr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp = icmp eq i8 %3, 5
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctx4 = getelementptr %struct.nand_op_instr, ptr %1, i32 2, i32 1
  %4 = ptrtoint ptr %ctx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctx4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %5)
  %cmp7 = icmp eq i8 %5, -32
  %spec.select = select i1 %cmp7, i32 16384, i32 1
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %prog_reg.0 = phi i32 [ 1, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call = tail call fastcc i32 @anfc_misc_data_type_exec(ptr noundef %chip, ptr noundef %subop, i32 noundef %prog_reg.0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anfc_data_write_type_exec(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @anfc_misc_data_type_exec(ptr noundef %chip, ptr noundef %subop, i32 noundef 16)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anfc_reset_type_exec(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @anfc_misc_zerolen_type_exec(ptr noundef %chip, ptr noundef %subop, i32 noundef 256)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anfc_erase_type_exec(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @anfc_misc_zerolen_type_exec(ptr noundef %chip, ptr noundef %subop, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anfc_status_type_exec(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %instrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  %2 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instrs, align 4
  %ctx = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %5)
  %cmp.not = icmp eq i8 %5, 112
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @anfc_misc_zerolen_type_exec(ptr noundef %chip, ptr noundef %subop, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr i8, ptr %1, i32 -12
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !161
  %9 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %instrs, align 4
  %buf = getelementptr %struct.nand_op_instr, ptr %10, i32 1, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf, align 4
  %tmp.0.extract.trunc = trunc i32 %8 to i8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %tmp.0.extract.trunc, ptr %12, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -524, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anfc_wait_type_exec(ptr nocapture noundef readonly %chip, ptr noundef %subop) #2 align 64 {
entry:
  %nfc_op = alloca %struct.anfc_op, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nfc_op) #7
  %2 = call ptr @memset(ptr %nfc_op, i32 0, i32 40)
  %call1 = call fastcc i32 @anfc_parse_instructions(ptr noundef %chip, ptr noundef %subop, ptr noundef nonnull %nfc_op)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  %rdy_timeout_ms = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 6
  %3 = ptrtoint ptr %rdy_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rdy_timeout_ms, align 4
  %call2 = call fastcc i32 @anfc_wait_for_rb(ptr noundef %add.ptr.i, ptr noundef %chip, i32 noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nfc_op) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @anfc_misc_data_type_exec(ptr nocapture noundef readonly %chip, ptr noundef %subop, i32 noundef %prog_reg) unnamed_addr #2 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  %nfc_op = alloca %struct.anfc_op, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nfc_op) #7
  %2 = call ptr @memset(ptr %nfc_op, i32 0, i32 40)
  %call1 = call fastcc i32 @anfc_parse_instructions(ptr noundef %chip, ptr noundef %subop, ptr noundef nonnull %nfc_op)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %prog_reg2 = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 4
  %3 = ptrtoint ptr %prog_reg2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %prog_reg, ptr %prog_reg2, align 4
  %4 = ptrtoint ptr %nfc_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nfc_op, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5) #7
  %base.i = getelementptr i8, ptr %1, i32 -12
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !157
  %addr1_reg.i = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 1
  %9 = ptrtoint ptr %addr1_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr1_reg.i, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10) #7
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %13, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %11) #7, !srcloc !157
  %addr2_reg.i = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 2
  %14 = ptrtoint ptr %addr2_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr2_reg.i, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15) #7
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %18, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %16) #7, !srcloc !157
  %cmd_reg.i = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 3
  %19 = ptrtoint ptr %cmd_reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cmd_reg.i, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20) #7
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %23, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %21) #7, !srcloc !157
  %24 = ptrtoint ptr %prog_reg2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %prog_reg2, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #7
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %28, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %26) #7, !srcloc !157
  %rdy_timeout_ms = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 6
  %29 = ptrtoint ptr %rdy_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rdy_timeout_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool3.not = icmp eq i32 %30, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %call6 = call fastcc i32 @anfc_wait_for_rb(ptr noundef %add.ptr.i, ptr noundef %chip, i32 noundef %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then4.if.end10_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %len.i = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 7
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 4
  %div69.i = lshr i32 %32, 2
  %steps.i = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 5
  %33 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %steps.i, align 4
  %div1.i = udiv i32 %div69.i, %34
  %rem.i = and i32 %32, 3
  %buf3.i = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 9
  %35 = ptrtoint ptr %buf3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp96.i = icmp sgt i32 %34, 0
  br i1 %cmp96.i, label %for.body.lr.ph.i, label %if.end10.for.end.i_crit_edge

if.end10.for.end.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end10
  %read.i = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 8
  %mul.i = shl nuw i32 %div1.i, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.097.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %37 = ptrtoint ptr %read.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %read.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 2
  %call.i.i = call i64 @ktime_get() #7
  %add.i.i.i = add i64 %call.i.i, 1000000000
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.lhs.true.i.i.for.cond.i.i_crit_edge, %for.body.i
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 28
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !161
  %42 = call i32 @llvm.bswap.i32(i32 %41) #7
  %and.i.i = and i32 %42, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %for.cond.i.i.for.end.i.i_crit_edge

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

land.lhs.true.i.i:                                ; preds = %for.cond.i.i
  %call12.i.i = call i64 @ktime_get() #7
  %cmp3.i.i.i = icmp sgt i64 %call12.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then15.i.i, label %land.lhs.true.i.i.for.cond.i.i_crit_edge

land.lhs.true.i.i.for.cond.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

if.then15.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %44, i32 28
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i) #7, !srcloc !161
  %46 = call i32 @llvm.bswap.i32(i32 %45) #7
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.then15.i.i, %for.cond.i.i.for.end.i.i_crit_edge
  %val.0.i.i = phi i32 [ %46, %if.then15.i.i ], [ %42, %for.cond.i.i.for.end.i.i_crit_edge ]
  %and26.i.i = and i32 %val.0.i.i, %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.29, i32 noundef %cond.i) #10
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 4
  %51 = ptrtoint ptr %read.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %read.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool7.not.i = icmp eq i8 %52, 0
  %cond8.i = select i1 %tobool7.not.i, ptr @.str.48, ptr @.str.47
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.45, ptr noundef nonnull %cond8.i) #10
  br label %cleanup

if.end.i:                                         ; preds = %for.end.i.i
  %53 = shl nuw nsw i32 %cond.i, 24
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr35.i.i = getelementptr i8, ptr %55, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i.i, i32 %53) #7, !srcloc !157
  %mul9.i = mul i32 %mul.i, %i.097.i
  %56 = ptrtoint ptr %read.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %read.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool11.not.i = icmp eq i8 %57, 0
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %59, i32 48
  %arrayidx15.i = getelementptr i8, ptr %36, i32 %mul9.i
  br i1 %tobool11.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__raw_readsl(ptr noundef %add.ptr14.i, ptr noundef %arrayidx15.i, i32 noundef %div1.i) #7
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__raw_writesl(ptr noundef %add.ptr14.i, ptr noundef %arrayidx15.i, i32 noundef %div1.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then12.i
  %inc.i = add nuw nsw i32 %i.097.i, 1
  %60 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %steps.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %61
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end10.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool17.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool17.not.i, label %for.end.i.if.end32.i_crit_edge, label %if.then18.i

for.end.i.if.end32.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then18.i:                                      ; preds = %for.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i)
  %62 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %remainder.i, align 4
  %63 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %64, %rem.i
  %read20.i = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 8
  %65 = ptrtoint ptr %read20.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %read20.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool21.not.i = icmp eq i8 %66, 0
  br i1 %tobool21.not.i, label %if.else27.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %68, i32 48
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #7, !srcloc !161
  %70 = call i32 @llvm.bswap.i32(i32 %69) #7
  %71 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %remainder.i, align 4
  %arrayidx26.i = getelementptr i8, ptr %36, i32 %sub.i
  %72 = call ptr @memcpy(ptr %arrayidx26.i, ptr %remainder.i, i32 %rem.i)
  br label %if.end31.i

if.else27.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx28.i = getelementptr i8, ptr %36, i32 %sub.i
  %73 = call ptr @memcpy(ptr %remainder.i, ptr %arrayidx28.i, i32 %rem.i)
  %74 = ptrtoint ptr %remainder.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %remainder.i.0.remainder.i.0.remainder.0.remainder.0.remainder.0..i = load i32, ptr %remainder.i, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %remainder.i.0.remainder.i.0.remainder.0.remainder.0.remainder.0..i) #7
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %77, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %75) #7, !srcloc !157
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else27.i, %if.then22.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i)
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end31.i, %for.end.i.if.end32.i_crit_edge
  %call.i70.i = call i64 @ktime_get() #7
  %add.i.i71.i = add i64 %call.i70.i, 1000000000
  br label %for.cond.i76.i

for.cond.i76.i:                                   ; preds = %land.lhs.true.i79.i.for.cond.i76.i_crit_edge, %if.end32.i
  %78 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i, align 4
  %add.ptr.i73.i = getelementptr i8, ptr %79, i32 28
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73.i) #7, !srcloc !161
  %81 = call i32 @llvm.bswap.i32(i32 %80) #7
  %and.i74.i = and i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74.i)
  %tobool.not.i75.i = icmp eq i32 %and.i74.i, 0
  br i1 %tobool.not.i75.i, label %land.lhs.true.i79.i, label %for.cond.i76.i.for.end.i85.i_crit_edge

for.cond.i76.i.for.end.i85.i_crit_edge:           ; preds = %for.cond.i76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i85.i

land.lhs.true.i79.i:                              ; preds = %for.cond.i76.i
  %call12.i77.i = call i64 @ktime_get() #7
  %cmp3.i.i78.i = icmp sgt i64 %call12.i77.i, %add.i.i71.i
  br i1 %cmp3.i.i78.i, label %if.then15.i81.i, label %land.lhs.true.i79.i.for.cond.i76.i_crit_edge

land.lhs.true.i79.i.for.cond.i76.i_crit_edge:     ; preds = %land.lhs.true.i79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i76.i

if.then15.i81.i:                                  ; preds = %land.lhs.true.i79.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 4
  %add.ptr18.i80.i = getelementptr i8, ptr %83, i32 28
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i80.i) #7, !srcloc !161
  %85 = call i32 @llvm.bswap.i32(i32 %84) #7
  br label %for.end.i85.i

for.end.i85.i:                                    ; preds = %if.then15.i81.i, %for.cond.i76.i.for.end.i85.i_crit_edge
  %val.0.i82.i = phi i32 [ %85, %if.then15.i81.i ], [ %81, %for.cond.i76.i.for.end.i85.i_crit_edge ]
  %and26.i83.i = and i32 %val.0.i82.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i83.i)
  %tobool27.not.i84.i = icmp eq i32 %and26.i83.i, 0
  br i1 %tobool27.not.i84.i, label %do.end32.i86.i, label %if.end33.i88.i

do.end32.i86.i:                                   ; preds = %for.end.i85.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.29, i32 noundef 4) #10
  br label %cleanup

if.end33.i88.i:                                   ; preds = %for.end.i85.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i, align 4
  %add.ptr35.i87.i = getelementptr i8, ptr %89, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i87.i, i32 67108864) #7, !srcloc !157
  br label %cleanup

cleanup:                                          ; preds = %if.end33.i88.i, %do.end32.i86.i, %do.end.i, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call6, %if.then4.cleanup_crit_edge ], [ -110, %do.end.i ], [ -110, %do.end32.i86.i ], [ 0, %if.end33.i88.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nfc_op) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @anfc_parse_instructions(ptr nocapture noundef readonly %chip, ptr noundef %subop, ptr noundef %nfc_op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %2 = call ptr @memset(ptr %nfc_op, i32 0, i32 40)
  %native_cs = getelementptr i8, ptr %1, i32 120
  %3 = ptrtoint ptr %native_cs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %native_cs, align 4
  %shl = shl i32 %4, 30
  %addr2_reg = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 2
  %5 = ptrtoint ptr %addr2_reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl, ptr %addr2_reg, align 4
  %page_sz = getelementptr i8, ptr %chip, i32 2172
  %6 = ptrtoint ptr %page_sz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_sz, align 4
  %shl41 = shl i32 %7, 23
  %and42 = and i32 %shl41, 58720256
  %cmd_reg = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 3
  %8 = ptrtoint ptr %cmd_reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and42, ptr %cmd_reg, align 4
  %ninstrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 2
  %9 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp337.not = icmp eq i32 %10, 0
  br i1 %cmp337.not, label %entry.cleanup246_crit_edge, label %for.body.lr.ph

entry.cleanup246_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup246

for.body.lr.ph:                                   ; preds = %entry
  %instrs = getelementptr inbounds %struct.nand_subop, ptr %subop, i32 0, i32 1
  %rdy_timeout_ms = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 6
  %read = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 8
  %buf170 = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 9
  %len = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 7
  %steps = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 5
  %tobool.not.i = icmp eq ptr %steps, null
  %addr1_reg = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc243.for.body_crit_edge, %for.body.lr.ph
  %first_cmd.0.off0341 = phi i1 [ true, %for.body.lr.ph ], [ %first_cmd.2.off0.ph, %for.inc243.for.body_crit_edge ]
  %op_id.0338 = phi i32 [ 0, %for.body.lr.ph ], [ %inc244, %for.inc243.for.body_crit_edge ]
  %11 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %12, i32 %op_id.0338
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %14, label %for.body.for.inc243_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb110
    i32 2, label %sw.bb164
    i32 3, label %for.body.sw.bb165_crit_edge
    i32 4, label %sw.bb237
  ]

for.body.sw.bb165_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb165

for.body.for.inc243_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc243

sw.bb:                                            ; preds = %for.body
  %ctx = getelementptr %struct.nand_op_instr, ptr %12, i32 %op_id.0338, i32 1
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctx, align 4
  %conv71 = zext i8 %17 to i32
  br i1 %first_cmd.0.off0341, label %do.body51, label %do.body81

do.body51:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %cmd_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd_reg, align 4
  br label %if.end109

do.body81:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %shl105 = shl nuw nsw i32 %conv71, 8
  %20 = ptrtoint ptr %cmd_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd_reg, align 4
  br label %if.end109

if.end109:                                        ; preds = %do.body81, %do.body51
  %.sink = phi i32 [ %21, %do.body81 ], [ %conv71, %do.body51 ]
  %shl105.sink = phi i32 [ %shl105, %do.body81 ], [ %19, %do.body51 ]
  %or108 = or i32 %shl105.sink, %.sink
  %22 = ptrtoint ptr %cmd_reg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or108, ptr %cmd_reg, align 4
  br label %for.inc243

sw.bb110:                                         ; preds = %for.body
  %call111 = tail call i32 @nand_subop_get_addr_start_off(ptr noundef %subop, i32 noundef %op_id.0338) #7
  %call112 = tail call i32 @nand_subop_get_num_addr_cyc(ptr noundef %subop, i32 noundef %op_id.0338) #7
  %addrs114 = getelementptr %struct.nand_op_instr, ptr %12, i32 %op_id.0338, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %addrs114 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %addrs114, align 4
  %arrayidx115 = getelementptr i8, ptr %24, i32 %call111
  %shl138 = shl i32 %call112, 28
  %and139 = and i32 %shl138, 1879048192
  %25 = ptrtoint ptr %cmd_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd_reg, align 4
  %or141 = or i32 %26, %and139
  store i32 %or141, ptr %cmd_reg, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %call112, i32 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp148334.not = icmp eq i32 %27, 0
  br i1 %cmp148334.not, label %sw.bb110.for.inc243_crit_edge, label %for.inc.peel

sw.bb110.for.inc243_crit_edge:                    ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc243

for.inc.peel:                                     ; preds = %sw.bb110
  %arrayidx159 = getelementptr i8, ptr %arrayidx115, i32 4
  %28 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx115, align 1
  %conv155.peel = zext i8 %29 to i32
  %30 = ptrtoint ptr %addr1_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr1_reg, align 4
  %or157.peel = or i32 %31, %conv155.peel
  store i32 %or157.peel, ptr %addr1_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %exitcond.peel.not = icmp eq i32 %27, 1
  br i1 %exitcond.peel.not, label %for.inc.peel.for.inc243_crit_edge, label %for.inc.peel355

for.inc.peel.for.inc243_crit_edge:                ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc243

for.inc.peel355:                                  ; preds = %for.inc.peel
  %arrayidx154.peel350 = getelementptr i8, ptr %arrayidx115, i32 1
  %32 = ptrtoint ptr %arrayidx154.peel350 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx154.peel350, align 1
  %conv155.peel351 = zext i8 %33 to i32
  %shl156.peel353 = shl nuw nsw i32 %conv155.peel351, 8
  %34 = ptrtoint ptr %addr1_reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr1_reg, align 4
  %or157.peel354 = or i32 %shl156.peel353, %35
  store i32 %or157.peel354, ptr %addr1_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %exitcond.peel357.not = icmp eq i32 %27, 2
  br i1 %exitcond.peel357.not, label %for.inc.peel355.for.inc243_crit_edge, label %for.inc.peel370

for.inc.peel355.for.inc243_crit_edge:             ; preds = %for.inc.peel355
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc243

for.inc.peel370:                                  ; preds = %for.inc.peel355
  %arrayidx154.peel365 = getelementptr i8, ptr %arrayidx115, i32 2
  %36 = ptrtoint ptr %arrayidx154.peel365 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx154.peel365, align 1
  %conv155.peel366 = zext i8 %37 to i32
  %shl156.peel368 = shl nuw nsw i32 %conv155.peel366, 16
  %38 = ptrtoint ptr %addr1_reg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr1_reg, align 4
  %or157.peel369 = or i32 %shl156.peel368, %39
  store i32 %or157.peel369, ptr %addr1_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %exitcond.peel372.not = icmp eq i32 %27, 3
  br i1 %exitcond.peel372.not, label %for.inc.peel370.for.inc243_crit_edge, label %for.inc.peel385

for.inc.peel370.for.inc243_crit_edge:             ; preds = %for.inc.peel370
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc243

for.inc.peel385:                                  ; preds = %for.inc.peel370
  %arrayidx154.peel380 = getelementptr i8, ptr %arrayidx115, i32 3
  %40 = ptrtoint ptr %arrayidx154.peel380 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx154.peel380, align 1
  %conv155.peel381 = zext i8 %41 to i32
  %shl156.peel383 = shl nuw i32 %conv155.peel381, 24
  %42 = ptrtoint ptr %addr1_reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr1_reg, align 4
  %or157.peel384 = or i32 %shl156.peel383, %43
  store i32 %or157.peel384, ptr %addr1_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %exitcond.peel387.not = icmp eq i32 %27, 4
  br i1 %exitcond.peel387.not, label %for.inc.peel385.for.inc243_crit_edge, label %for.inc.peel385.for.inc_crit_edge

for.inc.peel385.for.inc_crit_edge:                ; preds = %for.inc.peel385
  br label %for.inc

for.inc.peel385.for.inc243_crit_edge:             ; preds = %for.inc.peel385
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc243

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %for.inc.peel385.for.inc_crit_edge
  %i.0335 = phi i32 [ %inc, %for.inc.for.inc_crit_edge ], [ 4, %for.inc.peel385.for.inc_crit_edge ]
  %44 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx159, align 1
  %conv160 = zext i8 %45 to i32
  %46 = ptrtoint ptr %addr2_reg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr2_reg, align 4
  %or162 = or i32 %47, %conv160
  store i32 %or162, ptr %addr2_reg, align 4
  %inc = add nuw nsw i32 %i.0335, 1
  %exitcond.not = icmp eq i32 %inc, %27
  br i1 %exitcond.not, label %for.inc.for.inc243_crit_edge, label %for.inc.for.inc_crit_edge, !llvm.loop !163

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc.for.inc243_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc243

sw.bb164:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %read to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %read, align 4
  br label %sw.bb165

sw.bb165:                                         ; preds = %sw.bb164, %for.body.sw.bb165_crit_edge
  %call166 = tail call i32 @nand_subop_get_data_start_off(ptr noundef %subop, i32 noundef %op_id.0338) #7
  %buf168 = getelementptr %struct.nand_op_instr, ptr %12, i32 %op_id.0338, i32 1, i32 0, i32 1
  %49 = ptrtoint ptr %buf168 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buf168, align 4
  %arrayidx169 = getelementptr i8, ptr %50, i32 %call166
  %51 = ptrtoint ptr %buf170 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx169, ptr %buf170, align 4
  %call171 = tail call i32 @nand_subop_get_data_len(ptr noundef %subop, i32 noundef %op_id.0338) #7
  %52 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call171, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call171)
  %cmp1.i = icmp ult i32 %call171, 2048
  br i1 %cmp1.i, label %sw.bb165.for.end.i_crit_edge, label %for.inc.i

sw.bb165.for.end.i_crit_edge:                     ; preds = %sw.bb165
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i:                                        ; preds = %sw.bb165
  %div.122.i = lshr i32 %call171, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call171)
  %cmp1.1.i = icmp ult i32 %call171, 4096
  br i1 %cmp1.1.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.1.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %div.223.i = lshr i32 %call171, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %call171)
  %cmp1.2.i = icmp ult i32 %call171, 8192
  br i1 %cmp1.2.i, label %for.inc.1.i.for.end.i_crit_edge, label %for.inc.2.i

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %div.324.i = lshr i32 %call171, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %call171)
  %cmp1.3.i = icmp ult i32 %call171, 16384
  br i1 %cmp1.3.i, label %for.inc.2.i.for.end.i_crit_edge, label %for.inc.3.i

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %div.425.i = lshr i32 %call171, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %call171)
  %cmp1.4.i = icmp ult i32 %call171, 32768
  br i1 %cmp1.4.i, label %for.inc.3.i.for.end.i_crit_edge, label %for.inc.4.i

for.inc.3.i.for.end.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %div.526.i = lshr i32 %call171, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call171)
  %cmp1.5.i = icmp ult i32 %call171, 65536
  br i1 %cmp1.5.i, label %for.inc.4.i.for.end.i_crit_edge, label %for.inc.5.i

for.inc.4.i.for.end.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %div.627.i = lshr i32 %call171, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %call171)
  %cmp1.6.i = icmp ult i32 %call171, 131072
  br i1 %cmp1.6.i, label %for.inc.5.i.for.end.i_crit_edge, label %for.inc.6.i

for.inc.5.i.for.end.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %div.728.i = lshr i32 %call171, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %call171)
  %cmp1.7.i = icmp ult i32 %call171, 262144
  br i1 %cmp1.7.i, label %for.inc.6.i.for.end.i_crit_edge, label %for.inc.7.i

for.inc.6.i.for.end.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %div.829.i = lshr i32 %call171, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %call171)
  %cmp1.8.i = icmp ult i32 %call171, 524288
  br i1 %cmp1.8.i, label %for.inc.7.i.for.end.i_crit_edge, label %for.inc.8.i

for.inc.7.i.for.end.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %div.930.i = lshr i32 %call171, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %call171)
  %cmp1.9.i = icmp ult i32 %call171, 1048576
  br i1 %cmp1.9.i, label %for.inc.8.i.for.end.i_crit_edge, label %for.inc.9.i

for.inc.8.i.for.end.i_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  %div.1031.i = lshr i32 %call171, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %call171)
  %cmp1.10.i = icmp ult i32 %call171, 2097152
  %spec.select.i = select i1 %cmp1.10.i, i32 1024, i32 2048
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.9.i, %for.inc.8.i.for.end.i_crit_edge, %for.inc.7.i.for.end.i_crit_edge, %for.inc.6.i.for.end.i_crit_edge, %for.inc.5.i.for.end.i_crit_edge, %for.inc.4.i.for.end.i_crit_edge, %for.inc.3.i.for.end.i_crit_edge, %for.inc.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %sw.bb165.for.end.i_crit_edge
  %div.lcssa.i = phi i32 [ %call171, %sw.bb165.for.end.i_crit_edge ], [ %div.122.i, %for.inc.i.for.end.i_crit_edge ], [ %div.223.i, %for.inc.1.i.for.end.i_crit_edge ], [ %div.324.i, %for.inc.2.i.for.end.i_crit_edge ], [ %div.425.i, %for.inc.3.i.for.end.i_crit_edge ], [ %div.526.i, %for.inc.4.i.for.end.i_crit_edge ], [ %div.627.i, %for.inc.5.i.for.end.i_crit_edge ], [ %div.728.i, %for.inc.6.i.for.end.i_crit_edge ], [ %div.829.i, %for.inc.7.i.for.end.i_crit_edge ], [ %div.930.i, %for.inc.8.i.for.end.i_crit_edge ], [ %div.1031.i, %for.inc.9.i ]
  %nb.0.lcssa.i = phi i32 [ 1, %sw.bb165.for.end.i_crit_edge ], [ 2, %for.inc.i.for.end.i_crit_edge ], [ 4, %for.inc.1.i.for.end.i_crit_edge ], [ 8, %for.inc.2.i.for.end.i_crit_edge ], [ 16, %for.inc.3.i.for.end.i_crit_edge ], [ 32, %for.inc.4.i.for.end.i_crit_edge ], [ 64, %for.inc.5.i.for.end.i_crit_edge ], [ 128, %for.inc.6.i.for.end.i_crit_edge ], [ 256, %for.inc.7.i.for.end.i_crit_edge ], [ 512, %for.inc.8.i.for.end.i_crit_edge ], [ %spec.select.i, %for.inc.9.i ]
  %mul2.i = mul i32 %nb.0.lcssa.i, %div.lcssa.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul2.i, i32 %call171)
  %cmp3.not.i = icmp eq i32 %mul2.i, %call171
  br i1 %cmp3.not.i, label %if.end5.i, label %for.end.i.cleanup246_crit_edge

for.end.i.cleanup246_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup246

if.end5.i:                                        ; preds = %for.end.i
  br i1 %tobool.not.i, label %if.end5.i.do.end230_crit_edge, label %if.then6.i

if.end5.i.do.end230_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end230

if.then6.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %steps to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %nb.0.lcssa.i, ptr %steps, align 4
  br label %do.end230

do.end230:                                        ; preds = %if.then6.i, %if.end5.i.do.end230_crit_edge
  %54 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %steps, align 4
  %sub203 = add nuw i32 %div.lcssa.i, 2047
  %or204 = or i32 %sub203, 3
  %add205 = add i32 %or204, 1
  %and207 = and i32 %add205, 2044
  %shl233 = shl i32 %55, 12
  %and234 = and i32 %shl233, 16773120
  %or235 = or i32 %and234, %and207
  %56 = ptrtoint ptr %nfc_op to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nfc_op, align 4
  %or236 = or i32 %or235, %57
  store i32 %or236, ptr %nfc_op, align 4
  br label %for.inc243

sw.bb237:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %ctx238 = getelementptr %struct.nand_op_instr, ptr %12, i32 %op_id.0338, i32 1
  %58 = ptrtoint ptr %ctx238 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ctx238, align 4
  %60 = ptrtoint ptr %rdy_timeout_ms to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %rdy_timeout_ms, align 4
  br label %for.inc243

for.inc243:                                       ; preds = %sw.bb237, %do.end230, %for.inc.for.inc243_crit_edge, %for.inc.peel385.for.inc243_crit_edge, %for.inc.peel370.for.inc243_crit_edge, %for.inc.peel355.for.inc243_crit_edge, %for.inc.peel.for.inc243_crit_edge, %sw.bb110.for.inc243_crit_edge, %if.end109, %for.body.for.inc243_crit_edge
  %first_cmd.2.off0.ph = phi i1 [ false, %if.end109 ], [ %first_cmd.0.off0341, %do.end230 ], [ %first_cmd.0.off0341, %sw.bb237 ], [ %first_cmd.0.off0341, %for.body.for.inc243_crit_edge ], [ %first_cmd.0.off0341, %sw.bb110.for.inc243_crit_edge ], [ %first_cmd.0.off0341, %for.inc.peel385.for.inc243_crit_edge ], [ %first_cmd.0.off0341, %for.inc.peel370.for.inc243_crit_edge ], [ %first_cmd.0.off0341, %for.inc.peel355.for.inc243_crit_edge ], [ %first_cmd.0.off0341, %for.inc.peel.for.inc243_crit_edge ], [ %first_cmd.0.off0341, %for.inc.for.inc243_crit_edge ]
  %inc244 = add nuw i32 %op_id.0338, 1
  %61 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc244, %62
  br i1 %cmp, label %for.inc243.for.body_crit_edge, label %for.inc243.cleanup246_crit_edge

for.inc243.cleanup246_crit_edge:                  ; preds = %for.inc243
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup246

for.inc243.for.body_crit_edge:                    ; preds = %for.inc243
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup246:                                       ; preds = %for.inc243.cleanup246_crit_edge, %for.end.i.cleanup246_crit_edge, %entry.cleanup246_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup246_crit_edge ], [ -524, %for.end.i.cleanup246_crit_edge ], [ 0, %for.inc243.cleanup246_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @anfc_wait_for_rb(ptr nocapture noundef readonly %nfc, ptr nocapture noundef readonly %chip, i32 noundef %timeout_ms) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %timeout_ms, 1000
  %conv = zext i32 %mul to i64
  %call1 = tail call i64 @ktime_get() #7
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %call1, %mul.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 262) #7
  %base = getelementptr inbounds %struct.arasan_nfc, ptr %nfc, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr62 = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #7, !srcloc !161
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %rb = getelementptr i8, ptr %chip, i32 2168
  %4 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rb, align 8
  %shl63 = shl nuw i32 1, %5
  %and64 = and i32 %shl63, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool.not65 = icmp eq i32 %and64, 0
  br i1 %tobool.not65, label %if.end12.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end12.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool13.not = icmp eq i32 %mul, 0
  br label %if.end12

if.end12:                                         ; preds = %if.then26.if.end12_crit_edge, %if.end12.lr.ph
  br i1 %tobool13.not, label %if.end12.if.then26_crit_edge, label %land.lhs.true

if.end12.if.then26_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

land.lhs.true:                                    ; preds = %if.end12
  %call14 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %if.then18, label %land.lhs.true.if.then26_crit_edge

land.lhs.true.if.then26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr21 = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #7, !srcloc !161
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %for.end

if.then26:                                        ; preds = %land.lhs.true.if.then26_crit_edge, %if.end12.if.then26_crit_edge
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #7
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !161
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rb, align 8
  %shl = shl nuw i32 1, %15
  %and = and i32 %shl, %13
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then26.if.end12_crit_edge, label %if.then26.for.end_crit_edge

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then26.if.end12_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

for.end:                                          ; preds = %if.then26.for.end_crit_edge, %if.then18, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %9, %if.then18 ], [ %3, %entry.for.end_crit_edge ], [ %13, %if.then26.for.end_crit_edge ]
  %16 = ptrtoint ptr %rb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rb, align 8
  %shl30 = shl nuw i32 1, %17
  %and31 = and i32 %shl30, %val.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.end37, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end37:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %nfc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nfc, align 4
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr40 = getelementptr i8, ptr %21, i32 32
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #7, !srcloc !161
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.43, i32 noundef %23) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end37 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_addr_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_num_addr_cyc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_data_start_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_subop_get_data_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @anfc_misc_zerolen_type_exec(ptr nocapture noundef readonly %chip, ptr noundef %subop, i32 noundef %prog_reg) unnamed_addr #2 align 64 {
entry:
  %nfc_op = alloca %struct.anfc_op, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nfc_op) #7
  %2 = call ptr @memset(ptr %nfc_op, i32 0, i32 40)
  %call1 = call fastcc i32 @anfc_parse_instructions(ptr noundef %chip, ptr noundef %subop, ptr noundef nonnull %nfc_op)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %prog_reg2 = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 4
  %3 = ptrtoint ptr %prog_reg2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %prog_reg, ptr %prog_reg2, align 4
  %4 = ptrtoint ptr %nfc_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nfc_op, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5) #7
  %base.i = getelementptr i8, ptr %1, i32 -12
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !157
  %addr1_reg.i = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 1
  %9 = ptrtoint ptr %addr1_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr1_reg.i, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10) #7
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %13, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %11) #7, !srcloc !157
  %addr2_reg.i = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 2
  %14 = ptrtoint ptr %addr2_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr2_reg.i, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15) #7
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %18, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %16) #7, !srcloc !157
  %cmd_reg.i = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 3
  %19 = ptrtoint ptr %cmd_reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cmd_reg.i, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20) #7
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %23, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %21) #7, !srcloc !157
  %24 = ptrtoint ptr %prog_reg2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %prog_reg2, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #7
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %28, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %26) #7, !srcloc !157
  %call.i = call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i, 1000000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.end
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %30, i32 28
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #7, !srcloc !161
  %32 = call i32 @llvm.bswap.i32(i32 %31) #7
  %and.i = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call12.i = call i64 @ktime_get() #7
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then15.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %34, i32 28
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #7, !srcloc !161
  %36 = call i32 @llvm.bswap.i32(i32 %35) #7
  br label %for.end.i

for.end.i:                                        ; preds = %if.then15.i, %for.cond.i.for.end.i_crit_edge
  %val.0.i = phi i32 [ %36, %if.then15.i ], [ %32, %for.cond.i.for.end.i_crit_edge ]
  %and26.i = and i32 %val.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %anfc_wait_for_event.exit, label %if.end6

anfc_wait_for_event.exit:                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.29, i32 noundef 4) #10
  br label %cleanup

if.end6:                                          ; preds = %for.end.i
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %40, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 67108864) #7, !srcloc !157
  %rdy_timeout_ms = getelementptr inbounds %struct.anfc_op, ptr %nfc_op, i32 0, i32 6
  %41 = ptrtoint ptr %rdy_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rdy_timeout_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool7.not = icmp eq i32 %42, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call fastcc i32 @anfc_wait_for_rb(ptr noundef %add.ptr.i, ptr noundef %chip, i32 noundef %42)
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %anfc_wait_for_event.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -110, %anfc_wait_for_event.exit ], [ %call10, %if.then8 ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nfc_op) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rawnand_dt_parse_gpio_cs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !96, !97, !98, !100, !101, !102, !103, !104, !105, !107, !109, !110, !111, !112, !114, !116, !117, !118, !119, !121, !123, !124, !125, !126, !128, !129, !130, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @__initcall__kmod_arasan_nand_controller__410_1524_anfc_driver_init6, !1, !"__initcall__kmod_arasan_nand_controller__410_1524_anfc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1524, i32 1}
!2 = !{ptr @__exitcall_anfc_driver_exit, !1, !"__exitcall_anfc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file411, !4, !"__UNIQUE_ID_file411", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1526, i32 1}
!5 = !{ptr @__UNIQUE_ID_license412, !4, !"__UNIQUE_ID_license412", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author413, !7, !"__UNIQUE_ID_author413", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1527, i32 1}
!8 = !{ptr @__UNIQUE_ID_author414, !9, !"__UNIQUE_ID_author414", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1528, i32 1}
!10 = !{ptr @__UNIQUE_ID_author415, !11, !"__UNIQUE_ID_author415", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1529, i32 1}
!12 = !{ptr @__UNIQUE_ID_description416, !13, !"__UNIQUE_ID_description416", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1530, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1518, i32 11}
!16 = !{ptr @anfc_driver, !17, !"anfc_driver", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1516, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1452, i32 49}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1456, i32 42}
!22 = !{ptr @nand_controller_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @anfc_ops, !26, !"anfc_ops", i1 false, i1 false}
!26 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1262, i32 41}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1246, i32 3}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @anfc_attach_chip._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @anfc_attach_chip._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1121, i32 3}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @anfc_init_hw_ecc_controller._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @anfc_init_hw_ecc_controller._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1143, i32 3}
!42 = !{ptr @anfc_init_hw_ecc_controller._entry.11, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @anfc_init_hw_ecc_controller._entry_ptr.13, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1157, i32 3}
!46 = !{ptr @anfc_init_hw_ecc_controller._entry.14, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @anfc_init_hw_ecc_controller._entry_ptr.16, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @anfc_hw_ecc_caps, !49, !"anfc_hw_ecc_caps", i1 false, i1 false}
!49 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1098, i32 35}
!50 = !{ptr @anfc_hw_ecc_step_infos, !51, !"anfc_hw_ecc_step_infos", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1085, i32 40}
!52 = !{ptr @anfc_hw_ecc_512_strengths, !53, !"anfc_hw_ecc_512_strengths", i1 false, i1 false}
!53 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1081, i32 18}
!54 = !{ptr @anfc_hw_ecc_1024_strengths, !55, !"anfc_hw_ecc_1024_strengths", i1 false, i1 false}
!55 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1083, i32 18}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 353, i32 4}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @anfc_select_target._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @anfc_select_target._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 359, i32 4}
!63 = !{ptr @anfc_select_target._entry.19, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @anfc_select_target._entry_ptr.21, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 425, i32 3}
!67 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @anfc_read_page_hw_ecc._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @anfc_read_page_hw_ecc._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 437, i32 3}
!72 = !{ptr @anfc_read_page_hw_ecc._entry.24, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @anfc_read_page_hw_ecc._entry_ptr.26, !71, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!76 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 243, i32 3}
!80 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @anfc_wait_for_event._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @anfc_wait_for_event._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 548, i32 3}
!85 = !{ptr @anfc_write_page_hw_ecc._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @anfc_write_page_hw_ecc._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 559, i32 3}
!89 = !{ptr @anfc_write_page_hw_ecc._entry.32, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @anfc_write_page_hw_ecc._entry_ptr.34, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @anfc_op_parser, !92, !"anfc_op_parser", i1 false, i1 false}
!92 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 847, i32 36}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 264, i32 3}
!95 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @anfc_wait_for_rb._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @anfc_wait_for_rb._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 680, i32 4}
!100 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @anfc_rw_pio_op._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @anfc_rw_pio_op._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1054, i32 34}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1412, i32 4}
!109 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @anfc_parse_cs._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @anfc_parse_cs._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @anfc_default_cs_array, !113, !"anfc_default_cs_array", i1 false, i1 false}
!113 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 121, i32 26}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1365, i32 3}
!116 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @anfc_chips_init._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @anfc_chips_init._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1281, i32 55}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1283, i32 3}
!123 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @anfc_chip_init._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @anfc_chip_init._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1296, i32 4}
!128 = !{ptr @anfc_chip_init._entry.57, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @anfc_chip_init._entry_ptr.59, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1302, i32 33}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1307, i32 3}
!134 = !{ptr @anfc_chip_init._entry.61, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @anfc_chip_init._entry_ptr.63, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1322, i32 3}
!138 = !{ptr @anfc_chip_init._entry.64, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @anfc_chip_init._entry_ptr.66, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1328, i32 3}
!142 = !{ptr @anfc_chip_init._entry.67, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @anfc_chip_init._entry_ptr.69, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!146 = !{ptr @anfc_ids, !147, !"anfc_ids", i1 false, i1 false}
!147 = !{!"../drivers/mtd/nand/raw/arasan-nand-controller.c", i32 1505, i32 34}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{i64 6324297}
!158 = !{!"branch_weights", i32 2000, i32 1}
!159 = !{!"auto-init"}
!160 = !{!"branch_weights", i32 1, i32 2000}
!161 = !{i64 6324715}
!162 = !{i8 0, i8 2}
!163 = distinct !{!163, !164}
!164 = !{!"llvm.loop.peeled.count", i32 4}
