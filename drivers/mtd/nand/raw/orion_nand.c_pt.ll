; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/orion_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/orion_nand.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.orion_nand_info = type { %struct.nand_controller, %struct.nand_chip, ptr }
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
%struct.orion_nand_data = type { ptr, i32, i8, i8, i8, i8 }

@__initcall__kmod_orion_nand__198_249_orion_nand_driver_init6 = internal global ptr @orion_nand_driver_init, section ".initcall6.init", align 4
@orion_nand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @orion_nand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @orion_nand_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_orion_nand_driver_exit = internal global ptr @orion_nand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file199 = internal constant [48 x i8] c"orion_nand.file=drivers/mtd/nand/raw/orion_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license200 = internal constant [23 x i8] c"orion_nand.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author201 = internal constant [36 x i8] c"orion_nand.author=Tzachi Perelstein\00", section ".modinfo", align 1
@__UNIQUE_ID_description202 = internal constant [53 x i8] c"orion_nand.description=NAND glue for Orion platforms\00", section ".modinfo", align 1
@__UNIQUE_ID_alias203 = internal constant [37 x i8] c"orion_nand.alias=platform:orion_nand\00", section ".modinfo", align 1
@orion_nand_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @orion_nand_attach_chip, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cle\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ale\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bank-width\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chip-delay\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mtd/nand/raw/orion_nand.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%d bit bus width out of range\00", [34 x i8] zeroinitializer }, align 32
@orion_nand_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.4, i32 181, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get clock!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"orion_nand_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@orion_nand_probe._entry_ptr = internal global ptr @orion_nand_probe._entry, section ".printk_index", align 4
@orion_nand_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str.4, i32 188, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to prepare clock!\0A\00", [38 x i8] zeroinitializer }, align 32
@orion_nand_probe._entry_ptr.12 = internal global ptr @orion_nand_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"orion_nand\00", [21 x i8] zeroinitializer }, align 32
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@orion_nand_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"orion_nand_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 241, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"orion_nand_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 95, i32 41 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 133, i32 48 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 137, i32 48 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 142, i32 7 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 147, i32 7 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 164, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 181, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 188, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 203, i32 14 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 1105, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 464, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant [26 x i8] c"orion_nand_of_match_table\00", align 1
@___asan_gen_.74 = private constant [37 x i8] c"../drivers/mtd/nand/raw/orion_nand.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 234, i32 34 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias203, ptr @__UNIQUE_ID_author201, ptr @__UNIQUE_ID_description202, ptr @__UNIQUE_ID_file199, ptr @__UNIQUE_ID_license200, ptr @__exitcall_orion_nand_driver_exit, ptr @__initcall__kmod_orion_nand__198_249_orion_nand_driver_init6, ptr @orion_nand_driver_exit, ptr @orion_nand_probe._entry, ptr @orion_nand_probe._entry.10, ptr @orion_nand_probe._entry_ptr, ptr @orion_nand_probe._entry_ptr.12, ptr @orion_nand_driver, ptr @orion_nand_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @nand_controller_init.__key, ptr @.str.14, ptr @.str.15, ptr @orion_nand_of_match_table], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_nand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_nand_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_nand_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_nand_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_nand_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_nand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @orion_nand_driver, ptr noundef nonnull @orion_nand_probe, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @orion_nand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @orion_nand_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_nand_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2272, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.orion_nand_info, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @nand_controller_init.__key) #6
  %ops = getelementptr inbounds %struct.nand_controller, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @orion_nand_ops, ptr %ops, align 4
  %controller4 = getelementptr inbounds %struct.orion_nand_info, ptr %call.i, i32 0, i32 1, i32 32
  %2 = ptrtoint ptr %controller4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %controller4, align 4
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call7 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call5) #6
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %if.else54, label %if.then14

