; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/ams-delta.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/ams-delta.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.gpio_nand_platdata = type { ptr, ptr, i32, i32, i32 }
%struct.gpio_nand = type { %struct.nand_controller, %struct.nand_chip, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr }
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
%struct.gpio_descs = type { ptr, i32, [0 x ptr] }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.43, i32 }
%union.anon.43 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.44, i8 }
%union.anon.44 = type { ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.45 }
%union.anon.45 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_ams_delta__200_445_gpio_nand_driver_init6 = internal global ptr @gpio_nand_driver_init, section ".initcall6.init", align 4
@gpio_nand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_nand_probe, ptr @gpio_nand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpio_nand_of_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @gpio_nand_plat_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpio_nand_driver_exit = internal global ptr @gpio_nand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file201 = internal constant [46 x i8] c"ams_delta.file=drivers/mtd/nand/raw/ams-delta\00", section ".modinfo", align 1
@__UNIQUE_ID_license202 = internal constant [25 x i8] c"ams_delta.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author203 = internal constant [54 x i8] c"ams_delta.author=Jonathan McDowell <noodles@earth.li>\00", section ".modinfo", align 1
@__UNIQUE_ID_description204 = internal constant [70 x i8] c"ams_delta.description=Glue layer for NAND flash on Amstrad E3 (Delta)\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ams-delta-nand\00", [17 x i8] zeroinitializer }, align 32
@gpio_nand_of_id_table = internal constant { [1 x %struct.of_device_id], [60 x i8] } zeroinitializer, align 32
@gpio_nand_plat_id_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"ams-delta-nand\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rdy\00", [28 x i8] zeroinitializer }, align 32
@gpio_nand_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 269, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RDY GPIO request failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio_nand_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mtd/nand/raw/ams-delta.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpio_nand_probe._entry_ptr = internal global ptr @gpio_nand_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nwp\00", [28 x i8] zeroinitializer }, align 32
@gpio_nand_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 280, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NWP GPIO request failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gpio_nand_probe._entry_ptr.11 = internal global ptr @gpio_nand_probe._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nce\00", [28 x i8] zeroinitializer }, align 32
@gpio_nand_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 288, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NCE GPIO request failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@gpio_nand_probe._entry_ptr.15 = internal global ptr @gpio_nand_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nre\00", [28 x i8] zeroinitializer }, align 32
@gpio_nand_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 296, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NRE GPIO request failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@gpio_nand_probe._entry_ptr.19 = internal global ptr @gpio_nand_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nwe\00", [28 x i8] zeroinitializer }, align 32
@gpio_nand_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 304, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NWE GPIO request failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@gpio_nand_probe._entry_ptr.23 = internal global ptr @gpio_nand_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ale\00", [28 x i8] zeroinitializer }, align 32
@gpio_nand_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 311, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ALE GPIO request failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@gpio_nand_probe._entry_ptr.27 = internal global ptr @gpio_nand_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cle\00", [28 x i8] zeroinitializer }, align 32
@gpio_nand_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 318, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CLE GPIO request failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@gpio_nand_probe._entry_ptr.31 = internal global ptr @gpio_nand_probe._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@gpio_nand_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 327, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"data GPIO request failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@gpio_nand_probe._entry_ptr.35 = internal global ptr @gpio_nand_probe._entry.33, section ".printk_index", align 4
@gpio_nand_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.3, ptr @.str.4, i32 333, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mandatory NWE pin not provided by platform\0A\00", [52 x i8] zeroinitializer }, align 32
@gpio_nand_probe._entry_ptr.38 = internal global ptr @gpio_nand_probe._entry.36, section ".printk_index", align 4
@gpio_nand_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.3, ptr @.str.4, i32 352, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"incomplete device configuration\0A\00", [63 x i8] zeroinitializer }, align 32
@gpio_nand_probe._entry_ptr.41 = internal global ptr @gpio_nand_probe._entry.39, section ".printk_index", align 4
@gpio_nand_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @gpio_nand_attach_chip, ptr null, ptr @gpio_nand_exec_op, ptr @gpio_nand_setup_interface }, [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@gpio_nand_setup_interface.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.44, ptr @.str.4, ptr @.str.45, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ams_delta\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"gpio_nand_setup_interface\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"using %u ns read pulse width\0A\00", [34 x i8] zeroinitializer }, align 32
@gpio_nand_setup_interface.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.44, ptr @.str.4, ptr @.str.46, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"using %u ns write pulse width\0A\00", [33 x i8] zeroinitializer }, align 32
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"gpio_nand_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 435, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 440, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"gpio_nand_of_id_table\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 418, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [24 x i8] c"gpio_nand_plat_id_table\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 426, i32 40 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 266, i32 56 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 269, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 276, i32 56 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 280, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 284, i32 56 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 288, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 292, i32 56 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 296, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 300, i32 56 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 304, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 308, i32 47 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 311, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 315, i32 47 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 318, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 323, i32 64 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 327, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 332, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 352, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [14 x i8] c"gpio_nand_ops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 227, i32 41 }
@___asan_gen_.163 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 464, i32 31 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 209, i32 3 }
@___asan_gen_.175 = private constant [36 x i8] c"../drivers/mtd/nand/raw/ams-delta.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 213, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1105, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author203, ptr @__UNIQUE_ID_description204, ptr @__UNIQUE_ID_file201, ptr @__UNIQUE_ID_license202, ptr @__exitcall_gpio_nand_driver_exit, ptr @__initcall__kmod_ams_delta__200_445_gpio_nand_driver_init6, ptr @gpio_nand_driver_exit, ptr @gpio_nand_probe._entry, ptr @gpio_nand_probe._entry.13, ptr @gpio_nand_probe._entry.17, ptr @gpio_nand_probe._entry.21, ptr @gpio_nand_probe._entry.25, ptr @gpio_nand_probe._entry.29, ptr @gpio_nand_probe._entry.33, ptr @gpio_nand_probe._entry.36, ptr @gpio_nand_probe._entry.39, ptr @gpio_nand_probe._entry.8, ptr @gpio_nand_probe._entry_ptr, ptr @gpio_nand_probe._entry_ptr.11, ptr @gpio_nand_probe._entry_ptr.15, ptr @gpio_nand_probe._entry_ptr.19, ptr @gpio_nand_probe._entry_ptr.23, ptr @gpio_nand_probe._entry_ptr.27, ptr @gpio_nand_probe._entry_ptr.31, ptr @gpio_nand_probe._entry_ptr.35, ptr @gpio_nand_probe._entry_ptr.38, ptr @gpio_nand_probe._entry_ptr.41, ptr @gpio_nand_driver, ptr @.str, ptr @gpio_nand_of_id_table, ptr @gpio_nand_plat_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @gpio_nand_ops, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @nand_controller_init.__key, ptr @.str.47], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_nand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_nand_of_id_table to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_nand_plat_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_nand_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_nand_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_nand_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_nand_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_nand_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_nand_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_nand_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_nand_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_nand_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_nand_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_nand_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_nand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_nand_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_nand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_nand_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_nand_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parts = getelementptr inbounds %struct.gpio_nand_platdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parts, align 4
  %num_parts = getelementptr inbounds %struct.gpio_nand_platdata, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %num_parts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_parts, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %partitions.0 = phi ptr [ %3, %if.then ], [ null, %entry.if.end_crit_edge ]
  %num_partitions.0 = phi i32 [ %5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2320, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %nand_chip = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 1
  %parent = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %parent, align 8
  %priv1.i = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 1, i32 34
  %7 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %priv1.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %of_node.i.i = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 27
  %10 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %of_node.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 13
  %11 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end5.nand_set_flash_node.exit_crit_edge

if.end5.nand_set_flash_node.exit_crit_edge:       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %nand_set_flash_node.exit

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 @of_property_read_string(ptr noundef %9, ptr noundef nonnull @.str.42, ptr noundef %name.i.i) #6
  br label %nand_set_flash_node.exit

nand_set_flash_node.exit:                         ; preds = %if.then.i.i, %if.end5.nand_set_flash_node.exit_crit_edge
  %call11 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 1) #6
  %gpiod_rdy = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %gpiod_rdy to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call11, ptr %gpiod_rdy, align 8
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end18

