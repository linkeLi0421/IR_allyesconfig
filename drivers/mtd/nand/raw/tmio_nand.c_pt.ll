; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/tmio_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/tmio_nand.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
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
%struct.tmio_nand = type { %struct.nand_controller, %struct.nand_chip, %struct.completion, ptr, ptr, ptr, i32, i32, i8, i8 }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.92, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.86 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.86 = type { %struct.mtd_part, [160 x i8] }
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
%struct.anon.92 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.tmio_nand_data = type { ptr, ptr, i32, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }

@__initcall__kmod_tmio_nand__315_525_tmio_driver_init6 = internal global ptr @tmio_driver_init, section ".initcall6.init", align 4
@tmio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tmio_probe, ptr @tmio_remove, ptr null, ptr @tmio_suspend, ptr @tmio_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tmio_driver_exit = internal global ptr @tmio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file316 = internal constant [46 x i8] c"tmio_nand.file=drivers/mtd/nand/raw/tmio_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license317 = internal constant [25 x i8] c"tmio_nand.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author318 = internal constant [73 x i8] c"tmio_nand.author=Ian Molton, Dirk Opfer, Chris Humbert, Dmitry Baryshkov\00", section ".modinfo", align 1
@__UNIQUE_ID_description319 = internal constant [72 x i8] c"tmio_nand.description=NAND flash driver on Toshiba Mobile IO controller\00", section ".modinfo", align 1
@__UNIQUE_ID_alias320 = internal constant [35 x i8] c"tmio_nand.alias=platform:tmio-nand\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tmio-nand\00", [22 x i8] zeroinitializer }, align 32
@tmio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 391, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NULL platform data!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tmio_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mtd/nand/raw/tmio_nand.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tmio_probe._entry_ptr = internal global ptr @tmio_probe._entry, section ".printk_index", align 4
@tmio_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @tmio_attach_chip, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@tmio_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 444, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request_irq error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@tmio_probe._entry_ptr.9 = internal global ptr @tmio_probe._entry.6, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tmio_nand_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"still busy after 400 ms\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tmio_nand_wait\00", [17 x i8] zeroinitializer }, align 32
@tmio_nand_wait._entry_ptr = internal global ptr @tmio_nand_wait._entry, section ".printk_index", align 4
@tmio_nand_wait._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timeout waiting for interrupt\0A\00", [33 x i8] zeroinitializer }, align 32
@tmio_nand_wait._entry_ptr.16 = internal global ptr @tmio_nand_wait._entry.14, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"tmio_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 516, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 517, i32 17 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 391, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"tmio_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 373, i32 41 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 444, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 87, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1105, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 204, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [36 x i8] c"../drivers/mtd/nand/raw/tmio_nand.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 208, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_alias320, ptr @__UNIQUE_ID_author318, ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_file316, ptr @__UNIQUE_ID_license317, ptr @__exitcall_tmio_driver_exit, ptr @__initcall__kmod_tmio_nand__315_525_tmio_driver_init6, ptr @tmio_driver_exit, ptr @tmio_nand_wait._entry, ptr @tmio_nand_wait._entry.14, ptr @tmio_nand_wait._entry_ptr, ptr @tmio_nand_wait._entry_ptr.16, ptr @tmio_probe._entry, ptr @tmio_probe._entry.6, ptr @tmio_probe._entry_ptr, ptr @tmio_probe._entry_ptr.9, ptr @tmio_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tmio_ops, ptr @.str.7, ptr @.str.8, ptr @init_completion.__key, ptr @.str.10, ptr @nand_controller_init.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmio_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmio_nand_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmio_nand_wait._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tmio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tmio_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tmio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @tmio_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmio_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call2 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 0) #7
  %call3 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 1) #7
  %call4 = tail call i32 @platform_get_irq(ptr noundef %dev, i32 noundef 0) #7
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2344, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %comp = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %comp, align 4
  %wait.i = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #7
  %dev11 = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev11, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %chip = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 1
  %name = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 13
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %name, align 8
  %parent = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 56, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %parent, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @nand_controller_init.__key) #7
  %ops = getelementptr inbounds %struct.nand_controller, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tmio_ops, ptr %ops, align 4
  %controller17 = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 1, i32 32
  %8 = ptrtoint ptr %controller17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %controller17, align 4
  %9 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call3, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %10
  %add.i = add i32 %sub.i, %12
  %call20 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %10, i32 noundef %add.i) #7
  %ccr21 = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %ccr21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call20, ptr %ccr21, align 4
  %tobool23.not = icmp eq ptr %call20, null
  br i1 %tobool23.not, label %if.end10.cleanup_crit_edge, label %if.end25

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call2, align 4
  %and = and i32 %15, 1048575
  %fcr_base = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %fcr_base to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %fcr_base, align 4
  %17 = load i32, ptr %call2, align 4
  %end.i159 = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %18 = ptrtoint ptr %end.i159 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %end.i159, align 4
  %sub.i160 = sub i32 1, %17
  %add.i161 = add i32 %sub.i160, %19
  %call30 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %17, i32 noundef %add.i161) #7
  %fcr31 = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %fcr31 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call30, ptr %fcr31, align 8
  %tobool33.not = icmp eq ptr %call30, null
  br i1 %tobool33.not, label %if.end25.cleanup_crit_edge, label %if.end35

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  %call36 = tail call fastcc i32 @tmio_hw_init(ptr noundef %dev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %21 = ptrtoint ptr %fcr31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fcr31, align 8
  %legacy = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %legacy to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %legacy, align 8
  %IO_ADDR_W = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 1, i32 5, i32 1
  %24 = ptrtoint ptr %IO_ADDR_W to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %IO_ADDR_W, align 4
  %cmd_ctrl = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 1, i32 5, i32 7
  %25 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @tmio_nand_hwcontrol, ptr %cmd_ctrl, align 4
  %dev_ready = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 1, i32 5, i32 9
  %26 = ptrtoint ptr %dev_ready to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @tmio_nand_dev_ready, ptr %dev_ready, align 4
  %read_byte = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 1, i32 5, i32 3
  %27 = ptrtoint ptr %read_byte to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @tmio_nand_read_byte, ptr %read_byte, align 4
  %write_buf = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 1, i32 5, i32 5
  %28 = ptrtoint ptr %write_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @tmio_nand_write_buf, ptr %write_buf, align 4
  %read_buf = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 1, i32 5, i32 6
  %29 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @tmio_nand_read_buf, ptr %read_buf, align 8
  br i1 %cmp, label %if.end39.if.end51_crit_edge, label %if.then49

if.end39.if.end51_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then49:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %badblock_pattern50 = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 1, i32 15
  %32 = ptrtoint ptr %badblock_pattern50 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %badblock_pattern50, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end39.if.end51_crit_edge
  %chip_delay = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 1, i32 5, i32 15
  %33 = ptrtoint ptr %chip_delay to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 15, ptr %chip_delay, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end51.dev_name.exit_crit_edge

if.end51.dev_name.exit_crit_edge:                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end51.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %37, %if.end.i ], [ %35, %if.end51.dev_name.exit_crit_edge ]
  %call.i162 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call4, ptr noundef nonnull @tmio_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool57.not = icmp eq i32 %call.i162, 0
  br i1 %tobool57.not, label %if.end63, label %do.end61

