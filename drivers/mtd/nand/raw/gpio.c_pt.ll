; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/gpio.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/gpio.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.gpiomtd = type { %struct.nand_controller, ptr, ptr, %struct.nand_chip, %struct.gpio_nand_platdata, ptr, ptr, ptr, ptr, ptr }
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
%struct.gpio_nand_platdata = type { ptr, ptr, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_op_instr = type { i32, %union.anon.43, i32 }
%union.anon.43 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.44, i8 }
%union.anon.44 = type { ptr }

@__initcall__kmod_gpio__198_404_gpio_nand_driver_init6 = internal global ptr @gpio_nand_driver_init, section ".initcall6.init", align 4
@gpio_nand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_nand_probe, ptr @gpio_nand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpio_nand_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpio_nand_driver_exit = internal global ptr @gpio_nand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file199 = internal constant [36 x i8] c"gpio.file=drivers/mtd/nand/raw/gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license200 = internal constant [17 x i8] c"gpio.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author201 = internal constant [41 x i8] c"gpio.author=Ben Dooks <ben@simtec.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description202 = internal constant [34 x i8] c"gpio.description=GPIO NAND Driver\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio-nand\00", [22 x i8] zeroinitializer }, align 32
@gpio_nand_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-control-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nce\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nwp\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ale\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cle\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rdy\00", [28 x i8] zeroinitializer }, align 32
@gpio_nand_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @gpio_nand_attach_chip, ptr null, ptr @gpio_nand_exec_op, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"gpio-control-nand,io-sync-reg\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bank-width\00", [21 x i8] zeroinitializer }, align 32
@gpio_nand_get_config_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 197, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid bank-width %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gpio_nand_get_config_of\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mtd/nand/raw/gpio.c\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpio_nand_get_config_of._entry_ptr = internal global ptr @gpio_nand_get_config_of._entry, section ".printk_index", align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chip-delay\00", [21 x i8] zeroinitializer }, align 32
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"gpio_nand_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 395, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 399, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"gpio_nand_id_table\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 179, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 321, i32 46 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 326, i32 46 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 332, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 338, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 344, i32 46 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"gpio_nand_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 173, i32 41 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 214, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 193, i32 42 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 197, i32 4 }
@___asan_gen_.69 = private constant [31 x i8] c"../drivers/mtd/nand/raw/gpio.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 202, i32 42 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1105, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 464, i32 31 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author201, ptr @__UNIQUE_ID_description202, ptr @__UNIQUE_ID_file199, ptr @__UNIQUE_ID_license200, ptr @__exitcall_gpio_nand_driver_exit, ptr @__initcall__kmod_gpio__198_404_gpio_nand_driver_init6, ptr @gpio_nand_driver_exit, ptr @gpio_nand_get_config_of._entry, ptr @gpio_nand_get_config_of._entry_ptr, ptr @gpio_nand_driver, ptr @.str, ptr @gpio_nand_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gpio_nand_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @nand_controller_init.__key, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_nand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_nand_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_nand_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_nand_get_config_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_nand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_nand_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_nand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_nand_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_nand_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2312, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %nand_chip = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 3
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %io = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %io, align 8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr.i.i) #7
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %addr.i.i, align 8, !annotation !56
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_u64(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull %addr.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end13.gpio_nand_get_io_sync.exit_crit_edge

if.end13.gpio_nand_get_io_sync.exit_crit_edge:    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %gpio_nand_get_io_sync.exit

if.end.i.i:                                       ; preds = %if.end13
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #7
  %tobool3.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.gpio_nand_get_io_sync.exit_crit_edge, label %gpio_nand_get_io_sync.exit.thread

if.end.i.i.gpio_nand_get_io_sync.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gpio_nand_get_io_sync.exit

gpio_nand_get_io_sync.exit.thread:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %addr.i.i, align 8
  %conv.i.i = trunc i64 %10 to i32
  %11 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i.i, ptr %call.i.i.i, align 4
  %add.i.i = add i32 %conv.i.i, 3
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i.i, ptr %end.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.resource, ptr %call.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 512, ptr %flags.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i.i) #7
  br label %if.then16

gpio_nand_get_io_sync.exit:                       ; preds = %if.end.i.i.gpio_nand_get_io_sync.exit_crit_edge, %if.end13.gpio_nand_get_io_sync.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i.i) #7
  %call1.i = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #7
  %tobool15.not = icmp eq ptr %call1.i, null
  br i1 %tobool15.not, label %gpio_nand_get_io_sync.exit.if.end24_crit_edge, label %gpio_nand_get_io_sync.exit.if.then16_crit_edge

gpio_nand_get_io_sync.exit.if.then16_crit_edge:   ; preds = %gpio_nand_get_io_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