if.then14:                                        ; preds = %if.end11
  %call.i212 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #6
  %tobool17.not = icmp eq ptr %call.i212, null
  br i1 %tobool17.not, label %if.then14.cleanup_crit_edge, label %if.end19

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.then14
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool23.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool23.not, label %if.then24, label %if.end19.if.end26_crit_edge

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %conv = trunc i32 %9 to i8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end19.if.end26_crit_edge
  %.sink = phi i8 [ %conv, %if.then24 ], [ 0, %if.end19.if.end26_crit_edge ]
  %10 = getelementptr inbounds %struct.orion_nand_data, ptr %call.i212, i32 0, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink, ptr %10, align 1
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i.i213 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i213)
  %tobool30.not = icmp sgt i32 %call.i.i213, -1
  br i1 %tobool30.not, label %if.then31, label %if.end26.if.end35_crit_edge

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %conv32 = trunc i32 %15 to i8
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end26.if.end35_crit_edge
  %.sink223 = phi i8 [ %conv32, %if.then31 ], [ 1, %if.end26.if.end35_crit_edge ]
  %16 = getelementptr inbounds %struct.orion_nand_data, ptr %call.i212, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink223, ptr %16, align 4
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call.i.i214 = call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.2, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i214)
  %tobool39.not = icmp sgt i32 %call.i.i214, -1
  br i1 %tobool39.not, label %if.then40, label %if.end35.if.end46_crit_edge

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %.tr = trunc i32 %21 to i8
  %conv43 = shl i8 %.tr, 3
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %if.end35.if.end46_crit_edge
  %.sink224 = phi i8 [ %conv43, %if.then40 ], [ 8, %if.end35.if.end46_crit_edge ]
  %22 = getelementptr inbounds %struct.orion_nand_data, ptr %call.i212, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink224, ptr %22, align 2
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %call.i.i215 = call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i215)
  %tobool50.not = icmp sgt i32 %call.i.i215, -1
  br i1 %tobool50.not, label %if.then51, label %if.end46.if.end57_crit_edge

if.end46.if.end57_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %conv52 = trunc i32 %27 to i8
  %chip_delay = getelementptr inbounds %struct.orion_nand_data, ptr %call.i212, i32 0, i32 5
  %28 = ptrtoint ptr %chip_delay to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv52, ptr %chip_delay, align 1
  br label %if.end57

if.else54:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %29 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %platform_data.i, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.else54, %if.then51, %if.end46.if.end57_crit_edge
  %board.0 = phi ptr [ %call.i212, %if.end46.if.end57_crit_edge ], [ %call.i212, %if.then51 ], [ %30, %if.else54 ]
  %parent = getelementptr inbounds %struct.orion_nand_info, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev, ptr %parent, align 8
  %priv1.i = getelementptr inbounds %struct.orion_nand_info, ptr %call.i, i32 0, i32 1, i32 34
  %32 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %board.0, ptr %priv1.i, align 8
  %33 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node, align 8
  %of_node.i.i = getelementptr inbounds %struct.orion_nand_info, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 27
  %35 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %of_node.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.orion_nand_info, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 13
  %36 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end57.nand_set_flash_node.exit_crit_edge

if.end57.nand_set_flash_node.exit_crit_edge:      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %nand_set_flash_node.exit

if.then.i.i:                                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i216 = call i32 @of_property_read_string(ptr noundef %34, ptr noundef nonnull @.str.15, ptr noundef %name.i.i) #6
  br label %nand_set_flash_node.exit

nand_set_flash_node.exit:                         ; preds = %if.then.i.i, %if.end57.nand_set_flash_node.exit_crit_edge
  %legacy = getelementptr inbounds %struct.orion_nand_info, ptr %call.i, i32 0, i32 1, i32 5
  %IO_ADDR_W = getelementptr inbounds %struct.orion_nand_info, ptr %call.i, i32 0, i32 1, i32 5, i32 1
  %38 = ptrtoint ptr %IO_ADDR_W to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7, ptr %IO_ADDR_W, align 4
  %39 = ptrtoint ptr %legacy to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7, ptr %legacy, align 8
  %cmd_ctrl = getelementptr inbounds %struct.orion_nand_info, ptr %call.i, i32 0, i32 1, i32 5, i32 7
  %40 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @orion_nand_cmd_ctrl, ptr %cmd_ctrl, align 4
  %read_buf = getelementptr inbounds %struct.orion_nand_info, ptr %call.i, i32 0, i32 1, i32 5, i32 6
  %41 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @orion_nand_read_buf, ptr %read_buf, align 8
  %chip_delay65 = getelementptr inbounds %struct.orion_nand_data, ptr %board.0, i32 0, i32 5
  %42 = ptrtoint ptr %chip_delay65 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %chip_delay65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool66.not = icmp eq i8 %43, 0
  br i1 %tobool66.not, label %nand_set_flash_node.exit.if.end72_crit_edge, label %if.then67

