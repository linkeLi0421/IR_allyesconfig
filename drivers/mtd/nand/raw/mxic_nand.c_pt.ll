; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/mxic_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/mxic_nand.c"
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
%struct.mxic_nand_ctlr = type { ptr, ptr, ptr, %struct.completion, ptr, %struct.nand_controller, ptr, %struct.nand_chip }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.49, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
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
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.44, i32 }
%union.anon.44 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.45, i8 }
%union.anon.45 = type { ptr }
%struct.nand_op_addr_instr = type { i32, ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.46 }
%union.anon.46 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_mxic_nand__202_584_mxic_nfc_driver_init6 = internal global ptr @mxic_nfc_driver_init, section ".initcall6.init", align 4
@mxic_nfc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxic_nfc_probe, ptr @mxic_nfc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxic_nfc_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mxic_nfc_driver_exit = internal global ptr @mxic_nfc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author203 = internal constant [54 x i8] c"mxic_nand.author=Mason Yang <masonccyang@mxic.com.tw>\00", section ".modinfo", align 1
@__UNIQUE_ID_description204 = internal constant [58 x i8] c"mxic_nand.description=Macronix raw NAND controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file205 = internal constant [46 x i8] c"mxic_nand.file=drivers/mtd/nand/raw/mxic_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license206 = internal constant [25 x i8] c"mxic_nand.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mxic-nfc\00", [23 x i8] zeroinitializer }, align 32
@mxic_nfc_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mxic,multi-itfc-v009-nand-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ps\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"send\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"send_dly\00", [23 x i8] zeroinitializer }, align 32
@mxic_nand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr null, ptr null, ptr @mxic_nfc_exec_op, ptr @mxic_nfc_setup_interface }, [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mtd/nand/raw/mxic_nand.c\00", [63 x i8] zeroinitializer }, align 32
@mxic_nfc_data_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.6, i32 380, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RX FIFO not empty\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxic_nfc_data_xfer\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxic_nfc_data_xfer._entry_ptr = internal global ptr @mxic_nfc_data_xfer._entry, section ".printk_index", align 4
@mxic_nfc_wait_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.6, i32 332, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nand device timeout\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxic_nfc_wait_ready\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mxic_nfc_wait_ready._entry_ptr = internal global ptr @mxic_nfc_wait_ready._entry, section ".printk_index", align 4
@mxic_nfc_setup_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 473, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set freq:%ld failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxic_nfc_setup_interface\00", [39 x i8] zeroinitializer }, align 32
@mxic_nfc_setup_interface._entry_ptr = internal global ptr @mxic_nfc_setup_interface._entry, section ".printk_index", align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"mxic_nfc_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 576, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 580, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"mxic_nfc_of_ids\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 570, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 500, i32 41 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 504, i32 43 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 508, i32 47 }
@___asan_gen_.35 = private unnamed_addr constant [25 x i8] c"mxic_nand_controller_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 481, i32 41 }
@___asan_gen_.39 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 464, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 87, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 356, i32 9 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 380, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 332, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private constant [36 x i8] c"../drivers/mtd/nand/raw/mxic_nand.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 473, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1105, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author203, ptr @__UNIQUE_ID_description204, ptr @__UNIQUE_ID_file205, ptr @__UNIQUE_ID_license206, ptr @__exitcall_mxic_nfc_driver_exit, ptr @__initcall__kmod_mxic_nand__202_584_mxic_nfc_driver_init6, ptr @mxic_nfc_data_xfer._entry, ptr @mxic_nfc_data_xfer._entry_ptr, ptr @mxic_nfc_driver_exit, ptr @mxic_nfc_setup_interface._entry, ptr @mxic_nfc_setup_interface._entry_ptr, ptr @mxic_nfc_wait_ready._entry, ptr @mxic_nfc_wait_ready._entry_ptr, ptr @mxic_nfc_driver, ptr @.str, ptr @mxic_nfc_of_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mxic_nand_controller_ops, ptr @.str.4, ptr @init_completion.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @nand_controller_init.__key, ptr @.str.16], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxic_nfc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxic_nfc_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxic_nand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxic_nfc_data_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxic_nfc_wait_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxic_nfc_setup_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxic_nfc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxic_nfc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxic_nfc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxic_nfc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxic_nfc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2344, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #6
  %send_clk = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %send_clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %send_clk, align 4
  %cmp.i111 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %call19 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #6
  %send_dly_clk = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %send_dly_clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call19, ptr %send_dly_clk, align 8
  %cmp.i112 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %call26 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %regs = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call26, ptr %regs, align 4
  %cmp.i113 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end25
  %chip = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %call.i, i32 0, i32 7
  %parent = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %call.i, i32 0, i32 7, i32 0, i32 0, i32 56, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 8
  %call36 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #6
  %cmp.not116 = icmp eq ptr %call36, null
  br i1 %cmp.not116, label %if.end32.for.end_crit_edge, label %for.body.lr.ph

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end32
  %of_node.i.i = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %call.i, i32 0, i32 7, i32 0, i32 0, i32 56, i32 27
  %name.i.i = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %call.i, i32 0, i32 7, i32 0, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %nand_set_flash_node.exit.for.body_crit_edge, %for.body.lr.ph
  %nand_np.0117 = phi ptr [ %call36, %for.body.lr.ph ], [ %call37, %nand_set_flash_node.exit.for.body_crit_edge ]
  %11 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %nand_np.0117, ptr %of_node.i.i, align 8
  %12 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.body.nand_set_flash_node.exit_crit_edge