gpio_nand_get_io_sync.exit.if.end24_crit_edge:    ; preds = %gpio_nand_get_io_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then16:                                        ; preds = %gpio_nand_get_io_sync.exit.if.then16_crit_edge, %gpio_nand_get_io_sync.exit.thread
  %retval.0.i210 = phi ptr [ %call.i.i.i, %gpio_nand_get_io_sync.exit.thread ], [ %call1.i, %gpio_nand_get_io_sync.exit.if.then16_crit_edge ]
  %call17 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %retval.0.i210) #7
  %io_sync = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %io_sync to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call17, ptr %io_sync, align 4
  %cmp.i190 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %if.then20, label %if.then16.if.end24_crit_edge

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.then16.if.end24_crit_edge, %gpio_nand_get_io_sync.exit.if.end24_crit_edge
  %plat = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %16 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i.i, align 4, !annotation !56
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %tobool.not.i.i192 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i192, label %if.end24.if.end.i194_crit_edge, label %if.end.i.i193

if.end24.if.end.i194_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i194

if.end.i.i193:                                    ; preds = %if.end24
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %18, ptr noundef nonnull @.str.7, ptr noundef nonnull %val.i.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool2.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.end.i.i193.if.end9.i.i_crit_edge

if.end.i.i193.if.end9.i.i_crit_edge:              ; preds = %if.end.i.i193
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i193
  %19 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %do.end.i.i [
    i32 2, label %if.then4.i.i
    i32 1, label %if.then3.i.i.if.end9.i.i_crit_edge
  ]

if.then3.i.i.if.end9.i.i_crit_edge:               ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i.i

if.then4.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %options.i.i = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %options.i.i, align 4
  %or.i.i = or i32 %23, 2
  store i32 %or.i.i, ptr %options.i.i, align 4
  br label %if.end9.i.i

do.end.i.i:                                       ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %20) #10
  br label %if.end.i194

if.end9.i.i:                                      ; preds = %if.then4.i.i, %if.then3.i.i.if.end9.i.i_crit_edge, %if.end.i.i193.if.end9.i.i_crit_edge
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %call.i.i20.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull @.str.13, ptr noundef nonnull %val.i.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i20.i.i)
  %tobool12.not.i.i = icmp sgt i32 %call.i.i20.i.i, -1
  br i1 %tobool12.not.i.i, label %if.then13.i.i, label %if.end9.i.i.gpio_nand_get_config_of.exit.thread.i_crit_edge

if.end9.i.i.gpio_nand_get_config_of.exit.thread.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gpio_nand_get_config_of.exit.thread.i

if.then13.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i.i, align 4
  %chip_delay.i.i = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %chip_delay.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %chip_delay.i.i, align 4
  br label %gpio_nand_get_config_of.exit.thread.i

gpio_nand_get_config_of.exit.thread.i:            ; preds = %if.then13.i.i, %if.end9.i.i.gpio_nand_get_config_of.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %if.end28

if.end.i194:                                      ; preds = %do.end.i.i, %if.end24.if.end.i194_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %29 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %platform_data.i.i, align 8
  %tobool2.not.i = icmp eq ptr %30, null
  br i1 %tobool2.not.i, label %if.end.i194.cleanup_crit_edge, label %if.then3.i

if.end.i194.cleanup_crit_edge:                    ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #9
  %31 = call ptr @memcpy(ptr %plat, ptr %30, i32 20)
  br label %if.end28

if.end28:                                         ; preds = %if.then3.i, %gpio_nand_get_config_of.exit.thread.i
  %call29 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 7) #7
  %nce = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 5
  %32 = ptrtoint ptr %nce to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call29, ptr %nce, align 4
  %cmp.i196 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %call36 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 3) #7
  %nwp = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 9
  %34 = ptrtoint ptr %nwp to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call36, ptr %nwp, align 4
  %cmp.i197 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %call36 to i32
  br label %out_ce

if.end42:                                         ; preds = %if.end35
  %call43 = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 3) #7
  %ale = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 7
  %36 = ptrtoint ptr %ale to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call43, ptr %ale, align 4
  %cmp.i198 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i198, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %call43 to i32
  br label %out_ce

if.end49:                                         ; preds = %if.end42
  %call50 = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef 3) #7
  %cle = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 6
  %38 = ptrtoint ptr %cle to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call50, ptr %cle, align 8
  %cmp.i199 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i199, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %call50 to i32
  br label %out_ce

if.end56:                                         ; preds = %if.end49
  %call57 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef 1) #7
  %rdy = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 8
  %40 = ptrtoint ptr %rdy to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call57, ptr %rdy, align 8
  %cmp.i200 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i200, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call57 to i32
  br label %out_ce