do.end61:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %call.i162) #10
  br label %err_irq

if.end63:                                         ; preds = %dev_name.exit
  %irq64 = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 7
  %38 = ptrtoint ptr %irq64 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call4, ptr %irq64, align 8
  %waitfunc = getelementptr inbounds %struct.tmio_nand, ptr %call.i, i32 0, i32 1, i32 5, i32 10
  %39 = ptrtoint ptr %waitfunc to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @tmio_nand_wait, ptr %waitfunc, align 8
  %call.i163 = tail call i32 @nand_scan_with_ids(ptr noundef %chip, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %tobool67.not = icmp eq i32 %call.i163, 0
  br i1 %tobool67.not, label %if.end69, label %if.end63.err_irq_crit_edge

if.end63.err_irq_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end69:                                         ; preds = %if.end63
  br i1 %cmp, label %if.end69.cond.end79_crit_edge, label %cond.true77

if.end69.cond.end79_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end79

cond.true77:                                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %part_parsers = getelementptr inbounds %struct.tmio_nand_data, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %part_parsers to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %part_parsers, align 4
  %partition = getelementptr inbounds %struct.tmio_nand_data, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %partition to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %partition, align 4
  %num_partitions = getelementptr inbounds %struct.tmio_nand_data, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %num_partitions to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_partitions, align 4
  br label %cond.end79

cond.end79:                                       ; preds = %cond.true77, %if.end69.cond.end79_crit_edge
  %cond75171 = phi ptr [ %43, %cond.true77 ], [ null, %if.end69.cond.end79_crit_edge ]
  %cond167170 = phi ptr [ %41, %cond.true77 ], [ null, %if.end69.cond.end79_crit_edge ]
  %cond80 = phi i32 [ %45, %cond.true77 ], [ 0, %if.end69.cond.end79_crit_edge ]
  %call81 = tail call i32 @mtd_device_parse_register(ptr noundef %chip, ptr noundef %cond167170, ptr noundef null, ptr noundef %cond75171, i32 noundef %cond80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %cond.end79.cleanup_crit_edge, label %if.end84

cond.end79.cleanup_crit_edge:                     ; preds = %cond.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end84:                                         ; preds = %cond.end79
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nand_cleanup(ptr noundef %chip) #7
  br label %err_irq

err_irq:                                          ; preds = %if.end84, %if.end63.err_irq_crit_edge, %do.end61
  %retval5.0 = phi i32 [ %call.i162, %do.end61 ], [ %call.i163, %if.end63.err_irq_crit_edge ], [ %call81, %if.end84 ]
  %mfd_cell.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 10
  %46 = ptrtoint ptr %mfd_cell.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mfd_cell.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %fcr31 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fcr31, align 8
  %add.ptr.i = getelementptr i8, ptr %49, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 8) #7, !srcloc !56
  %disable.i = getelementptr inbounds %struct.mfd_cell, ptr %47, i32 0, i32 4
  %50 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %disable.i, align 8
  %tobool.not.i164 = icmp eq ptr %51, null
  br i1 %tobool.not.i164, label %err_irq.cleanup_crit_edge, label %if.then.i

err_irq.cleanup_crit_edge:                        ; preds = %err_irq
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %err_irq
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 %51(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %err_irq.cleanup_crit_edge, %cond.end79.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ -5, %if.end10.cleanup_crit_edge ], [ -5, %if.end25.cleanup_crit_edge ], [ %call36, %if.end35.cleanup_crit_edge ], [ 0, %cond.end79.cleanup_crit_edge ], [ %retval5.0, %err_irq.cleanup_crit_edge ], [ %retval5.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmio_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip1 = getelementptr inbounds %struct.tmio_nand, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @mtd_device_unregister(ptr noundef %chip1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !57

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 479, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %chip1) #7
  %mfd_cell.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 10
  %2 = ptrtoint ptr %mfd_cell.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfd_cell.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %fcr.i = getelementptr inbounds %struct.tmio_nand, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %fcr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fcr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 8) #7, !srcloc !56
  %disable.i = getelementptr inbounds %struct.mfd_cell, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.tmio_hw_stop.exit_crit_edge, label %if.then.i

if.end.tmio_hw_stop.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tmio_hw_stop.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 %7(ptr noundef %dev) #7
  br label %tmio_hw_stop.exit

tmio_hw_stop.exit:                                ; preds = %if.then.i, %if.end.tmio_hw_stop.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmio_suspend(ptr noundef %dev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mfd_cell.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd_cell.i, align 4
  %suspend = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 %3(ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mfd_cell.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %fcr.i = getelementptr inbounds %struct.tmio_nand, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %fcr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fcr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 8) #7, !srcloc !56
  %disable.i = getelementptr inbounds %struct.mfd_cell, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disable.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.tmio_hw_stop.exit_crit_edge, label %if.then.i

if.end.tmio_hw_stop.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tmio_hw_stop.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 %11(ptr noundef %dev) #7
  br label %tmio_hw_stop.exit

tmio_hw_stop.exit:                                ; preds = %if.then.i, %if.end.tmio_hw_stop.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmio_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mfd_cell.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd_cell.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call fastcc i32 @tmio_hw_init(ptr noundef %dev, ptr noundef %3)
  %resume = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resume, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 %5(ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tmio_hw_init(ptr noundef %dev, ptr nocapture noundef readonly %tmio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mfd_cell.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %mfd_cell.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mfd_cell.i, align 4
  %enable = getelementptr inbounds %struct.mfd_cell, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  %call2 = tail call i32 %3(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.do.body_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %ccr = getelementptr inbounds %struct.tmio_nand, ptr %tmio, i32 0, i32 4
  %4 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ccr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 76
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -127) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %fcr_base = getelementptr inbounds %struct.tmio_nand, ptr %tmio, i32 0, i32 6
  %6 = ptrtoint ptr %fcr_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fcr_base, align 4
  %conv = trunc i32 %7 to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %9 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ccr, align 4
  %add.ptr10 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 %8) #7, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %fcr_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fcr_base, align 4
  %shr = lshr i32 %12, 16
  %conv15 = trunc i32 %shr to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv15)
  %14 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ccr, align 4
  %add.ptr18 = getelementptr i8, ptr %15, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr18, i16 %13) #7, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ccr, align 4
  %add.ptr23 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23, i8 2) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ccr, align 4
  %add.ptr28 = getelementptr i8, ptr %19, i32 98
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28, i8 2) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ccr, align 4
  %add.ptr33 = getelementptr i8, ptr %21, i32 99
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33, i8 2) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %fcr = getelementptr inbounds %struct.tmio_nand, ptr %tmio, i32 0, i32 5
  %22 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fcr, align 8
  %add.ptr37 = getelementptr i8, ptr %23, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37, i8 15) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fcr, align 8
  %add.ptr42 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42, i8 12) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fcr, align 8
  %add.ptr47 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr47, i8 -107) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fcr, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 -1) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fcr, align 8
  %add.ptr57 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr57, i8 0) #7, !srcloc !56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tmio_nand_hwcontrol(ptr nocapture noundef %chip, i32 noundef %cmd, i32 noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ctrl, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then:                                          ; preds = %entry
  %and2 = and i32 %ctrl, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.do.body_crit_edge, label %if.then4

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %and5 = and i32 %ctrl, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %. = select i1 %tobool6.not, i8 -108, i8 -107
  %0 = trunc i32 %ctrl to i8
  %1 = lshr i8 %0, 1
  %2 = and i8 %1, 2
  %3 = or i8 %2, %.
  br label %do.body