for.body.nand_set_flash_node.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %nand_set_flash_node.exit

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 @of_property_read_string(ptr noundef nonnull %nand_np.0117, ptr noundef nonnull @.str.4, ptr noundef %name.i.i) #6
  br label %nand_set_flash_node.exit

nand_set_flash_node.exit:                         ; preds = %if.then.i.i, %for.body.nand_set_flash_node.exit_crit_edge
  %call37 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %nand_np.0117) #6
  %cmp.not = icmp eq ptr %call37, null
  br i1 %cmp.not, label %nand_set_flash_node.exit.for.end_crit_edge, label %nand_set_flash_node.exit.for.body_crit_edge

nand_set_flash_node.exit.for.body_crit_edge:      ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

nand_set_flash_node.exit.for.end_crit_edge:       ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %nand_set_flash_node.exit.for.end_crit_edge, %if.end32.for.end_crit_edge
  %priv = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %call.i, i32 0, i32 7, i32 34
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %priv, align 8
  %dev39 = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %dev39 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %dev39, align 8
  %controller = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %call.i, i32 0, i32 5
  %ops = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %call.i, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mxic_nand_controller_ops, ptr %ops, align 4
  tail call void @__mutex_init(ptr noundef %controller, ptr noundef nonnull @.str.16, ptr noundef nonnull @nand_controller_init.__key) #6
  %controller42 = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %call.i, i32 0, i32 7, i32 32
  %17 = ptrtoint ptr %controller42 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %controller, ptr %controller42, align 4
  %call43 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %for.end.cleanup_crit_edge, label %if.end46

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 33554710) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr4.i = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -1) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr8.i = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 4) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr12.i = getelementptr i8, ptr %25, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr16.i = getelementptr i8, ptr %27, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 0) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr20.i = getelementptr i8, ptr %29, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 0) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr24.i = getelementptr i8, ptr %31, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 0) #6, !srcloc !62
  %call.i114 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call43, ptr noundef nonnull @mxic_nfc_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool49.not = icmp eq i32 %call.i114, 0
  br i1 %tobool49.not, label %if.end51, label %if.end46.fail_crit_edge