nand_set_flash_node.exit.if.end72_crit_edge:      ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then67:                                        ; preds = %nand_set_flash_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv69 = zext i8 %43 to i32
  %chip_delay71 = getelementptr inbounds %struct.orion_nand_info, ptr %call.i, i32 0, i32 1, i32 5, i32 15
  %44 = ptrtoint ptr %chip_delay71 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv69, ptr %chip_delay71, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %nand_set_flash_node.exit.if.end72_crit_edge
  %width73 = getelementptr inbounds %struct.orion_nand_data, ptr %board.0, i32 0, i32 4
  %45 = ptrtoint ptr %width73 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %width73, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %46)
  %cmp = icmp ugt i8 %46, 16
  br i1 %cmp, label %do.end, label %if.end72.if.end92_crit_edge, !prof !56

if.end72.if.end92_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

do.end:                                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %conv74 = zext i8 %46 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 166, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %conv74) #6
  %47 = ptrtoint ptr %width73 to i32
  call void @__asan_load1_noabort(i32 %47)
  %.pr = load i8, ptr %width73, align 2
  br label %if.end92

if.end92:                                         ; preds = %do.end, %if.end72.if.end92_crit_edge
  %48 = phi i8 [ %.pr, %do.end ], [ %46, %if.end72.if.end92_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %48)
  %cmp101 = icmp eq i8 %48, 16
  br i1 %cmp101, label %if.then103, label %if.end92.if.end104_crit_edge

if.end92.if.end104_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then103:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %options = getelementptr inbounds %struct.orion_nand_info, ptr %call.i, i32 0, i32 1, i32 6
  %49 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %options, align 8
  %or = or i32 %50, 2
  store i32 %or, ptr %options, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %if.end92.if.end104_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %51 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call106 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.orion_nand_info, ptr %call.i, i32 0, i32 2
  %52 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call106, ptr %clk, align 8
  %cmp.i217 = icmp ugt ptr %call106, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217, label %if.then109, label %if.end104.if.end122_crit_edge

if.end104.if.end122_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end122

if.then109:                                       ; preds = %if.end104
  %cmp112 = icmp eq ptr %call106, inttoptr (i32 -2 to ptr)
  br i1 %cmp112, label %if.then114, label %do.end119

if.then114:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %clk, align 8
  br label %if.end122