if.then14:                                        ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call11 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %14) #9
  br label %cleanup

if.end18:                                         ; preds = %nand_set_flash_node.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call20 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 7) #6
  %gpiod_nwp = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %gpiod_nwp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call20, ptr %gpiod_nwp, align 4
  %cmp.i252 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i252, label %if.then23, label %if.end30

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %17) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end18
  %call32 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef 3) #6
  %gpiod_nce = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %gpiod_nce to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call32, ptr %gpiod_nce, align 4
  %cmp.i253 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i253, label %if.then35, label %if.end42

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call32 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %19) #9
  br label %cleanup

if.end42:                                         ; preds = %if.end30
  %call44 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef 3) #6
  %gpiod_nre = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %gpiod_nre to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call44, ptr %gpiod_nre, align 8
  %cmp.i254 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i254, label %if.then47, label %if.end54

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call44 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %21) #9
  br label %cleanup

if.end54:                                         ; preds = %if.end42
  %call56 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef 3) #6
  %gpiod_nwe = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 6
  %22 = ptrtoint ptr %gpiod_nwe to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call56, ptr %gpiod_nwe, align 8
  %cmp.i255 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i255, label %if.then59, label %if.end66

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call56 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %23) #9
  br label %cleanup

if.end66:                                         ; preds = %if.end54
  %call68 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef 3) #6
  %gpiod_ale = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 7
  %24 = ptrtoint ptr %gpiod_ale to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call68, ptr %gpiod_ale, align 4
  %cmp.i256 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i256, label %if.then71, label %if.end78

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call68 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %25) #9
  br label %cleanup