if.end46.fail_crit_edge:                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end51:                                         ; preds = %if.end46
  %call.i115 = tail call i32 @nand_scan_with_ids(ptr noundef %chip, i32 noundef 1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool53.not = icmp eq i32 %call.i115, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.fail_crit_edge

if.end51.fail_crit_edge:                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end55:                                         ; preds = %if.end51
  %call56 = tail call i32 @mtd_device_parse_register(ptr noundef %chip, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.fail_crit_edge

if.end55.fail_crit_edge:                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end59:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

fail:                                             ; preds = %if.end55.fail_crit_edge, %if.end51.fail_crit_edge, %if.end46.fail_crit_edge
  %err.0 = phi i32 [ %call.i114, %if.end46.fail_crit_edge ], [ %call.i115, %if.end51.fail_crit_edge ], [ %call56, %if.end55.fail_crit_edge ]
  %33 = ptrtoint ptr %send_clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %send_clk, align 4
  tail call void @clk_disable(ptr noundef %34) #6
  tail call void @clk_unprepare(ptr noundef %34) #6
  %35 = ptrtoint ptr %send_dly_clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %send_dly_clk, align 8
  tail call void @clk_disable(ptr noundef %36) #6
  tail call void @clk_unprepare(ptr noundef %36) #6
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 8
  tail call void @clk_disable(ptr noundef %38) #6
  tail call void @clk_unprepare(ptr noundef %38) #6
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end59, %for.end.cleanup_crit_edge, %if.then29, %if.then22, %if.then14, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %5, %if.then14 ], [ %7, %if.then22 ], [ %9, %if.then29 ], [ %err.0, %fail ], [ 0, %if.end59 ], [ -12, %entry.cleanup_crit_edge ], [ %call43, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxic_nfc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %1, i32 0, i32 7
  %call3 = tail call i32 @mtd_device_unregister(ptr noundef %chip1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !69

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 563, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %chip1) #6
  %send_clk.i = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %send_clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %send_clk.i, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %send_dly_clk.i = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %send_dly_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send_dly_clk.i, align 8
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxic_nfc_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %complete = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %dev_id, i32 0, i32 3
  tail call void @complete(ptr noundef %complete) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxic_nfc_exec_op(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  br i1 %check_only, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  %5 = or i32 %4, 33554432
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %11 = or i32 %10, 16777216
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !62
  %complete = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %1, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #6
  %ninstrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %15 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp88.not = icmp eq i32 %16, 0
  br i1 %cmp88.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %instrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %op_id.090 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.089 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %18, i32 %op_id.090
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %for.body.for.inc_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body13
    i32 2, label %do.body24
    i32 3, label %do.body38
    i32 4, label %sw.bb55
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr5 = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 16777216) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr10 = getelementptr i8, ptr %27, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 65077247) #6, !srcloc !62
  %ctx = getelementptr %struct.nand_op_instr, ptr %18, i32 %op_id.090, i32 1
  %call11 = tail call fastcc i32 @mxic_nfc_data_xfer(ptr noundef %1, ptr noundef %ctx, ptr noundef null, i32 noundef 1)
  br label %for.inc

do.body13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %ctx16 = getelementptr %struct.nand_op_instr, ptr %18, i32 %op_id.090, i32 1
  %28 = ptrtoint ptr %ctx16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctx16, align 4
  %shl = shl i32 %29, 14
  %or = or i32 %shl, 8257560
  %30 = tail call i32 @llvm.bswap.i32(i32 %or)
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr18 = getelementptr i8, ptr %32, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %30) #6, !srcloc !62
  %addrs = getelementptr inbounds %struct.nand_op_addr_instr, ptr %ctx16, i32 0, i32 1
  %33 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %addrs, align 4
  %35 = ptrtoint ptr %ctx16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ctx16, align 4
  %call22 = tail call fastcc i32 @mxic_nfc_data_xfer(ptr noundef %1, ptr noundef %34, ptr noundef null, i32 noundef %36)
  br label %for.inc