do.end119:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %call106 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end122:                                        ; preds = %if.then114, %if.end104.if.end122_crit_edge
  %55 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk, align 8
  %call.i218 = call i32 @clk_prepare(ptr noundef %56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %tobool.not.i = icmp eq i32 %call.i218, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end122.do.end129_crit_edge

if.end122.do.end129_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end129

if.end.i:                                         ; preds = %if.end122
  %call1.i = call i32 @clk_enable(ptr noundef %56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end131, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %56) #6
  br label %do.end129

do.end129:                                        ; preds = %if.then3.i, %if.end122.do.end129_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i218, %if.end122.do.end129_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end131:                                        ; preds = %if.end.i
  %ecc = getelementptr inbounds %struct.orion_nand_info, ptr %call.i, i32 0, i32 1, i32 33
  %57 = ptrtoint ptr %ecc to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %ecc, align 8
  %call.i219 = call i32 @nand_scan_with_ids(ptr noundef %chip, i32 noundef 1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %tobool133.not = icmp eq i32 %call.i219, 0
  br i1 %tobool133.not, label %if.end135, label %if.end131.no_dev_crit_edge

if.end131.no_dev_crit_edge:                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  br label %no_dev

if.end135:                                        ; preds = %if.end131
  %58 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.13, ptr %name.i.i, align 8
  %59 = ptrtoint ptr %board.0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %board.0, align 4
  %nr_parts = getelementptr inbounds %struct.orion_nand_data, ptr %board.0, i32 0, i32 1
  %61 = ptrtoint ptr %nr_parts to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_parts, align 4
  %call136 = call i32 @mtd_device_parse_register(ptr noundef %chip, ptr noundef null, ptr noundef null, ptr noundef %60, i32 noundef %62) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end135.cleanup_crit_edge, label %if.then138

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then138:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  call void @nand_cleanup(ptr noundef %chip) #6
  br label %no_dev

no_dev:                                           ; preds = %if.then138, %if.end131.no_dev_crit_edge
  %ret.0 = phi i32 [ %call.i219, %if.end131.no_dev_crit_edge ], [ %call136, %if.then138 ]
  %63 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clk, align 8
  call void @clk_disable(ptr noundef %64) #6
  call void @clk_unprepare(ptr noundef %64) #6
  br label %cleanup

cleanup:                                          ; preds = %no_dev, %if.end135.cleanup_crit_edge, %do.end129, %do.end119, %if.then14.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then9 ], [ %retval.0.i.ph, %do.end129 ], [ %ret.0, %no_dev ], [ %54, %do.end119 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then14.cleanup_crit_edge ], [ 0, %if.end135.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @orion_nand_cmd_ctrl(ptr nocapture noundef readonly %nc, i32 noundef %cmd, i32 noundef %ctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %nc, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cmd)
  %cmp = icmp eq i32 %cmd, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %ctrl, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cle = getelementptr inbounds %struct.orion_nand_data, ptr %1, i32 0, i32 3
  br label %if.end9

if.else:                                          ; preds = %if.end
  %and2 = and i32 %ctrl, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %if.then4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %ale = getelementptr inbounds %struct.orion_nand_data, ptr %1, i32 0, i32 2
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.then1
  %conv.pn.in.in = phi ptr [ %cle, %if.then1 ], [ %ale, %if.then4 ]
  %2 = ptrtoint ptr %conv.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %2)
  %conv.pn.in = load i8, ptr %conv.pn.in.in, align 1
  %conv.pn = zext i8 %conv.pn.in to i32
  %offs.0 = shl nuw i32 1, %conv.pn
  %options = getelementptr inbounds %struct.nand_chip, ptr %nc, i32 0, i32 6
  %3 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %options, align 8
  %and10 = lshr i32 %4, 1
  %and10.lobit = and i32 %and10, 1
  %spec.select = shl i32 %offs.0, %and10.lobit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %conv15 = trunc i32 %cmd to i8
  %IO_ADDR_W = getelementptr inbounds %struct.nand_chip, ptr %nc, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %IO_ADDR_W to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %IO_ADDR_W, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %spec.select
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv15) #6, !srcloc !58
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @orion_nand_read_buf(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %legacy = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %legacy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %legacy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not29 = icmp eq i32 %len, 0
  %2 = ptrtoint ptr %buf to i32
  %and30 = and i32 %2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool1.not31 = icmp eq i32 %and30, 0
  %or.cond32 = or i1 %tobool.not29, %tobool1.not31
  br i1 %or.cond32, label %entry.while.cond3.preheader_crit_edge, label %while.body

entry.while.cond3.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond3.preheader

while.cond3.preheader:                            ; preds = %while.body.7, %while.body.6.while.cond3.preheader_crit_edge, %while.body.5.while.cond3.preheader_crit_edge, %while.body.4.while.cond3.preheader_crit_edge, %while.body.3.while.cond3.preheader_crit_edge, %while.body.2.while.cond3.preheader_crit_edge, %while.body.1.while.cond3.preheader_crit_edge, %while.body.while.cond3.preheader_crit_edge, %entry.while.cond3.preheader_crit_edge
  %len.addr.0.lcssa = phi i32 [ %len, %entry.while.cond3.preheader_crit_edge ], [ %dec, %while.body.while.cond3.preheader_crit_edge ], [ %dec.1, %while.body.1.while.cond3.preheader_crit_edge ], [ %dec.2, %while.body.2.while.cond3.preheader_crit_edge ], [ %dec.3, %while.body.3.while.cond3.preheader_crit_edge ], [ %dec.4, %while.body.4.while.cond3.preheader_crit_edge ], [ %dec.5, %while.body.5.while.cond3.preheader_crit_edge ], [ %dec.6, %while.body.6.while.cond3.preheader_crit_edge ], [ %dec.7, %while.body.7 ]
  %buf.addr.0.lcssa = phi ptr [ %buf, %entry.while.cond3.preheader_crit_edge ], [ %incdec.ptr, %while.body.while.cond3.preheader_crit_edge ], [ %incdec.ptr.1, %while.body.1.while.cond3.preheader_crit_edge ], [ %incdec.ptr.2, %while.body.2.while.cond3.preheader_crit_edge ], [ %incdec.ptr.3, %while.body.3.while.cond3.preheader_crit_edge ], [ %incdec.ptr.4, %while.body.4.while.cond3.preheader_crit_edge ], [ %incdec.ptr.5, %while.body.5.while.cond3.preheader_crit_edge ], [ %incdec.ptr.6, %while.body.6.while.cond3.preheader_crit_edge ], [ %incdec.ptr.7, %while.body.7 ]
  %div = sdiv i32 %len.addr.0.lcssa, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %len.addr.0.lcssa)
  %cmp36 = icmp sgt i32 %len.addr.0.lcssa, 7
  br i1 %cmp36, label %while.cond3.preheader.while.body4_crit_edge, label %while.cond3.preheader.while.end5_crit_edge