if.end78:                                         ; preds = %if.end66
  %call80 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef 3) #6
  %gpiod_cle = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %gpiod_cle to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call80, ptr %gpiod_cle, align 8
  %cmp.i257 = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i257, label %if.then83, label %if.end90

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %call80 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %27) #9
  br label %cleanup

if.end90:                                         ; preds = %if.end78
  %call92 = tail call ptr @devm_gpiod_get_array_optional(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef 1) #6
  %data_gpiods = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 9
  %28 = ptrtoint ptr %data_gpiods to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call92, ptr %data_gpiods, align 4
  %cmp.i258 = icmp ugt ptr %call92, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i258, label %if.then95, label %if.end102

if.then95:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %call92 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %29) #9
  br label %cleanup

if.end102:                                        ; preds = %if.end90
  %tobool104.not = icmp eq ptr %call92, null
  br i1 %tobool104.not, label %if.end102.if.end114_crit_edge, label %if.then105

if.end102.if.end114_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.then105:                                       ; preds = %if.end102
  %30 = ptrtoint ptr %gpiod_nwe to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gpiod_nwe, align 8
  %tobool107.not = icmp eq ptr %31, null
  br i1 %tobool107.not, label %do.end111, label %if.end113

do.end111:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #9
  br label %cleanup

if.end113:                                        ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #8
  %io_read = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 13
  %32 = ptrtoint ptr %io_read to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @gpio_nand_io_read, ptr %io_read, align 4
  %io_write = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 14
  %33 = ptrtoint ptr %io_write to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @gpio_nand_io_write, ptr %io_write, align 8
  %data_in = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 10
  %34 = ptrtoint ptr %data_in to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %data_in, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.end102.if.end114_crit_edge
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %35 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %id_entry, align 4
  %tobool115.not = icmp eq ptr %36, null
  br i1 %tobool115.not, label %if.else, label %if.then116

if.then116:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %driver_data, align 4
  %39 = inttoptr i32 %38 to ptr
  br label %if.end120

if.else:                                          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  %call119 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  br label %if.end120

if.end120:                                        ; preds = %if.else, %if.then116
  %probe.0 = phi ptr [ %39, %if.then116 ], [ %call119, %if.else ]
  %tobool121.not = icmp eq ptr %probe.0, null
  br i1 %tobool121.not, label %if.end120.if.end127_crit_edge, label %if.end124