do.body24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr28 = getelementptr i8, ptr %38, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr33 = getelementptr i8, ptr %40, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 -1073676800) #6, !srcloc !62
  %ctx34 = getelementptr %struct.nand_op_instr, ptr %18, i32 %op_id.090, i32 1
  %buf = getelementptr inbounds %struct.nand_op_data_instr, ptr %ctx34, i32 0, i32 1
  %41 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buf, align 4
  %43 = ptrtoint ptr %ctx34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ctx34, align 4
  %call36 = tail call fastcc i32 @mxic_nfc_data_xfer(ptr noundef %1, ptr noundef null, ptr noundef %42, i32 noundef %44)
  br label %for.inc

do.body38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %ctx41 = getelementptr %struct.nand_op_instr, ptr %18, i32 %op_id.090, i32 1
  %45 = ptrtoint ptr %ctx41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ctx41, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr44 = getelementptr i8, ptr %49, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %47) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %add.ptr49 = getelementptr i8, ptr %51, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 -1073709568) #6, !srcloc !62
  %buf51 = getelementptr inbounds %struct.nand_op_data_instr, ptr %ctx41, i32 0, i32 1
  %52 = ptrtoint ptr %buf51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buf51, align 4
  %54 = ptrtoint ptr %ctx41 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ctx41, align 4
  %call54 = tail call fastcc i32 @mxic_nfc_data_xfer(ptr noundef %1, ptr noundef %53, ptr noundef null, i32 noundef %55)
  br label %for.inc

sw.bb55:                                          ; preds = %for.body
  %56 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv.i, align 8
  %complete.i = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %57, i32 0, i32 3
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %complete.i, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %sw.bb55.for.inc_crit_edge