while.cond3.preheader.while.end5_crit_edge:       ; preds = %while.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end5

while.cond3.preheader.while.body4_crit_edge:      ; preds = %while.cond3.preheader
  br label %while.body4

while.body:                                       ; preds = %entry
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %incdec.ptr = getelementptr i8, ptr %buf, i32 1
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %buf, align 1
  %dec = add i32 %len, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %5 = ptrtoint ptr %incdec.ptr to i32
  %and = and i32 %5, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %while.body.while.cond3.preheader_crit_edge, label %while.body.1

while.body.while.cond3.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond3.preheader

while.body.1:                                     ; preds = %while.body
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %incdec.ptr.1 = getelementptr i8, ptr %buf, i32 2
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %incdec.ptr, align 1
  %dec.1 = add i32 %len, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %tobool.not.1 = icmp eq i32 %dec.1, 0
  %8 = ptrtoint ptr %incdec.ptr.1 to i32
  %and.1 = and i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool1.not.1 = icmp eq i32 %and.1, 0
  %or.cond.1 = or i1 %tobool.not.1, %tobool1.not.1
  br i1 %or.cond.1, label %while.body.1.while.cond3.preheader_crit_edge, label %while.body.2

while.body.1.while.cond3.preheader_crit_edge:     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond3.preheader

while.body.2:                                     ; preds = %while.body.1
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %incdec.ptr.2 = getelementptr i8, ptr %buf, i32 3
  %10 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %incdec.ptr.1, align 1
  %dec.2 = add i32 %len, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.2)
  %tobool.not.2 = icmp eq i32 %dec.2, 0
  %11 = ptrtoint ptr %incdec.ptr.2 to i32
  %and.2 = and i32 %11, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool1.not.2 = icmp eq i32 %and.2, 0
  %or.cond.2 = or i1 %tobool.not.2, %tobool1.not.2
  br i1 %or.cond.2, label %while.body.2.while.cond3.preheader_crit_edge, label %while.body.3

while.body.2.while.cond3.preheader_crit_edge:     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond3.preheader