if.end120.if.end127_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.end124:                                        ; preds = %if.end120
  %call123 = tail call i32 %probe.0(ptr noundef %pdev, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool125.not = icmp eq i32 %call123, 0
  br i1 %tobool125.not, label %if.end124.if.end127_crit_edge, label %if.end124.cleanup_crit_edge

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end124.if.end127_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.end127:                                        ; preds = %if.end124.if.end127_crit_edge, %if.end120.if.end127_crit_edge
  %io_read128 = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 13
  %40 = ptrtoint ptr %io_read128 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_read128, align 4
  %tobool129.not = icmp eq ptr %41, null
  br i1 %tobool129.not, label %if.end127.do.end135_crit_edge, label %lor.lhs.false

if.end127.do.end135_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end135

lor.lhs.false:                                    ; preds = %if.end127
  %io_write130 = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 14
  %42 = ptrtoint ptr %io_write130 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_write130, align 8
  %tobool131.not = icmp eq ptr %43, null
  br i1 %tobool131.not, label %lor.lhs.false.do.end135_crit_edge, label %if.end137

lor.lhs.false.do.end135_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end135

do.end135:                                        ; preds = %lor.lhs.false.do.end135_crit_edge, %if.end127.do.end135_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #9
  br label %cleanup

if.end137:                                        ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.nand_controller, ptr %call.i, i32 0, i32 1
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @gpio_nand_ops, ptr %ops, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @nand_controller_init.__key) #6
  %controller = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 1, i32 32
  %45 = ptrtoint ptr %controller to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %controller, align 4
  %46 = ptrtoint ptr %gpiod_nwp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gpiod_nwp, align 4
  tail call void @gpiod_set_value(ptr noundef %47, i32 noundef 0) #6
  %ecc = getelementptr inbounds %struct.gpio_nand, ptr %call.i, i32 0, i32 1, i32 33
  %48 = ptrtoint ptr %ecc to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %ecc, align 8
  %call.i259 = tail call i32 @nand_scan_with_ids(ptr noundef %nand_chip, i32 noundef 1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259)
  %tobool142.not = icmp eq i32 %call.i259, 0
  br i1 %tobool142.not, label %if.end144, label %if.end137.cleanup_crit_edge

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end144:                                        ; preds = %if.end137
  %call145 = tail call i32 @mtd_device_parse_register(ptr noundef %nand_chip, ptr noundef null, ptr noundef null, ptr noundef %partitions.0, i32 noundef %num_partitions.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end144.cleanup_crit_edge, label %err_nand_cleanup

if.end144.cleanup_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_nand_cleanup:                                 ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nand_cleanup(ptr noundef %nand_chip) #6
  br label %cleanup

cleanup:                                          ; preds = %err_nand_cleanup, %if.end144.cleanup_crit_edge, %if.end137.cleanup_crit_edge, %do.end135, %if.end124.cleanup_crit_edge, %do.end111, %if.then95, %if.then83, %if.then71, %if.then59, %if.then47, %if.then35, %if.then23, %if.then14, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then14 ], [ %17, %if.then23 ], [ %19, %if.then35 ], [ %21, %if.then47 ], [ %23, %if.then59 ], [ %25, %if.then71 ], [ %27, %if.then83 ], [ %29, %if.then95 ], [ %call145, %err_nand_cleanup ], [ -19, %do.end135 ], [ -19, %do.end111 ], [ -12, %if.end.cleanup_crit_edge ], [ %call123, %if.end124.cleanup_crit_edge ], [ %call.i259, %if.end137.cleanup_crit_edge ], [ 0, %if.end144.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_nand_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nand_chip = getelementptr inbounds %struct.gpio_nand, ptr %1, i32 0, i32 1
  %gpiod_nwp = getelementptr inbounds %struct.gpio_nand, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %gpiod_nwp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod_nwp, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #6
  %call2 = tail call i32 @mtd_device_unregister(ptr noundef %nand_chip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !103

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 411, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %nand_chip) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_array_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @gpio_nand_io_read(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  %values = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data_gpiods1 = getelementptr inbounds %struct.gpio_nand, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %data_gpiods1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_gpiods1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values) #6
  %2 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %values, align 4
  %gpiod_nre = getelementptr inbounds %struct.gpio_nand, ptr %priv, i32 0, i32 4
  %3 = ptrtoint ptr %gpiod_nre to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpiod_nre, align 8
  tail call void @gpiod_set_value(ptr noundef %4, i32 noundef 1) #6
  %tRP = getelementptr inbounds %struct.gpio_nand, ptr %priv, i32 0, i32 11
  %5 = ptrtoint ptr %tRP to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tRP, align 4
  %sub.i = add i32 %6, 999
  %div.i = udiv i32 %sub.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %7(i32 noundef %div.i) #6
  %ndescs = getelementptr inbounds %struct.gpio_descs, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ndescs, align 4
  %desc = getelementptr inbounds %struct.gpio_descs, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call = call i32 @gpiod_get_raw_array_value(i32 noundef %9, ptr noundef %desc, ptr noundef %11, ptr noundef nonnull %values) #6
  %12 = ptrtoint ptr %gpiod_nre to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpiod_nre, align 8
  call void @gpiod_set_value(ptr noundef %13, i32 noundef 0) #6
  %14 = ptrtoint ptr %values to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %values, align 4
  %conv = trunc i32 %15 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values) #6
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_nand_io_write(ptr nocapture noundef readonly %priv, i8 noundef zeroext %byte) #2 align 64 {
entry:
  %values = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data_gpiods1 = getelementptr inbounds %struct.gpio_nand, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %data_gpiods1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_gpiods1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values) #6
  %conv = zext i8 %byte to i32
  %2 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %values, align 4
  %ndescs = getelementptr inbounds %struct.gpio_descs, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ndescs, align 4
  %desc = getelementptr inbounds %struct.gpio_descs, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call = call i32 @gpiod_set_raw_array_value(i32 noundef %4, ptr noundef %desc, ptr noundef %6, ptr noundef nonnull %values) #6
  %gpiod_nwe.i = getelementptr inbounds %struct.gpio_nand, ptr %priv, i32 0, i32 6
  %7 = ptrtoint ptr %gpiod_nwe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpiod_nwe.i, align 8
  call void @gpiod_set_value(ptr noundef %8, i32 noundef 1) #6
  %tWP.i = getelementptr inbounds %struct.gpio_nand, ptr %priv, i32 0, i32 12
  %9 = ptrtoint ptr %tWP.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tWP.i, align 8
  %sub.i.i = add i32 %10, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %11(i32 noundef %div.i.i) #6
  %12 = ptrtoint ptr %gpiod_nwe.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpiod_nwe.i, align 8
  call void @gpiod_set_value(ptr noundef %13, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_array_value(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_raw_array_value(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpio_nand_attach_chip(ptr nocapture noundef %chip) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %0 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %algo = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %2 = ptrtoint ptr %algo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %algo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %algo, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_nand_exec_op(ptr noundef %this, ptr nocapture noundef readonly %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  br i1 %check_only, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpiod_nce.i = getelementptr inbounds %struct.gpio_nand, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gpiod_nce.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod_nce.i, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #6
  %instrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  %4 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %instrs, align 4
  %ninstrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %6 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ninstrs, align 4
  %add.ptr58 = getelementptr %struct.nand_op_instr, ptr %5, i32 %7
  %cmp59 = icmp ult ptr %5, %add.ptr58
  br i1 %cmp59, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %gpiod_rdy = getelementptr inbounds %struct.gpio_nand, ptr %1, i32 0, i32 2
  %data_gpiods.i = getelementptr inbounds %struct.gpio_nand, ptr %1, i32 0, i32 9
  %data_in.i = getelementptr inbounds %struct.gpio_nand, ptr %1, i32 0, i32 10
  %io_read.i = getelementptr inbounds %struct.gpio_nand, ptr %1, i32 0, i32 13
  %gpiod_ale = getelementptr inbounds %struct.gpio_nand, ptr %1, i32 0, i32 7
  %gpiod_cle = getelementptr inbounds %struct.gpio_nand, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %instr.060 = phi ptr [ %5, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %instr.060 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %instr.060, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %for.body.for.inc_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb7
    i32 3, label %sw.bb10
    i32 4, label %sw.bb15
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %gpiod_cle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpiod_cle, align 8
  tail call void @gpiod_set_value(ptr noundef %12, i32 noundef 1) #6
  %ctx = getelementptr inbounds %struct.nand_op_instr, ptr %instr.060, i32 0, i32 1
  tail call fastcc void @gpio_nand_write_buf(ptr noundef %1, ptr noundef %ctx, i32 noundef 1)
  %13 = ptrtoint ptr %gpiod_cle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpiod_cle, align 8
  tail call void @gpiod_set_value(ptr noundef %14, i32 noundef 0) #6
  br label %for.inc

sw.bb3:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %gpiod_ale to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpiod_ale, align 4
  tail call void @gpiod_set_value(ptr noundef %16, i32 noundef 1) #6
  %ctx4 = getelementptr inbounds %struct.nand_op_instr, ptr %instr.060, i32 0, i32 1
  %addrs = getelementptr inbounds %struct.nand_op_instr, ptr %instr.060, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addrs, align 4
  %19 = ptrtoint ptr %ctx4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctx4, align 4
  tail call fastcc void @gpio_nand_write_buf(ptr noundef %1, ptr noundef %18, i32 noundef %20)
  %21 = ptrtoint ptr %gpiod_ale to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpiod_ale, align 4
  tail call void @gpiod_set_value(ptr noundef %22, i32 noundef 0) #6
  br label %for.inc

sw.bb7:                                           ; preds = %for.body
  %ctx8 = getelementptr inbounds %struct.nand_op_instr, ptr %instr.060, i32 0, i32 1
  %buf = getelementptr inbounds %struct.nand_op_instr, ptr %instr.060, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf, align 4
  %25 = ptrtoint ptr %ctx8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctx8, align 4
  %27 = ptrtoint ptr %data_gpiods.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data_gpiods.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %sw.bb7.if.end.i_crit_edge, label %land.lhs.true.i

sw.bb7.if.end.i_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb7
  %29 = ptrtoint ptr %data_in.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data_in.i, align 8, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool1.not.i = icmp eq i8 %30, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %ndescs.i.i = getelementptr inbounds %struct.gpio_descs, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %ndescs.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ndescs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp6.not.i.i = icmp eq i32 %32, 0
  br i1 %cmp6.not.i.i, label %if.then.i.gpio_nand_dir_input.exit.i_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.gpio_nand_dir_input.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gpio_nand_dir_input.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.gpio_descs, ptr %28, i32 0, i32 2, i32 %i.07.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @gpiod_direction_input(ptr noundef %34) #6
  %inc.i.i = add nuw i32 %i.07.i.i, 1
  %35 = ptrtoint ptr %ndescs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ndescs.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %36
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.gpio_nand_dir_input.exit.i_crit_edge

for.body.i.i.gpio_nand_dir_input.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gpio_nand_dir_input.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

gpio_nand_dir_input.exit.i:                       ; preds = %for.body.i.i.gpio_nand_dir_input.exit.i_crit_edge, %if.then.i.gpio_nand_dir_input.exit.i_crit_edge
  %37 = ptrtoint ptr %data_in.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %data_in.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %gpio_nand_dir_input.exit.i, %land.lhs.true.i.if.end.i_crit_edge, %sw.bb7.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp8.i = icmp sgt i32 %26, 0
  br i1 %cmp8.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %38 = ptrtoint ptr %io_read.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_read.i, align 4
  %call.i = tail call zeroext i8 %39(ptr noundef %1) #6
  %arrayidx.i = getelementptr i8, ptr %24, i32 %i.09.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %call.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %26
  br i1 %exitcond.not.i, label %for.body.i.for.inc_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.inc_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb10:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %ctx11 = getelementptr inbounds %struct.nand_op_instr, ptr %instr.060, i32 0, i32 1
  %buf12 = getelementptr inbounds %struct.nand_op_instr, ptr %instr.060, i32 0, i32 1, i32 0, i32 1
  %41 = ptrtoint ptr %buf12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buf12, align 4
  %43 = ptrtoint ptr %ctx11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ctx11, align 4
  tail call fastcc void @gpio_nand_write_buf(ptr noundef %1, ptr noundef %42, i32 noundef %44)
  br label %for.inc

sw.bb15:                                          ; preds = %for.body
  %45 = ptrtoint ptr %gpiod_rdy to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %gpiod_rdy, align 8
  %tobool16.not = icmp eq ptr %46, null
  %ctx20 = getelementptr inbounds %struct.nand_op_instr, ptr %instr.060, i32 0, i32 1
  %47 = ptrtoint ptr %ctx20 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ctx20, align 4
  br i1 %tobool16.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 @nand_gpio_waitrdy(ptr noundef %this, ptr noundef nonnull %46, i32 noundef %48) #6
  br label %sw.epilog

cond.false:                                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 @nand_soft_waitrdy(ptr noundef %this, i32 noundef %48) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.false, %cond.true
  %ret.1 = phi i32 [ %call19, %cond.true ], [ %call22, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool23.not = icmp eq i32 %ret.1, 0
  br i1 %tobool23.not, label %sw.epilog.for.inc_crit_edge, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.for.inc_crit_edge, %sw.bb10, %for.body.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %sw.bb3, %sw.bb, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.nand_op_instr, ptr %instr.060, i32 1
  %49 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %instrs, align 4
  %51 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ninstrs, align 4
  %add.ptr = getelementptr %struct.nand_op_instr, ptr %50, i32 %52
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.epilog.for.end_crit_edge, %if.end.for.end_crit_edge
  %ret.2 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %ret.1, %sw.epilog.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %53 = ptrtoint ptr %gpiod_nce.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %gpiod_nce.i, align 4
  tail call void @gpiod_set_value(ptr noundef %54, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_nand_setup_interface(ptr noundef %this, i32 noundef %csline, ptr noundef %cf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %this, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  %4 = getelementptr inbounds %struct.nand_interface_config, ptr %cf, i32 0, i32 1, i32 1
  %retval.0.i51 = select i1 %cmp.i.i, ptr %4, ptr inttoptr (i32 -22 to ptr)
  %dev3 = getelementptr inbounds %struct.mtd_info, ptr %this, i32 0, i32 56
  %cmp.i = icmp ugt ptr %retval.0.i51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %retval.0.i51 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %csline)
  %cmp = icmp eq i32 %csline, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %gpiod_nre = getelementptr inbounds %struct.gpio_nand, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %gpiod_nre to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpiod_nre, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end7.if.end16_crit_edge, label %if.then8

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %tRP_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i51, i32 0, i32 29
  %8 = ptrtoint ptr %tRP_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tRP_min, align 4
  %sub = add i32 %9, 999
  %div = udiv i32 %sub, 1000
  %tRP = getelementptr inbounds %struct.gpio_nand, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %tRP to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %tRP, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpio_nand_setup_interface.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gpio_nand_setup_interface, %if.then13)) #6
          to label %if.end16 [label %if.then13], !srcloc !105

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %tRP to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tRP, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpio_nand_setup_interface.__UNIQUE_ID_ddebug198, ptr noundef %dev3, ptr noundef nonnull @.str.45, i32 noundef %12) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then8, %if.end7.if.end16_crit_edge
  %tWP_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %retval.0.i51, i32 0, i32 36
  %13 = ptrtoint ptr %tWP_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tWP_min, align 8
  %sub18 = add i32 %14, 999
  %div19 = udiv i32 %sub18, 1000
  %tWP = getelementptr inbounds %struct.gpio_nand, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %tWP to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div19, ptr %tWP, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpio_nand_setup_interface.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gpio_nand_setup_interface, %if.then32)) #6
          to label %cleanup [label %if.then32], !srcloc !105

if.then32:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %tWP to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tWP, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpio_nand_setup_interface.__UNIQUE_ID_ddebug199, ptr noundef %dev3, ptr noundef nonnull @.str.46, i32 noundef %17) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end16, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_nand_write_buf(ptr noundef %priv, ptr nocapture noundef readonly %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %values.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp sgt i32 %len, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %data_in = getelementptr inbounds %struct.gpio_nand, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %data_in to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data_in, align 8, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  %data_gpiods1.i = getelementptr inbounds %struct.gpio_nand, ptr %priv, i32 0, i32 9
  %4 = ptrtoint ptr %data_gpiods1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_gpiods1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.sroa.0.i)
  %conv.i = zext i8 %3 to i32
  %6 = ptrtoint ptr %values.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv.i, ptr %values.sroa.0.i, align 4
  %ndescs.i = getelementptr inbounds %struct.gpio_descs, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %ndescs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ndescs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp10.not.i = icmp eq i32 %8, 0
  br i1 %cmp10.not.i, label %if.then.for.end.i_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gpio_descs, ptr %5, i32 0, i32 2, i32 %i.011.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %11 = ptrtoint ptr %values.sroa.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %values.sroa.0.i.0.values.sroa.0.i.0.values.sroa.0.0.values.sroa.0.0..i = load volatile i32, ptr %values.sroa.0.i, align 4
  %and.i.i = and i32 %i.011.i, 31
  %shr.i.i = lshr i32 %values.sroa.0.i.0.values.sroa.0.i.0.values.sroa.0.0.values.sroa.0.0..i, %and.i.i
  %and1.i.i = and i32 %shr.i.i, 1
  %call3.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %10, i32 noundef %and1.i.i) #6
  %inc.i = add nuw i32 %i.011.i, 1
  %12 = ptrtoint ptr %ndescs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ndescs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %gpiod_nwe.i.i = getelementptr inbounds %struct.gpio_nand, ptr %priv, i32 0, i32 6
  %14 = ptrtoint ptr %gpiod_nwe.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpiod_nwe.i.i, align 8
  tail call void @gpiod_set_value(ptr noundef %15, i32 noundef 1) #6
  %tWP.i.i = getelementptr inbounds %struct.gpio_nand, ptr %priv, i32 0, i32 12
  %16 = ptrtoint ptr %tWP.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tWP.i.i, align 8
  %sub.i.i.i = add i32 %17, 999
  %div.i.i.i = udiv i32 %sub.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %18(i32 noundef %div.i.i.i) #6
  %19 = ptrtoint ptr %gpiod_nwe.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpiod_nwe.i.i, align 8
  tail call void @gpiod_set_value(ptr noundef %20, i32 noundef 0) #6
  %21 = ptrtoint ptr %data_in to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %data_in, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.sroa.0.i)
  br label %if.end