sw.bb55.for.inc_crit_edge:                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end.i:                                         ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.11) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end.i, %sw.bb55.for.inc_crit_edge, %do.body38, %do.body24, %do.body13, %do.body, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.089, %for.body.for.inc_crit_edge ], [ %call54, %do.body38 ], [ %call36, %do.body24 ], [ %call22, %do.body13 ], [ %call11, %do.body ], [ -110, %do.end.i ], [ 0, %sw.bb55.for.inc_crit_edge ]
  %inc = add nuw i32 %op_id.090, 1
  %60 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc, %61
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %62 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i, align 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %65 = and i32 %64, -16777217
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #6, !srcloc !62
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.lcssa, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxic_nfc_setup_interface(ptr nocapture noundef readonly %chip, i32 noundef %chipnr, ptr noundef %conf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
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
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chipnr)
  %cmp = icmp eq i32 %chipnr, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tRC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i, i32 0, i32 22
  %6 = ptrtoint ptr %tRC_min to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tRC_min, align 8
  %div = udiv i32 %7, 1000
  %div6 = udiv i32 1000000000, %div
  %8 = tail call i32 @llvm.umin.i32(i32 %div6, i32 50000000) #6
  %send_clk.i.i = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %send_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %send_clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %10) #6
  tail call void @clk_unprepare(ptr noundef %10) #6
  %send_dly_clk.i.i = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %send_dly_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %send_dly_clk.i.i, align 8
  tail call void @clk_disable(ptr noundef %12) #6
  tail call void @clk_unprepare(ptr noundef %12) #6
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  tail call void @clk_disable(ptr noundef %14) #6
  tail call void @clk_unprepare(ptr noundef %14) #6
  %15 = ptrtoint ptr %send_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %send_clk.i.i, align 4
  %call.i.i = tail call i32 @clk_set_rate(ptr noundef %16, i32 noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.do.end_crit_edge

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i.i:                                       ; preds = %if.end5
  %17 = ptrtoint ptr %send_dly_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %send_dly_clk.i.i, align 8
  %call1.i.i = tail call i32 @clk_set_rate(ptr noundef %18, i32 noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %mxic_nfc_clk_setup.exit.i, label %if.end.i.i.do.end_crit_edge

if.end.i.i.do.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

mxic_nfc_clk_setup.exit.i:                        ; preds = %if.end.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %regs.i.i.i = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 252645135) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr23.i.i.i = getelementptr i8, ptr %22, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i.i.i, i32 252645135) #6, !srcloc !62
  %23 = ptrtoint ptr %send_dly_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %send_dly_clk.i.i, align 8
  %mul.i.i = mul nuw nsw i32 %8, 9
  %div.i.i = udiv i32 %mul.i.i, 25000000
  %call6.i.i = tail call i32 @clk_set_phase(ptr noundef %24, i32 noundef %div.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i, label %if.end2.i, label %mxic_nfc_clk_setup.exit.i.do.end_crit_edge

mxic_nfc_clk_setup.exit.i.do.end_crit_edge:       ; preds = %mxic_nfc_clk_setup.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end2.i:                                        ; preds = %mxic_nfc_clk_setup.exit.i
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %call.i.i.i = tail call i32 @clk_prepare(ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end2.i.do.end_crit_edge

if.end2.i.do.end_crit_edge:                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i.i.i:                                     ; preds = %if.end2.i
  %call1.i.i.i = tail call i32 @clk_enable(ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i16.i, label %if.end.i.i.i.cleanup.sink.split.i.i_crit_edge

if.end.i.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end.i16.i:                                     ; preds = %if.end.i.i.i
  %27 = ptrtoint ptr %send_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %send_clk.i.i, align 4
  %call.i20.i.i = tail call i32 @clk_prepare(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i)
  %tobool.not.i21.i.i = icmp eq i32 %call.i20.i.i, 0
  br i1 %tobool.not.i21.i.i, label %if.end.i24.i.i, label %if.end.i16.i.err_ps_clk.i.i_crit_edge

if.end.i16.i.err_ps_clk.i.i_crit_edge:            ; preds = %if.end.i16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ps_clk.i.i

if.end.i24.i.i:                                   ; preds = %if.end.i16.i
  %call1.i22.i.i = tail call i32 @clk_enable(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.i)
  %tobool2.not.i23.i.i = icmp eq i32 %call1.i22.i.i, 0
  br i1 %tobool2.not.i23.i.i, label %if.end4.i18.i, label %if.end.i24.i.i.err_ps_clk.sink.split.i.i_crit_edge

if.end.i24.i.i.err_ps_clk.sink.split.i.i_crit_edge: ; preds = %if.end.i24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ps_clk.sink.split.i.i

if.end4.i18.i:                                    ; preds = %if.end.i24.i.i
  %29 = ptrtoint ptr %send_dly_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %send_dly_clk.i.i, align 8
  %call.i28.i.i = tail call i32 @clk_prepare(ptr noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i.i)
  %tobool.not.i29.i.i = icmp eq i32 %call.i28.i.i, 0
  br i1 %tobool.not.i29.i.i, label %if.end.i32.i.i, label %if.end4.i18.i.err_send_dly_clk.i.i_crit_edge

if.end4.i18.i.err_send_dly_clk.i.i_crit_edge:     ; preds = %if.end4.i18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_send_dly_clk.i.i

if.end.i32.i.i:                                   ; preds = %if.end4.i18.i
  %call1.i30.i.i = tail call i32 @clk_enable(ptr noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30.i.i)
  %tobool2.not.i31.i.i = icmp eq i32 %call1.i30.i.i, 0
  br i1 %tobool2.not.i31.i.i, label %if.end.i32.i.i.if.end9_crit_edge, label %if.then3.i33.i.i

if.end.i32.i.i.if.end9_crit_edge:                 ; preds = %if.end.i32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then3.i33.i.i:                                 ; preds = %if.end.i32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %30) #6
  br label %err_send_dly_clk.i.i

err_send_dly_clk.i.i:                             ; preds = %if.then3.i33.i.i, %if.end4.i18.i.err_send_dly_clk.i.i_crit_edge
  %31 = ptrtoint ptr %send_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %send_clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %32) #6
  br label %err_ps_clk.sink.split.i.i

err_ps_clk.sink.split.i.i:                        ; preds = %err_send_dly_clk.i.i, %if.end.i24.i.i.err_ps_clk.sink.split.i.i_crit_edge
  %.sink.i.i = phi ptr [ %32, %err_send_dly_clk.i.i ], [ %28, %if.end.i24.i.i.err_ps_clk.sink.split.i.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink.i.i) #6
  br label %err_ps_clk.i.i

err_ps_clk.i.i:                                   ; preds = %err_ps_clk.sink.split.i.i, %if.end.i16.i.err_ps_clk.i.i_crit_edge
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  tail call void @clk_disable(ptr noundef %34) #6
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %err_ps_clk.i.i, %if.end.i.i.i.cleanup.sink.split.i.i_crit_edge
  %.sink43.i.i = phi ptr [ %34, %err_ps_clk.i.i ], [ %26, %if.end.i.i.i.cleanup.sink.split.i.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink43.i.i) #6
  br label %do.end

do.end:                                           ; preds = %cleanup.sink.split.i.i, %if.end2.i.do.end_crit_edge, %mxic_nfc_clk_setup.exit.i.do.end_crit_edge, %if.end.i.i.do.end_crit_edge, %if.end5.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.14, i32 noundef %div6) #9
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end.i32.i.i.if.end9_crit_edge
  %37 = ptrtoint ptr %tRC_min to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tRC_min, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %38)
  %cmp11 = icmp ult i32 %38, 30000
  br i1 %cmp11, label %do.body13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %regs = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %40, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #6, !srcloc !62
  br label %cleanup