while.body.3:                                     ; preds = %while.body.2
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %incdec.ptr.3 = getelementptr i8, ptr %buf, i32 4
  %13 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %incdec.ptr.2, align 1
  %dec.3 = add i32 %len, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.3)
  %tobool.not.3 = icmp eq i32 %dec.3, 0
  %14 = ptrtoint ptr %incdec.ptr.3 to i32
  %and.3 = and i32 %14, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool1.not.3 = icmp eq i32 %and.3, 0
  %or.cond.3 = or i1 %tobool.not.3, %tobool1.not.3
  br i1 %or.cond.3, label %while.body.3.while.cond3.preheader_crit_edge, label %while.body.4

while.body.3.while.cond3.preheader_crit_edge:     ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond3.preheader

while.body.4:                                     ; preds = %while.body.3
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %incdec.ptr.4 = getelementptr i8, ptr %buf, i32 5
  %16 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %incdec.ptr.3, align 1
  %dec.4 = add i32 %len, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.4)
  %tobool.not.4 = icmp eq i32 %dec.4, 0
  %17 = ptrtoint ptr %incdec.ptr.4 to i32
  %and.4 = and i32 %17, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool1.not.4 = icmp eq i32 %and.4, 0
  %or.cond.4 = or i1 %tobool.not.4, %tobool1.not.4
  br i1 %or.cond.4, label %while.body.4.while.cond3.preheader_crit_edge, label %while.body.5

while.body.4.while.cond3.preheader_crit_edge:     ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond3.preheader

while.body.5:                                     ; preds = %while.body.4
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %incdec.ptr.5 = getelementptr i8, ptr %buf, i32 6
  %19 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %incdec.ptr.4, align 1
  %dec.5 = add i32 %len, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.5)
  %tobool.not.5 = icmp eq i32 %dec.5, 0
  %20 = ptrtoint ptr %incdec.ptr.5 to i32
  %and.5 = and i32 %20, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool1.not.5 = icmp eq i32 %and.5, 0
  %or.cond.5 = or i1 %tobool.not.5, %tobool1.not.5
  br i1 %or.cond.5, label %while.body.5.while.cond3.preheader_crit_edge, label %while.body.6

while.body.5.while.cond3.preheader_crit_edge:     ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond3.preheader

while.body.6:                                     ; preds = %while.body.5
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %incdec.ptr.6 = getelementptr i8, ptr %buf, i32 7
  %22 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %incdec.ptr.5, align 1
  %dec.6 = add i32 %len, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.6)
  %tobool.not.6 = icmp eq i32 %dec.6, 0
  %23 = ptrtoint ptr %incdec.ptr.6 to i32
  %and.6 = and i32 %23, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool1.not.6 = icmp eq i32 %and.6, 0
  %or.cond.6 = or i1 %tobool.not.6, %tobool1.not.6
  br i1 %or.cond.6, label %while.body.6.while.cond3.preheader_crit_edge, label %while.body.7

while.body.6.while.cond3.preheader_crit_edge:     ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond3.preheader

while.body.7:                                     ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #8
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %incdec.ptr.7 = getelementptr i8, ptr %buf, i32 8
  %25 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %incdec.ptr.6, align 1
  %dec.7 = add i32 %len, -8
  br label %while.cond3.preheader

while.body4:                                      ; preds = %while.body4.while.body4_crit_edge, %while.cond3.preheader.while.body4_crit_edge
  %i.037 = phi i32 [ %inc, %while.body4.while.body4_crit_edge ], [ 0, %while.cond3.preheader.while.body4_crit_edge ]
  %26 = tail call i64 asm sideeffect "ldrd\09$0, [$1]", "=&{r2},r"(ptr %1) #6, !srcloc !61
  %inc = add nuw nsw i32 %i.037, 1
  %arrayidx = getelementptr i64, ptr %buf.addr.0.lcssa, i32 %i.037
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx, align 8
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %while.end5.loopexit, label %while.body4.while.body4_crit_edge

while.body4.while.body4_crit_edge:                ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body4

while.end5.loopexit:                              ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo = shl nsw i32 %div, 3
  br label %while.end5