if.end63:                                         ; preds = %if.end56
  call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @nand_controller_init.__key) #7
  %ops = getelementptr inbounds %struct.nand_controller, ptr %call.i, i32 0, i32 1
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @gpio_nand_ops, ptr %ops, align 4
  %43 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node, align 8
  %of_node.i.i201 = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 3, i32 0, i32 0, i32 56, i32 27
  %45 = ptrtoint ptr %of_node.i.i201 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %of_node.i.i201, align 8
  %name.i.i = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 3, i32 0, i32 0, i32 13
  %46 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name.i.i, align 8
  %tobool.not.i.i202 = icmp eq ptr %47, null
  br i1 %tobool.not.i.i202, label %if.then.i.i, label %if.end63.nand_set_flash_node.exit_crit_edge

if.end63.nand_set_flash_node.exit_crit_edge:      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %nand_set_flash_node.exit

if.then.i.i:                                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i203 = call i32 @of_property_read_string(ptr noundef %44, ptr noundef nonnull @.str.15, ptr noundef %name.i.i) #7
  br label %nand_set_flash_node.exit

nand_set_flash_node.exit:                         ; preds = %if.then.i.i, %if.end63.nand_set_flash_node.exit_crit_edge
  %options = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 4, i32 3
  %48 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %options, align 4
  %options68 = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 3, i32 6
  %50 = ptrtoint ptr %options68 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %options68, align 8
  %controller = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 3, i32 32
  %51 = ptrtoint ptr %controller to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %controller, align 4
  %parent = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 3, i32 0, i32 0, i32 56, i32 1
  %52 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %dev1, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %54 = ptrtoint ptr %nwp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nwp, align 4
  %tobool73.not = icmp eq ptr %55, null
  %cmp.i204 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool73.not, %cmp.i204
  br i1 %or.cond, label %nand_set_flash_node.exit.if.end80_crit_edge, label %if.then77

nand_set_flash_node.exit.if.end80_crit_edge:      ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then77:                                        ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call79 = call i32 @gpiod_direction_output(ptr noundef nonnull %55, i32 noundef 1) #7
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %nand_set_flash_node.exit.if.end80_crit_edge
  %ecc = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 3, i32 33
  %56 = ptrtoint ptr %ecc to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %ecc, align 8
  %call.i205 = call i32 @nand_scan_with_ids(ptr noundef %nand_chip, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool82.not = icmp eq i32 %call.i205, 0
  br i1 %tobool82.not, label %if.end84, label %if.end80.err_wp_crit_edge

if.end80.err_wp_crit_edge:                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_wp

if.end84:                                         ; preds = %if.end80
  %57 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %plat, align 8
  %tobool86.not = icmp eq ptr %58, null
  br i1 %tobool86.not, label %if.end84.if.end91_crit_edge, label %if.then87

if.end84.if.end91_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %size = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 3, i32 0, i32 0, i32 2
  %59 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %size, align 8
  %conv = trunc i64 %60 to i32
  call void %58(ptr noundef %plat, i32 noundef %conv) #7
  br label %if.end91

if.end91:                                         ; preds = %if.then87, %if.end84.if.end91_crit_edge
  %parts = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 4, i32 1
  %61 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %parts, align 4
  %num_parts = getelementptr inbounds %struct.gpiomtd, ptr %call.i, i32 0, i32 4, i32 2
  %63 = ptrtoint ptr %num_parts to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_parts, align 8
  %call94 = call i32 @mtd_device_parse_register(ptr noundef %nand_chip, ptr noundef null, ptr noundef null, ptr noundef %62, i32 noundef %64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end91.cleanup_crit_edge, label %if.end91.err_wp_crit_edge

if.end91.err_wp_crit_edge:                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_wp

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_wp:                                           ; preds = %if.end91.err_wp_crit_edge, %if.end80.err_wp_crit_edge
  %ret.0 = phi i32 [ %call.i205, %if.end80.err_wp_crit_edge ], [ %call94, %if.end91.err_wp_crit_edge ]
  %65 = ptrtoint ptr %nwp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %nwp, align 4
  %tobool99.not = icmp eq ptr %66, null
  %cmp.i206 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  %or.cond213 = or i1 %tobool99.not, %cmp.i206
  br i1 %or.cond213, label %err_wp.out_ce_crit_edge, label %if.then103

err_wp.out_ce_crit_edge:                          ; preds = %err_wp
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_ce

if.then103:                                       ; preds = %err_wp
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_set_value(ptr noundef nonnull %66, i32 noundef 0) #7
  br label %out_ce

out_ce:                                           ; preds = %if.then103, %err_wp.out_ce_crit_edge, %if.then60, %if.then53, %if.then46, %if.then39
  %ret.1 = phi i32 [ %35, %if.then39 ], [ %37, %if.then46 ], [ %39, %if.then53 ], [ %41, %if.then60 ], [ %ret.0, %if.then103 ], [ %ret.0, %err_wp.out_ce_crit_edge ]
  %67 = ptrtoint ptr %nce to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %nce, align 4
  %tobool107.not = icmp eq ptr %68, null
  %cmp.i207 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  %or.cond214 = or i1 %tobool107.not, %cmp.i207
  br i1 %or.cond214, label %out_ce.cleanup_crit_edge, label %if.then111

out_ce.cleanup_crit_edge:                         ; preds = %out_ce
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then111:                                       ; preds = %out_ce
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_set_value(ptr noundef nonnull %68, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then111, %out_ce.cleanup_crit_edge, %if.end91.cleanup_crit_edge, %if.then32, %if.end.i194.cleanup_crit_edge, %if.then20, %if.then10, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then10 ], [ %15, %if.then20 ], [ %33, %if.then32 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end91.cleanup_crit_edge ], [ %ret.1, %if.then111 ], [ %ret.1, %out_ce.cleanup_crit_edge ], [ -22, %if.end.i194.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_nand_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nand_chip = getelementptr inbounds %struct.gpiomtd, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @mtd_device_unregister(ptr noundef %nand_chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !57

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 275, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %nand_chip) #7
  %nwp = getelementptr inbounds %struct.gpiomtd, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %nwp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nwp, align 4
  %tobool22.not = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool22.not, %cmp.i
  br i1 %or.cond, label %if.end.if.end27_crit_edge, label %if.then25

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %3, i32 noundef 0) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end.if.end27_crit_edge
  %nce = getelementptr inbounds %struct.gpiomtd, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %nce to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nce, align 4
  %tobool28.not = icmp eq ptr %5, null
  %cmp.i44 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %or.cond45 = or i1 %tobool28.not, %cmp.i44
  br i1 %or.cond45, label %if.end27.if.end34_crit_edge, label %if.then32

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %5, i32 noundef 0) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end27.if.end34_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpio_nand_attach_chip(ptr nocapture noundef %chip) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %0 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %algo, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_nand_exec_op(ptr noundef %chip, ptr nocapture noundef readonly %op, i1 noundef zeroext %check_only) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %check_only, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_sync.i = getelementptr i8, ptr %chip, i32 -4
  %0 = ptrtoint ptr %io_sync.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_sync.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.gpio_nand_dosync.exit_crit_edge, label %if.then.i

if.end.gpio_nand_dosync.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %gpio_nand_dosync.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %1) #7, !srcloc !58
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %4 = tail call i32 asm sideeffect "mov $1, $0\0A", "=r,r"(i32 %3) #7, !srcloc !60
  br label %gpio_nand_dosync.exit