cleanup:                                          ; preds = %do.body13, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.body13 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxic_nfc_data_xfer(ptr nocapture noundef readonly %nfc, ptr noundef readonly %txbuf, ptr noundef writeonly %rxbuf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp261.not = icmp eq i32 %len, 0
  br i1 %cmp261.not, label %entry.cleanup192_crit_edge, label %while.body.lr.ph

entry.cleanup192_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup192

while.body.lr.ph:                                 ; preds = %entry
  %tobool.not = icmp eq ptr %txbuf, null
  %regs = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %nfc, i32 0, i32 4
  %tobool167.not = icmp eq ptr %rxbuf, null
  %dev = getelementptr inbounds %struct.mxic_nand_ctlr, ptr %nfc, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %pos.0262 = phi i32 [ 0, %while.body.lr.ph ], [ %add188, %cleanup.while.body_crit_edge ]
  %sub = sub i32 %len, %pos.0262
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data)
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4
  %1 = tail call i32 @llvm.umin.i32(i32 %sub, i32 4)
  br i1 %tobool.not, label %while.body.if.end3_crit_edge, label %if.then2

while.body.if.end3_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %txbuf, i32 %pos.0262
  %2 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %1)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %while.body.if.end3_crit_edge
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 1000000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %if.end3
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr14 = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool17.not = icmp eq i32 %6, 0
  br i1 %tobool17.not, label %land.lhs.true, label %for.cond.do.body42_crit_edge

for.cond.do.body42_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body42

land.lhs.true:                                    ; preds = %for.cond
  %call21 = tail call i64 @ktime_get() #6
  %cmp3.i = icmp sgt i64 %call21, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr28 = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool38.not = icmp eq i32 %10, 0
  br i1 %tobool38.not, label %for.end.cleanup.thread_crit_edge, label %for.end.do.body42_crit_edge

for.end.do.body42_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body42

for.end.cleanup.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

do.body42:                                        ; preds = %for.end.do.body42_crit_edge, %for.cond.do.body42_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %data.0.data.0.data.0. = load i32, ptr %data, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %data.0.data.0.data.0.)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %rem = shl nuw nsw i32 %1, 2
  %mul = and i32 %rem, 12
  %add46 = add nuw nsw i32 %mul, 20
  %add.ptr47 = getelementptr i8, ptr %14, i32 %add46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %12) #6, !srcloc !62
  %call51 = tail call i64 @ktime_get() #6
  %add.i238 = add i64 %call51, 1000000000
  br label %for.cond65