while.end5:                                       ; preds = %while.end5.loopexit, %while.cond3.preheader.while.end5_crit_edge
  %i.0.lcssa = phi i32 [ 0, %while.cond3.preheader.while.end5_crit_edge ], [ %phi.bo, %while.end5.loopexit ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %len.addr.0.lcssa)
  %cmp739 = icmp slt i32 %i.0.lcssa, %len.addr.0.lcssa
  br i1 %cmp739, label %while.end5.while.body8_crit_edge, label %while.end5.while.end16_crit_edge

while.end5.while.end16_crit_edge:                 ; preds = %while.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end16

while.end5.while.body8_crit_edge:                 ; preds = %while.end5
  br label %while.body8

while.body8:                                      ; preds = %while.body8.while.body8_crit_edge, %while.end5.while.body8_crit_edge
  %i.140 = phi i32 [ %inc14, %while.body8.while.body8_crit_edge ], [ %i.0.lcssa, %while.end5.while.body8_crit_edge ]
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %inc14 = add i32 %i.140, 1
  %arrayidx15 = getelementptr i8, ptr %buf.addr.0.lcssa, i32 %i.140
  %29 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx15, align 1
  %exitcond41.not = icmp eq i32 %inc14, %len.addr.0.lcssa
  br i1 %exitcond41.not, label %while.body8.while.end16_crit_edge, label %while.body8.while.body8_crit_edge

while.body8.while.body8_crit_edge:                ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body8

while.body8.while.end16_crit_edge:                ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end16

while.end16:                                      ; preds = %while.body8.while.end16_crit_edge, %while.end5.while.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @orion_nand_attach_chip(ptr nocapture noundef %chip) #5 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_nand_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.orion_nand_info, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @mtd_device_unregister(ptr noundef %chip1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !63

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 224, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %chip1) #6
  %clk = getelementptr inbounds %struct.orion_nand_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_orion_nand__198_249_orion_nand_driver_init6, !1, !"__initcall__kmod_orion_nand__198_249_orion_nand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/orion_nand.c", i32 249, i32 1}
!2 = !{ptr @__exitcall_orion_nand_driver_exit, !1, !"__exitcall_orion_nand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file199, !4, !"__UNIQUE_ID_file199", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/orion_nand.c", i32 251, i32 1}
!5 = !{ptr @__UNIQUE_ID_license200, !4, !"__UNIQUE_ID_license200", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author201, !7, !"__UNIQUE_ID_author201", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/orion_nand.c", i32 252, i32 1}
!8 = !{ptr @__UNIQUE_ID_description202, !9, !"__UNIQUE_ID_description202", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/orion_nand.c", i32 253, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias203, !11, !"__UNIQUE_ID_alias203", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/orion_nand.c", i32 254, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/orion_nand.c", i32 133, i32 48}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/orion_nand.c", i32 137, i32 48}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/orion_nand.c", i32 142, i32 7}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/orion_nand.c", i32 147, i32 7}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/raw/orion_nand.c", i32 164, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/nand/raw/orion_nand.c", i32 181, i32 4}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @orion_nand_probe._entry, !24, !"_entry", i1 false, i1 false}
!29 = !{ptr @orion_nand_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/raw/orion_nand.c", i32 188, i32 3}
!32 = !{ptr @orion_nand_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @orion_nand_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/raw/orion_nand.c", i32 203, i32 14}
!36 = !{ptr @nand_controller_init.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @orion_nand_ops, !40, !"orion_nand_ops", i1 false, i1 false}
!40 = !{!"../drivers/mtd/nand/raw/orion_nand.c", i32 95, i32 41}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!43 = !{ptr @orion_nand_driver, !44, !"orion_nand_driver", i1 false, i1 false}
!44 = !{!"../drivers/mtd/nand/raw/orion_nand.c", i32 241, i32 31}
!45 = !{ptr @orion_nand_of_match_table, !46, !"orion_nand_of_match_table", i1 false, i1 false}
!46 = !{!"../drivers/mtd/nand/raw/orion_nand.c", i32 234, i32 34}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i64 2153172414}
!58 = !{i64 5620891}
!59 = !{i64 5621286}
!60 = !{i64 2153172691}
!61 = !{i64 1791}
!62 = !{i64 2153172905}
!63 = !{!"branch_weights", i32 2000, i32 1}