gpio_nand_dosync.exit:                            ; preds = %if.then.i, %if.end.gpio_nand_dosync.exit_crit_edge
  %nce = getelementptr i8, ptr %chip, i32 2188
  %5 = ptrtoint ptr %nce to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nce, align 4
  tail call void @gpiod_set_value(ptr noundef %6, i32 noundef 0) #7
  %ninstrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 2
  %7 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ninstrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp41.not = icmp eq i32 %8, 0
  br i1 %cmp41.not, label %gpio_nand_dosync.exit.for.end_crit_edge, label %for.body.lr.ph

gpio_nand_dosync.exit.for.end_crit_edge:          ; preds = %gpio_nand_dosync.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %gpio_nand_dosync.exit
  %instrs = getelementptr inbounds %struct.nand_operation, ptr %op, i32 0, i32 1
  %rdy.i = getelementptr i8, ptr %chip, i32 2200
  %options23.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %io31.i = getelementptr i8, ptr %chip, i32 -8
  %ale.i = getelementptr i8, ptr %chip, i32 2196
  %cle.i = getelementptr i8, ptr %chip, i32 2192
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %instrs, align 4
  %arrayidx = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.042
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %12, label %for.body.for.end_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb11.i
    i32 3, label %sw.bb22.i
    i32 4, label %sw.bb44.i
  ]

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

sw.bb.i:                                          ; preds = %for.body
  %14 = ptrtoint ptr %io_sync.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_sync.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %sw.bb.i.gpio_nand_dosync.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.gpio_nand_dosync.exit.i_crit_edge:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gpio_nand_dosync.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %15) #7, !srcloc !58
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %18 = tail call i32 asm sideeffect "mov $1, $0\0A", "=r,r"(i32 %17) #7, !srcloc !60
  br label %gpio_nand_dosync.exit.i