do.body:                                          ; preds = %if.then4, %if.then.do.body_crit_edge
  %mode.1 = phi i8 [ 0, %if.then.do.body_crit_edge ], [ %3, %if.then4 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %fcr = getelementptr i8, ptr %chip, i32 2232
  %4 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fcr, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %mode.1) #7, !srcloc !56
  %read_good = getelementptr i8, ptr %chip, i32 2245
  %6 = ptrtoint ptr %read_good to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %read_good, align 1
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %read_good, align 1
  br label %if.end25

if.end25:                                         ; preds = %do.body, %entry.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, -1
  br i1 %cmp.not, label %if.end25.if.end32_crit_edge, label %do.body28

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.body28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %conv31 = trunc i32 %cmd to i8
  %IO_ADDR_W = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %IO_ADDR_W to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %IO_ADDR_W, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %conv31) #7, !srcloc !56
  br label %if.end32

if.end32:                                         ; preds = %do.body28, %if.end25.if.end32_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmio_nand_dev_ready(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcr = getelementptr i8, ptr %chip, i32 2232
  %0 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 5
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %3 = xor i8 %2, -1
  %4 = lshr i8 %3, 7
  %.not = zext i8 %4 to i32
  ret i32 %.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @tmio_nand_read_byte(ptr nocapture noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %read_good = getelementptr i8, ptr %chip, i32 2245
  %0 = ptrtoint ptr %read_good to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %read_good, align 1
  %bf.set = xor i8 %bf.load, -128
  store i8 %bf.set, ptr %read_good, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read = getelementptr i8, ptr %chip, i32 2244
  %1 = ptrtoint ptr %read to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %read, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fcr = getelementptr i8, ptr %chip, i32 2232
  %3 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fcr, align 8
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #7, !srcloc !74
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %shr = lshr i16 %6, 8
  %conv5 = trunc i16 %shr to i8
  %read6 = getelementptr i8, ptr %chip, i32 2244
  %7 = ptrtoint ptr %read6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %read6, align 4
  %conv7 = trunc i16 %6 to i8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %2, %if.then ], [ %conv7, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tmio_nand_write_buf(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcr = getelementptr i8, ptr %chip, i32 2232
  %0 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcr, align 8
  %shr = ashr i32 %len, 1
  tail call void @__raw_writesw(ptr noundef %1, ptr noundef %buf, i32 noundef %shr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tmio_nand_read_buf(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fcr = getelementptr i8, ptr %chip, i32 2232
  %0 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcr, align 8
  %shr = ashr i32 %len, 1
  tail call void @__raw_readsw(ptr noundef %1, ptr noundef %buf, i32 noundef %shr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmio_irq(i32 noundef %irq, ptr noundef %__tmio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %fcr = getelementptr inbounds %struct.tmio_nand, ptr %__tmio, i32 0, i32 5
  %0 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #7, !srcloc !56
  %comp = getelementptr inbounds %struct.tmio_nand, ptr %__tmio, i32 0, i32 2
  tail call void @complete(ptr noundef %comp) #7
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmio_nand_wait(ptr noundef %nand_chip) #2 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %fcr = getelementptr i8, ptr %nand_chip, i32 2232
  %1 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fcr, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 15) #7, !srcloc !56
  %comp = getelementptr i8, ptr %nand_chip, i32 2168
  %3 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %comp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fcr, align 8
  %add.ptr6 = getelementptr i8, ptr %5, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 -127) #7, !srcloc !56
  %call9 = tail call i32 @wait_for_completion_timeout(ptr noundef %comp, i32 noundef 40) #7
  %6 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fcr, align 8
  %add.ptr.i55 = getelementptr i8, ptr %7, i32 5
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i55) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp slt i8 %8, 0
  br i1 %tobool.not, label %do.body14, label %if.else, !prof !80

do.body14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fcr, align 8
  %add.ptr18 = getelementptr i8, ptr %10, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18, i8 0) #7, !srcloc !56
  br label %if.end43.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool23.not = icmp eq i32 %call9, 0
  br i1 %tobool23.not, label %do.body33, label %if.else.if.end43_crit_edge, !prof !80

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.body33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fcr, align 8
  %add.ptr37 = getelementptr i8, ptr %12, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr37, i8 0) #7, !srcloc !56
  br label %if.end43.sink.split

if.end43.sink.split:                              ; preds = %do.body33, %do.body14
  %.str.15.sink = phi ptr [ @.str.15, %do.body33 ], [ @.str.12, %do.body14 ]
  %dev41 = getelementptr i8, ptr %nand_chip, i32 2224
  %13 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev41, align 8
  %dev42 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev42, ptr noundef nonnull %.str.15.sink) #10
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %if.else.if.end43_crit_edge
  %call44 = call i32 @nand_status_op(ptr noundef %nand_chip, ptr noundef nonnull %status) #7
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %status, align 1
  %conv = zext i8 %16 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #7
  ret i32 %conv
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
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tmio_attach_chip(ptr nocapture noundef %chip) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %0 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 512, ptr %size, align 8
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %3 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6, ptr %bytes, align 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %4 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %strength, align 4
  %hwctl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %5 = ptrtoint ptr %hwctl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tmio_nand_enable_hwecc, ptr %hwctl, align 4
  %calculate = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 14
  %6 = ptrtoint ptr %calculate to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tmio_nand_calculate_ecc, ptr %calculate, align 8
  %correct = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %7 = ptrtoint ptr %correct to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tmio_nand_correct_data, ptr %correct, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tmio_nand_enable_hwecc(ptr nocapture noundef readonly %chip, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %fcr = getelementptr i8, ptr %chip, i32 2232
  %0 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -12) #7, !srcloc !56
  %2 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcr, align 8
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #7, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fcr, align 8
  %add.ptr10 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10, i8 -76) #7, !srcloc !56
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmio_nand_calculate_ecc(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %dat, ptr nocapture noundef writeonly %ecc_code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %fcr = getelementptr i8, ptr %chip, i32 2232
  %0 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fcr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -44) #7, !srcloc !56
  %2 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fcr, align 8
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #7, !srcloc !74
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %conv6 = trunc i16 %5 to i8
  %arrayidx = getelementptr i8, ptr %ecc_code, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv6, ptr %arrayidx, align 1
  %7 = lshr i16 %5, 8
  %conv7 = trunc i16 %7 to i8
  %8 = ptrtoint ptr %ecc_code to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv7, ptr %ecc_code, align 1
  %9 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fcr, align 8
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %10) #7, !srcloc !74
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %conv17 = trunc i16 %12 to i8
  %arrayidx18 = getelementptr i8, ptr %ecc_code, i32 2
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv17, ptr %arrayidx18, align 1
  %14 = lshr i16 %12, 8
  %conv20 = trunc i16 %14 to i8
  %arrayidx21 = getelementptr i8, ptr %ecc_code, i32 4
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv20, ptr %arrayidx21, align 1
  %16 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fcr, align 8
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #7, !srcloc !74
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %conv30 = trunc i16 %19 to i8
  %arrayidx31 = getelementptr i8, ptr %ecc_code, i32 3
  %20 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv30, ptr %arrayidx31, align 1
  %21 = lshr i16 %19, 8
  %conv33 = trunc i16 %21 to i8
  %arrayidx34 = getelementptr i8, ptr %ecc_code, i32 5
  %22 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv33, ptr %arrayidx34, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %fcr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fcr, align 8
  %add.ptr39 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr39, i8 -108) #7, !srcloc !56
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmio_nand_correct_data(ptr noundef %chip, ptr noundef %buf, ptr noundef %read_ecc, ptr noundef %calc_ecc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rawnand_sw_hamming_correct(ptr noundef %chip, ptr noundef %buf, ptr noundef %read_ecc, ptr noundef %calc_ecc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %buf, i32 256
  %add.ptr1 = getelementptr i8, ptr %read_ecc, i32 3
  %add.ptr2 = getelementptr i8, ptr %calc_ecc, i32 3
  %call3 = tail call i32 @rawnand_sw_hamming_correct(ptr noundef %chip, ptr noundef %add.ptr, ptr noundef %add.ptr1, ptr noundef %add.ptr2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  %add = select i1 %cmp4, i32 0, i32 %call
  %spec.select = add i32 %add, %call3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rawnand_sw_hamming_correct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_status_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !34, !35, !37, !39, !40, !41, !42, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_tmio_nand__315_525_tmio_driver_init6, !1, !"__initcall__kmod_tmio_nand__315_525_tmio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/tmio_nand.c", i32 525, i32 1}
!2 = !{ptr @__exitcall_tmio_driver_exit, !1, !"__exitcall_tmio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file316, !4, !"__UNIQUE_ID_file316", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/tmio_nand.c", i32 527, i32 1}
!5 = !{ptr @__UNIQUE_ID_license317, !4, !"__UNIQUE_ID_license317", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author318, !7, !"__UNIQUE_ID_author318", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/tmio_nand.c", i32 528, i32 1}
!8 = !{ptr @__UNIQUE_ID_description319, !9, !"__UNIQUE_ID_description319", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/tmio_nand.c", i32 529, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias320, !11, !"__UNIQUE_ID_alias320", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/tmio_nand.c", i32 530, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/tmio_nand.c", i32 517, i32 17}
!14 = !{ptr @tmio_driver, !15, !"tmio_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/tmio_nand.c", i32 516, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/tmio_nand.c", i32 391, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tmio_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tmio_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/tmio_nand.c", i32 444, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tmio_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @tmio_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @init_completion.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../include/linux/completion.h", i32 87, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nand_controller_init.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tmio_ops, !36, !"tmio_ops", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nand/raw/tmio_nand.c", i32 373, i32 41}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/nand/raw/tmio_nand.c", i32 204, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @tmio_nand_wait._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @tmio_nand_wait._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/nand/raw/tmio_nand.c", i32 208, i32 3}
!44 = !{ptr @tmio_nand_wait._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @tmio_nand_wait._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2156198075}
!56 = !{i64 4992157}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 2156192704}
!59 = !{i64 2156193056}
!60 = !{i64 4991734}
!61 = !{i64 2156193590}
!62 = !{i64 2156194106}
!63 = !{i64 2156194438}
!64 = !{i64 2156194770}
!65 = !{i64 2156195102}
!66 = !{i64 2156195439}
!67 = !{i64 2156195776}
!68 = !{i64 2156196113}
!69 = !{i64 2156196450}
!70 = !{i64 2156182819}
!71 = !{i64 2156183159}
!72 = !{i64 4992552}
!73 = !{i64 2156183489}
!74 = !{i64 4991934}
!75 = !{i64 2156189069}
!76 = !{i64 2156183765}
!77 = !{!"auto-init"}
!78 = !{i64 2156184097}
!79 = !{i64 2156184429}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i64 2156184820}
!82 = !{i64 2156186813}
!83 = !{i64 2156189549}
!84 = !{i64 2156189874}
!85 = !{i64 2156190150}
!86 = !{i64 2156190487}
!87 = !{i64 2156191064}
!88 = !{i64 2156191580}
!89 = !{i64 2156192096}
!90 = !{i64 2156192372}