for.cond65:                                       ; preds = %land.lhs.true78.for.cond65_crit_edge, %do.body42
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr69 = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool74.not = icmp eq i32 %18, 0
  br i1 %tobool74.not, label %land.lhs.true78, label %for.cond65.if.end103_crit_edge

for.cond65.if.end103_crit_edge:                   ; preds = %for.cond65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

land.lhs.true78:                                  ; preds = %for.cond65
  %call79 = tail call i64 @ktime_get() #6
  %cmp3.i240 = icmp sgt i64 %call79, %add.i238
  br i1 %cmp3.i240, label %for.end96, label %land.lhs.true78.for.cond65_crit_edge

land.lhs.true78.for.cond65_crit_edge:             ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond65

for.end96:                                        ; preds = %land.lhs.true78
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr86 = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool99.not = icmp eq i32 %22, 0
  br i1 %tobool99.not, label %for.end96.cleanup.thread_crit_edge, label %for.end96.if.end103_crit_edge

for.end96.if.end103_crit_edge:                    ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

for.end96.cleanup.thread_crit_edge:               ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end103:                                        ; preds = %for.end96.if.end103_crit_edge, %for.cond65.if.end103_crit_edge
  %call107 = tail call i64 @ktime_get() #6
  %add.i243 = add i64 %call107, 1000000000
  br label %for.cond121

for.cond121:                                      ; preds = %land.lhs.true134.for.cond121_crit_edge, %if.end103
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr125 = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %26 = and i32 %25, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool130.not = icmp eq i32 %26, 0
  br i1 %tobool130.not, label %land.lhs.true134, label %for.cond121.if.end159_crit_edge

for.cond121.if.end159_crit_edge:                  ; preds = %for.cond121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159

land.lhs.true134:                                 ; preds = %for.cond121
  %call135 = tail call i64 @ktime_get() #6
  %cmp3.i245 = icmp sgt i64 %call135, %add.i243
  br i1 %cmp3.i245, label %for.end152, label %land.lhs.true134.for.cond121_crit_edge

land.lhs.true134.for.cond121_crit_edge:           ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond121

for.end152:                                       ; preds = %land.lhs.true134
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %add.ptr142 = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr142) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %30 = and i32 %29, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool155.not = icmp eq i32 %30, 0
  br i1 %tobool155.not, label %for.end152.cleanup.thread_crit_edge, label %for.end152.if.end159_crit_edge

for.end152.if.end159_crit_edge:                   ; preds = %for.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159

for.end152.cleanup.thread_crit_edge:              ; preds = %for.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end159:                                        ; preds = %for.end152.if.end159_crit_edge, %for.cond121.if.end159_crit_edge
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %add.ptr163 = getelementptr i8, ptr %32, i32 36
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr163) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  br i1 %tobool167.not, label %if.end159.if.end173_crit_edge, label %if.then168

if.end159.if.end173_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end173

if.then168:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %.neg = mul nsw i32 %1, -8
  %mul170 = add nsw i32 %.neg, 32
  %shr171 = lshr i32 %34, %mul170
  %35 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr171, ptr %data, align 4
  %add.ptr172 = getelementptr i8, ptr %rxbuf, i32 %pos.0262
  %36 = call ptr @memcpy(ptr %add.ptr172, ptr %data, i32 %1)
  br label %if.end173

if.end173:                                        ; preds = %if.then168, %if.end159.if.end173_crit_edge
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %add.ptr177 = getelementptr i8, ptr %38, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr177) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %40 = and i32 %39, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool182.not = icmp eq i32 %40, 0
  br i1 %tobool182.not, label %if.end173.cleanup_crit_edge, label %do.end186

if.end173.cleanup_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end186:                                        ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.7) #9
  br label %cleanup

cleanup.thread:                                   ; preds = %for.end152.cleanup.thread_crit_edge, %for.end96.cleanup.thread_crit_edge, %for.end.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data)
  br label %cleanup192