gpio_nand_dosync.exit.i:                          ; preds = %if.then.i.i, %sw.bb.i.gpio_nand_dosync.exit.i_crit_edge
  %19 = ptrtoint ptr %cle.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cle.i, align 8
  tail call void @gpiod_set_value(ptr noundef %20, i32 noundef 1) #7
  %21 = ptrtoint ptr %io_sync.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_sync.i, align 4
  %tobool.not.i98.i = icmp eq ptr %22, null
  br i1 %tobool.not.i98.i, label %gpio_nand_dosync.exit.i.gpio_nand_dosync.exit100.i_crit_edge, label %if.then.i99.i

gpio_nand_dosync.exit.i.gpio_nand_dosync.exit100.i_crit_edge: ; preds = %gpio_nand_dosync.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gpio_nand_dosync.exit100.i

if.then.i99.i:                                    ; preds = %gpio_nand_dosync.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %22) #7, !srcloc !58
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %25 = tail call i32 asm sideeffect "mov $1, $0\0A", "=r,r"(i32 %24) #7, !srcloc !60
  br label %gpio_nand_dosync.exit100.i

gpio_nand_dosync.exit100.i:                       ; preds = %if.then.i99.i, %gpio_nand_dosync.exit.i.gpio_nand_dosync.exit100.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %ctx.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.042, i32 1
  %26 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ctx.i, align 4
  %28 = ptrtoint ptr %io31.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io31.i, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 %27) #7, !srcloc !62
  %30 = ptrtoint ptr %io_sync.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_sync.i, align 4
  %tobool.not.i102.i = icmp eq ptr %31, null
  br i1 %tobool.not.i102.i, label %gpio_nand_dosync.exit100.i.gpio_nand_dosync.exit104.i_crit_edge, label %if.then.i103.i

gpio_nand_dosync.exit100.i.gpio_nand_dosync.exit104.i_crit_edge: ; preds = %gpio_nand_dosync.exit100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gpio_nand_dosync.exit104.i

if.then.i103.i:                                   ; preds = %gpio_nand_dosync.exit100.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %31) #7, !srcloc !58
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %34 = tail call i32 asm sideeffect "mov $1, $0\0A", "=r,r"(i32 %33) #7, !srcloc !60
  br label %gpio_nand_dosync.exit104.i

gpio_nand_dosync.exit104.i:                       ; preds = %if.then.i103.i, %gpio_nand_dosync.exit100.i.gpio_nand_dosync.exit104.i_crit_edge
  %35 = ptrtoint ptr %cle.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cle.i, align 8
  tail call void @gpiod_set_value(ptr noundef %36, i32 noundef 0) #7
  br label %if.end5

sw.bb3.i:                                         ; preds = %for.body
  %37 = ptrtoint ptr %io_sync.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_sync.i, align 4
  %tobool.not.i106.i = icmp eq ptr %38, null
  br i1 %tobool.not.i106.i, label %sw.bb3.i.gpio_nand_dosync.exit108.i_crit_edge, label %if.then.i107.i

sw.bb3.i.gpio_nand_dosync.exit108.i_crit_edge:    ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gpio_nand_dosync.exit108.i

if.then.i107.i:                                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %38) #7, !srcloc !58
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %41 = tail call i32 asm sideeffect "mov $1, $0\0A", "=r,r"(i32 %40) #7, !srcloc !60
  br label %gpio_nand_dosync.exit108.i

gpio_nand_dosync.exit108.i:                       ; preds = %if.then.i107.i, %sw.bb3.i.gpio_nand_dosync.exit108.i_crit_edge
  %42 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ale.i, align 4
  tail call void @gpiod_set_value(ptr noundef %43, i32 noundef 1) #7
  %44 = ptrtoint ptr %io_sync.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io_sync.i, align 4
  %tobool.not.i110.i = icmp eq ptr %45, null
  br i1 %tobool.not.i110.i, label %gpio_nand_dosync.exit108.i.gpio_nand_dosync.exit112.i_crit_edge, label %if.then.i111.i

gpio_nand_dosync.exit108.i.gpio_nand_dosync.exit112.i_crit_edge: ; preds = %gpio_nand_dosync.exit108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gpio_nand_dosync.exit112.i

if.then.i111.i:                                   ; preds = %gpio_nand_dosync.exit108.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %45) #7, !srcloc !58
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %48 = tail call i32 asm sideeffect "mov $1, $0\0A", "=r,r"(i32 %47) #7, !srcloc !60
  br label %gpio_nand_dosync.exit112.i

gpio_nand_dosync.exit112.i:                       ; preds = %if.then.i111.i, %gpio_nand_dosync.exit108.i.gpio_nand_dosync.exit112.i_crit_edge
  %ctx4.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.042, i32 1
  %49 = ptrtoint ptr %ctx4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ctx4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp125.not.i = icmp eq i32 %50, 0
  br i1 %cmp125.not.i, label %gpio_nand_dosync.exit112.i.for.end.i_crit_edge, label %do.body5.lr.ph.i