if.end:                                           ; preds = %for.end.i, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %i.0 = phi i32 [ 1, %for.end.i ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %len)
  %cmp111 = icmp slt i32 %i.0, %len
  br i1 %cmp111, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %io_write = getelementptr inbounds %struct.gpio_nand, ptr %priv, i32 0, i32 14
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %i.112 = phi i32 [ %i.0, %while.body.lr.ph ], [ %inc2, %while.body.while.body_crit_edge ]
  %22 = ptrtoint ptr %io_write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_write, align 8
  %inc2 = add nuw i32 %i.112, 1
  %arrayidx3 = getelementptr i8, ptr %buf, i32 %i.112
  %24 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx3, align 1
  tail call void %23(ptr noundef %priv, i8 noundef zeroext %25) #6
  %exitcond.not = icmp eq i32 %inc2, %len
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_gpio_waitrdy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_soft_waitrdy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !51, !53, !54, !55, !57, !59, !60, !61, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !81, !82, !83, !84, !86, !87, !89, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__initcall__kmod_ams_delta__200_445_gpio_nand_driver_init6, !1, !"__initcall__kmod_ams_delta__200_445_gpio_nand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 445, i32 1}
!2 = !{ptr @__exitcall_gpio_nand_driver_exit, !1, !"__exitcall_gpio_nand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file201, !4, !"__UNIQUE_ID_file201", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 447, i32 1}
!5 = !{ptr @__UNIQUE_ID_license202, !4, !"__UNIQUE_ID_license202", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author203, !7, !"__UNIQUE_ID_author203", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 448, i32 1}
!8 = !{ptr @__UNIQUE_ID_description204, !9, !"__UNIQUE_ID_description204", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 449, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 440, i32 11}
!12 = !{ptr @gpio_nand_driver, !13, !"gpio_nand_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 435, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 266, i32 56}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 269, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gpio_nand_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @gpio_nand_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 276, i32 56}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 280, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @gpio_nand_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @gpio_nand_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 284, i32 56}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 288, i32 3}
!35 = !{ptr @gpio_nand_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @gpio_nand_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 292, i32 56}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 296, i32 3}
!41 = !{ptr @gpio_nand_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @gpio_nand_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 300, i32 56}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 304, i32 3}
!47 = !{ptr @gpio_nand_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @gpio_nand_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 308, i32 47}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 311, i32 3}
!53 = !{ptr @gpio_nand_probe._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @gpio_nand_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 315, i32 47}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 318, i32 3}
!59 = !{ptr @gpio_nand_probe._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @gpio_nand_probe._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 323, i32 64}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 327, i32 3}
!65 = !{ptr @gpio_nand_probe._entry.33, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @gpio_nand_probe._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 332, i32 4}
!69 = !{ptr @gpio_nand_probe._entry.36, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @gpio_nand_probe._entry_ptr.38, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 352, i32 3}
!73 = !{ptr @gpio_nand_probe._entry.39, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @gpio_nand_probe._entry_ptr.41, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!77 = !{ptr @gpio_nand_ops, !78, !"gpio_nand_ops", i1 false, i1 false}
!78 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 227, i32 41}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 209, i32 3}
!81 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @gpio_nand_setup_interface.__UNIQUE_ID_ddebug198, !80, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 213, i32 2}
!86 = !{ptr @gpio_nand_setup_interface.__UNIQUE_ID_ddebug199, !85, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!87 = !{ptr @nand_controller_init.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!89 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @gpio_nand_of_id_table, !91, !"gpio_nand_of_id_table", i1 false, i1 false}
!91 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 418, i32 34}
!92 = !{ptr @gpio_nand_plat_id_table, !93, !"gpio_nand_plat_id_table", i1 false, i1 false}
!93 = !{!"../drivers/mtd/nand/raw/ams-delta.c", i32 426, i32 40}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{i8 0, i8 2}
!105 = !{i64 2148210782, i64 2148210787, i64 2148210800, i64 2148210844, i64 2148210878, i64 2148210899}