cleanup:                                          ; preds = %do.end186, %if.end173.cleanup_crit_edge
  %add188 = add i32 %1, %pos.0262
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data)
  %cmp = icmp ult i32 %add188, %len
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup192_crit_edge

cleanup.cleanup192_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup192

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup192:                                       ; preds = %cleanup.cleanup192_crit_edge, %cleanup.thread, %entry.cleanup192_crit_edge
  %retval.2 = phi i32 [ -110, %cleanup.thread ], [ 0, %entry.cleanup192_crit_edge ], [ 0, %cleanup.cleanup192_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_phase(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_mxic_nand__202_584_mxic_nfc_driver_init6, !1, !"__initcall__kmod_mxic_nand__202_584_mxic_nfc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/mxic_nand.c", i32 584, i32 1}
!2 = !{ptr @__exitcall_mxic_nfc_driver_exit, !1, !"__exitcall_mxic_nfc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author203, !4, !"__UNIQUE_ID_author203", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/mxic_nand.c", i32 586, i32 1}
!5 = !{ptr @__UNIQUE_ID_description204, !6, !"__UNIQUE_ID_description204", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/mxic_nand.c", i32 587, i32 1}
!7 = !{ptr @__UNIQUE_ID_file205, !8, !"__UNIQUE_ID_file205", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/raw/mxic_nand.c", i32 588, i32 1}
!9 = !{ptr @__UNIQUE_ID_license206, !8, !"__UNIQUE_ID_license206", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/mxic_nand.c", i32 580, i32 11}
!12 = !{ptr @mxic_nfc_driver, !13, !"mxic_nfc_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/mxic_nand.c", i32 576, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/mxic_nand.c", i32 500, i32 41}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/mxic_nand.c", i32 504, i32 43}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/mxic_nand.c", i32 508, i32 47}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!22 = !{ptr @mxic_nand_controller_ops, !23, !"mxic_nand_controller_ops", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/raw/mxic_nand.c", i32 481, i32 41}
!24 = !{ptr @init_completion.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../include/linux/completion.h", i32 87, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/nand/raw/mxic_nand.c", i32 356, i32 9}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/nand/raw/mxic_nand.c", i32 380, i32 4}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mxic_nfc_data_xfer._entry, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @mxic_nfc_data_xfer._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/mxic_nand.c", i32 332, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mxic_nfc_wait_ready._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @mxic_nfc_wait_ready._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nand/raw/mxic_nand.c", i32 473, i32 3}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mxic_nfc_setup_interface._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @mxic_nfc_setup_interface._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @nand_controller_init.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mxic_nfc_of_ids, !51, !"mxic_nfc_of_ids", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/raw/mxic_nand.c", i32 570, i32 34}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i64 2153436207}
!62 = !{i64 2041105}
!63 = !{i64 2153437893}
!64 = !{i64 2153439243}
!65 = !{i64 2153439729}
!66 = !{i64 2153440129}
!67 = !{i64 2153440513}
!68 = !{i64 2153440899}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2041523}
!71 = !{i64 2153435635}
!72 = !{i64 2153442125}
!73 = !{i64 2153443072}
!74 = !{i64 2153444166}
!75 = !{i64 2153445143}
!76 = !{i64 2153458737}
!77 = !{i64 2153459229}
!78 = !{i64 2153459813}
!79 = !{i64 2153460526}
!80 = !{i64 2153461161}
!81 = !{i64 2153461770}
!82 = !{i64 2153462403}
!83 = !{i64 2153462945}
!84 = !{i64 2153446209}
!85 = !{i64 2153447192}
!86 = !{i64 2153433307}
!87 = !{i64 2153434495}
!88 = !{i64 2153465149}
!89 = !{i64 2153450516}
!90 = !{i64 2153450994}
!91 = !{i64 2153451267}
!92 = !{i64 2153453203}
!93 = !{i64 2153453681}
!94 = !{i64 2153455419}
!95 = !{i64 2153455897}
!96 = !{i64 2153456388}
!97 = !{i64 2153456870}