gpio_nand_dosync.exit112.i.for.end.i_crit_edge:   ; preds = %gpio_nand_dosync.exit112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

do.body5.lr.ph.i:                                 ; preds = %gpio_nand_dosync.exit112.i
  %addrs.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.042, i32 1, i32 0, i32 1
  br label %do.body5.i

do.body5.i:                                       ; preds = %do.body5.i.do.body5.i_crit_edge, %do.body5.lr.ph.i
  %i.0126.i = phi i32 [ 0, %do.body5.lr.ph.i ], [ %inc.i, %do.body5.i.do.body5.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @arm_heavy_mb() #7
  %51 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %addrs.i, align 4
  %arrayidx.i = getelementptr i8, ptr %52, i32 %i.0126.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i, align 1
  %55 = ptrtoint ptr %io31.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io31.i, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %56, i8 %54) #7, !srcloc !62
  %inc.i = add nuw i32 %i.0126.i, 1
  %57 = ptrtoint ptr %ctx4.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ctx4.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %58
  br i1 %cmp.i, label %do.body5.i.do.body5.i_crit_edge, label %do.body5.i.for.end.i_crit_edge

do.body5.i.for.end.i_crit_edge:                   ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

do.body5.i.do.body5.i_crit_edge:                  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5.i

for.end.i:                                        ; preds = %do.body5.i.for.end.i_crit_edge, %gpio_nand_dosync.exit112.i.for.end.i_crit_edge
  %59 = ptrtoint ptr %io_sync.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %io_sync.i, align 4
  %tobool.not.i114.i = icmp eq ptr %60, null
  br i1 %tobool.not.i114.i, label %for.end.i.gpio_nand_dosync.exit116.i_crit_edge, label %if.then.i115.i

for.end.i.gpio_nand_dosync.exit116.i_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gpio_nand_dosync.exit116.i

if.then.i115.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %60) #7, !srcloc !58
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %63 = tail call i32 asm sideeffect "mov $1, $0\0A", "=r,r"(i32 %62) #7, !srcloc !60
  br label %gpio_nand_dosync.exit116.i

gpio_nand_dosync.exit116.i:                       ; preds = %if.then.i115.i, %for.end.i.gpio_nand_dosync.exit116.i_crit_edge
  %64 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ale.i, align 4
  tail call void @gpiod_set_value(ptr noundef %65, i32 noundef 0) #7
  br label %if.end5

sw.bb11.i:                                        ; preds = %for.body
  %66 = ptrtoint ptr %io_sync.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %io_sync.i, align 4
  %tobool.not.i118.i = icmp eq ptr %67, null
  br i1 %tobool.not.i118.i, label %sw.bb11.i.gpio_nand_dosync.exit120.i_crit_edge, label %if.then.i119.i

sw.bb11.i.gpio_nand_dosync.exit120.i_crit_edge:   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gpio_nand_dosync.exit120.i

if.then.i119.i:                                   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %67) #7, !srcloc !58
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %70 = tail call i32 asm sideeffect "mov $1, $0\0A", "=r,r"(i32 %69) #7, !srcloc !60
  br label %gpio_nand_dosync.exit120.i

gpio_nand_dosync.exit120.i:                       ; preds = %if.then.i119.i, %sw.bb11.i.gpio_nand_dosync.exit120.i_crit_edge
  %71 = ptrtoint ptr %options23.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %options23.i, align 8
  %and.i = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i29 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i29, label %gpio_nand_dosync.exit120.i.if.else.i_crit_edge, label %land.lhs.true.i

gpio_nand_dosync.exit120.i.if.else.i_crit_edge:   ; preds = %gpio_nand_dosync.exit120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %gpio_nand_dosync.exit120.i
  %force_8bit.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.042, i32 1, i32 0, i32 2
  %73 = ptrtoint ptr %force_8bit.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %force_8bit.i, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool13.not.i = icmp eq i8 %74, 0
  br i1 %tobool13.not.i, label %if.then.i30, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i30:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %ctx12.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.042, i32 1
  %75 = ptrtoint ptr %io31.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %io31.i, align 8
  %buf.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.042, i32 1, i32 0, i32 1
  %77 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buf.i, align 4
  %79 = ptrtoint ptr %ctx12.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ctx12.i, align 4
  %div96.i = lshr i32 %80, 1
  tail call void @__raw_readsw(ptr noundef %76, ptr noundef %78, i32 noundef %div96.i) #7
  br label %if.end5

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %gpio_nand_dosync.exit120.i.if.else.i_crit_edge
  %81 = ptrtoint ptr %io31.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %io31.i, align 8
  %ctx18.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.042, i32 1
  %buf19.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.042, i32 1, i32 0, i32 1
  %83 = ptrtoint ptr %buf19.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buf19.i, align 4
  %85 = ptrtoint ptr %ctx18.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ctx18.i, align 4
  tail call void @__raw_readsb(ptr noundef %82, ptr noundef %84, i32 noundef %86) #7
  br label %if.end5

sw.bb22.i:                                        ; preds = %for.body
  %87 = ptrtoint ptr %io_sync.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %io_sync.i, align 4
  %tobool.not.i122.i = icmp eq ptr %88, null
  br i1 %tobool.not.i122.i, label %sw.bb22.i.gpio_nand_dosync.exit124.i_crit_edge, label %if.then.i123.i

sw.bb22.i.gpio_nand_dosync.exit124.i_crit_edge:   ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gpio_nand_dosync.exit124.i

if.then.i123.i:                                   ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #9
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %88) #7, !srcloc !58
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %91 = tail call i32 asm sideeffect "mov $1, $0\0A", "=r,r"(i32 %90) #7, !srcloc !60
  br label %gpio_nand_dosync.exit124.i

gpio_nand_dosync.exit124.i:                       ; preds = %if.then.i123.i, %sw.bb22.i.gpio_nand_dosync.exit124.i_crit_edge
  %92 = ptrtoint ptr %options23.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %options23.i, align 8
  %and24.i = and i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %gpio_nand_dosync.exit124.i.if.else37.i_crit_edge, label %land.lhs.true26.i

gpio_nand_dosync.exit124.i.if.else37.i_crit_edge: ; preds = %gpio_nand_dosync.exit124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else37.i

land.lhs.true26.i:                                ; preds = %gpio_nand_dosync.exit124.i
  %force_8bit28.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.042, i32 1, i32 0, i32 2
  %94 = ptrtoint ptr %force_8bit28.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %force_8bit28.i, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool29.not.i = icmp eq i8 %95, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %land.lhs.true26.i.if.else37.i_crit_edge

land.lhs.true26.i.if.else37.i_crit_edge:          ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else37.i

if.then30.i:                                      ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #9
  %ctx27.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.042, i32 1
  %96 = ptrtoint ptr %io31.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %io31.i, align 8
  %buf33.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.042, i32 1, i32 0, i32 1
  %98 = ptrtoint ptr %buf33.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %buf33.i, align 4
  %100 = ptrtoint ptr %ctx27.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ctx27.i, align 4
  %div3695.i = lshr i32 %101, 1
  tail call void @__raw_writesw(ptr noundef %97, ptr noundef %99, i32 noundef %div3695.i) #7
  br label %if.end5

if.else37.i:                                      ; preds = %land.lhs.true26.i.if.else37.i_crit_edge, %gpio_nand_dosync.exit124.i.if.else37.i_crit_edge
  %102 = ptrtoint ptr %io31.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %io31.i, align 8
  %ctx39.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.042, i32 1
  %buf40.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.042, i32 1, i32 0, i32 1
  %104 = ptrtoint ptr %buf40.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %buf40.i, align 4
  %106 = ptrtoint ptr %ctx39.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ctx39.i, align 4
  tail call void @__raw_writesb(ptr noundef %103, ptr noundef %105, i32 noundef %107) #7
  br label %if.end5

sw.bb44.i:                                        ; preds = %for.body
  %108 = ptrtoint ptr %rdy.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rdy.i, align 8
  %tobool45.not.i = icmp eq ptr %109, null
  %ctx47.i = getelementptr %struct.nand_op_instr, ptr %10, i32 %i.042, i32 1
  %110 = ptrtoint ptr %ctx47.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ctx47.i, align 4
  br i1 %tobool45.not.i, label %if.then46.i, label %if.end49.i

if.then46.i:                                      ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #9
  %call48.i = tail call i32 @nand_soft_waitrdy(ptr noundef %chip, i32 noundef %111) #7
  br label %gpio_nand_exec_instr.exit

if.end49.i:                                       ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #9
  %call53.i = tail call i32 @nand_gpio_waitrdy(ptr noundef %chip, ptr noundef nonnull %109, i32 noundef %111) #7
  br label %gpio_nand_exec_instr.exit

gpio_nand_exec_instr.exit:                        ; preds = %if.end49.i, %if.then46.i
  %retval.0.i = phi i32 [ %call53.i, %if.end49.i ], [ %call48.i, %if.then46.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool3.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool3.not, label %gpio_nand_exec_instr.exit.if.end5_crit_edge, label %gpio_nand_exec_instr.exit.for.end_crit_edge

gpio_nand_exec_instr.exit.for.end_crit_edge:      ; preds = %gpio_nand_exec_instr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

gpio_nand_exec_instr.exit.if.end5_crit_edge:      ; preds = %gpio_nand_exec_instr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %gpio_nand_exec_instr.exit.if.end5_crit_edge, %if.else37.i, %if.then30.i, %if.else.i, %if.then.i30, %gpio_nand_dosync.exit116.i, %gpio_nand_dosync.exit104.i
  %112 = ptrtoint ptr %instrs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %instrs, align 4
  %delay_ns = getelementptr %struct.nand_op_instr, ptr %113, i32 %i.042, i32 2
  %114 = ptrtoint ptr %delay_ns to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %delay_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool8.not = icmp eq i32 %115, 0
  br i1 %tobool8.not, label %if.end5.for.inc_crit_edge, label %cond.false8.i

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cond.false8.i:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %115, 999
  %div.i = udiv i32 %sub.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %116(i32 noundef %div.i) #7
  br label %for.inc

for.inc:                                          ; preds = %cond.false8.i, %if.end5.for.inc_crit_edge
  %inc = add nuw i32 %i.042, 1
  %117 = ptrtoint ptr %ninstrs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ninstrs, align 4
  %cmp = icmp ult i32 %inc, %118
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %gpio_nand_exec_instr.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %gpio_nand_dosync.exit.for.end_crit_edge
  %ret.1 = phi i32 [ 0, %gpio_nand_dosync.exit.for.end_crit_edge ], [ -22, %for.body.for.end_crit_edge ], [ %retval.0.i, %gpio_nand_exec_instr.exit.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %119 = ptrtoint ptr %io_sync.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %io_sync.i, align 4
  %tobool.not.i33 = icmp eq ptr %120, null
  br i1 %tobool.not.i33, label %for.end.gpio_nand_dosync.exit35_crit_edge, label %if.then.i34

for.end.gpio_nand_dosync.exit35_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %gpio_nand_dosync.exit35

if.then.i34:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %120) #7, !srcloc !58
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %123 = tail call i32 asm sideeffect "mov $1, $0\0A", "=r,r"(i32 %122) #7, !srcloc !60
  br label %gpio_nand_dosync.exit35

gpio_nand_dosync.exit35:                          ; preds = %if.then.i34, %for.end.gpio_nand_dosync.exit35_crit_edge
  %124 = ptrtoint ptr %nce to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %nce, align 4
  tail call void @gpiod_set_value(ptr noundef %125, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %gpio_nand_dosync.exit35, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %gpio_nand_dosync.exit35 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_soft_waitrdy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_gpio_waitrdy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_gpio__198_404_gpio_nand_driver_init6, !1, !"__initcall__kmod_gpio__198_404_gpio_nand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/gpio.c", i32 404, i32 1}
!2 = !{ptr @__exitcall_gpio_nand_driver_exit, !1, !"__exitcall_gpio_nand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file199, !4, !"__UNIQUE_ID_file199", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/gpio.c", i32 406, i32 1}
!5 = !{ptr @__UNIQUE_ID_license200, !4, !"__UNIQUE_ID_license200", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author201, !7, !"__UNIQUE_ID_author201", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/gpio.c", i32 407, i32 1}
!8 = !{ptr @__UNIQUE_ID_description202, !9, !"__UNIQUE_ID_description202", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/gpio.c", i32 408, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/gpio.c", i32 399, i32 11}
!12 = !{ptr @gpio_nand_driver, !13, !"gpio_nand_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/gpio.c", i32 395, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/gpio.c", i32 321, i32 46}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/gpio.c", i32 326, i32 46}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/gpio.c", i32 332, i32 37}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/raw/gpio.c", i32 338, i32 37}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/raw/gpio.c", i32 344, i32 46}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/gpio.c", i32 214, i32 12}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/raw/gpio.c", i32 193, i32 42}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/nand/raw/gpio.c", i32 197, i32 4}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @gpio_nand_get_config_of._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @gpio_nand_get_config_of._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/nand/raw/gpio.c", i32 202, i32 42}
!38 = !{ptr @nand_controller_init.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @gpio_nand_ops, !42, !"gpio_nand_ops", i1 false, i1 false}
!42 = !{!"../drivers/mtd/nand/raw/gpio.c", i32 173, i32 41}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!45 = !{ptr @gpio_nand_id_table, !46, !"gpio_nand_id_table", i1 false, i1 false}
!46 = !{!"../drivers/mtd/nand/raw/gpio.c", i32 179, i32 34}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"auto-init"}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 5211198}
!59 = !{i64 2153158609}
!60 = !{i64 1926}
!61 = !{i64 2153158835}
!62 = !{i64 5210583}
!63 = !{i64 2153159129}
!64 = !{i8 0, i8 2}
