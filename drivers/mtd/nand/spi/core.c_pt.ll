; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/spi/core.c_pt.bc'
source_filename = "../drivers/mtd/nand/spi/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_mem_driver = type { %struct.spi_driver, ptr, ptr, ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_ops = type { ptr, ptr, ptr }
%struct.nand_ecc_engine = type { ptr }
%struct.spinand_manufacturer = type { i8, ptr, ptr, i32, ptr }
%struct.nand_ecc_engine_ops = type { ptr, ptr, ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.spi_mem_op = type { %struct.anon.73, %struct.anon.74, %struct.anon.75, %struct.anon.76 }
%struct.anon.73 = type { i8, i8, i8, i16 }
%struct.anon.74 = type { i8, i8, i8, i64 }
%struct.anon.75 = type { i8, i8, i8 }
%struct.anon.76 = type { i8, i8, i32, i32, %union.anon.77 }
%union.anon.77 = type { ptr }
%struct.spinand_device = type { %struct.nand_device, ptr, %struct.mutex, %struct.spinand_id, i32, %struct.anon.78, ptr, ptr, i32, %struct.spinand_ecc_info, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.70 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinand_id = type { [4 x i8], i32 }
%struct.anon.78 = type { ptr, ptr, ptr }
%struct.spinand_ecc_info = type { ptr, ptr }
%struct.spinand_info = type { ptr, %struct.spinand_devid, i32, %struct.nand_memory_organization, %struct.nand_ecc_props, %struct.spinand_ecc_info, %struct.anon.79, ptr }
%struct.spinand_devid = type { ptr, i8, i32 }
%struct.anon.79 = type { ptr, ptr, ptr }
%struct.spinand_op_variants = type { ptr, i32 }
%struct.spi_mem_dirmap_info = type { %struct.spi_mem_op, i64, i64 }
%struct.spi_mem = type { ptr, ptr, ptr }
%struct.spinand_dirmap = type { ptr, ptr }
%struct.spinand_manufacturer_ops = type { ptr, ptr }
%struct.nand_io_iter = type { %struct.nand_page_io_req, i32, i32, i32 }
%struct.nand_page_io_req = type { i32, %struct.nand_pos, i32, i32, %union.anon.71, i32, i32, %union.anon.72, i32 }
%struct.nand_pos = type { i32, i32, i32, i32, i32 }
%union.anon.71 = type { ptr }
%union.anon.72 = type { ptr }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.mtd_oob_region = type { i32, i32 }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mtd/nand/spi/core.c\00", [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_spinand__242_1357_spinand_drv_init6 = internal global ptr @spinand_drv_init, section ".initcall6.init", align 4
@spinand_drv = internal global { %struct.spi_mem_driver, [56 x i8] } { %struct.spi_mem_driver { %struct.spi_driver { ptr @spinand_ids, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spinand_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, ptr @spinand_probe, ptr @spinand_remove, ptr null }, [56 x i8] zeroinitializer }, align 32
@__exitcall_spinand_drv_exit = internal global ptr @spinand_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description243 = internal constant [39 x i8] c"spinand.description=SPI NAND framework\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [50 x i8] c"spinand.author=Peter Pan<peterpandong@micron.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [42 x i8] c"spinand.file=drivers/mtd/nand/spi/spinand\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [23 x i8] c"spinand.license=GPL v2\00", section ".modinfo", align 1
@spinand_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"spi-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi-nand\00", [23 x i8] zeroinitializer }, align 32
@spinand_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"spi-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@spinand_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&spinand->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@spinand_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 1215, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Failed to create direct mappings for read/write operations (err = %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spinand_init\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spinand_init._entry_ptr = internal global ptr @spinand_init._entry, section ".printk_index", align 4
@spinand_ops = internal constant { %struct.nand_ops, [20 x i8] } { %struct.nand_ops { ptr @spinand_erase, ptr @spinand_markbad, ptr @spinand_isbad }, [20 x i8] zeroinitializer }, align 32
@spinand_ondie_ecc_engine = internal global { %struct.nand_ecc_engine, [28 x i8] } { %struct.nand_ecc_engine { ptr @spinand_ondie_ecc_engine_ops }, [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@spinand_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 1090, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unknown raw ID %*phN\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spinand_detect\00", [17 x i8] zeroinitializer }, align 32
@spinand_detect._entry_ptr = internal global ptr @spinand_detect._entry, section ".printk_index", align 4
@spinand_detect._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str, i32 1096, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"SPI NANDs with more than one die must implement ->select_target()\0A\00", [61 x i8] zeroinitializer }, align 32
@spinand_detect._entry_ptr.12 = internal global ptr @spinand_detect._entry.10, section ".printk_index", align 4
@spinand_detect._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str, i32 1101, ptr @.str.15, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s SPI NAND was found.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@spinand_detect._entry_ptr.16 = internal global ptr @spinand_detect._entry.13, section ".printk_index", align 4
@spinand_detect._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.9, ptr @.str, i32 1105, ptr @.str.15, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%llu MiB, block size: %zu KiB, page size: %zu, OOB size: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@spinand_detect._entry_ptr.19 = internal global ptr @spinand_detect._entry.17, section ".printk_index", align 4
@gigadevice_spinand_manufacturer = external dso_local constant %struct.spinand_manufacturer, align 4
@macronix_spinand_manufacturer = external dso_local constant %struct.spinand_manufacturer, align 4
@micron_spinand_manufacturer = external dso_local constant %struct.spinand_manufacturer, align 4
@paragon_spinand_manufacturer = external dso_local constant %struct.spinand_manufacturer, align 4
@toshiba_spinand_manufacturer = external dso_local constant %struct.spinand_manufacturer, align 4
@winbond_spinand_manufacturer = external dso_local constant %struct.spinand_manufacturer, align 4
@spinand_init_flash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 1132, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to initialize the SPI NAND chip (err = %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spinand_init_flash\00", [45 x i8] zeroinitializer }, align 32
@spinand_init_flash._entry_ptr = internal global ptr @spinand_init_flash._entry, section ".printk_index", align 4
@spinand_ondie_ecc_engine_ops = internal global { %struct.nand_ecc_engine_ops, [16 x i8] } { %struct.nand_ecc_engine_ops { ptr @spinand_ondie_ecc_init_ctx, ptr @spinand_ondie_ecc_cleanup_ctx, ptr @spinand_ondie_ecc_prepare_io_req, ptr @spinand_ondie_ecc_finish_io_req }, [16 x i8] zeroinitializer }, align 32
@spinand_noecc_ooblayout = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @spinand_noecc_ooblayout_ecc, ptr @spinand_noecc_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 122, i32 6 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"spinand_drv\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1346, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"spinand_ids\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1332, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1350, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"spinand_of_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1339, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1294, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 464, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1213, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"spinand_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 892, i32 30 }
@___asan_gen_.64 = private unnamed_addr constant [25 x i8] c"spinand_ondie_ecc_engine\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 329, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1089, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1095, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1100, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1102, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1130, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [29 x i8] c"spinand_ondie_ecc_engine_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 322, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant [24 x i8] c"spinand_noecc_ooblayout\00", align 1
@___asan_gen_.110 = private constant [31 x i8] c"../drivers/mtd/nand/spi/core.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 251, i32 39 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_spinand_drv_exit, ptr @__initcall__kmod_spinand__242_1357_spinand_drv_init6, ptr @spinand_detect._entry, ptr @spinand_detect._entry.10, ptr @spinand_detect._entry.13, ptr @spinand_detect._entry.17, ptr @spinand_detect._entry_ptr, ptr @spinand_detect._entry_ptr.12, ptr @spinand_detect._entry_ptr.16, ptr @spinand_detect._entry_ptr.19, ptr @spinand_drv_exit, ptr @spinand_init._entry, ptr @spinand_init._entry_ptr, ptr @spinand_init_flash._entry, ptr @spinand_init_flash._entry_ptr, ptr @.str, ptr @spinand_drv, ptr @spinand_ids, ptr @.str.1, ptr @spinand_of_ids, ptr @spinand_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @spinand_ops, ptr @spinand_ondie_ecc_engine, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @spinand_ondie_ecc_engine_ops, ptr @spinand_noecc_ooblayout], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spinand_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spinand_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spinand_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spinand_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spinand_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spinand_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spinand_ondie_ecc_engine to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spinand_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spinand_detect._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spinand_detect._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spinand_detect._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spinand_init_flash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spinand_ondie_ecc_engine_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spinand_noecc_ooblayout to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spinand_upd_cfg(ptr nocapture noundef readonly %spinand, i8 noundef zeroext %mask, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  %op.i.i = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_target.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 8
  %0 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_target.i, align 8
  %ntargets.i = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ntargets.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp2.not.i = icmp ult i32 %1, %3
  br i1 %cmp2.not.i, label %if.end, label %spinand_get_cfg.exit, !prof !74

spinand_get_cfg.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg_cache.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 10
  %4 = ptrtoint ptr %cfg_cache.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg_cache.i, align 4
  %arrayidx.i = getelementptr i8, ptr %5, i32 %1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %neg = xor i8 %mask, -1
  %and = and i8 %7, %neg
  %or10 = or i8 %and, %val
  %8 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_target.i, align 8
  %10 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ntargets.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp2.not.i13 = icmp ult i32 %9, %11
  br i1 %cmp2.not.i13, label %if.end23.i17, label %do.end.i14, !prof !74

do.end.i14:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end23.i17:                                     ; preds = %if.end
  %12 = ptrtoint ptr %cfg_cache.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg_cache.i, align 4
  %arrayidx.i16 = getelementptr i8, ptr %13, i32 %9
  %14 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i16, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %or10)
  %cmp26.i = icmp eq i8 %15, %or10
  br i1 %cmp26.i, label %if.end23.i17.cleanup_crit_edge, label %if.end29.i

if.end23.i17.cleanup_crit_edge:                   ; preds = %if.end23.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29.i:                                       ; preds = %if.end23.i17
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i.i) #11
  %16 = call ptr @memset(ptr %op.i.i, i32 255, i32 48)
  %17 = ptrtoint ptr %op.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %op.i.i, align 8
  %buswidth.i.i = getelementptr inbounds %struct.anon.73, ptr %op.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %buswidth.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %buswidth.i.i, align 1
  %dtr.i.i = getelementptr inbounds %struct.anon.73, ptr %op.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %dtr.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 127, ptr %dtr.i.i, align 2
  %opcode.i.i = getelementptr inbounds %struct.anon.73, ptr %op.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 31, ptr %opcode.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %addr.i.i, align 8
  %buswidth2.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %buswidth2.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %buswidth2.i.i, align 1
  %dtr3.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %dtr3.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 127, ptr %dtr3.i.i, align 2
  %val7.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %val7.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 176, ptr %val7.i.i, align 8
  %dummy.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %dummy.i.i, align 8
  %buswidth9.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %buswidth9.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %buswidth9.i.i, align 1
  %dtr10.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %dtr10.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 127, ptr %dtr10.i.i, align 2
  %data.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %data.i.i, align 4
  %dtr15.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %dtr15.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 127, ptr %dtr15.i.i, align 1
  %dir.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %dir.i.i, align 8
  %nbytes19.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %nbytes19.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %nbytes19.i.i, align 4
  %buf.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3, i32 4
  %scratchbuf.i.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 13
  %32 = ptrtoint ptr %scratchbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %scratchbuf.i.i, align 8
  %34 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %buf.i.i, align 8
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %or10, ptr %33, align 1
  %spimem.i.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 1
  %36 = ptrtoint ptr %spimem.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spimem.i.i, align 8
  %call.i.i = call i32 @spi_mem_exec_op(ptr noundef %37, ptr noundef nonnull %op.i.i) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool31.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end29.i.cleanup_crit_edge

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end33.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %cfg_cache.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfg_cache.i, align 4
  %40 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cur_target.i, align 8
  %arrayidx36.i = getelementptr i8, ptr %39, i32 %41
  %42 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %or10, ptr %arrayidx36.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end33.i, %if.end29.i.cleanup_crit_edge, %if.end23.i17.cleanup_crit_edge, %do.end.i14, %spinand_get_cfg.exit
  %retval.0 = phi i32 [ -22, %spinand_get_cfg.exit ], [ -22, %do.end.i14 ], [ 0, %if.end33.i ], [ 0, %if.end23.i17.cleanup_crit_edge ], [ %call.i.i, %if.end29.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spinand_select_target(ptr noundef %spinand, i32 noundef %target) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ntargets = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %ntargets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ntargets, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %target)
  %cmp.not = icmp ugt i32 %1, %target
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !74

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end21:                                         ; preds = %entry
  %cur_target = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 8
  %2 = ptrtoint ptr %cur_target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_target, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %target)
  %cmp22 = icmp eq i32 %3, %target
  br i1 %cmp22, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp27 = icmp eq i32 %1, 1
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %cur_target to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %target, ptr %cur_target, align 8
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %select_target = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 7
  %5 = ptrtoint ptr %select_target to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %select_target, align 4
  %call31 = tail call i32 %6(ptr noundef %spinand, i32 noundef %target) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %cur_target to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %target, ptr %cur_target, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end30.cleanup_crit_edge, %if.then28, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then28 ], [ 0, %if.end34 ], [ 0, %if.end21.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spinand_match_and_init(ptr nocapture noundef %spinand, ptr nocapture noundef readonly %table, i32 noundef %table_size, i32 noundef %rdid_method) local_unnamed_addr #0 align 64 {
entry:
  %op.i108 = alloca %struct.spi_mem_op, align 8
  %op.i79 = alloca %struct.spi_mem_op, align 8
  %op.i = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %table_size)
  %cmp158.not = icmp eq i32 %table_size, 0
  br i1 %cmp158.not, label %entry.cleanup41_crit_edge, label %for.body.lr.ph

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup41

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr = getelementptr %struct.spinand_device, ptr %spinand, i32 0, i32 3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0159 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %method = getelementptr %struct.spinand_info, ptr %table, i32 %i.0159, i32 1, i32 2
  %0 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %method, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rdid_method)
  %cmp2.not = icmp eq i32 %1, %rdid_method
  br i1 %cmp2.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %devid = getelementptr %struct.spinand_info, ptr %table, i32 %i.0159, i32 1
  %2 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devid, align 4
  %len = getelementptr %struct.spinand_info, ptr %table, i32 %i.0159, i32 1, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 4
  %conv = zext i8 %5 to i32
  %bcmp = tail call i32 @bcmp(ptr %add.ptr, ptr %3, i32 %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end8, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end8:                                          ; preds = %if.end
  %memorg = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 1
  %memorg10 = getelementptr %struct.spinand_info, ptr %table, i32 %i.0159, i32 3
  %6 = call ptr @memcpy(ptr %memorg, ptr %memorg10, i32 36)
  %eccreq = getelementptr %struct.spinand_info, ptr %table, i32 %i.0159, i32 4
  %requirements.i = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 2, i32 1
  %7 = call ptr @memcpy(ptr %requirements.i, ptr %eccreq, i32 24)
  %eccinfo = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 9
  %eccinfo13 = getelementptr %struct.spinand_info, ptr %table, i32 %i.0159, i32 5
  %8 = ptrtoint ptr %eccinfo13 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %eccinfo13, align 4
  %10 = ptrtoint ptr %eccinfo to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %eccinfo, align 4
  %flags = getelementptr %struct.spinand_info, ptr %table, i32 %i.0159, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %flags15 = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 4
  %13 = ptrtoint ptr %flags15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %flags15, align 8
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %len, align 4
  %conv19 = zext i8 %15 to i32
  %add = add nuw nsw i32 %conv19, 1
  %len21 = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %len21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %len21, align 4
  %select_target = getelementptr %struct.spinand_info, ptr %table, i32 %i.0159, i32 7
  %17 = ptrtoint ptr %select_target to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %select_target, align 4
  %select_target23 = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 7
  %19 = ptrtoint ptr %select_target23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %select_target23, align 4
  %op_variants = getelementptr %struct.spinand_info, ptr %table, i32 %i.0159, i32 6
  %20 = ptrtoint ptr %op_variants to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %op_variants, align 4
  %nops.i = getelementptr inbounds %struct.spinand_op_variants, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %nops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nops.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp39.not.i = icmp eq i32 %23, 0
  br i1 %cmp39.not.i, label %if.end8.cleanup41_crit_edge, label %for.body.lr.ph.i

if.end8.cleanup41_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup41

for.body.lr.ph.i:                                 ; preds = %if.end8
  %oobsize.i.i = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 1, i32 2
  %pagesize.i.i = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 1, i32 1
  %nbytes3.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 3
  %spimem.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.040.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i) #11
  %24 = call ptr @memset(ptr %op.i, i32 255, i32 48)
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %21, align 4
  %arrayidx.i = getelementptr %struct.spi_mem_op, ptr %26, i32 %i.040.i
  %27 = call ptr @memcpy(ptr %op.i, ptr %arrayidx.i, i32 48)
  %28 = ptrtoint ptr %oobsize.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %oobsize.i.i, align 8
  %30 = ptrtoint ptr %pagesize.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pagesize.i.i, align 4
  %add.i = add i32 %31, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not36.i = icmp eq i32 %add.i, 0
  br i1 %tobool.not36.i, label %for.body.i.spinand_select_op_variant.exit_crit_edge, label %for.body.i.while.body.i_crit_edge

for.body.i.while.body.i_crit_edge:                ; preds = %for.body.i
  br label %while.body.i

for.body.i.spinand_select_op_variant.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_select_op_variant.exit

while.body.i:                                     ; preds = %if.end9.i.while.body.i_crit_edge, %for.body.i.while.body.i_crit_edge
  %nbytes.037.i = phi i32 [ %sub.i, %if.end9.i.while.body.i_crit_edge ], [ %add.i, %for.body.i.while.body.i_crit_edge ]
  %32 = ptrtoint ptr %nbytes3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %nbytes.037.i, ptr %nbytes3.i, align 4
  %33 = ptrtoint ptr %spimem.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spimem.i, align 8
  %call4.i = call i32 @spi_mem_adjust_op_size(ptr noundef %34, ptr noundef nonnull %op.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i, label %while.body.i.for.inc.i_crit_edge

while.body.i.for.inc.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %while.body.i
  %35 = ptrtoint ptr %spimem.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spimem.i, align 8
  %call7.i = call zeroext i1 @spi_mem_supports_op(ptr noundef %36, ptr noundef nonnull %op.i) #11
  br i1 %call7.i, label %if.end9.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end9.i:                                        ; preds = %if.end.i
  %37 = ptrtoint ptr %nbytes3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nbytes3.i, align 4
  %sub.i = sub i32 %nbytes.037.i, %38
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.end9.i.spinand_select_op_variant.exit_crit_edge, label %if.end9.i.while.body.i_crit_edge

if.end9.i.while.body.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end9.i.spinand_select_op_variant.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_select_op_variant.exit

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %while.body.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i) #11
  %inc.i = add nuw i32 %i.040.i, 1
  %39 = ptrtoint ptr %nops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nops.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %40
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup41_crit_edge

for.inc.i.cleanup41_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup41

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

spinand_select_op_variant.exit:                   ; preds = %if.end9.i.spinand_select_op_variant.exit_crit_edge, %for.body.i.spinand_select_op_variant.exit_crit_edge
  %41 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %21, align 4
  %arrayidx15.i = getelementptr %struct.spi_mem_op, ptr %42, i32 %i.040.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i) #11
  %tobool25.not = icmp eq ptr %arrayidx15.i, null
  br i1 %tobool25.not, label %spinand_select_op_variant.exit.cleanup41_crit_edge, label %if.end27

spinand_select_op_variant.exit.cleanup41_crit_edge: ; preds = %spinand_select_op_variant.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup41

if.end27:                                         ; preds = %spinand_select_op_variant.exit
  %op_templates = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 5
  %43 = ptrtoint ptr %op_templates to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx15.i, ptr %op_templates, align 4
  %write_cache = getelementptr %struct.spinand_info, ptr %table, i32 %i.0159, i32 6, i32 1
  %44 = ptrtoint ptr %write_cache to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_cache, align 4
  %nops.i80 = getelementptr inbounds %struct.spinand_op_variants, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %nops.i80 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nops.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp39.not.i81 = icmp eq i32 %47, 0
  br i1 %cmp39.not.i81, label %if.end27.cleanup41_crit_edge, label %for.body.lr.ph.i86

if.end27.cleanup41_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup41

for.body.lr.ph.i86:                               ; preds = %if.end27
  %nbytes3.i84 = getelementptr inbounds %struct.spi_mem_op, ptr %op.i79, i32 0, i32 3, i32 3
  br label %for.body.i91

for.body.i91:                                     ; preds = %for.inc.i105.for.body.i91_crit_edge, %for.body.lr.ph.i86
  %i.040.i87 = phi i32 [ 0, %for.body.lr.ph.i86 ], [ %inc.i103, %for.inc.i105.for.body.i91_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i79) #11
  %48 = call ptr @memset(ptr %op.i79, i32 255, i32 48)
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %45, align 4
  %arrayidx.i88 = getelementptr %struct.spi_mem_op, ptr %50, i32 %i.040.i87
  %51 = call ptr @memcpy(ptr %op.i79, ptr %arrayidx.i88, i32 48)
  %52 = ptrtoint ptr %oobsize.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %oobsize.i.i, align 8
  %54 = ptrtoint ptr %pagesize.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pagesize.i.i, align 4
  %add.i89 = add i32 %55, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i89)
  %tobool.not36.i90 = icmp eq i32 %add.i89, 0
  br i1 %tobool.not36.i90, label %for.body.i91.spinand_select_op_variant.exit107_crit_edge, label %for.body.i91.while.body.i95_crit_edge

for.body.i91.while.body.i95_crit_edge:            ; preds = %for.body.i91
  br label %while.body.i95

for.body.i91.spinand_select_op_variant.exit107_crit_edge: ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_select_op_variant.exit107

while.body.i95:                                   ; preds = %if.end9.i100.while.body.i95_crit_edge, %for.body.i91.while.body.i95_crit_edge
  %nbytes.037.i92 = phi i32 [ %sub.i98, %if.end9.i100.while.body.i95_crit_edge ], [ %add.i89, %for.body.i91.while.body.i95_crit_edge ]
  %56 = ptrtoint ptr %nbytes3.i84 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %nbytes.037.i92, ptr %nbytes3.i84, align 4
  %57 = ptrtoint ptr %spimem.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %spimem.i, align 8
  %call4.i93 = call i32 @spi_mem_adjust_op_size(ptr noundef %58, ptr noundef nonnull %op.i79) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i93)
  %tobool5.not.i94 = icmp eq i32 %call4.i93, 0
  br i1 %tobool5.not.i94, label %if.end.i97, label %while.body.i95.for.inc.i105_crit_edge

while.body.i95.for.inc.i105_crit_edge:            ; preds = %while.body.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i105

if.end.i97:                                       ; preds = %while.body.i95
  %59 = ptrtoint ptr %spimem.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %spimem.i, align 8
  %call7.i96 = call zeroext i1 @spi_mem_supports_op(ptr noundef %60, ptr noundef nonnull %op.i79) #11
  br i1 %call7.i96, label %if.end9.i100, label %if.end.i97.for.inc.i105_crit_edge

if.end.i97.for.inc.i105_crit_edge:                ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i105

if.end9.i100:                                     ; preds = %if.end.i97
  %61 = ptrtoint ptr %nbytes3.i84 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nbytes3.i84, align 4
  %sub.i98 = sub i32 %nbytes.037.i92, %62
  %tobool.not.i99 = icmp eq i32 %sub.i98, 0
  br i1 %tobool.not.i99, label %if.end9.i100.spinand_select_op_variant.exit107_crit_edge, label %if.end9.i100.while.body.i95_crit_edge

if.end9.i100.while.body.i95_crit_edge:            ; preds = %if.end9.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i95

if.end9.i100.spinand_select_op_variant.exit107_crit_edge: ; preds = %if.end9.i100
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_select_op_variant.exit107

for.inc.i105:                                     ; preds = %if.end.i97.for.inc.i105_crit_edge, %while.body.i95.for.inc.i105_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i79) #11
  %inc.i103 = add nuw i32 %i.040.i87, 1
  %63 = ptrtoint ptr %nops.i80 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nops.i80, align 4
  %cmp.i104 = icmp ult i32 %inc.i103, %64
  br i1 %cmp.i104, label %for.inc.i105.for.body.i91_crit_edge, label %for.inc.i105.cleanup41_crit_edge

for.inc.i105.cleanup41_crit_edge:                 ; preds = %for.inc.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup41

for.inc.i105.for.body.i91_crit_edge:              ; preds = %for.inc.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i91

spinand_select_op_variant.exit107:                ; preds = %if.end9.i100.spinand_select_op_variant.exit107_crit_edge, %for.body.i91.spinand_select_op_variant.exit107_crit_edge
  %65 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %45, align 4
  %arrayidx15.i101 = getelementptr %struct.spi_mem_op, ptr %66, i32 %i.040.i87
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i79) #11
  %tobool31.not = icmp eq ptr %arrayidx15.i101, null
  br i1 %tobool31.not, label %spinand_select_op_variant.exit107.cleanup41_crit_edge, label %if.end33

spinand_select_op_variant.exit107.cleanup41_crit_edge: ; preds = %spinand_select_op_variant.exit107
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup41

if.end33:                                         ; preds = %spinand_select_op_variant.exit107
  %write_cache35 = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 5, i32 1
  %67 = ptrtoint ptr %write_cache35 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %arrayidx15.i101, ptr %write_cache35, align 4
  %update_cache = getelementptr %struct.spinand_info, ptr %table, i32 %i.0159, i32 6, i32 2
  %68 = ptrtoint ptr %update_cache to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %update_cache, align 4
  %nops.i109 = getelementptr inbounds %struct.spinand_op_variants, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %nops.i109 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nops.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp39.not.i110 = icmp eq i32 %71, 0
  br i1 %cmp39.not.i110, label %if.end33.spinand_select_op_variant.exit136_crit_edge, label %for.body.lr.ph.i115

if.end33.spinand_select_op_variant.exit136_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_select_op_variant.exit136

for.body.lr.ph.i115:                              ; preds = %if.end33
  %nbytes3.i113 = getelementptr inbounds %struct.spi_mem_op, ptr %op.i108, i32 0, i32 3, i32 3
  br label %for.body.i120

for.body.i120:                                    ; preds = %for.inc.i134.for.body.i120_crit_edge, %for.body.lr.ph.i115
  %i.040.i116 = phi i32 [ 0, %for.body.lr.ph.i115 ], [ %inc.i132, %for.inc.i134.for.body.i120_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i108) #11
  %72 = call ptr @memset(ptr %op.i108, i32 255, i32 48)
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %69, align 4
  %arrayidx.i117 = getelementptr %struct.spi_mem_op, ptr %74, i32 %i.040.i116
  %75 = call ptr @memcpy(ptr %op.i108, ptr %arrayidx.i117, i32 48)
  %76 = ptrtoint ptr %oobsize.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %oobsize.i.i, align 8
  %78 = ptrtoint ptr %pagesize.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pagesize.i.i, align 4
  %add.i118 = add i32 %79, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i118)
  %tobool.not36.i119 = icmp eq i32 %add.i118, 0
  br i1 %tobool.not36.i119, label %for.body.i120.cleanup.i131_crit_edge, label %for.body.i120.while.body.i124_crit_edge

for.body.i120.while.body.i124_crit_edge:          ; preds = %for.body.i120
  br label %while.body.i124

for.body.i120.cleanup.i131_crit_edge:             ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i131

while.body.i124:                                  ; preds = %if.end9.i129.while.body.i124_crit_edge, %for.body.i120.while.body.i124_crit_edge
  %nbytes.037.i121 = phi i32 [ %sub.i127, %if.end9.i129.while.body.i124_crit_edge ], [ %add.i118, %for.body.i120.while.body.i124_crit_edge ]
  %80 = ptrtoint ptr %nbytes3.i113 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %nbytes.037.i121, ptr %nbytes3.i113, align 4
  %81 = ptrtoint ptr %spimem.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %spimem.i, align 8
  %call4.i122 = call i32 @spi_mem_adjust_op_size(ptr noundef %82, ptr noundef nonnull %op.i108) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i122)
  %tobool5.not.i123 = icmp eq i32 %call4.i122, 0
  br i1 %tobool5.not.i123, label %if.end.i126, label %while.body.i124.for.inc.i134_crit_edge

while.body.i124.for.inc.i134_crit_edge:           ; preds = %while.body.i124
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i134

if.end.i126:                                      ; preds = %while.body.i124
  %83 = ptrtoint ptr %spimem.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %spimem.i, align 8
  %call7.i125 = call zeroext i1 @spi_mem_supports_op(ptr noundef %84, ptr noundef nonnull %op.i108) #11
  br i1 %call7.i125, label %if.end9.i129, label %if.end.i126.for.inc.i134_crit_edge

if.end.i126.for.inc.i134_crit_edge:               ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i134

if.end9.i129:                                     ; preds = %if.end.i126
  %85 = ptrtoint ptr %nbytes3.i113 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nbytes3.i113, align 4
  %sub.i127 = sub i32 %nbytes.037.i121, %86
  %tobool.not.i128 = icmp eq i32 %sub.i127, 0
  br i1 %tobool.not.i128, label %if.end9.i129.cleanup.i131_crit_edge, label %if.end9.i129.while.body.i124_crit_edge

if.end9.i129.while.body.i124_crit_edge:           ; preds = %if.end9.i129
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i124

if.end9.i129.cleanup.i131_crit_edge:              ; preds = %if.end9.i129
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i131

cleanup.i131:                                     ; preds = %if.end9.i129.cleanup.i131_crit_edge, %for.body.i120.cleanup.i131_crit_edge
  %87 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %69, align 4
  %arrayidx15.i130 = getelementptr %struct.spi_mem_op, ptr %88, i32 %i.040.i116
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i108) #11
  br label %spinand_select_op_variant.exit136

for.inc.i134:                                     ; preds = %if.end.i126.for.inc.i134_crit_edge, %while.body.i124.for.inc.i134_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i108) #11
  %inc.i132 = add nuw i32 %i.040.i116, 1
  %89 = ptrtoint ptr %nops.i109 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nops.i109, align 4
  %cmp.i133 = icmp ult i32 %inc.i132, %90
  br i1 %cmp.i133, label %for.inc.i134.for.body.i120_crit_edge, label %for.inc.i134.spinand_select_op_variant.exit136_crit_edge

for.inc.i134.spinand_select_op_variant.exit136_crit_edge: ; preds = %for.inc.i134
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_select_op_variant.exit136

for.inc.i134.for.body.i120_crit_edge:             ; preds = %for.inc.i134
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i120

spinand_select_op_variant.exit136:                ; preds = %for.inc.i134.spinand_select_op_variant.exit136_crit_edge, %cleanup.i131, %if.end33.spinand_select_op_variant.exit136_crit_edge
  %retval.2.i135 = phi ptr [ %arrayidx15.i130, %cleanup.i131 ], [ null, %if.end33.spinand_select_op_variant.exit136_crit_edge ], [ null, %for.inc.i134.spinand_select_op_variant.exit136_crit_edge ]
  %update_cache39 = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 5, i32 2
  %91 = ptrtoint ptr %update_cache39 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %retval.2.i135, ptr %update_cache39, align 4
  br label %cleanup41

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0159, 1
  %exitcond.not = icmp eq i32 %inc, %table_size
  br i1 %exitcond.not, label %for.inc.cleanup41_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup41_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup41

cleanup41:                                        ; preds = %for.inc.cleanup41_crit_edge, %spinand_select_op_variant.exit136, %spinand_select_op_variant.exit107.cleanup41_crit_edge, %for.inc.i105.cleanup41_crit_edge, %if.end27.cleanup41_crit_edge, %spinand_select_op_variant.exit.cleanup41_crit_edge, %for.inc.i.cleanup41_crit_edge, %if.end8.cleanup41_crit_edge, %entry.cleanup41_crit_edge
  %retval.2 = phi i32 [ -524, %spinand_select_op_variant.exit107.cleanup41_crit_edge ], [ -524, %spinand_select_op_variant.exit.cleanup41_crit_edge ], [ 0, %spinand_select_op_variant.exit136 ], [ -524, %if.end8.cleanup41_crit_edge ], [ -524, %if.end27.cleanup41_crit_edge ], [ -524, %entry.cleanup41_crit_edge ], [ -524, %for.inc.i105.cleanup41_crit_edge ], [ -524, %for.inc.i.cleanup41_crit_edge ], [ -524, %for.inc.cleanup41_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spinand_drv_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @spi_mem_driver_register_with_owner(ptr noundef nonnull @spinand_drv, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spinand_drv_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @spi_mem_driver_unregister(ptr noundef nonnull @spinand_drv) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_mem_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_exec_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_adjust_op_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @spi_mem_supports_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_driver_register_with_owner(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spinand_probe(ptr noundef %mem) #0 align 64 {
entry:
  %info.i.i.i = alloca %struct.spi_mem_dirmap_info, align 8
  %op.i58.i.i.i = alloca %struct.spi_mem_op, align 8
  %op.i36.i.i.i = alloca %struct.spi_mem_op, align 8
  %op.i.i.i.i = alloca %struct.spi_mem_op, align 8
  %op.i.i.i = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 1744, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %spimem = getelementptr inbounds %struct.spinand_device, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %spimem to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mem, ptr %spimem, align 8
  %drvpriv.i = getelementptr inbounds %struct.spi_mem, ptr %mem, i32 0, i32 1
  %3 = ptrtoint ptr %drvpriv.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %drvpriv.i, align 4
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %of_node.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 27
  %8 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %of_node.i.i.i, align 8
  %name.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 13
  %9 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.spinand_set_of_node.exit_crit_edge

if.end.spinand_set_of_node.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_set_of_node.exit

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call i32 @of_property_read_string(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef %name.i.i.i) #11
  br label %spinand_set_of_node.exit

spinand_set_of_node.exit:                         ; preds = %if.then.i.i.i, %if.end.spinand_set_of_node.exit_crit_edge
  %lock = getelementptr inbounds %struct.spinand_device, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @spinand_probe.__key) #11
  %11 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem, align 4
  %parent = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %parent, align 8
  %14 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spimem, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 4) #15
  %scratchbuf.i = getelementptr inbounds %struct.spinand_device, ptr %call.i, i32 0, i32 13
  %19 = ptrtoint ptr %scratchbuf.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i.i, ptr %scratchbuf.i, align 8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %spinand_set_of_node.exit.cleanup_crit_edge, label %if.end.i

spinand_set_of_node.exit.cleanup_crit_edge:       ; preds = %spinand_set_of_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %spinand_set_of_node.exit
  %20 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spimem, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i.i.i) #11
  %24 = call ptr @memset(ptr %op.i.i.i, i32 0, i32 48)
  %25 = ptrtoint ptr %op.i.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %op.i.i.i, align 8
  %26 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %op.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %26, align 1
  %28 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %op.i.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 255, ptr %28, align 4
  %call.i.i.i32 = call i32 @spi_mem_exec_op(ptr noundef %21, ptr noundef nonnull %op.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i32)
  %tobool.not.i.i.i33 = icmp eq i32 %call.i.i.i32, 0
  br i1 %tobool.not.i.i.i33, label %spinand_reset_op.exit.i.i, label %spinand_reset_op.exit.thread.i.i

spinand_reset_op.exit.thread.i.i:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i.i.i) #11
  br label %spinand_init.exit

spinand_reset_op.exit.i.i:                        ; preds = %if.end.i
  %call1.i.i.i = call fastcc i32 @spinand_wait(ptr noundef nonnull %call.i, i32 noundef 5, i32 noundef 5, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %spinand_reset_op.exit.i.i.spinand_init.exit_crit_edge

spinand_reset_op.exit.i.i.spinand_init.exit_crit_edge: ; preds = %spinand_reset_op.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_init.exit

if.end.i.i:                                       ; preds = %spinand_reset_op.exit.i.i
  %id1.i.i.i = getelementptr inbounds %struct.spinand_device, ptr %call.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i.i.i.i) #11
  %30 = call ptr @memset(ptr %op.i.i.i.i, i32 255, i32 48)
  %31 = ptrtoint ptr %op.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %op.i.i.i.i, align 8
  %buswidth.i.i.i.i = getelementptr inbounds %struct.anon.73, ptr %op.i.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %buswidth.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %buswidth.i.i.i.i, align 1
  %dtr.i.i.i.i = getelementptr inbounds %struct.anon.73, ptr %op.i.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %dtr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 127, ptr %dtr.i.i.i.i, align 2
  %opcode.i.i.i.i = getelementptr inbounds %struct.anon.73, ptr %op.i.i.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %opcode.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 159, ptr %opcode.i.i.i.i, align 4
  %addr.i.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %addr.i.i.i.i, align 8
  %buswidth2.i.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i.i.i, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %buswidth2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %buswidth2.i.i.i.i, align 1
  %dtr3.i.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i.i.i, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %dtr3.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 127, ptr %dtr3.i.i.i.i, align 2
  %val.i.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i.i.i, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %val.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %val.i.i.i.i, align 8
  %dummy.i.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %dummy.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %dummy.i.i.i.i, align 8
  %buswidth8.i.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i.i.i, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %buswidth8.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %buswidth8.i.i.i.i, align 1
  %dtr9.i.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i.i.i, i32 0, i32 2, i32 2
  %41 = ptrtoint ptr %dtr9.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 127, ptr %dtr9.i.i.i.i, align 2
  %data.i.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %data.i.i.i.i, align 4
  %dtr14.i.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i.i.i, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %dtr14.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 127, ptr %dtr14.i.i.i.i, align 1
  %dir.i.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i.i.i, i32 0, i32 3, i32 2
  %44 = ptrtoint ptr %dir.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %dir.i.i.i.i, align 8
  %nbytes18.i.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i.i.i, i32 0, i32 3, i32 3
  %45 = ptrtoint ptr %nbytes18.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %nbytes18.i.i.i.i, align 4
  %buf19.i.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i.i.i, i32 0, i32 3, i32 4
  %46 = ptrtoint ptr %scratchbuf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %scratchbuf.i, align 8
  %48 = ptrtoint ptr %buf19.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %buf19.i.i.i.i, align 8
  %49 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %spimem, align 8
  %call.i.i.i.i = call i32 @spi_mem_exec_op(ptr noundef %50, ptr noundef nonnull %op.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i48.i.i, label %spinand_read_id_op.exit.i.i.i

spinand_read_id_op.exit.i.i.i:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i.i.i.i) #11
  br label %do.end.i.i

if.end.i48.i.i:                                   ; preds = %if.end.i.i
  %51 = ptrtoint ptr %scratchbuf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %scratchbuf.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %52, align 1
  %55 = ptrtoint ptr %id1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %id1.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i.i.i.i) #11
  %call2.i.i.i = call fastcc i32 @spinand_manufacturer_match(ptr noundef nonnull %call.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end.i48.i.i.if.end6.i.i_crit_edge, label %if.end5.i.i.i

if.end.i48.i.i.if.end6.i.i_crit_edge:             ; preds = %if.end.i48.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i48.i.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i36.i.i.i) #11
  %56 = call ptr @memset(ptr %op.i36.i.i.i, i32 255, i32 48)
  %57 = ptrtoint ptr %op.i36.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %op.i36.i.i.i, align 8
  %buswidth.i37.i.i.i = getelementptr inbounds %struct.anon.73, ptr %op.i36.i.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %buswidth.i37.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %buswidth.i37.i.i.i, align 1
  %dtr.i38.i.i.i = getelementptr inbounds %struct.anon.73, ptr %op.i36.i.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %dtr.i38.i.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 127, ptr %dtr.i38.i.i.i, align 2
  %opcode.i39.i.i.i = getelementptr inbounds %struct.anon.73, ptr %op.i36.i.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %opcode.i39.i.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 159, ptr %opcode.i39.i.i.i, align 4
  %addr.i40.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i36.i.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %addr.i40.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %addr.i40.i.i.i, align 8
  %buswidth2.i41.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i36.i.i.i, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %buswidth2.i41.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %buswidth2.i41.i.i.i, align 1
  %dtr3.i42.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i36.i.i.i, i32 0, i32 1, i32 2
  %63 = ptrtoint ptr %dtr3.i42.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 127, ptr %dtr3.i42.i.i.i, align 2
  %val.i43.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i36.i.i.i, i32 0, i32 1, i32 3
  %64 = ptrtoint ptr %val.i43.i.i.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 0, ptr %val.i43.i.i.i, align 8
  %dummy.i44.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i36.i.i.i, i32 0, i32 2
  %65 = ptrtoint ptr %dummy.i44.i.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %dummy.i44.i.i.i, align 8
  %buswidth8.i45.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i36.i.i.i, i32 0, i32 2, i32 1
  %66 = ptrtoint ptr %buswidth8.i45.i.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %buswidth8.i45.i.i.i, align 1
  %dtr9.i46.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i36.i.i.i, i32 0, i32 2, i32 2
  %67 = ptrtoint ptr %dtr9.i46.i.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 127, ptr %dtr9.i46.i.i.i, align 2
  %data.i47.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i36.i.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %data.i47.i.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %data.i47.i.i.i, align 4
  %dtr14.i48.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i36.i.i.i, i32 0, i32 3, i32 1
  %69 = ptrtoint ptr %dtr14.i48.i.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 127, ptr %dtr14.i48.i.i.i, align 1
  %dir.i49.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i36.i.i.i, i32 0, i32 3, i32 2
  %70 = ptrtoint ptr %dir.i49.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %dir.i49.i.i.i, align 8
  %nbytes18.i50.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i36.i.i.i, i32 0, i32 3, i32 3
  %71 = ptrtoint ptr %nbytes18.i50.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 4, ptr %nbytes18.i50.i.i.i, align 4
  %buf19.i51.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i36.i.i.i, i32 0, i32 3, i32 4
  %72 = ptrtoint ptr %scratchbuf.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %scratchbuf.i, align 8
  %74 = ptrtoint ptr %buf19.i51.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %buf19.i51.i.i.i, align 8
  %75 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %spimem, align 8
  %call.i54.i.i.i = call i32 @spi_mem_exec_op(ptr noundef %76, ptr noundef nonnull %op.i36.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i.i.i)
  %tobool.not.i55.i.i.i = icmp eq i32 %call.i54.i.i.i, 0
  br i1 %tobool.not.i55.i.i.i, label %if.end9.i.i.i, label %spinand_read_id_op.exit57.i.i.i

spinand_read_id_op.exit57.i.i.i:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i36.i.i.i) #11
  br label %do.end.i.i

if.end9.i.i.i:                                    ; preds = %if.end5.i.i.i
  %77 = ptrtoint ptr %scratchbuf.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %scratchbuf.i, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %78, align 1
  %81 = ptrtoint ptr %id1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %80, ptr %id1.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i36.i.i.i) #11
  %call10.i.i.i = call fastcc i32 @spinand_manufacturer_match(ptr noundef nonnull %call.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %call10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %if.end9.i.i.i.if.end6.i.i_crit_edge, label %if.end13.i.i.i

if.end9.i.i.i.if.end6.i.i_crit_edge:              ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i.i

if.end13.i.i.i:                                   ; preds = %if.end9.i.i.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i58.i.i.i) #11
  %82 = call ptr @memset(ptr %op.i58.i.i.i, i32 255, i32 48)
  %83 = ptrtoint ptr %op.i58.i.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %op.i58.i.i.i, align 8
  %buswidth.i59.i.i.i = getelementptr inbounds %struct.anon.73, ptr %op.i58.i.i.i, i32 0, i32 1
  %84 = ptrtoint ptr %buswidth.i59.i.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %buswidth.i59.i.i.i, align 1
  %dtr.i60.i.i.i = getelementptr inbounds %struct.anon.73, ptr %op.i58.i.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %dtr.i60.i.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 127, ptr %dtr.i60.i.i.i, align 2
  %opcode.i61.i.i.i = getelementptr inbounds %struct.anon.73, ptr %op.i58.i.i.i, i32 0, i32 3
  %86 = ptrtoint ptr %opcode.i61.i.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 159, ptr %opcode.i61.i.i.i, align 4
  %addr.i62.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %addr.i62.i.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %addr.i62.i.i.i, align 8
  %buswidth2.i63.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i.i.i, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %buswidth2.i63.i.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %buswidth2.i63.i.i.i, align 1
  %dtr3.i64.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i.i.i, i32 0, i32 1, i32 2
  %89 = ptrtoint ptr %dtr3.i64.i.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 127, ptr %dtr3.i64.i.i.i, align 2
  %val.i65.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i.i.i, i32 0, i32 1, i32 3
  %90 = ptrtoint ptr %val.i65.i.i.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 0, ptr %val.i65.i.i.i, align 8
  %dummy.i66.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %dummy.i66.i.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %dummy.i66.i.i.i, align 8
  %buswidth8.i67.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i.i.i, i32 0, i32 2, i32 1
  %92 = ptrtoint ptr %buswidth8.i67.i.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %buswidth8.i67.i.i.i, align 1
  %dtr9.i68.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i.i.i, i32 0, i32 2, i32 2
  %93 = ptrtoint ptr %dtr9.i68.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 127, ptr %dtr9.i68.i.i.i, align 2
  %data.i69.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i.i.i, i32 0, i32 3
  %94 = ptrtoint ptr %data.i69.i.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %data.i69.i.i.i, align 4
  %dtr14.i70.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i.i.i, i32 0, i32 3, i32 1
  %95 = ptrtoint ptr %dtr14.i70.i.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 127, ptr %dtr14.i70.i.i.i, align 1
  %dir.i71.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i.i.i, i32 0, i32 3, i32 2
  %96 = ptrtoint ptr %dir.i71.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %dir.i71.i.i.i, align 8
  %nbytes18.i72.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i.i.i, i32 0, i32 3, i32 3
  %97 = ptrtoint ptr %nbytes18.i72.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 4, ptr %nbytes18.i72.i.i.i, align 4
  %buf19.i73.i.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i58.i.i.i, i32 0, i32 3, i32 4
  %98 = ptrtoint ptr %scratchbuf.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %scratchbuf.i, align 8
  %100 = ptrtoint ptr %buf19.i73.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %buf19.i73.i.i.i, align 8
  %101 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %spimem, align 8
  %call.i76.i.i.i = call i32 @spi_mem_exec_op(ptr noundef %102, ptr noundef nonnull %op.i58.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i.i.i)
  %tobool.not.i77.i.i.i = icmp eq i32 %call.i76.i.i.i, 0
  br i1 %tobool.not.i77.i.i.i, label %spinand_id_detect.exit.i.i, label %spinand_read_id_op.exit79.i.i.i

spinand_read_id_op.exit79.i.i.i:                  ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i58.i.i.i) #11
  br label %do.end.i.i

spinand_id_detect.exit.i.i:                       ; preds = %if.end13.i.i.i
  %103 = ptrtoint ptr %scratchbuf.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %scratchbuf.i, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %104, align 1
  %107 = ptrtoint ptr %id1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 %106, ptr %id1.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i58.i.i.i) #11
  %call18.i.i.i = call fastcc i32 @spinand_manufacturer_match(ptr noundef nonnull %call.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call18.i.i.i, 0
  br i1 %tobool4.not.i.i, label %spinand_id_detect.exit.i.i.if.end6.i.i_crit_edge, label %spinand_id_detect.exit.i.i.do.end.i.i_crit_edge

spinand_id_detect.exit.i.i.do.end.i.i_crit_edge:  ; preds = %spinand_id_detect.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

spinand_id_detect.exit.i.i.if.end6.i.i_crit_edge: ; preds = %spinand_id_detect.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i.i

do.end.i.i:                                       ; preds = %spinand_id_detect.exit.i.i.do.end.i.i_crit_edge, %spinand_read_id_op.exit79.i.i.i, %spinand_read_id_op.exit57.i.i.i, %spinand_read_id_op.exit.i.i.i
  %retval.0.i4956.i.i = phi i32 [ %call18.i.i.i, %spinand_id_detect.exit.i.i.do.end.i.i_crit_edge ], [ %call.i76.i.i.i, %spinand_read_id_op.exit79.i.i.i ], [ %call.i54.i.i.i, %spinand_read_id_op.exit57.i.i.i ], [ %call.i.i.i.i, %spinand_read_id_op.exit.i.i.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.8, i32 noundef 4, ptr noundef %id1.i.i.i) #16
  br label %spinand_init.exit

if.end6.i.i:                                      ; preds = %spinand_id_detect.exit.i.i.if.end6.i.i_crit_edge, %if.end9.i.i.i.if.end6.i.i_crit_edge, %if.end.i48.i.i.if.end6.i.i_crit_edge
  %ntargets.i.i = getelementptr inbounds %struct.nand_device, ptr %call.i, i32 0, i32 1, i32 8
  %108 = ptrtoint ptr %ntargets.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ntargets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp.i.i = icmp ugt i32 %109, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end6.i.i.if.end8.i_crit_edge

if.end6.i.i.if.end8.i_crit_edge:                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

land.lhs.true.i.i:                                ; preds = %if.end6.i.i
  %select_target.i.i = getelementptr inbounds %struct.spinand_device, ptr %call.i, i32 0, i32 7
  %110 = ptrtoint ptr %select_target.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %select_target.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %111, null
  br i1 %tobool7.not.i.i, label %do.end11.i.i, label %land.lhs.true.i.i.if.end8.i_crit_edge

land.lhs.true.i.i.if.end8.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

do.end11.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.11) #16
  br label %spinand_init.exit

if.end8.i:                                        ; preds = %land.lhs.true.i.i.if.end8.i_crit_edge, %if.end6.i.i.if.end8.i_crit_edge
  %112 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %spimem, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %manufacturer.i.i = getelementptr inbounds %struct.spinand_device, ptr %call.i, i32 0, i32 14
  %116 = ptrtoint ptr %manufacturer.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %manufacturer.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.spinand_manufacturer, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %name.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %115, ptr noundef nonnull @.str.14, ptr noundef %119) #16
  %120 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %spimem, align 8
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %luns_per_target.i.i.i.i = getelementptr inbounds %struct.nand_device, ptr %call.i, i32 0, i32 1, i32 7
  %124 = ptrtoint ptr %luns_per_target.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %luns_per_target.i.i.i.i, align 4
  %conv.i.i.i.i = zext i32 %125 to i64
  %eraseblocks_per_lun.i.i.i.i = getelementptr inbounds %struct.nand_device, ptr %call.i, i32 0, i32 1, i32 4
  %126 = ptrtoint ptr %eraseblocks_per_lun.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %eraseblocks_per_lun.i.i.i.i, align 8
  %conv2.i.i.i.i = zext i32 %127 to i64
  %mul.i.i.i.i = mul nuw i64 %conv2.i.i.i.i, %conv.i.i.i.i
  %pages_per_eraseblock.i.i.i.i = getelementptr inbounds %struct.nand_device, ptr %call.i, i32 0, i32 1, i32 3
  %128 = ptrtoint ptr %pages_per_eraseblock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %pages_per_eraseblock.i.i.i.i, align 4
  %conv4.i.i.i.i = zext i32 %129 to i64
  %mul5.i.i.i.i = mul i64 %mul.i.i.i.i, %conv4.i.i.i.i
  %pagesize.i.i.i.i = getelementptr inbounds %struct.nand_device, ptr %call.i, i32 0, i32 1, i32 1
  %130 = ptrtoint ptr %pagesize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pagesize.i.i.i.i, align 4
  %conv7.i.i.i.i = zext i32 %131 to i64
  %mul8.i.i.i.i = mul i64 %mul5.i.i.i.i, %conv7.i.i.i.i
  %132 = ptrtoint ptr %ntargets.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ntargets.i.i, align 8
  %conv.i.i.i = zext i32 %133 to i64
  %mul.i.i.i = mul i64 %mul8.i.i.i.i, %conv.i.i.i
  %shr.i.i = lshr i64 %mul.i.i.i, 20
  %mul.i50.i.i = mul i32 %131, %129
  %shr27.i.i = lshr i32 %mul.i50.i.i, 10
  %oobsize.i.i.i = getelementptr inbounds %struct.nand_device, ptr %call.i, i32 0, i32 1, i32 2
  %134 = ptrtoint ptr %oobsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %oobsize.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %123, ptr noundef nonnull @.str.18, i64 noundef %shr.i.i, i32 noundef %shr27.i.i, i32 noundef %131, i32 noundef %135) #16
  %136 = ptrtoint ptr %oobsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %oobsize.i.i.i, align 8
  %138 = ptrtoint ptr %pagesize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %pagesize.i.i.i.i, align 4
  %add.i = add i32 %137, %139
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #17
  %databuf.i = getelementptr inbounds %struct.spinand_device, ptr %call.i, i32 0, i32 11
  %140 = ptrtoint ptr %databuf.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call9.i.i.i, ptr %databuf.i, align 8
  %tobool13.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool13.not.i, label %if.end8.i.spinand_init.exit_crit_edge, label %if.end15.i

if.end8.i.spinand_init.exit_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_init.exit

if.end15.i:                                       ; preds = %if.end8.i
  %141 = ptrtoint ptr %pagesize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %pagesize.i.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 %142
  %oobbuf.i = getelementptr inbounds %struct.spinand_device, ptr %call.i, i32 0, i32 12
  %143 = ptrtoint ptr %oobbuf.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %add.ptr.i, ptr %oobbuf.i, align 4
  %144 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %spimem, align 8
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 4
  %148 = ptrtoint ptr %ntargets.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %ntargets.i.i, align 8
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %147, i32 noundef %149, i32 noundef 3520) #11
  %cfg_cache.i.i = getelementptr inbounds %struct.spinand_device, ptr %call.i, i32 0, i32 10
  %150 = ptrtoint ptr %cfg_cache.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call5.i.i.i.i, ptr %cfg_cache.i.i, align 4
  %tobool.not.i106.not.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool.not.i106.not.i, label %if.end15.i.spinand_init.exit_crit_edge, label %if.end21.i

if.end15.i.spinand_init.exit_crit_edge:           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_init.exit

if.end21.i:                                       ; preds = %if.end15.i
  %call22.i = call fastcc i32 @spinand_init_flash(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end21.i.spinand_init.exit_crit_edge

if.end21.i.spinand_init.exit_crit_edge:           ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_init.exit

if.end25.i:                                       ; preds = %if.end21.i
  %151 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %spimem, align 8
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %planes_per_lun.i.i = getelementptr inbounds %struct.nand_device, ptr %call.i, i32 0, i32 1, i32 6
  %155 = ptrtoint ptr %planes_per_lun.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %planes_per_lun.i.i, align 8
  %mul.i.i = shl i32 %156, 3
  %call.i.i108.i = call noalias ptr @devm_kmalloc(ptr noundef %154, i32 noundef %mul.i.i, i32 noundef 3520) #11
  %dirmaps.i.i = getelementptr inbounds %struct.spinand_device, ptr %call.i, i32 0, i32 6
  %157 = ptrtoint ptr %dirmaps.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call.i.i108.i, ptr %dirmaps.i.i, align 8
  %tobool.not.i109.i = icmp eq ptr %call.i.i108.i, null
  br i1 %tobool.not.i109.i, label %if.end25.i.do.end.i_crit_edge, label %for.cond.preheader.i.i

if.end25.i.do.end.i_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

for.cond.preheader.i.i:                           ; preds = %if.end25.i
  %158 = ptrtoint ptr %planes_per_lun.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %planes_per_lun.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp21.not.i.i = icmp eq i32 %159, 0
  br i1 %cmp21.not.i.i, label %for.cond.preheader.i.i.if.end29.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.if.end29.i_crit_edge:      ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %length.i.i.i = getelementptr inbounds %struct.spi_mem_dirmap_info, ptr %info.i.i.i, i32 0, i32 2
  %offset.i.i.i = getelementptr inbounds %struct.spi_mem_dirmap_info, ptr %info.i.i.i, i32 0, i32 1
  %update_cache.i.i.i = getelementptr inbounds %struct.spinand_device, ptr %call.i, i32 0, i32 5, i32 2
  %op_templates.i.i.i = getelementptr inbounds %struct.spinand_device, ptr %call.i, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %spinand_create_dirmap.exit.thread.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.022.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %spinand_create_dirmap.exit.thread.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %info.i.i.i) #11
  %160 = ptrtoint ptr %pagesize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %pagesize.i.i.i.i, align 4
  %162 = ptrtoint ptr %oobsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %oobsize.i.i.i, align 8
  %add.i.i.i = add i32 %163, %161
  %conv.i.i111.i = zext i32 %add.i.i.i to i64
  %164 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 %conv.i.i111.i, ptr %length.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool.not.i.i.i112.i = icmp eq i32 %161, 0
  %165 = call i32 @llvm.ctlz.i32(i32 %161, i1 true) #11, !range !75
  %sub.i.i.i.i = sub nuw nsw i32 32, %165
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i112.i, i32 0, i32 %sub.i.i.i.i
  %shl.i.i.i = shl i32 %i.022.i.i, %cond.i.i.i.i
  %conv4.i.i.i = zext i32 %shl.i.i.i to i64
  %166 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %conv4.i.i.i, ptr %offset.i.i.i, align 8
  %167 = ptrtoint ptr %update_cache.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %update_cache.i.i.i, align 4
  %169 = call ptr @memcpy(ptr %info.i.i.i, ptr %168, i32 48)
  %170 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %spimem, align 8
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %call6.i.i.i = call ptr @devm_spi_mem_dirmap_create(ptr noundef %173, ptr noundef %171, ptr noundef nonnull %info.i.i.i) #11
  %cmp.i.i.i113.i = icmp ugt ptr %call6.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i113.i, label %for.body.i.i.spinand_create_dirmaps.exit.i_crit_edge, label %if.end.i.i114.i

for.body.i.i.spinand_create_dirmaps.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_create_dirmaps.exit.i

if.end.i.i114.i:                                  ; preds = %for.body.i.i
  %174 = ptrtoint ptr %dirmaps.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dirmaps.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.spinand_dirmap, ptr %175, i32 %i.022.i.i
  %176 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call6.i.i.i, ptr %arrayidx.i.i.i, align 4
  %177 = ptrtoint ptr %op_templates.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %op_templates.i.i.i, align 4
  %179 = call ptr @memcpy(ptr %info.i.i.i, ptr %178, i32 48)
  %180 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %spimem, align 8
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 4
  %call15.i.i.i = call ptr @devm_spi_mem_dirmap_create(ptr noundef %183, ptr noundef %181, ptr noundef nonnull %info.i.i.i) #11
  %cmp.i41.i.i.i = icmp ugt ptr %call15.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41.i.i.i, label %if.end.i.i114.i.spinand_create_dirmaps.exit.i_crit_edge, label %spinand_create_dirmap.exit.thread.i.i

if.end.i.i114.i.spinand_create_dirmaps.exit.i_crit_edge: ; preds = %if.end.i.i114.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_create_dirmaps.exit.i

spinand_create_dirmap.exit.thread.i.i:            ; preds = %if.end.i.i114.i
  %184 = ptrtoint ptr %dirmaps.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dirmaps.i.i, align 8
  %rdesc.i.i.i = getelementptr %struct.spinand_dirmap, ptr %185, i32 %i.022.i.i, i32 1
  %186 = ptrtoint ptr %rdesc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %call15.i.i.i, ptr %rdesc.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %info.i.i.i) #11
  %inc.i.i = add nuw i32 %i.022.i.i, 1
  %187 = ptrtoint ptr %planes_per_lun.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %planes_per_lun.i.i, align 8
  %cmp.i115.i = icmp ult i32 %inc.i.i, %188
  br i1 %cmp.i115.i, label %spinand_create_dirmap.exit.thread.i.i.for.body.i.i_crit_edge, label %spinand_create_dirmap.exit.thread.i.i.if.end29.i_crit_edge

spinand_create_dirmap.exit.thread.i.i.if.end29.i_crit_edge: ; preds = %spinand_create_dirmap.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

spinand_create_dirmap.exit.thread.i.i.for.body.i.i_crit_edge: ; preds = %spinand_create_dirmap.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

spinand_create_dirmaps.exit.i:                    ; preds = %if.end.i.i114.i.spinand_create_dirmaps.exit.i_crit_edge, %for.body.i.i.spinand_create_dirmaps.exit.i_crit_edge
  %retval.0.i.in.i.i = phi ptr [ %call6.i.i.i, %for.body.i.i.spinand_create_dirmaps.exit.i_crit_edge ], [ %call15.i.i.i, %if.end.i.i114.i.spinand_create_dirmaps.exit.i_crit_edge ]
  %retval.0.i.i.i = ptrtoint ptr %retval.0.i.in.i.i to i32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %info.i.i.i) #11
  %tobool27.not.i = icmp eq ptr %retval.0.i.in.i.i, null
  br i1 %tobool27.not.i, label %spinand_create_dirmaps.exit.i.if.end29.i_crit_edge, label %spinand_create_dirmaps.exit.i.do.end.i_crit_edge

spinand_create_dirmaps.exit.i.do.end.i_crit_edge: ; preds = %spinand_create_dirmaps.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

spinand_create_dirmaps.exit.i.if.end29.i_crit_edge: ; preds = %spinand_create_dirmaps.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

do.end.i:                                         ; preds = %spinand_create_dirmaps.exit.i.do.end.i_crit_edge, %if.end25.i.do.end.i_crit_edge
  %retval.0.i116132.i = phi i32 [ %retval.0.i.i.i, %spinand_create_dirmaps.exit.i.do.end.i_crit_edge ], [ -12, %if.end25.i.do.end.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i116132.i) #16
  br label %err_manuf_cleanup.i

if.end29.i:                                       ; preds = %spinand_create_dirmaps.exit.i.if.end29.i_crit_edge, %spinand_create_dirmap.exit.thread.i.i.if.end29.i_crit_edge, %for.cond.preheader.i.i.if.end29.i_crit_edge
  %call30.i = call i32 @nanddev_init(ptr noundef %call.i, ptr noundef nonnull @spinand_ops, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end29.i.err_manuf_cleanup.i_crit_edge

if.end29.i.err_manuf_cleanup.i_crit_edge:         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_manuf_cleanup.i

if.end33.i:                                       ; preds = %if.end29.i
  %ecc.i = getelementptr inbounds %struct.nand_device, ptr %call.i, i32 0, i32 2
  %189 = ptrtoint ptr %ecc.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 4, ptr %ecc.i, align 4
  %ondie_engine.i = getelementptr inbounds %struct.nand_device, ptr %call.i, i32 0, i32 2, i32 4
  %190 = ptrtoint ptr %ondie_engine.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @spinand_ondie_ecc_engine, ptr %ondie_engine.i, align 4
  %call.i.i = call i32 @spinand_upd_cfg(ptr noundef %call.i, i8 noundef zeroext 16, i8 noundef zeroext 0) #11
  %call36.i = call i32 @nanddev_ecc_engine_init(ptr noundef %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end33.i.err_cleanup_nanddev.i_crit_edge

if.end33.i.err_cleanup_nanddev.i_crit_edge:       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_cleanup_nanddev.i

if.end39.i:                                       ; preds = %if.end33.i
  %_read_oob.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 27
  %191 = ptrtoint ptr %_read_oob.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr @spinand_mtd_read, ptr %_read_oob.i, align 8
  %_write_oob.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 28
  %192 = ptrtoint ptr %_write_oob.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @spinand_mtd_write, ptr %_write_oob.i, align 4
  %_block_isbad.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 42
  %193 = ptrtoint ptr %_block_isbad.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr @spinand_mtd_block_isbad, ptr %_block_isbad.i, align 4
  %_block_markbad.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 43
  %194 = ptrtoint ptr %_block_markbad.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr @spinand_mtd_block_markbad, ptr %_block_markbad.i, align 8
  %_block_isreserved.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 41
  %195 = ptrtoint ptr %_block_isreserved.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @spinand_mtd_block_isreserved, ptr %_block_isreserved.i, align 8
  %_erase.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 21
  %196 = ptrtoint ptr %_erase.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr @spinand_mtd_erase, ptr %_erase.i, align 8
  %_max_bad_blocks.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 44
  %197 = ptrtoint ptr %_max_bad_blocks.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr @nanddev_mtd_max_bad_blocks, ptr %_max_bad_blocks.i, align 4
  %_resume.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 46
  %198 = ptrtoint ptr %_resume.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr @spinand_mtd_resume, ptr %_resume.i, align 4
  %engine.i = getelementptr inbounds %struct.nand_device, ptr %call.i, i32 0, i32 2, i32 5
  %199 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %engine.i, align 4
  %tobool41.not.i = icmp eq ptr %200, null
  br i1 %tobool41.not.i, label %if.end39.i.spinand_init.exit.thread_crit_edge, label %if.then42.i

if.end39.i.spinand_init.exit.thread_crit_edge:    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_init.exit.thread

if.then42.i:                                      ; preds = %if.end39.i
  %call43.i = call i32 @mtd_ooblayout_count_freebytes(ptr noundef %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp.i = icmp slt i32 %call43.i, 0
  br i1 %cmp.i, label %err_cleanup_ecc_engine.i, label %if.then42.i.spinand_init.exit.thread_crit_edge

if.then42.i.spinand_init.exit.thread_crit_edge:   ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_init.exit.thread

spinand_init.exit.thread:                         ; preds = %if.then42.i.spinand_init.exit.thread_crit_edge, %if.end39.i.spinand_init.exit.thread_crit_edge
  %ret.0.i = phi i32 [ %call43.i, %if.then42.i.spinand_init.exit.thread_crit_edge ], [ 0, %if.end39.i.spinand_init.exit.thread_crit_edge ]
  %oobavail.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 7
  %201 = ptrtoint ptr %oobavail.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %ret.0.i, ptr %oobavail.i, align 8
  %strength.i = getelementptr inbounds %struct.nand_device, ptr %call.i, i32 0, i32 2, i32 3, i32 0, i32 3
  %202 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %strength.i, align 4
  %ecc_strength.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 18
  %204 = ptrtoint ptr %ecc_strength.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %ecc_strength.i, align 4
  %step_size.i = getelementptr inbounds %struct.nand_device, ptr %call.i, i32 0, i32 2, i32 3, i32 0, i32 4
  %205 = ptrtoint ptr %step_size.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %step_size.i, align 4
  %ecc_step_size.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 17
  %207 = ptrtoint ptr %ecc_step_size.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %ecc_step_size.i, align 8
  br label %if.end10

err_cleanup_ecc_engine.i:                         ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @nanddev_ecc_engine_cleanup(ptr noundef %call.i) #11
  br label %err_cleanup_nanddev.i

err_cleanup_nanddev.i:                            ; preds = %err_cleanup_ecc_engine.i, %if.end33.i.err_cleanup_nanddev.i_crit_edge
  %ret.1.i = phi i32 [ %call36.i, %if.end33.i.err_cleanup_nanddev.i_crit_edge ], [ %call43.i, %err_cleanup_ecc_engine.i ]
  call void @nanddev_cleanup(ptr noundef %call.i) #11
  br label %err_manuf_cleanup.i

err_manuf_cleanup.i:                              ; preds = %err_cleanup_nanddev.i, %if.end29.i.err_manuf_cleanup.i_crit_edge, %do.end.i
  %ret.2.i = phi i32 [ %retval.0.i116132.i, %do.end.i ], [ %call30.i, %if.end29.i.err_manuf_cleanup.i_crit_edge ], [ %ret.1.i, %err_cleanup_nanddev.i ]
  %208 = ptrtoint ptr %manufacturer.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %manufacturer.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.spinand_manufacturer, ptr %209, i32 0, i32 4
  %210 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ops.i.i, align 4
  %cleanup.i.i = getelementptr inbounds %struct.spinand_manufacturer_ops, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %cleanup.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %cleanup.i.i, align 4
  %tobool.not.i119.i = icmp eq ptr %213, null
  br i1 %tobool.not.i119.i, label %err_manuf_cleanup.i.spinand_init.exit_crit_edge, label %if.then.i.i

err_manuf_cleanup.i.spinand_init.exit_crit_edge:  ; preds = %err_manuf_cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_init.exit

if.then.i.i:                                      ; preds = %err_manuf_cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %213(ptr noundef %call.i) #11
  br label %spinand_init.exit

spinand_init.exit:                                ; preds = %if.then.i.i, %err_manuf_cleanup.i.spinand_init.exit_crit_edge, %if.end21.i.spinand_init.exit_crit_edge, %if.end15.i.spinand_init.exit_crit_edge, %if.end8.i.spinand_init.exit_crit_edge, %do.end11.i.i, %do.end.i.i, %spinand_reset_op.exit.i.i.spinand_init.exit_crit_edge, %spinand_reset_op.exit.thread.i.i
  %ret.3.i = phi i32 [ -12, %if.end15.i.spinand_init.exit_crit_edge ], [ %call22.i, %if.end21.i.spinand_init.exit_crit_edge ], [ -12, %if.end8.i.spinand_init.exit_crit_edge ], [ %ret.2.i, %err_manuf_cleanup.i.spinand_init.exit_crit_edge ], [ %ret.2.i, %if.then.i.i ], [ %call.i.i.i32, %spinand_reset_op.exit.thread.i.i ], [ %call1.i.i.i, %spinand_reset_op.exit.i.i.spinand_init.exit_crit_edge ], [ -22, %do.end11.i.i ], [ %retval.0.i4956.i.i, %do.end.i.i ]
  %databuf49.i = getelementptr inbounds %struct.spinand_device, ptr %call.i, i32 0, i32 11
  %214 = ptrtoint ptr %databuf49.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %databuf49.i, align 8
  call void @kfree(ptr noundef %215) #11
  %216 = ptrtoint ptr %scratchbuf.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %scratchbuf.i, align 8
  call void @kfree(ptr noundef %217) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool8.not = icmp eq i32 %ret.3.i, 0
  br i1 %tobool8.not, label %spinand_init.exit.if.end10_crit_edge, label %spinand_init.exit.cleanup_crit_edge

spinand_init.exit.cleanup_crit_edge:              ; preds = %spinand_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

spinand_init.exit.if.end10_crit_edge:             ; preds = %spinand_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end10:                                         ; preds = %spinand_init.exit.if.end10_crit_edge, %spinand_init.exit.thread
  %call11 = call i32 @mtd_device_parse_register(ptr noundef %call.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %err_spinand_cleanup

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_spinand_cleanup:                              ; preds = %if.end10
  call void @nanddev_cleanup(ptr noundef %call.i) #11
  %manufacturer.i.i35 = getelementptr inbounds %struct.spinand_device, ptr %call.i, i32 0, i32 14
  %218 = ptrtoint ptr %manufacturer.i.i35 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %manufacturer.i.i35, align 4
  %ops.i.i36 = getelementptr inbounds %struct.spinand_manufacturer, ptr %219, i32 0, i32 4
  %220 = ptrtoint ptr %ops.i.i36 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ops.i.i36, align 4
  %cleanup.i.i37 = getelementptr inbounds %struct.spinand_manufacturer_ops, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %cleanup.i.i37 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cleanup.i.i37, align 4
  %tobool.not.i.i38 = icmp eq ptr %223, null
  br i1 %tobool.not.i.i38, label %err_spinand_cleanup.spinand_cleanup.exit_crit_edge, label %if.then.i.i39

err_spinand_cleanup.spinand_cleanup.exit_crit_edge: ; preds = %err_spinand_cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_cleanup.exit

if.then.i.i39:                                    ; preds = %err_spinand_cleanup
  call void @__sanitizer_cov_trace_pc() #13
  call void %223(ptr noundef %call.i) #11
  br label %spinand_cleanup.exit

spinand_cleanup.exit:                             ; preds = %if.then.i.i39, %err_spinand_cleanup.spinand_cleanup.exit_crit_edge
  %databuf.i40 = getelementptr inbounds %struct.spinand_device, ptr %call.i, i32 0, i32 11
  %224 = ptrtoint ptr %databuf.i40 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %databuf.i40, align 8
  call void @kfree(ptr noundef %225) #11
  %226 = ptrtoint ptr %scratchbuf.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %scratchbuf.i, align 8
  call void @kfree(ptr noundef %227) #11
  br label %cleanup

cleanup:                                          ; preds = %spinand_cleanup.exit, %if.end10.cleanup_crit_edge, %spinand_init.exit.cleanup_crit_edge, %spinand_set_of_node.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %spinand_cleanup.exit ], [ -12, %entry.cleanup_crit_edge ], [ %ret.3.i, %spinand_init.exit.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ -12, %spinand_set_of_node.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spinand_remove(ptr nocapture noundef readonly %mem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drvpriv.i = getelementptr inbounds %struct.spi_mem, ptr %mem, i32 0, i32 1
  %0 = ptrtoint ptr %drvpriv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvpriv.i, align 4
  %call2 = tail call i32 @mtd_device_unregister(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @nanddev_cleanup(ptr noundef %1) #11
  %manufacturer.i.i = getelementptr inbounds %struct.spinand_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %manufacturer.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %manufacturer.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.spinand_manufacturer, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %cleanup.i.i = getelementptr inbounds %struct.spinand_manufacturer_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cleanup.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cleanup.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.spinand_cleanup.exit_crit_edge, label %if.then.i.i

if.end.spinand_cleanup.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_cleanup.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %7(ptr noundef %1) #11
  br label %spinand_cleanup.exit

spinand_cleanup.exit:                             ; preds = %if.then.i.i, %if.end.spinand_cleanup.exit_crit_edge
  %databuf.i = getelementptr inbounds %struct.spinand_device, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %databuf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %databuf.i, align 8
  tail call void @kfree(ptr noundef %9) #11
  %scratchbuf.i = getelementptr inbounds %struct.spinand_device, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %scratchbuf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scratchbuf.i, align 8
  tail call void @kfree(ptr noundef %11) #11
  br label %cleanup

cleanup:                                          ; preds = %spinand_cleanup.exit, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spinand_init_flash(ptr noundef %spinand) unnamed_addr #0 align 64 {
entry:
  %op.i.i59 = alloca %struct.spi_mem_op, align 8
  %op.i.i = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %spimem = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 1
  %0 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spimem, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ntargets.i = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 1, i32 8
  %4 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ntargets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp19.not.i = icmp eq i32 %5, 0
  br i1 %cmp19.not.i, label %entry.if.end_crit_edge, label %if.end21.i.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end21.i.lr.ph.i:                               ; preds = %entry
  %cur_target.i.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 8
  %select_target.i.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 7
  %cfg_cache.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 10
  %buswidth.i.i = getelementptr inbounds %struct.anon.73, ptr %op.i.i, i32 0, i32 1
  %dtr.i.i = getelementptr inbounds %struct.anon.73, ptr %op.i.i, i32 0, i32 2
  %opcode.i.i = getelementptr inbounds %struct.anon.73, ptr %op.i.i, i32 0, i32 3
  %addr.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 1
  %buswidth2.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 1, i32 1
  %dtr3.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 1, i32 2
  %val7.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 1, i32 3
  %dummy.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 2
  %buswidth9.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 2, i32 1
  %dtr10.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 2, i32 2
  %data.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3
  %dtr15.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3, i32 1
  %dir.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3, i32 2
  %nbytes19.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3, i32 3
  %buf.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3, i32 4
  %scratchbuf.i.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 13
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %for.inc.i.if.end21.i.i_crit_edge, %if.end21.i.lr.ph.i
  %6 = phi i32 [ %5, %if.end21.i.lr.ph.i ], [ %41, %for.inc.i.if.end21.i.i_crit_edge ]
  %target.020.i = phi i32 [ 0, %if.end21.i.lr.ph.i ], [ %inc.i, %for.inc.i.if.end21.i.i_crit_edge ]
  %7 = ptrtoint ptr %cur_target.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_target.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %target.020.i)
  %cmp22.i.i = icmp eq i32 %8, %target.020.i
  br i1 %cmp22.i.i, label %if.end21.i.i.if.end.i_crit_edge, label %if.end24.i.i

if.end21.i.i.if.end.i_crit_edge:                  ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end24.i.i:                                     ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp27.i.i = icmp eq i32 %6, 1
  br i1 %cmp27.i.i, label %if.end24.i.i.if.end.sink.split.i_crit_edge, label %if.end30.i.i

if.end24.i.i.if.end.sink.split.i_crit_edge:       ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.sink.split.i

if.end30.i.i:                                     ; preds = %if.end24.i.i
  %9 = ptrtoint ptr %select_target.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %select_target.i.i, align 4
  %call31.i.i = call i32 %10(ptr noundef %spinand, i32 noundef %target.020.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end30.i.i.if.end.sink.split.i_crit_edge, label %if.end30.i.i.cleanup_crit_edge

if.end30.i.i.cleanup_crit_edge:                   ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30.i.i.if.end.sink.split.i_crit_edge:       ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %if.end30.i.i.if.end.sink.split.i_crit_edge, %if.end24.i.i.if.end.sink.split.i_crit_edge
  %11 = ptrtoint ptr %cur_target.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %target.020.i, ptr %cur_target.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.sink.split.i, %if.end21.i.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %cfg_cache.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg_cache.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i.i) #11
  %14 = call ptr @memset(ptr %op.i.i, i32 255, i32 48)
  %15 = ptrtoint ptr %op.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %op.i.i, align 8
  %16 = ptrtoint ptr %buswidth.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %buswidth.i.i, align 1
  %17 = ptrtoint ptr %dtr.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 127, ptr %dtr.i.i, align 2
  %18 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 15, ptr %opcode.i.i, align 4
  %19 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %addr.i.i, align 8
  %20 = ptrtoint ptr %buswidth2.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %buswidth2.i.i, align 1
  %21 = ptrtoint ptr %dtr3.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 127, ptr %dtr3.i.i, align 2
  %22 = ptrtoint ptr %val7.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 176, ptr %val7.i.i, align 8
  %23 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %dummy.i.i, align 8
  %24 = ptrtoint ptr %buswidth9.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %buswidth9.i.i, align 1
  %25 = ptrtoint ptr %dtr10.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 127, ptr %dtr10.i.i, align 2
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %data.i.i, align 4
  %27 = ptrtoint ptr %dtr15.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 127, ptr %dtr15.i.i, align 1
  %28 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %dir.i.i, align 8
  %29 = ptrtoint ptr %nbytes19.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %nbytes19.i.i, align 4
  %30 = ptrtoint ptr %scratchbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %scratchbuf.i.i, align 8
  %32 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %buf.i.i, align 8
  %33 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spimem, align 8
  %call.i.i = call i32 @spi_mem_exec_op(ptr noundef %34, ptr noundef nonnull %op.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.inc.i, label %spinand_read_reg_op.exit.i

spinand_read_reg_op.exit.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i.i) #11
  br label %cleanup

for.inc.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr i8, ptr %13, i32 %target.020.i
  %35 = ptrtoint ptr %scratchbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %scratchbuf.i.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 1
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i.i) #11
  %inc.i = add nuw i32 %target.020.i, 1
  %40 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ntargets.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %41
  br i1 %cmp.i, label %for.inc.i.if.end21.i.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.i.if.end21.i.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %flags.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 4
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end6_crit_edge, label %if.end.i52

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end.i52:                                       ; preds = %if.end
  %op_templates.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 5
  %44 = ptrtoint ptr %op_templates.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %op_templates.i, align 4
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %47)
  %cmp.i51 = icmp eq i8 %47, 4
  br i1 %cmp.i51, label %if.end.i52.if.then15.i_crit_edge, label %lor.lhs.false.i

if.end.i52.if.then15.i_crit_edge:                 ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

lor.lhs.false.i:                                  ; preds = %if.end.i52
  %write_cache.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 5, i32 1
  %48 = ptrtoint ptr %write_cache.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_cache.i, align 4
  %data3.i = getelementptr inbounds %struct.spi_mem_op, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %data3.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %data3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %51)
  %cmp6.i = icmp eq i8 %51, 4
  br i1 %cmp6.i, label %lor.lhs.false.i.if.then15.i_crit_edge, label %lor.lhs.false8.i

lor.lhs.false.i.if.then15.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %update_cache.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 5, i32 2
  %52 = ptrtoint ptr %update_cache.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %update_cache.i, align 4
  %data10.i = getelementptr inbounds %struct.spi_mem_op, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %data10.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %data10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %55)
  %cmp13.i = icmp eq i8 %55, 4
  br i1 %cmp13.i, label %lor.lhs.false8.i.if.then15.i_crit_edge, label %lor.lhs.false8.i.spinand_init_quad_enable.exit_crit_edge

lor.lhs.false8.i.spinand_init_quad_enable.exit_crit_edge: ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_init_quad_enable.exit

lor.lhs.false8.i.if.then15.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.then15.i:                                      ; preds = %lor.lhs.false8.i.if.then15.i_crit_edge, %lor.lhs.false.i.if.then15.i_crit_edge, %if.end.i52.if.then15.i_crit_edge
  br label %spinand_init_quad_enable.exit

spinand_init_quad_enable.exit:                    ; preds = %if.then15.i, %lor.lhs.false8.i.spinand_init_quad_enable.exit_crit_edge
  %enable.0.off0.i = phi i1 [ true, %if.then15.i ], [ false, %lor.lhs.false8.i.spinand_init_quad_enable.exit_crit_edge ]
  %conv19.i = zext i1 %enable.0.off0.i to i8
  %call.i = call i32 @spinand_upd_cfg(ptr noundef %spinand, i8 noundef zeroext 1, i8 noundef zeroext %conv19.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %spinand_init_quad_enable.exit.if.end6_crit_edge, label %spinand_init_quad_enable.exit.cleanup_crit_edge

spinand_init_quad_enable.exit.cleanup_crit_edge:  ; preds = %spinand_init_quad_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

spinand_init_quad_enable.exit.if.end6_crit_edge:  ; preds = %spinand_init_quad_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %spinand_init_quad_enable.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %call7 = call i32 @spinand_upd_cfg(ptr noundef %spinand, i8 noundef zeroext 64, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %manufacturer.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 14
  %56 = ptrtoint ptr %manufacturer.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %manufacturer.i, align 4
  %ops.i = getelementptr inbounds %struct.spinand_manufacturer, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %tobool.not.i54 = icmp eq ptr %61, null
  br i1 %tobool.not.i54, label %if.end10.for.cond.preheader_crit_edge, label %spinand_manufacturer_init.exit

if.end10.for.cond.preheader_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

spinand_manufacturer_init.exit:                   ; preds = %if.end10
  %call.i55 = call i32 %61(ptr noundef %spinand) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool12.not = icmp eq i32 %call.i55, 0
  br i1 %tobool12.not, label %spinand_manufacturer_init.exit.for.cond.preheader_crit_edge, label %do.end

spinand_manufacturer_init.exit.for.cond.preheader_crit_edge: ; preds = %spinand_manufacturer_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %spinand_manufacturer_init.exit.for.cond.preheader_crit_edge, %if.end10.for.cond.preheader_crit_edge
  %62 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ntargets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp94.not = icmp eq i32 %63, 0
  br i1 %cmp94.not, label %for.cond.preheader.cleanup_crit_edge, label %if.end21.i.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21.i.lr.ph:                                 ; preds = %for.cond.preheader
  %cur_target.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 8
  %select_target.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 7
  %buswidth.i.i60 = getelementptr inbounds %struct.anon.73, ptr %op.i.i59, i32 0, i32 1
  %dtr.i.i61 = getelementptr inbounds %struct.anon.73, ptr %op.i.i59, i32 0, i32 2
  %opcode.i.i62 = getelementptr inbounds %struct.anon.73, ptr %op.i.i59, i32 0, i32 3
  %addr.i.i63 = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i59, i32 0, i32 1
  %buswidth2.i.i64 = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i59, i32 0, i32 1, i32 1
  %dtr3.i.i65 = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i59, i32 0, i32 1, i32 2
  %val7.i.i66 = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i59, i32 0, i32 1, i32 3
  %dummy.i.i67 = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i59, i32 0, i32 2
  %buswidth9.i.i68 = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i59, i32 0, i32 2, i32 1
  %dtr10.i.i69 = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i59, i32 0, i32 2, i32 2
  %data.i.i70 = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i59, i32 0, i32 3
  %dtr15.i.i71 = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i59, i32 0, i32 3, i32 1
  %dir.i.i72 = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i59, i32 0, i32 3, i32 2
  %nbytes19.i.i73 = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i59, i32 0, i32 3, i32 3
  %buf.i.i74 = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i59, i32 0, i32 3, i32 4
  %scratchbuf.i.i75 = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 13
  br label %if.end21.i

do.end:                                           ; preds = %spinand_manufacturer_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef %call.i55) #16
  br label %cleanup

for.cond:                                         ; preds = %if.end18
  %inc = add nuw i32 %i.095, 1
  %64 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ntargets.i, align 8
  %cmp = icmp ult i32 %inc, %65
  br i1 %cmp, label %for.cond.if.end21.i_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.if.end21.i_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.end21.i:                                       ; preds = %for.cond.if.end21.i_crit_edge, %if.end21.i.lr.ph
  %66 = phi i32 [ %63, %if.end21.i.lr.ph ], [ %65, %for.cond.if.end21.i_crit_edge ]
  %i.095 = phi i32 [ 0, %if.end21.i.lr.ph ], [ %inc, %for.cond.if.end21.i_crit_edge ]
  %67 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cur_target.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %i.095)
  %cmp22.i = icmp eq i32 %68, %i.095
  br i1 %cmp22.i, label %if.end21.i.if.end18_crit_edge, label %if.end24.i

if.end21.i.if.end18_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end24.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp27.i = icmp eq i32 %66, 1
  br i1 %cmp27.i, label %if.end24.i.if.end18.sink.split_crit_edge, label %if.end30.i

if.end24.i.if.end18.sink.split_crit_edge:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.sink.split

if.end30.i:                                       ; preds = %if.end24.i
  %69 = ptrtoint ptr %select_target.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %select_target.i, align 4
  %call31.i = call i32 %70(ptr noundef %spinand, i32 noundef %i.095) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end30.i.if.end18.sink.split_crit_edge, label %if.end30.i.if.then24_crit_edge

if.end30.i.if.then24_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.end30.i.if.end18.sink.split_crit_edge:         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %if.end30.i.if.end18.sink.split_crit_edge, %if.end24.i.if.end18.sink.split_crit_edge
  %71 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %i.095, ptr %cur_target.i, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.end21.i.if.end18_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i.i59) #11
  %72 = call ptr @memset(ptr %op.i.i59, i32 255, i32 48)
  %73 = ptrtoint ptr %op.i.i59 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %op.i.i59, align 8
  %74 = ptrtoint ptr %buswidth.i.i60 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %buswidth.i.i60, align 1
  %75 = ptrtoint ptr %dtr.i.i61 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 127, ptr %dtr.i.i61, align 2
  %76 = ptrtoint ptr %opcode.i.i62 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 31, ptr %opcode.i.i62, align 4
  %77 = ptrtoint ptr %addr.i.i63 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %addr.i.i63, align 8
  %78 = ptrtoint ptr %buswidth2.i.i64 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %buswidth2.i.i64, align 1
  %79 = ptrtoint ptr %dtr3.i.i65 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 127, ptr %dtr3.i.i65, align 2
  %80 = ptrtoint ptr %val7.i.i66 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 160, ptr %val7.i.i66, align 8
  %81 = ptrtoint ptr %dummy.i.i67 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %dummy.i.i67, align 8
  %82 = ptrtoint ptr %buswidth9.i.i68 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %buswidth9.i.i68, align 1
  %83 = ptrtoint ptr %dtr10.i.i69 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 127, ptr %dtr10.i.i69, align 2
  %84 = ptrtoint ptr %data.i.i70 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %data.i.i70, align 4
  %85 = ptrtoint ptr %dtr15.i.i71 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 127, ptr %dtr15.i.i71, align 1
  %86 = ptrtoint ptr %dir.i.i72 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 2, ptr %dir.i.i72, align 8
  %87 = ptrtoint ptr %nbytes19.i.i73 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %nbytes19.i.i73, align 4
  %88 = ptrtoint ptr %scratchbuf.i.i75 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %scratchbuf.i.i75, align 8
  %90 = ptrtoint ptr %buf.i.i74 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %buf.i.i74, align 8
  %91 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %89, align 1
  %92 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %spimem, align 8
  %call.i.i77 = call i32 @spi_mem_exec_op(ptr noundef %93, ptr noundef nonnull %op.i.i59) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i.i59) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77)
  %tobool20.not = icmp eq i32 %call.i.i77, 0
  br i1 %tobool20.not, label %for.cond, label %if.end18.if.then24_crit_edge

if.end18.if.then24_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.then24:                                        ; preds = %if.end18.if.then24_crit_edge, %if.end30.i.if.then24_crit_edge
  %ret.1.ph = phi i32 [ %call31.i, %if.end30.i.if.then24_crit_edge ], [ %call.i.i77, %if.end18.if.then24_crit_edge ]
  %94 = ptrtoint ptr %manufacturer.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %manufacturer.i, align 4
  %ops.i79 = getelementptr inbounds %struct.spinand_manufacturer, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %ops.i79 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops.i79, align 4
  %cleanup.i = getelementptr inbounds %struct.spinand_manufacturer_ops, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cleanup.i, align 4
  %tobool.not.i80 = icmp eq ptr %99, null
  br i1 %tobool.not.i80, label %if.then24.cleanup_crit_edge, label %if.then.i81

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i81:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  call void %99(ptr noundef %spinand) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i81, %if.then24.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %spinand_init_quad_enable.exit.cleanup_crit_edge, %spinand_read_reg_op.exit.i, %if.end30.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i55, %do.end ], [ %call.i, %spinand_init_quad_enable.exit.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call.i.i, %spinand_read_reg_op.exit.i ], [ %ret.1.ph, %if.then24.cleanup_crit_edge ], [ %ret.1.ph, %if.then.i81 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call31.i.i, %if.end30.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nanddev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nanddev_ecc_engine_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spinand_mtd_read(ptr noundef %mtd, i64 noundef %from, ptr nocapture noundef %ops) #0 align 64 {
entry:
  %iter = alloca %struct.nand_io_iter, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %iter) #11
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ooblayout = getelementptr inbounds %struct.spinand_device, ptr %mtd, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %ooblayout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ooblayout, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %disable_ecc.0.off0 = phi i1 [ true, %if.then ], [ false, %lor.lhs.false.if.end_crit_edge ]
  %lock = getelementptr inbounds %struct.spinand_device, ptr %mtd, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %4 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %iter, align 4
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ops, align 4
  %mode3.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 8
  %7 = ptrtoint ptr %mode3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %mode3.i, align 4
  %pagesize.i.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %pagesize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pagesize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %from)
  %cmp165.i.i = icmp ult i64 %from, 4294967296
  br i1 %cmp165.i.i, label %if.then169.i.i, label %if.else175.i.i, !prof !74

if.then169.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv170.i.i = trunc i64 %from to i32
  %.frozen = freeze i32 %9
  %div173.i.i = udiv i32 %conv170.i.i, %.frozen
  %10 = mul i32 %div173.i.i, %.frozen
  %rem171.i.i.decomposed = sub i32 %conv170.i.i, %10
  %conv174.i.i = zext i32 %div173.i.i to i64
  br label %if.end179.i.i

if.else175.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %from) #18, !srcloc !76
  %asmresult.i1189.i.i = extractvalue { i64, i64 } %11, 0
  %asmresult1.i.i.i = extractvalue { i64, i64 } %11, 1
  %shr.i.i.i = lshr i64 %asmresult.i1189.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %if.end179.i.i

if.end179.i.i:                                    ; preds = %if.else175.i.i, %if.then169.i.i
  %tmp.0.i.i = phi i64 [ %conv174.i.i, %if.then169.i.i ], [ %asmresult1.i.i.i, %if.else175.i.i ]
  %__rem.0.i.i = phi i32 [ %rem171.i.i.decomposed, %if.then169.i.i ], [ %conv.i.i.i, %if.else175.i.i ]
  %pages_per_eraseblock.i.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %pages_per_eraseblock.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pages_per_eraseblock.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %tmp.0.i.i)
  %cmp383.i.i = icmp ult i64 %tmp.0.i.i, 4294967296
  br i1 %cmp383.i.i, label %if.then391.i.i, label %if.else397.i.i, !prof !74

if.then391.i.i:                                   ; preds = %if.end179.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv392.i.i = trunc i64 %tmp.0.i.i to i32
  %conv392.i.i.frozen = freeze i32 %conv392.i.i
  %.frozen118 = freeze i32 %13
  %div395.i.i = udiv i32 %conv392.i.i.frozen, %.frozen118
  %14 = mul i32 %div395.i.i, %.frozen118
  %rem393.i.i.decomposed = sub i32 %conv392.i.i.frozen, %14
  %conv396.i.i = zext i32 %div395.i.i to i64
  br label %if.end401.i.i

if.else397.i.i:                                   ; preds = %if.end179.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %tmp.0.i.i) #18, !srcloc !76
  %asmresult.i1218.i.i = extractvalue { i64, i64 } %15, 0
  %asmresult1.i1219.i.i = extractvalue { i64, i64 } %15, 1
  %shr.i1220.i.i = lshr i64 %asmresult.i1218.i.i, 32
  %conv.i1221.i.i = trunc i64 %shr.i1220.i.i to i32
  br label %if.end401.i.i

if.end401.i.i:                                    ; preds = %if.else397.i.i, %if.then391.i.i
  %tmp.1.i.i = phi i64 [ %conv396.i.i, %if.then391.i.i ], [ %asmresult1.i1219.i.i, %if.else397.i.i ]
  %__rem183.0.i.i = phi i32 [ %rem393.i.i.decomposed, %if.then391.i.i ], [ %conv.i1221.i.i, %if.else397.i.i ]
  %page.i.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %__rem183.0.i.i, ptr %page.i.i, align 4
  %eraseblocks_per_lun.i.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %eraseblocks_per_lun.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %eraseblocks_per_lun.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %tmp.1.i.i)
  %cmp605.i.i = icmp ult i64 %tmp.1.i.i, 4294967296
  br i1 %cmp605.i.i, label %if.then613.i.i, label %if.else619.i.i, !prof !74

if.then613.i.i:                                   ; preds = %if.end401.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv614.i.i = trunc i64 %tmp.1.i.i to i32
  %conv614.i.i.frozen = freeze i32 %conv614.i.i
  %.frozen119 = freeze i32 %18
  %div617.i.i = udiv i32 %conv614.i.i.frozen, %.frozen119
  %19 = mul i32 %div617.i.i, %.frozen119
  %rem615.i.i.decomposed = sub i32 %conv614.i.i.frozen, %19
  %conv618.i.i = zext i32 %div617.i.i to i64
  br label %if.end623.i.i

if.else619.i.i:                                   ; preds = %if.end401.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %tmp.1.i.i) #18, !srcloc !76
  %asmresult.i1250.i.i = extractvalue { i64, i64 } %20, 0
  %asmresult1.i1251.i.i = extractvalue { i64, i64 } %20, 1
  %shr.i1252.i.i = lshr i64 %asmresult.i1250.i.i, 32
  %conv.i1253.i.i = trunc i64 %shr.i1252.i.i to i32
  br label %if.end623.i.i

if.end623.i.i:                                    ; preds = %if.else619.i.i, %if.then613.i.i
  %tmp.2.i.i = phi i64 [ %conv618.i.i, %if.then613.i.i ], [ %asmresult1.i1251.i.i, %if.else619.i.i ]
  %__rem405.0.i.i = phi i32 [ %rem615.i.i.decomposed, %if.then613.i.i ], [ %conv.i1253.i.i, %if.else619.i.i ]
  %eraseblock.i.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %eraseblock.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %__rem405.0.i.i, ptr %eraseblock.i.i, align 4
  %planes_per_lun.i.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 6
  %22 = ptrtoint ptr %planes_per_lun.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %planes_per_lun.i.i, align 8
  %rem627.i.i = urem i32 %__rem405.0.i.i, %23
  %plane.i.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %plane.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rem627.i.i, ptr %plane.i.i, align 4
  %luns_per_target.i.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 7
  %25 = ptrtoint ptr %luns_per_target.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %luns_per_target.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %tmp.2.i.i)
  %cmp830.i.i = icmp ult i64 %tmp.2.i.i, 4294967296
  br i1 %cmp830.i.i, label %if.then838.i.i, label %if.else844.i.i, !prof !74

if.then838.i.i:                                   ; preds = %if.end623.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv839.i.i = trunc i64 %tmp.2.i.i to i32
  %conv839.i.i.frozen = freeze i32 %conv839.i.i
  %.frozen120 = freeze i32 %26
  %div842.i.i = udiv i32 %conv839.i.i.frozen, %.frozen120
  %27 = mul i32 %div842.i.i, %.frozen120
  %rem840.i.i.decomposed = sub i32 %conv839.i.i.frozen, %27
  br label %nanddev_io_iter_init.exit

if.else844.i.i:                                   ; preds = %if.end623.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %26, i64 %tmp.2.i.i) #18, !srcloc !76
  %asmresult.i1282.i.i = extractvalue { i64, i64 } %28, 0
  %asmresult1.i1283.i.i = extractvalue { i64, i64 } %28, 1
  %shr.i1284.i.i = lshr i64 %asmresult.i1282.i.i, 32
  %conv.i1285.i.i = trunc i64 %shr.i1284.i.i to i32
  %extract.t1384.i.i = trunc i64 %asmresult1.i1283.i.i to i32
  br label %nanddev_io_iter_init.exit

nanddev_io_iter_init.exit:                        ; preds = %if.else844.i.i, %if.then838.i.i
  %tmp.3.off0.i.i = phi i32 [ %div842.i.i, %if.then838.i.i ], [ %extract.t1384.i.i, %if.else844.i.i ]
  %__rem630.0.i.i = phi i32 [ %rem840.i.i.decomposed, %if.then838.i.i ], [ %conv.i1285.i.i, %if.else844.i.i ]
  %pos.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 1
  %lun.i.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %__rem630.0.i.i, ptr %lun.i.i, align 4
  %30 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %tmp.3.off0.i.i, ptr %pos.i, align 4
  %dataoffs.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 2
  %31 = ptrtoint ptr %dataoffs.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %__rem.0.i.i, ptr %dataoffs.i, align 4
  %ooboffs.i = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %32 = ptrtoint ptr %ooboffs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ooboffs.i, align 4
  %ooboffs8.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 5
  %34 = ptrtoint ptr %ooboffs8.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %ooboffs8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i59.i = icmp eq i32 %6, 1
  %oobavail.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 7
  %oobsize.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %cond.in.i.i = select i1 %cmp.i59.i, ptr %oobavail.i.i, ptr %oobsize.i.i
  %35 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %cond.i.i = load i32, ptr %cond.in.i.i, align 4
  %oobbytes_per_page.i = getelementptr inbounds %struct.nand_io_iter, ptr %iter, i32 0, i32 1
  %36 = ptrtoint ptr %oobbytes_per_page.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond.i.i, ptr %oobbytes_per_page.i, align 4
  %len.i = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i, align 4
  %dataleft.i = getelementptr inbounds %struct.nand_io_iter, ptr %iter, i32 0, i32 2
  %39 = ptrtoint ptr %dataleft.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %dataleft.i, align 4
  %ooblen.i = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %40 = ptrtoint ptr %ooblen.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ooblen.i, align 4
  %oobleft.i = getelementptr inbounds %struct.nand_io_iter, ptr %iter, i32 0, i32 3
  %42 = ptrtoint ptr %oobleft.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %oobleft.i, align 4
  %datbuf.i = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %43 = ptrtoint ptr %datbuf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %datbuf.i, align 4
  %databuf.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 4
  %45 = ptrtoint ptr %databuf.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %databuf.i, align 4
  %sub.i = sub i32 %9, %__rem.0.i.i
  %46 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %38) #11
  %datalen.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 3
  %47 = ptrtoint ptr %datalen.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %datalen.i, align 4
  %oobbuf.i = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %48 = ptrtoint ptr %oobbuf.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %oobbuf.i, align 4
  %oobbuf16.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 7
  %50 = ptrtoint ptr %oobbuf16.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %oobbuf16.i, align 4
  %sub20.i = sub i32 %cond.i.i, %33
  %51 = tail call i32 @llvm.umin.i32(i32 %sub20.i, i32 %41) #11
  %ooblen29.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 6
  %ntargets.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 8
  %cur_target.i = getelementptr inbounds %struct.spinand_device, ptr %mtd, i32 0, i32 8
  %select_target.i = getelementptr inbounds %struct.spinand_device, ptr %mtd, i32 0, i32 7
  %retlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %oobretlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %nanddev_io_iter_next_page.exit, %nanddev_io_iter_init.exit
  %storemerge = phi i32 [ %51, %nanddev_io_iter_init.exit ], [ %117, %nanddev_io_iter_next_page.exit ]
  %max_bitflips.0 = phi i32 [ 0, %nanddev_io_iter_init.exit ], [ %max_bitflips.1, %nanddev_io_iter_next_page.exit ]
  %ecc_failed.0.off0 = phi i1 [ false, %nanddev_io_iter_init.exit ], [ %ecc_failed.1.off0, %nanddev_io_iter_next_page.exit ]
  %52 = ptrtoint ptr %ooblen29.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %storemerge, ptr %ooblen29.i, align 4
  %53 = ptrtoint ptr %dataleft.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dataleft.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i, label %nanddev_io_iter_end.exit, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

nanddev_io_iter_end.exit:                         ; preds = %for.cond
  %55 = ptrtoint ptr %oobleft.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %oobleft.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool1.not.i = icmp eq i32 %56, 0
  br i1 %tobool1.not.i, label %nanddev_io_iter_end.exit.for.end.thread_crit_edge, label %nanddev_io_iter_end.exit.for.body_crit_edge

nanddev_io_iter_end.exit.for.body_crit_edge:      ; preds = %nanddev_io_iter_end.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

nanddev_io_iter_end.exit.for.end.thread_crit_edge: ; preds = %nanddev_io_iter_end.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

for.body:                                         ; preds = %nanddev_io_iter_end.exit.for.body_crit_edge, %for.cond.for.body_crit_edge
  br i1 %disable_ecc.0.off0, label %if.then4, label %for.body.if.end6_crit_edge

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %mode3.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %mode3.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %for.body.if.end6_crit_edge
  %58 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pos.i, align 4
  %60 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ntargets.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %59)
  %cmp.not.i = icmp ugt i32 %61, %59
  br i1 %cmp.not.i, label %if.end21.i, label %do.end.i, !prof !74

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef null) #11
  br label %for.end.thread

if.end21.i:                                       ; preds = %if.end6
  %62 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cur_target.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %59)
  %cmp22.i = icmp eq i32 %63, %59
  br i1 %cmp22.i, label %if.end21.i.if.end11_crit_edge, label %if.end24.i

if.end21.i.if.end11_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end24.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp27.i = icmp eq i32 %61, 1
  br i1 %cmp27.i, label %if.end24.i.if.end11.sink.split_crit_edge, label %if.end30.i

if.end24.i.if.end11.sink.split_crit_edge:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.sink.split

if.end30.i:                                       ; preds = %if.end24.i
  %64 = ptrtoint ptr %select_target.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %select_target.i, align 4
  %call31.i = call i32 %65(ptr noundef %mtd, i32 noundef %59) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end30.i.if.end11.sink.split_crit_edge, label %if.end30.i.for.end.thread_crit_edge

if.end30.i.for.end.thread_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

if.end30.i.if.end11.sink.split_crit_edge:         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %if.end30.i.if.end11.sink.split_crit_edge, %if.end24.i.if.end11.sink.split_crit_edge
  %66 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %59, ptr %cur_target.i, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %if.end21.i.if.end11_crit_edge
  %call13 = call fastcc i32 @spinand_read_page(ptr noundef %mtd, ptr noundef nonnull %iter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call13)
  %cmp14 = icmp sgt i32 %call13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call13)
  %cmp15.not = icmp eq i32 %call13, -74
  %or.cond = or i1 %cmp14, %cmp15.not
  br i1 %or.cond, label %if.end17, label %if.end11.for.end.thread_crit_edge

if.end11.for.end.thread_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

if.end17:                                         ; preds = %if.end11
  %67 = call i32 @llvm.umax.i32(i32 %max_bitflips.0, i32 %call13)
  %max_bitflips.1 = select i1 %cmp15.not, i32 %max_bitflips.0, i32 %67
  %ecc_failed.1.off0 = select i1 %cmp15.not, i1 true, i1 %ecc_failed.0.off0
  %68 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %datalen.i, align 4
  %70 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %retlen, align 4
  %add = add i32 %71, %69
  store i32 %add, ptr %retlen, align 4
  %72 = ptrtoint ptr %ooblen29.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ooblen29.i, align 4
  %74 = ptrtoint ptr %oobretlen to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %oobretlen, align 4
  %add24 = add i32 %75, %73
  store i32 %add24, ptr %oobretlen, align 4
  %76 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %page.i.i, align 4
  %78 = ptrtoint ptr %pages_per_eraseblock.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pages_per_eraseblock.i.i, align 4
  %sub.i.i63 = add i32 %79, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %sub.i.i63)
  %cmp.not.i.i = icmp ult i32 %77, %sub.i.i63
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i65

if.then.i.i65:                                    ; preds = %if.end17
  %80 = ptrtoint ptr %eraseblock.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %eraseblock.i.i, align 4
  %82 = ptrtoint ptr %eraseblocks_per_lun.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %eraseblocks_per_lun.i.i, align 8
  %sub.i.i.i = add i32 %83, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %sub.i.i.i)
  %cmp.not.i.i.i64 = icmp ult i32 %81, %sub.i.i.i
  br i1 %cmp.not.i.i.i64, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i65
  %84 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %lun.i.i, align 4
  %86 = ptrtoint ptr %luns_per_target.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %luns_per_target.i.i, align 4
  %sub.i.i.i.i = add i32 %87, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i.i = icmp ult i32 %85, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %88 = call ptr @memset(ptr %lun.i.i, i32 0, i32 16)
  %89 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pos.i, align 4
  %inc.i.i.i.i.i = add i32 %90, 1
  store i32 %inc.i.i.i.i.i, ptr %pos.i, align 4
  br label %nanddev_io_iter_next_page.exit

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i.i.i.i = add nuw i32 %85, 1
  %91 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %inc.i.i.i.i, ptr %lun.i.i, align 4
  %92 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %page.i.i, align 4
  %93 = ptrtoint ptr %plane.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %plane.i.i, align 4
  %94 = ptrtoint ptr %eraseblock.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %eraseblock.i.i, align 4
  br label %nanddev_io_iter_next_page.exit

if.end.i.i.i:                                     ; preds = %if.then.i.i65
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i.i.i = add nuw i32 %81, 1
  %95 = ptrtoint ptr %eraseblock.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %inc.i.i.i, ptr %eraseblock.i.i, align 4
  %96 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %page.i.i, align 4
  %97 = ptrtoint ptr %planes_per_lun.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %planes_per_lun.i.i, align 8
  %rem.i.i.i = urem i32 %inc.i.i.i, %98
  %99 = ptrtoint ptr %plane.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %rem.i.i.i, ptr %plane.i.i, align 4
  br label %nanddev_io_iter_next_page.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i.i = add nuw i32 %77, 1
  %100 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %inc.i.i, ptr %page.i.i, align 4
  br label %nanddev_io_iter_next_page.exit

nanddev_io_iter_next_page.exit:                   ; preds = %if.end.i.i, %if.end.i.i.i, %if.end.i.i.i.i, %if.then.i.i.i.i
  %101 = ptrtoint ptr %dataleft.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dataleft.i, align 4
  %sub.i68 = sub i32 %102, %69
  store i32 %sub.i68, ptr %dataleft.i, align 4
  %103 = ptrtoint ptr %databuf.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %databuf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %104, i32 %69
  store ptr %add.ptr.i, ptr %databuf.i, align 4
  %105 = ptrtoint ptr %oobleft.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %oobleft.i, align 4
  %sub6.i = sub i32 %106, %73
  store i32 %sub6.i, ptr %oobleft.i, align 4
  %107 = ptrtoint ptr %oobbuf16.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %oobbuf16.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %108, i32 %73
  store ptr %add.ptr10.i, ptr %oobbuf16.i, align 4
  %109 = ptrtoint ptr %dataoffs.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %dataoffs.i, align 4
  %110 = ptrtoint ptr %ooboffs8.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %ooboffs8.i, align 4
  %111 = ptrtoint ptr %pagesize.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pagesize.i.i, align 4
  %113 = call i32 @llvm.umin.i32(i32 %112, i32 %sub.i68) #11
  %114 = ptrtoint ptr %datalen.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %datalen.i, align 4
  %115 = ptrtoint ptr %oobbytes_per_page.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %oobbytes_per_page.i, align 4
  %117 = call i32 @llvm.umin.i32(i32 %116, i32 %sub6.i) #11
  br label %for.cond

for.end.thread:                                   ; preds = %if.end11.for.end.thread_crit_edge, %if.end30.i.for.end.thread_crit_edge, %do.end.i, %nanddev_io_iter_end.exit.for.end.thread_crit_edge
  %ret.181 = phi i32 [ -22, %do.end.i ], [ %call13, %if.end11.for.end.thread_crit_edge ], [ %call31.i, %if.end30.i.for.end.thread_crit_edge ], [ 0, %nanddev_io_iter_end.exit.for.end.thread_crit_edge ]
  %118 = phi i32 [ -22, %do.end.i ], [ %call13, %if.end11.for.end.thread_crit_edge ], [ %call31.i, %if.end30.i.for.end.thread_crit_edge ], [ -74, %nanddev_io_iter_end.exit.for.end.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  %ret.2 = select i1 %ecc_failed.0.off0, i32 %118, i32 %ret.181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool31.not = icmp eq i32 %ret.2, 0
  %cond35 = select i1 %tobool31.not, i32 %max_bitflips.0, i32 %ret.2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %iter) #11
  ret i32 %cond35
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spinand_mtd_write(ptr noundef %mtd, i64 noundef %to, ptr nocapture noundef %ops) #0 align 64 {
entry:
  %iter = alloca %struct.nand_io_iter, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %iter) #11
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ooblayout = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 15
  %2 = ptrtoint ptr %ooblayout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ooblayout, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %disable_ecc.0.off0 = phi i1 [ true, %if.then ], [ false, %lor.lhs.false.if.end_crit_edge ]
  %lock = getelementptr inbounds %struct.spinand_device, ptr %mtd, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %4 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %iter, align 4
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ops, align 4
  %mode3.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 8
  %7 = ptrtoint ptr %mode3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %mode3.i, align 4
  %pagesize.i.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %pagesize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pagesize.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %to)
  %cmp165.i.i = icmp ult i64 %to, 4294967296
  br i1 %cmp165.i.i, label %if.then169.i.i, label %if.else175.i.i, !prof !74

if.then169.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv170.i.i = trunc i64 %to to i32
  %.frozen = freeze i32 %9
  %div173.i.i = udiv i32 %conv170.i.i, %.frozen
  %10 = mul i32 %div173.i.i, %.frozen
  %rem171.i.i.decomposed = sub i32 %conv170.i.i, %10
  %conv174.i.i = zext i32 %div173.i.i to i64
  br label %if.end179.i.i

if.else175.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %to) #18, !srcloc !76
  %asmresult.i1189.i.i = extractvalue { i64, i64 } %11, 0
  %asmresult1.i.i.i = extractvalue { i64, i64 } %11, 1
  %shr.i.i.i = lshr i64 %asmresult.i1189.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %if.end179.i.i

if.end179.i.i:                                    ; preds = %if.else175.i.i, %if.then169.i.i
  %tmp.0.i.i = phi i64 [ %conv174.i.i, %if.then169.i.i ], [ %asmresult1.i.i.i, %if.else175.i.i ]
  %__rem.0.i.i = phi i32 [ %rem171.i.i.decomposed, %if.then169.i.i ], [ %conv.i.i.i, %if.else175.i.i ]
  %pages_per_eraseblock.i.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %pages_per_eraseblock.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pages_per_eraseblock.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %tmp.0.i.i)
  %cmp383.i.i = icmp ult i64 %tmp.0.i.i, 4294967296
  br i1 %cmp383.i.i, label %if.then391.i.i, label %if.else397.i.i, !prof !74

if.then391.i.i:                                   ; preds = %if.end179.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv392.i.i = trunc i64 %tmp.0.i.i to i32
  %conv392.i.i.frozen = freeze i32 %conv392.i.i
  %.frozen55 = freeze i32 %13
  %div395.i.i = udiv i32 %conv392.i.i.frozen, %.frozen55
  %14 = mul i32 %div395.i.i, %.frozen55
  %rem393.i.i.decomposed = sub i32 %conv392.i.i.frozen, %14
  %conv396.i.i = zext i32 %div395.i.i to i64
  br label %if.end401.i.i

if.else397.i.i:                                   ; preds = %if.end179.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %tmp.0.i.i) #18, !srcloc !76
  %asmresult.i1218.i.i = extractvalue { i64, i64 } %15, 0
  %asmresult1.i1219.i.i = extractvalue { i64, i64 } %15, 1
  %shr.i1220.i.i = lshr i64 %asmresult.i1218.i.i, 32
  %conv.i1221.i.i = trunc i64 %shr.i1220.i.i to i32
  br label %if.end401.i.i

if.end401.i.i:                                    ; preds = %if.else397.i.i, %if.then391.i.i
  %tmp.1.i.i = phi i64 [ %conv396.i.i, %if.then391.i.i ], [ %asmresult1.i1219.i.i, %if.else397.i.i ]
  %__rem183.0.i.i = phi i32 [ %rem393.i.i.decomposed, %if.then391.i.i ], [ %conv.i1221.i.i, %if.else397.i.i ]
  %page.i.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %__rem183.0.i.i, ptr %page.i.i, align 4
  %eraseblocks_per_lun.i.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %eraseblocks_per_lun.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %eraseblocks_per_lun.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %tmp.1.i.i)
  %cmp605.i.i = icmp ult i64 %tmp.1.i.i, 4294967296
  br i1 %cmp605.i.i, label %if.then613.i.i, label %if.else619.i.i, !prof !74

if.then613.i.i:                                   ; preds = %if.end401.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv614.i.i = trunc i64 %tmp.1.i.i to i32
  %conv614.i.i.frozen = freeze i32 %conv614.i.i
  %.frozen56 = freeze i32 %18
  %div617.i.i = udiv i32 %conv614.i.i.frozen, %.frozen56
  %19 = mul i32 %div617.i.i, %.frozen56
  %rem615.i.i.decomposed = sub i32 %conv614.i.i.frozen, %19
  %conv618.i.i = zext i32 %div617.i.i to i64
  br label %if.end623.i.i

if.else619.i.i:                                   ; preds = %if.end401.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %18, i64 %tmp.1.i.i) #18, !srcloc !76
  %asmresult.i1250.i.i = extractvalue { i64, i64 } %20, 0
  %asmresult1.i1251.i.i = extractvalue { i64, i64 } %20, 1
  %shr.i1252.i.i = lshr i64 %asmresult.i1250.i.i, 32
  %conv.i1253.i.i = trunc i64 %shr.i1252.i.i to i32
  br label %if.end623.i.i

if.end623.i.i:                                    ; preds = %if.else619.i.i, %if.then613.i.i
  %tmp.2.i.i = phi i64 [ %conv618.i.i, %if.then613.i.i ], [ %asmresult1.i1251.i.i, %if.else619.i.i ]
  %__rem405.0.i.i = phi i32 [ %rem615.i.i.decomposed, %if.then613.i.i ], [ %conv.i1253.i.i, %if.else619.i.i ]
  %eraseblock.i.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %eraseblock.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %__rem405.0.i.i, ptr %eraseblock.i.i, align 4
  %planes_per_lun.i.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 6
  %22 = ptrtoint ptr %planes_per_lun.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %planes_per_lun.i.i, align 8
  %rem627.i.i = urem i32 %__rem405.0.i.i, %23
  %plane.i.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %plane.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rem627.i.i, ptr %plane.i.i, align 4
  %luns_per_target.i.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 7
  %25 = ptrtoint ptr %luns_per_target.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %luns_per_target.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %tmp.2.i.i)
  %cmp830.i.i = icmp ult i64 %tmp.2.i.i, 4294967296
  br i1 %cmp830.i.i, label %if.then838.i.i, label %if.else844.i.i, !prof !74

if.then838.i.i:                                   ; preds = %if.end623.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv839.i.i = trunc i64 %tmp.2.i.i to i32
  %conv839.i.i.frozen = freeze i32 %conv839.i.i
  %.frozen57 = freeze i32 %26
  %div842.i.i = udiv i32 %conv839.i.i.frozen, %.frozen57
  %27 = mul i32 %div842.i.i, %.frozen57
  %rem840.i.i.decomposed = sub i32 %conv839.i.i.frozen, %27
  br label %nanddev_io_iter_init.exit

if.else844.i.i:                                   ; preds = %if.end623.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %26, i64 %tmp.2.i.i) #18, !srcloc !76
  %asmresult.i1282.i.i = extractvalue { i64, i64 } %28, 0
  %asmresult1.i1283.i.i = extractvalue { i64, i64 } %28, 1
  %shr.i1284.i.i = lshr i64 %asmresult.i1282.i.i, 32
  %conv.i1285.i.i = trunc i64 %shr.i1284.i.i to i32
  %extract.t1384.i.i = trunc i64 %asmresult1.i1283.i.i to i32
  br label %nanddev_io_iter_init.exit

nanddev_io_iter_init.exit:                        ; preds = %if.else844.i.i, %if.then838.i.i
  %tmp.3.off0.i.i = phi i32 [ %div842.i.i, %if.then838.i.i ], [ %extract.t1384.i.i, %if.else844.i.i ]
  %__rem630.0.i.i = phi i32 [ %rem840.i.i.decomposed, %if.then838.i.i ], [ %conv.i1285.i.i, %if.else844.i.i ]
  %pos.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 1
  %lun.i.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %__rem630.0.i.i, ptr %lun.i.i, align 4
  %30 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %tmp.3.off0.i.i, ptr %pos.i, align 4
  %dataoffs.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 2
  %31 = ptrtoint ptr %dataoffs.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %__rem.0.i.i, ptr %dataoffs.i, align 4
  %ooboffs.i = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 5
  %32 = ptrtoint ptr %ooboffs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ooboffs.i, align 4
  %ooboffs8.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 5
  %34 = ptrtoint ptr %ooboffs8.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %ooboffs8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i59.i = icmp eq i32 %6, 1
  %oobavail.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 7
  %oobsize.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %cond.in.i.i = select i1 %cmp.i59.i, ptr %oobavail.i.i, ptr %oobsize.i.i
  %35 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %cond.i.i = load i32, ptr %cond.in.i.i, align 4
  %oobbytes_per_page.i = getelementptr inbounds %struct.nand_io_iter, ptr %iter, i32 0, i32 1
  %36 = ptrtoint ptr %oobbytes_per_page.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond.i.i, ptr %oobbytes_per_page.i, align 4
  %len.i = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 1
  %37 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i, align 4
  %dataleft.i = getelementptr inbounds %struct.nand_io_iter, ptr %iter, i32 0, i32 2
  %39 = ptrtoint ptr %dataleft.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %dataleft.i, align 4
  %ooblen.i = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 3
  %40 = ptrtoint ptr %ooblen.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ooblen.i, align 4
  %oobleft.i = getelementptr inbounds %struct.nand_io_iter, ptr %iter, i32 0, i32 3
  %42 = ptrtoint ptr %oobleft.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %oobleft.i, align 4
  %datbuf.i = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 6
  %43 = ptrtoint ptr %datbuf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %datbuf.i, align 4
  %databuf.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 4
  %45 = ptrtoint ptr %databuf.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %databuf.i, align 4
  %sub.i = sub i32 %9, %__rem.0.i.i
  %46 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %38) #11
  %datalen.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 3
  %47 = ptrtoint ptr %datalen.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %datalen.i, align 4
  %oobbuf.i = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 7
  %48 = ptrtoint ptr %oobbuf.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %oobbuf.i, align 4
  %oobbuf16.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 7
  %50 = ptrtoint ptr %oobbuf16.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %oobbuf16.i, align 4
  %sub20.i = sub i32 %cond.i.i, %33
  %51 = tail call i32 @llvm.umin.i32(i32 %sub20.i, i32 %41) #11
  %ooblen29.i = getelementptr inbounds %struct.nand_page_io_req, ptr %iter, i32 0, i32 6
  %ntargets.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 8
  %cur_target.i = getelementptr inbounds %struct.spinand_device, ptr %mtd, i32 0, i32 8
  %select_target.i = getelementptr inbounds %struct.spinand_device, ptr %mtd, i32 0, i32 7
  %retlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 2
  %oobretlen = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %nanddev_io_iter_next_page.exit, %nanddev_io_iter_init.exit
  %storemerge = phi i32 [ %51, %nanddev_io_iter_init.exit ], [ %116, %nanddev_io_iter_next_page.exit ]
  %52 = ptrtoint ptr %ooblen29.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %storemerge, ptr %ooblen29.i, align 4
  %53 = ptrtoint ptr %dataleft.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dataleft.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i, label %nanddev_io_iter_end.exit, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

nanddev_io_iter_end.exit:                         ; preds = %for.cond
  %55 = ptrtoint ptr %oobleft.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %oobleft.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool1.not.i = icmp eq i32 %56, 0
  br i1 %tobool1.not.i, label %nanddev_io_iter_end.exit.for.end_crit_edge, label %nanddev_io_iter_end.exit.for.body_crit_edge

nanddev_io_iter_end.exit.for.body_crit_edge:      ; preds = %nanddev_io_iter_end.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

nanddev_io_iter_end.exit.for.end_crit_edge:       ; preds = %nanddev_io_iter_end.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %nanddev_io_iter_end.exit.for.body_crit_edge, %for.cond.for.body_crit_edge
  br i1 %disable_ecc.0.off0, label %if.then4, label %for.body.if.end6_crit_edge

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %mode3.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %mode3.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %for.body.if.end6_crit_edge
  %58 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pos.i, align 4
  %60 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ntargets.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %59)
  %cmp.not.i = icmp ugt i32 %61, %59
  br i1 %cmp.not.i, label %if.end21.i, label %do.end.i, !prof !74

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef null) #11
  br label %for.end

if.end21.i:                                       ; preds = %if.end6
  %62 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cur_target.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %59)
  %cmp22.i = icmp eq i32 %63, %59
  br i1 %cmp22.i, label %if.end21.i.if.end11_crit_edge, label %if.end24.i

if.end21.i.if.end11_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end24.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp27.i = icmp eq i32 %61, 1
  br i1 %cmp27.i, label %if.end24.i.if.end11.sink.split_crit_edge, label %if.end30.i

if.end24.i.if.end11.sink.split_crit_edge:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.sink.split

if.end30.i:                                       ; preds = %if.end24.i
  %64 = ptrtoint ptr %select_target.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %select_target.i, align 4
  %call31.i = call i32 %65(ptr noundef %mtd, i32 noundef %59) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end30.i.if.end11.sink.split_crit_edge, label %if.end30.i.for.end_crit_edge

if.end30.i.for.end_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end30.i.if.end11.sink.split_crit_edge:         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %if.end30.i.if.end11.sink.split_crit_edge, %if.end24.i.if.end11.sink.split_crit_edge
  %66 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %59, ptr %cur_target.i, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %if.end21.i.if.end11_crit_edge
  %call13 = call fastcc i32 @spinand_write_page(ptr noundef %mtd, ptr noundef nonnull %iter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end16:                                         ; preds = %if.end11
  %67 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %datalen.i, align 4
  %69 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %retlen, align 4
  %add = add i32 %70, %68
  store i32 %add, ptr %retlen, align 4
  %71 = ptrtoint ptr %ooblen29.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ooblen29.i, align 4
  %73 = ptrtoint ptr %oobretlen to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %oobretlen, align 4
  %add19 = add i32 %74, %72
  store i32 %add19, ptr %oobretlen, align 4
  %75 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %page.i.i, align 4
  %77 = ptrtoint ptr %pages_per_eraseblock.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pages_per_eraseblock.i.i, align 4
  %sub.i.i39 = add i32 %78, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %sub.i.i39)
  %cmp.not.i.i = icmp ult i32 %76, %sub.i.i39
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i41

if.then.i.i41:                                    ; preds = %if.end16
  %79 = ptrtoint ptr %eraseblock.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %eraseblock.i.i, align 4
  %81 = ptrtoint ptr %eraseblocks_per_lun.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %eraseblocks_per_lun.i.i, align 8
  %sub.i.i.i = add i32 %82, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %sub.i.i.i)
  %cmp.not.i.i.i40 = icmp ult i32 %80, %sub.i.i.i
  br i1 %cmp.not.i.i.i40, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i41
  %83 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %lun.i.i, align 4
  %85 = ptrtoint ptr %luns_per_target.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %luns_per_target.i.i, align 4
  %sub.i.i.i.i = add i32 %86, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i.i = icmp ult i32 %84, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %87 = call ptr @memset(ptr %lun.i.i, i32 0, i32 16)
  %88 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pos.i, align 4
  %inc.i.i.i.i.i = add i32 %89, 1
  store i32 %inc.i.i.i.i.i, ptr %pos.i, align 4
  br label %nanddev_io_iter_next_page.exit

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i.i.i.i = add nuw i32 %84, 1
  %90 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %inc.i.i.i.i, ptr %lun.i.i, align 4
  %91 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %page.i.i, align 4
  %92 = ptrtoint ptr %plane.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %plane.i.i, align 4
  %93 = ptrtoint ptr %eraseblock.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %eraseblock.i.i, align 4
  br label %nanddev_io_iter_next_page.exit

if.end.i.i.i:                                     ; preds = %if.then.i.i41
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i.i.i = add nuw i32 %80, 1
  %94 = ptrtoint ptr %eraseblock.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %inc.i.i.i, ptr %eraseblock.i.i, align 4
  %95 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %page.i.i, align 4
  %96 = ptrtoint ptr %planes_per_lun.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %planes_per_lun.i.i, align 8
  %rem.i.i.i = urem i32 %inc.i.i.i, %97
  %98 = ptrtoint ptr %plane.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %rem.i.i.i, ptr %plane.i.i, align 4
  br label %nanddev_io_iter_next_page.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i.i = add nuw i32 %76, 1
  %99 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %inc.i.i, ptr %page.i.i, align 4
  br label %nanddev_io_iter_next_page.exit

nanddev_io_iter_next_page.exit:                   ; preds = %if.end.i.i, %if.end.i.i.i, %if.end.i.i.i.i, %if.then.i.i.i.i
  %100 = ptrtoint ptr %dataleft.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dataleft.i, align 4
  %sub.i44 = sub i32 %101, %68
  store i32 %sub.i44, ptr %dataleft.i, align 4
  %102 = ptrtoint ptr %databuf.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %databuf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %103, i32 %68
  store ptr %add.ptr.i, ptr %databuf.i, align 4
  %104 = ptrtoint ptr %oobleft.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %oobleft.i, align 4
  %sub6.i = sub i32 %105, %72
  store i32 %sub6.i, ptr %oobleft.i, align 4
  %106 = ptrtoint ptr %oobbuf16.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %oobbuf16.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %107, i32 %72
  store ptr %add.ptr10.i, ptr %oobbuf16.i, align 4
  %108 = ptrtoint ptr %dataoffs.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %dataoffs.i, align 4
  %109 = ptrtoint ptr %ooboffs8.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %ooboffs8.i, align 4
  %110 = ptrtoint ptr %pagesize.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pagesize.i.i, align 4
  %112 = call i32 @llvm.umin.i32(i32 %111, i32 %sub.i44) #11
  %113 = ptrtoint ptr %datalen.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %datalen.i, align 4
  %114 = ptrtoint ptr %oobbytes_per_page.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %oobbytes_per_page.i, align 4
  %116 = call i32 @llvm.umin.i32(i32 %115, i32 %sub6.i) #11
  br label %for.cond

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %if.end30.i.for.end_crit_edge, %do.end.i, %nanddev_io_iter_end.exit.for.end_crit_edge
  %ret.1 = phi i32 [ -22, %do.end.i ], [ %call31.i, %if.end30.i.for.end_crit_edge ], [ 0, %nanddev_io_iter_end.exit.for.end_crit_edge ], [ %call13, %if.end11.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %iter) #11
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spinand_mtd_block_isbad(ptr noundef %mtd, i64 noundef %offs) #0 align 64 {
entry:
  %pos = alloca %struct.nand_pos, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pos) #11
  %0 = getelementptr inbounds %struct.nand_pos, ptr %pos, i32 0, i32 2
  %1 = getelementptr inbounds %struct.nand_pos, ptr %pos, i32 0, i32 3
  %2 = getelementptr inbounds %struct.nand_pos, ptr %pos, i32 0, i32 4
  %pagesize.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pagesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %offs)
  %cmp165.i = icmp ult i64 %offs, 4294967296
  br i1 %cmp165.i, label %if.then169.i, label %if.else175.i, !prof !74

if.then169.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv170.i = trunc i64 %offs to i32
  %div173.i = udiv i32 %conv170.i, %4
  %conv174.i = zext i32 %div173.i to i64
  br label %if.end179.i

if.else175.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %offs) #18, !srcloc !76
  %asmresult1.i.i = extractvalue { i64, i64 } %5, 1
  br label %if.end179.i

if.end179.i:                                      ; preds = %if.else175.i, %if.then169.i
  %tmp.0.i = phi i64 [ %conv174.i, %if.then169.i ], [ %asmresult1.i.i, %if.else175.i ]
  %pages_per_eraseblock.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %pages_per_eraseblock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pages_per_eraseblock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %tmp.0.i)
  %cmp383.i = icmp ult i64 %tmp.0.i, 4294967296
  br i1 %cmp383.i, label %if.then391.i, label %if.else397.i, !prof !74

if.then391.i:                                     ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv392.i = trunc i64 %tmp.0.i to i32
  %conv392.i.frozen = freeze i32 %conv392.i
  %.frozen = freeze i32 %7
  %div395.i = udiv i32 %conv392.i.frozen, %.frozen
  %8 = mul i32 %div395.i, %.frozen
  %rem393.i.decomposed = sub i32 %conv392.i.frozen, %8
  %conv396.i = zext i32 %div395.i to i64
  br label %if.end401.i

if.else397.i:                                     ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %tmp.0.i) #18, !srcloc !76
  %asmresult.i1218.i = extractvalue { i64, i64 } %9, 0
  %asmresult1.i1219.i = extractvalue { i64, i64 } %9, 1
  %shr.i1220.i = lshr i64 %asmresult.i1218.i, 32
  %conv.i1221.i = trunc i64 %shr.i1220.i to i32
  br label %if.end401.i

if.end401.i:                                      ; preds = %if.else397.i, %if.then391.i
  %tmp.1.i = phi i64 [ %conv396.i, %if.then391.i ], [ %asmresult1.i1219.i, %if.else397.i ]
  %__rem183.0.i = phi i32 [ %rem393.i.decomposed, %if.then391.i ], [ %conv.i1221.i, %if.else397.i ]
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %__rem183.0.i, ptr %2, align 4
  %eraseblocks_per_lun.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %eraseblocks_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eraseblocks_per_lun.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %tmp.1.i)
  %cmp605.i = icmp ult i64 %tmp.1.i, 4294967296
  br i1 %cmp605.i, label %if.then613.i, label %if.else619.i, !prof !74

if.then613.i:                                     ; preds = %if.end401.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv614.i = trunc i64 %tmp.1.i to i32
  %conv614.i.frozen = freeze i32 %conv614.i
  %.frozen8 = freeze i32 %12
  %div617.i = udiv i32 %conv614.i.frozen, %.frozen8
  %13 = mul i32 %div617.i, %.frozen8
  %rem615.i.decomposed = sub i32 %conv614.i.frozen, %13
  %conv618.i = zext i32 %div617.i to i64
  br label %if.end623.i

if.else619.i:                                     ; preds = %if.end401.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %tmp.1.i) #18, !srcloc !76
  %asmresult.i1250.i = extractvalue { i64, i64 } %14, 0
  %asmresult1.i1251.i = extractvalue { i64, i64 } %14, 1
  %shr.i1252.i = lshr i64 %asmresult.i1250.i, 32
  %conv.i1253.i = trunc i64 %shr.i1252.i to i32
  br label %if.end623.i

if.end623.i:                                      ; preds = %if.else619.i, %if.then613.i
  %tmp.2.i = phi i64 [ %conv618.i, %if.then613.i ], [ %asmresult1.i1251.i, %if.else619.i ]
  %__rem405.0.i = phi i32 [ %rem615.i.decomposed, %if.then613.i ], [ %conv.i1253.i, %if.else619.i ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %__rem405.0.i, ptr %1, align 4
  %planes_per_lun.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 6
  %16 = ptrtoint ptr %planes_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %planes_per_lun.i, align 8
  %rem627.i = urem i32 %__rem405.0.i, %17
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %rem627.i, ptr %0, align 4
  %luns_per_target.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 7
  %19 = ptrtoint ptr %luns_per_target.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %luns_per_target.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %tmp.2.i)
  %cmp830.i = icmp ult i64 %tmp.2.i, 4294967296
  br i1 %cmp830.i, label %if.then838.i, label %if.else844.i, !prof !74

if.then838.i:                                     ; preds = %if.end623.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv839.i = trunc i64 %tmp.2.i to i32
  %conv839.i.frozen = freeze i32 %conv839.i
  %.frozen9 = freeze i32 %20
  %div842.i = udiv i32 %conv839.i.frozen, %.frozen9
  %21 = mul i32 %div842.i, %.frozen9
  %rem840.i.decomposed = sub i32 %conv839.i.frozen, %21
  br label %nanddev_offs_to_pos.exit

if.else844.i:                                     ; preds = %if.end623.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %tmp.2.i) #18, !srcloc !76
  %asmresult.i1282.i = extractvalue { i64, i64 } %22, 0
  %asmresult1.i1283.i = extractvalue { i64, i64 } %22, 1
  %shr.i1284.i = lshr i64 %asmresult.i1282.i, 32
  %conv.i1285.i = trunc i64 %shr.i1284.i to i32
  %extract.t1384.i = trunc i64 %asmresult1.i1283.i to i32
  br label %nanddev_offs_to_pos.exit

nanddev_offs_to_pos.exit:                         ; preds = %if.else844.i, %if.then838.i
  %tmp.3.off0.i = phi i32 [ %div842.i, %if.then838.i ], [ %extract.t1384.i, %if.else844.i ]
  %__rem630.0.i = phi i32 [ %rem840.i.decomposed, %if.then838.i ], [ %conv.i1285.i, %if.else844.i ]
  %23 = getelementptr inbounds %struct.nand_pos, ptr %pos, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %__rem630.0.i, ptr %23, align 4
  %25 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %tmp.3.off0.i, ptr %pos, align 4
  %lock = getelementptr inbounds %struct.spinand_device, ptr %mtd, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %call3 = call zeroext i1 @nanddev_isbad(ptr noundef %mtd, ptr noundef nonnull %pos) #11
  %conv = zext i1 %call3 to i32
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pos) #11
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spinand_mtd_block_markbad(ptr noundef %mtd, i64 noundef %offs) #0 align 64 {
entry:
  %pos = alloca %struct.nand_pos, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pos) #11
  %0 = getelementptr inbounds %struct.nand_pos, ptr %pos, i32 0, i32 2
  %1 = getelementptr inbounds %struct.nand_pos, ptr %pos, i32 0, i32 3
  %2 = getelementptr inbounds %struct.nand_pos, ptr %pos, i32 0, i32 4
  %pagesize.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pagesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %offs)
  %cmp165.i = icmp ult i64 %offs, 4294967296
  br i1 %cmp165.i, label %if.then169.i, label %if.else175.i, !prof !74

if.then169.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv170.i = trunc i64 %offs to i32
  %div173.i = udiv i32 %conv170.i, %4
  %conv174.i = zext i32 %div173.i to i64
  br label %if.end179.i

if.else175.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %offs) #18, !srcloc !76
  %asmresult1.i.i = extractvalue { i64, i64 } %5, 1
  br label %if.end179.i

if.end179.i:                                      ; preds = %if.else175.i, %if.then169.i
  %tmp.0.i = phi i64 [ %conv174.i, %if.then169.i ], [ %asmresult1.i.i, %if.else175.i ]
  %pages_per_eraseblock.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %pages_per_eraseblock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pages_per_eraseblock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %tmp.0.i)
  %cmp383.i = icmp ult i64 %tmp.0.i, 4294967296
  br i1 %cmp383.i, label %if.then391.i, label %if.else397.i, !prof !74

if.then391.i:                                     ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv392.i = trunc i64 %tmp.0.i to i32
  %conv392.i.frozen = freeze i32 %conv392.i
  %.frozen = freeze i32 %7
  %div395.i = udiv i32 %conv392.i.frozen, %.frozen
  %8 = mul i32 %div395.i, %.frozen
  %rem393.i.decomposed = sub i32 %conv392.i.frozen, %8
  %conv396.i = zext i32 %div395.i to i64
  br label %if.end401.i

if.else397.i:                                     ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %tmp.0.i) #18, !srcloc !76
  %asmresult.i1218.i = extractvalue { i64, i64 } %9, 0
  %asmresult1.i1219.i = extractvalue { i64, i64 } %9, 1
  %shr.i1220.i = lshr i64 %asmresult.i1218.i, 32
  %conv.i1221.i = trunc i64 %shr.i1220.i to i32
  br label %if.end401.i

if.end401.i:                                      ; preds = %if.else397.i, %if.then391.i
  %tmp.1.i = phi i64 [ %conv396.i, %if.then391.i ], [ %asmresult1.i1219.i, %if.else397.i ]
  %__rem183.0.i = phi i32 [ %rem393.i.decomposed, %if.then391.i ], [ %conv.i1221.i, %if.else397.i ]
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %__rem183.0.i, ptr %2, align 4
  %eraseblocks_per_lun.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %eraseblocks_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eraseblocks_per_lun.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %tmp.1.i)
  %cmp605.i = icmp ult i64 %tmp.1.i, 4294967296
  br i1 %cmp605.i, label %if.then613.i, label %if.else619.i, !prof !74

if.then613.i:                                     ; preds = %if.end401.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv614.i = trunc i64 %tmp.1.i to i32
  %conv614.i.frozen = freeze i32 %conv614.i
  %.frozen8 = freeze i32 %12
  %div617.i = udiv i32 %conv614.i.frozen, %.frozen8
  %13 = mul i32 %div617.i, %.frozen8
  %rem615.i.decomposed = sub i32 %conv614.i.frozen, %13
  %conv618.i = zext i32 %div617.i to i64
  br label %if.end623.i

if.else619.i:                                     ; preds = %if.end401.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %tmp.1.i) #18, !srcloc !76
  %asmresult.i1250.i = extractvalue { i64, i64 } %14, 0
  %asmresult1.i1251.i = extractvalue { i64, i64 } %14, 1
  %shr.i1252.i = lshr i64 %asmresult.i1250.i, 32
  %conv.i1253.i = trunc i64 %shr.i1252.i to i32
  br label %if.end623.i

if.end623.i:                                      ; preds = %if.else619.i, %if.then613.i
  %tmp.2.i = phi i64 [ %conv618.i, %if.then613.i ], [ %asmresult1.i1251.i, %if.else619.i ]
  %__rem405.0.i = phi i32 [ %rem615.i.decomposed, %if.then613.i ], [ %conv.i1253.i, %if.else619.i ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %__rem405.0.i, ptr %1, align 4
  %planes_per_lun.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 6
  %16 = ptrtoint ptr %planes_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %planes_per_lun.i, align 8
  %rem627.i = urem i32 %__rem405.0.i, %17
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %rem627.i, ptr %0, align 4
  %luns_per_target.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 7
  %19 = ptrtoint ptr %luns_per_target.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %luns_per_target.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %tmp.2.i)
  %cmp830.i = icmp ult i64 %tmp.2.i, 4294967296
  br i1 %cmp830.i, label %if.then838.i, label %if.else844.i, !prof !74

if.then838.i:                                     ; preds = %if.end623.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv839.i = trunc i64 %tmp.2.i to i32
  %conv839.i.frozen = freeze i32 %conv839.i
  %.frozen9 = freeze i32 %20
  %div842.i = udiv i32 %conv839.i.frozen, %.frozen9
  %21 = mul i32 %div842.i, %.frozen9
  %rem840.i.decomposed = sub i32 %conv839.i.frozen, %21
  br label %nanddev_offs_to_pos.exit

if.else844.i:                                     ; preds = %if.end623.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %tmp.2.i) #18, !srcloc !76
  %asmresult.i1282.i = extractvalue { i64, i64 } %22, 0
  %asmresult1.i1283.i = extractvalue { i64, i64 } %22, 1
  %shr.i1284.i = lshr i64 %asmresult.i1282.i, 32
  %conv.i1285.i = trunc i64 %shr.i1284.i to i32
  %extract.t1384.i = trunc i64 %asmresult1.i1283.i to i32
  br label %nanddev_offs_to_pos.exit

nanddev_offs_to_pos.exit:                         ; preds = %if.else844.i, %if.then838.i
  %tmp.3.off0.i = phi i32 [ %div842.i, %if.then838.i ], [ %extract.t1384.i, %if.else844.i ]
  %__rem630.0.i = phi i32 [ %rem840.i.decomposed, %if.then838.i ], [ %conv.i1285.i, %if.else844.i ]
  %23 = getelementptr inbounds %struct.nand_pos, ptr %pos, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %__rem630.0.i, ptr %23, align 4
  %25 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %tmp.3.off0.i, ptr %pos, align 4
  %lock = getelementptr inbounds %struct.spinand_device, ptr %mtd, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %call3 = call i32 @nanddev_markbad(ptr noundef %mtd, ptr noundef nonnull %pos) #11
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pos) #11
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spinand_mtd_block_isreserved(ptr noundef %mtd, i64 noundef %offs) #0 align 64 {
entry:
  %pos = alloca %struct.nand_pos, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pos) #11
  %0 = getelementptr inbounds %struct.nand_pos, ptr %pos, i32 0, i32 2
  %1 = getelementptr inbounds %struct.nand_pos, ptr %pos, i32 0, i32 3
  %2 = getelementptr inbounds %struct.nand_pos, ptr %pos, i32 0, i32 4
  %pagesize.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pagesize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %offs)
  %cmp165.i = icmp ult i64 %offs, 4294967296
  br i1 %cmp165.i, label %if.then169.i, label %if.else175.i, !prof !74

if.then169.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv170.i = trunc i64 %offs to i32
  %div173.i = udiv i32 %conv170.i, %4
  %conv174.i = zext i32 %div173.i to i64
  br label %if.end179.i

if.else175.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %4, i64 %offs) #18, !srcloc !76
  %asmresult1.i.i = extractvalue { i64, i64 } %5, 1
  br label %if.end179.i

if.end179.i:                                      ; preds = %if.else175.i, %if.then169.i
  %tmp.0.i = phi i64 [ %conv174.i, %if.then169.i ], [ %asmresult1.i.i, %if.else175.i ]
  %pages_per_eraseblock.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %pages_per_eraseblock.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pages_per_eraseblock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %tmp.0.i)
  %cmp383.i = icmp ult i64 %tmp.0.i, 4294967296
  br i1 %cmp383.i, label %if.then391.i, label %if.else397.i, !prof !74

if.then391.i:                                     ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv392.i = trunc i64 %tmp.0.i to i32
  %conv392.i.frozen = freeze i32 %conv392.i
  %.frozen = freeze i32 %7
  %div395.i = udiv i32 %conv392.i.frozen, %.frozen
  %8 = mul i32 %div395.i, %.frozen
  %rem393.i.decomposed = sub i32 %conv392.i.frozen, %8
  %conv396.i = zext i32 %div395.i to i64
  br label %if.end401.i

if.else397.i:                                     ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %tmp.0.i) #18, !srcloc !76
  %asmresult.i1218.i = extractvalue { i64, i64 } %9, 0
  %asmresult1.i1219.i = extractvalue { i64, i64 } %9, 1
  %shr.i1220.i = lshr i64 %asmresult.i1218.i, 32
  %conv.i1221.i = trunc i64 %shr.i1220.i to i32
  br label %if.end401.i

if.end401.i:                                      ; preds = %if.else397.i, %if.then391.i
  %tmp.1.i = phi i64 [ %conv396.i, %if.then391.i ], [ %asmresult1.i1219.i, %if.else397.i ]
  %__rem183.0.i = phi i32 [ %rem393.i.decomposed, %if.then391.i ], [ %conv.i1221.i, %if.else397.i ]
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %__rem183.0.i, ptr %2, align 4
  %eraseblocks_per_lun.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %eraseblocks_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eraseblocks_per_lun.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %tmp.1.i)
  %cmp605.i = icmp ult i64 %tmp.1.i, 4294967296
  br i1 %cmp605.i, label %if.then613.i, label %if.else619.i, !prof !74

if.then613.i:                                     ; preds = %if.end401.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv614.i = trunc i64 %tmp.1.i to i32
  %conv614.i.frozen = freeze i32 %conv614.i
  %.frozen8 = freeze i32 %12
  %div617.i = udiv i32 %conv614.i.frozen, %.frozen8
  %13 = mul i32 %div617.i, %.frozen8
  %rem615.i.decomposed = sub i32 %conv614.i.frozen, %13
  %conv618.i = zext i32 %div617.i to i64
  br label %if.end623.i

if.else619.i:                                     ; preds = %if.end401.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %tmp.1.i) #18, !srcloc !76
  %asmresult.i1250.i = extractvalue { i64, i64 } %14, 0
  %asmresult1.i1251.i = extractvalue { i64, i64 } %14, 1
  %shr.i1252.i = lshr i64 %asmresult.i1250.i, 32
  %conv.i1253.i = trunc i64 %shr.i1252.i to i32
  br label %if.end623.i

if.end623.i:                                      ; preds = %if.else619.i, %if.then613.i
  %tmp.2.i = phi i64 [ %conv618.i, %if.then613.i ], [ %asmresult1.i1251.i, %if.else619.i ]
  %__rem405.0.i = phi i32 [ %rem615.i.decomposed, %if.then613.i ], [ %conv.i1253.i, %if.else619.i ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %__rem405.0.i, ptr %1, align 4
  %planes_per_lun.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 6
  %16 = ptrtoint ptr %planes_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %planes_per_lun.i, align 8
  %rem627.i = urem i32 %__rem405.0.i, %17
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %rem627.i, ptr %0, align 4
  %luns_per_target.i = getelementptr inbounds %struct.nand_device, ptr %mtd, i32 0, i32 1, i32 7
  %19 = ptrtoint ptr %luns_per_target.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %luns_per_target.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %tmp.2.i)
  %cmp830.i = icmp ult i64 %tmp.2.i, 4294967296
  br i1 %cmp830.i, label %if.then838.i, label %if.else844.i, !prof !74

if.then838.i:                                     ; preds = %if.end623.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv839.i = trunc i64 %tmp.2.i to i32
  %conv839.i.frozen = freeze i32 %conv839.i
  %.frozen9 = freeze i32 %20
  %div842.i = udiv i32 %conv839.i.frozen, %.frozen9
  %21 = mul i32 %div842.i, %.frozen9
  %rem840.i.decomposed = sub i32 %conv839.i.frozen, %21
  br label %nanddev_offs_to_pos.exit

if.else844.i:                                     ; preds = %if.end623.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %tmp.2.i) #18, !srcloc !76
  %asmresult.i1282.i = extractvalue { i64, i64 } %22, 0
  %asmresult1.i1283.i = extractvalue { i64, i64 } %22, 1
  %shr.i1284.i = lshr i64 %asmresult.i1282.i, 32
  %conv.i1285.i = trunc i64 %shr.i1284.i to i32
  %extract.t1384.i = trunc i64 %asmresult1.i1283.i to i32
  br label %nanddev_offs_to_pos.exit

nanddev_offs_to_pos.exit:                         ; preds = %if.else844.i, %if.then838.i
  %tmp.3.off0.i = phi i32 [ %div842.i, %if.then838.i ], [ %extract.t1384.i, %if.else844.i ]
  %__rem630.0.i = phi i32 [ %rem840.i.decomposed, %if.then838.i ], [ %conv.i1285.i, %if.else844.i ]
  %23 = getelementptr inbounds %struct.nand_pos, ptr %pos, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %__rem630.0.i, ptr %23, align 4
  %25 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %tmp.3.off0.i, ptr %pos, align 4
  %lock = getelementptr inbounds %struct.spinand_device, ptr %mtd, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %call3 = call zeroext i1 @nanddev_isreserved(ptr noundef %mtd, ptr noundef nonnull %pos) #11
  %conv = zext i1 %call3 to i32
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pos) #11
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spinand_mtd_erase(ptr noundef %mtd, ptr noundef %einfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.spinand_device, ptr %mtd, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %call1 = tail call i32 @nanddev_mtd_erase(ptr noundef %mtd, ptr noundef %einfo) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nanddev_mtd_max_bad_blocks(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spinand_mtd_resume(ptr noundef %mtd) #0 align 64 {
entry:
  %op.i = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i) #11
  %0 = call ptr @memset(ptr %op.i, i32 0, i32 48)
  %1 = ptrtoint ptr %op.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %op.i, align 8
  %2 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %op.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %2, align 1
  %4 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %op.i, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 255, ptr %4, align 4
  %spimem.i = getelementptr inbounds %struct.spinand_device, ptr %mtd, i32 0, i32 1
  %6 = ptrtoint ptr %spimem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spimem.i, align 8
  %call.i = call i32 @spi_mem_exec_op(ptr noundef %7, ptr noundef nonnull %op.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %spinand_reset_op.exit, label %spinand_reset_op.exit.thread

spinand_reset_op.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i) #11
  br label %cleanup

spinand_reset_op.exit:                            ; preds = %entry
  %call1.i = call fastcc i32 @spinand_wait(ptr noundef %mtd, i32 noundef 5, i32 noundef 5, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %spinand_reset_op.exit.cleanup_crit_edge

spinand_reset_op.exit.cleanup_crit_edge:          ; preds = %spinand_reset_op.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %spinand_reset_op.exit
  %call2 = call fastcc i32 @spinand_init_flash(ptr noundef %mtd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i11 = call i32 @spinand_upd_cfg(ptr noundef %mtd, i8 noundef zeroext 16, i8 noundef zeroext 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %spinand_reset_op.exit.cleanup_crit_edge, %spinand_reset_op.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_count_freebytes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nanddev_ecc_engine_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nanddev_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spinand_wait(ptr nocapture noundef readonly %spinand, i32 noundef %initial_delay_us, i32 noundef %poll_delay_us, ptr noundef writeonly %s) unnamed_addr #0 align 64 {
entry:
  %op.i.i = alloca %struct.spi_mem_op, align 8
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #11
  %0 = call ptr @memset(ptr %op, i32 255, i32 48)
  %1 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %op, align 8
  %buswidth = getelementptr inbounds %struct.anon.73, ptr %op, i32 0, i32 1
  %2 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %buswidth, align 1
  %dtr = getelementptr inbounds %struct.anon.73, ptr %op, i32 0, i32 2
  %3 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 127, ptr %dtr, align 2
  %opcode = getelementptr inbounds %struct.anon.73, ptr %op, i32 0, i32 3
  %4 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 15, ptr %opcode, align 4
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr, align 8
  %buswidth2 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %buswidth2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %buswidth2, align 1
  %dtr3 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %dtr3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 127, ptr %dtr3, align 2
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 192, ptr %val, align 8
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %9 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %dummy, align 8
  %buswidth8 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %buswidth8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %buswidth8, align 1
  %dtr9 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %dtr9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 127, ptr %dtr9, align 2
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %data, align 4
  %dtr14 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %dtr14 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 127, ptr %dtr14, align 1
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %dir, align 8
  %nbytes18 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %nbytes18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %nbytes18, align 4
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %scratchbuf = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 13
  %16 = ptrtoint ptr %scratchbuf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %scratchbuf, align 8
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %buf, align 8
  %spimem = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 1
  %19 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spimem, align 8
  %call = call i32 @spi_mem_poll_status(ptr noundef %20, ptr noundef nonnull %op, i16 noundef zeroext 1, i16 noundef zeroext 0, i32 noundef %initial_delay_us, i32 noundef %poll_delay_us, i16 noundef zeroext 400) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = ptrtoint ptr %scratchbuf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %scratchbuf, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool20.not = icmp eq i8 %25, 0
  br i1 %tobool20.not, label %if.end.out_crit_edge, label %if.end22

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end22:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i.i) #11
  %26 = call ptr @memset(ptr %op.i.i, i32 255, i32 48)
  %27 = ptrtoint ptr %op.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %op.i.i, align 8
  %buswidth.i.i = getelementptr inbounds %struct.anon.73, ptr %op.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %buswidth.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %buswidth.i.i, align 1
  %dtr.i.i = getelementptr inbounds %struct.anon.73, ptr %op.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %dtr.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 127, ptr %dtr.i.i, align 2
  %opcode.i.i = getelementptr inbounds %struct.anon.73, ptr %op.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 15, ptr %opcode.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %addr.i.i, align 8
  %buswidth2.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %buswidth2.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %buswidth2.i.i, align 1
  %dtr3.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %dtr3.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 127, ptr %dtr3.i.i, align 2
  %val7.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %val7.i.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 192, ptr %val7.i.i, align 8
  %dummy.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %dummy.i.i, align 8
  %buswidth9.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %buswidth9.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %buswidth9.i.i, align 1
  %dtr10.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %dtr10.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 127, ptr %dtr10.i.i, align 2
  %data.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %data.i.i, align 4
  %dtr15.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %dtr15.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 127, ptr %dtr15.i.i, align 1
  %dir.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %dir.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %dir.i.i, align 8
  %nbytes19.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3, i32 3
  %41 = ptrtoint ptr %nbytes19.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %nbytes19.i.i, align 4
  %buf.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i.i, i32 0, i32 3, i32 4
  %42 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %22, ptr %buf.i.i, align 8
  %43 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %spimem, align 8
  %call.i.i = call i32 @spi_mem_exec_op(ptr noundef %44, ptr noundef nonnull %op.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %spinand_read_status.exit.thread, label %spinand_read_status.exit

spinand_read_status.exit.thread:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %scratchbuf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %scratchbuf, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i.i) #11
  br label %out

spinand_read_status.exit:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i.i) #11
  br label %cleanup

out:                                              ; preds = %spinand_read_status.exit.thread, %if.end.out_crit_edge
  %status.1 = phi i8 [ %24, %if.end.out_crit_edge ], [ %48, %spinand_read_status.exit.thread ]
  %tobool27.not = icmp eq ptr %s, null
  br i1 %tobool27.not, label %out.if.end29_crit_edge, label %if.then28

out.if.end29_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then28:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %s to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %status.1, ptr %s, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %out.if.end29_crit_edge
  %50 = and i8 %status.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool32.not = icmp eq i8 %50, 0
  %cond = select i1 %tobool32.not, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %spinand_read_status.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end29 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i.i, %spinand_read_status.exit ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_poll_status(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spinand_manufacturer_match(ptr nocapture noundef %spinand, i32 noundef %rdid_method) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 3
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id1, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @gigadevice_spinand_manufacturer to i32))
  %2 = load i8, ptr @gigadevice_spinand_manufacturer, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %2)
  %cmp5.not = icmp eq i8 %1, %2
  br i1 %cmp5.not, label %if.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @gigadevice_spinand_manufacturer, i32 0, i32 2) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @gigadevice_spinand_manufacturer, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @gigadevice_spinand_manufacturer, i32 0, i32 3) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @gigadevice_spinand_manufacturer, i32 0, i32 3), align 4
  %call = tail call i32 @spinand_match_and_init(ptr noundef %spinand, ptr noundef %3, i32 noundef %4, i32 noundef %rdid_method)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.end.for.inc_crit_edge, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end10:                                         ; preds = %if.end.5.if.end10_crit_edge, %if.end.4.if.end10_crit_edge, %if.end.3.if.end10_crit_edge, %if.end.2.if.end10_crit_edge, %if.end.1.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %.lcssa = phi ptr [ @gigadevice_spinand_manufacturer, %if.end.if.end10_crit_edge ], [ @macronix_spinand_manufacturer, %if.end.1.if.end10_crit_edge ], [ @micron_spinand_manufacturer, %if.end.2.if.end10_crit_edge ], [ @paragon_spinand_manufacturer, %if.end.3.if.end10_crit_edge ], [ @toshiba_spinand_manufacturer, %if.end.4.if.end10_crit_edge ], [ @winbond_spinand_manufacturer, %if.end.5.if.end10_crit_edge ]
  %manufacturer11 = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 14
  %5 = ptrtoint ptr %manufacturer11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %.lcssa, ptr %manufacturer11, align 4
  br label %cleanup12

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %6 = ptrtoint ptr %id1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id1, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @macronix_spinand_manufacturer to i32))
  %8 = load i8, ptr @macronix_spinand_manufacturer, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %8)
  %cmp5.not.1 = icmp eq i8 %7, %8
  br i1 %cmp5.not.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @macronix_spinand_manufacturer, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @macronix_spinand_manufacturer, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @macronix_spinand_manufacturer, i32 0, i32 3) to i32))
  %10 = load i32, ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @macronix_spinand_manufacturer, i32 0, i32 3), align 4
  %call.1 = tail call i32 @spinand_match_and_init(ptr noundef %spinand, ptr noundef %9, i32 noundef %10, i32 noundef %rdid_method)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp7.1 = icmp slt i32 %call.1, 0
  br i1 %cmp7.1, label %if.end.1.for.inc.1_crit_edge, label %if.end.1.if.end10_crit_edge

if.end.1.if.end10_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %11 = ptrtoint ptr %id1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id1, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @micron_spinand_manufacturer to i32))
  %13 = load i8, ptr @micron_spinand_manufacturer, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %13)
  %cmp5.not.2 = icmp eq i8 %12, %13
  br i1 %cmp5.not.2, label %if.end.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @micron_spinand_manufacturer, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @micron_spinand_manufacturer, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @micron_spinand_manufacturer, i32 0, i32 3) to i32))
  %15 = load i32, ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @micron_spinand_manufacturer, i32 0, i32 3), align 4
  %call.2 = tail call i32 @spinand_match_and_init(ptr noundef %spinand, ptr noundef %14, i32 noundef %15, i32 noundef %rdid_method)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp7.2 = icmp slt i32 %call.2, 0
  br i1 %cmp7.2, label %if.end.2.for.inc.2_crit_edge, label %if.end.2.if.end10_crit_edge

if.end.2.if.end10_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %16 = ptrtoint ptr %id1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %id1, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @paragon_spinand_manufacturer to i32))
  %18 = load i8, ptr @paragon_spinand_manufacturer, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %18)
  %cmp5.not.3 = icmp eq i8 %17, %18
  br i1 %cmp5.not.3, label %if.end.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @paragon_spinand_manufacturer, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @paragon_spinand_manufacturer, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @paragon_spinand_manufacturer, i32 0, i32 3) to i32))
  %20 = load i32, ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @paragon_spinand_manufacturer, i32 0, i32 3), align 4
  %call.3 = tail call i32 @spinand_match_and_init(ptr noundef %spinand, ptr noundef %19, i32 noundef %20, i32 noundef %rdid_method)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp7.3 = icmp slt i32 %call.3, 0
  br i1 %cmp7.3, label %if.end.3.for.inc.3_crit_edge, label %if.end.3.if.end10_crit_edge

if.end.3.if.end10_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %21 = ptrtoint ptr %id1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %id1, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @toshiba_spinand_manufacturer to i32))
  %23 = load i8, ptr @toshiba_spinand_manufacturer, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %23)
  %cmp5.not.4 = icmp eq i8 %22, %23
  br i1 %cmp5.not.4, label %if.end.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @toshiba_spinand_manufacturer, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @toshiba_spinand_manufacturer, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @toshiba_spinand_manufacturer, i32 0, i32 3) to i32))
  %25 = load i32, ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @toshiba_spinand_manufacturer, i32 0, i32 3), align 4
  %call.4 = tail call i32 @spinand_match_and_init(ptr noundef %spinand, ptr noundef %24, i32 noundef %25, i32 noundef %rdid_method)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp7.4 = icmp slt i32 %call.4, 0
  br i1 %cmp7.4, label %if.end.4.for.inc.4_crit_edge, label %if.end.4.if.end10_crit_edge

if.end.4.if.end10_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %26 = ptrtoint ptr %id1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %id1, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @winbond_spinand_manufacturer to i32))
  %28 = load i8, ptr @winbond_spinand_manufacturer, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %28)
  %cmp5.not.5 = icmp eq i8 %27, %28
  br i1 %cmp5.not.5, label %if.end.5, label %for.inc.4.cleanup12_crit_edge

for.inc.4.cleanup12_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup12

if.end.5:                                         ; preds = %for.inc.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @winbond_spinand_manufacturer, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @winbond_spinand_manufacturer, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @winbond_spinand_manufacturer, i32 0, i32 3) to i32))
  %30 = load i32, ptr getelementptr inbounds (%struct.spinand_manufacturer, ptr @winbond_spinand_manufacturer, i32 0, i32 3), align 4
  %call.5 = tail call i32 @spinand_match_and_init(ptr noundef %spinand, ptr noundef %29, i32 noundef %30, i32 noundef %rdid_method)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp7.5 = icmp slt i32 %call.5, 0
  br i1 %cmp7.5, label %if.end.5.cleanup12_crit_edge, label %if.end.5.if.end10_crit_edge

if.end.5.if.end10_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end.5.cleanup12_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup12

cleanup12:                                        ; preds = %if.end.5.cleanup12_crit_edge, %for.inc.4.cleanup12_crit_edge, %if.end10
  %retval.2 = phi i32 [ 0, %if.end10 ], [ -524, %if.end.5.cleanup12_crit_edge ], [ -524, %for.inc.4.cleanup12_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_spi_mem_dirmap_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spinand_erase(ptr noundef %nand, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  %op.i28 = alloca %struct.spi_mem_op, align 8
  %op.i = alloca %struct.spi_mem_op, align 8
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #11
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !77
  %1 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pos, align 4
  %ntargets.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 1, i32 8
  %3 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ntargets.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp.not.i = icmp ugt i32 %4, %2
  br i1 %cmp.not.i, label %if.end21.i, label %do.end.i, !prof !74

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end21.i:                                       ; preds = %entry
  %cur_target.i = getelementptr inbounds %struct.spinand_device, ptr %nand, i32 0, i32 8
  %5 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_target.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %2)
  %cmp22.i = icmp eq i32 %6, %2
  br i1 %cmp22.i, label %if.end21.i.if.end_crit_edge, label %if.end24.i

if.end21.i.if.end_crit_edge:                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end24.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp27.i = icmp eq i32 %4, 1
  br i1 %cmp27.i, label %if.end24.i.if.end.sink.split_crit_edge, label %if.end30.i

if.end24.i.if.end.sink.split_crit_edge:           ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.sink.split

if.end30.i:                                       ; preds = %if.end24.i
  %select_target.i = getelementptr inbounds %struct.spinand_device, ptr %nand, i32 0, i32 7
  %7 = ptrtoint ptr %select_target.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %select_target.i, align 4
  %call31.i = tail call i32 %8(ptr noundef %nand, i32 noundef %2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end30.i.if.end.sink.split_crit_edge, label %if.end30.i.cleanup_crit_edge

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30.i.if.end.sink.split_crit_edge:           ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end30.i.if.end.sink.split_crit_edge, %if.end24.i.if.end.sink.split_crit_edge
  %9 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %2, ptr %cur_target.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.end21.i.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i) #11
  %10 = call ptr @memset(ptr %op.i, i32 0, i32 48)
  %11 = ptrtoint ptr %op.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %op.i, align 8
  %12 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %op.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %12, align 1
  %14 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %op.i, i32 0, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 6, ptr %14, align 4
  %spimem.i = getelementptr inbounds %struct.spinand_device, ptr %nand, i32 0, i32 1
  %16 = ptrtoint ptr %spimem.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spimem.i, align 8
  %call.i = call i32 @spi_mem_exec_op(ptr noundef %17, ptr noundef nonnull %op.i) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %lun.i.i = getelementptr inbounds %struct.nand_pos, ptr %pos, i32 0, i32 1
  %18 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lun.i.i, align 4
  %rowconv.i.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 3
  %20 = ptrtoint ptr %rowconv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rowconv.i.i, align 8
  %shl.i.i = shl i32 %19, %21
  %eraseblock.i.i = getelementptr inbounds %struct.nand_pos, ptr %pos, i32 0, i32 3
  %22 = ptrtoint ptr %eraseblock.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eraseblock.i.i, align 4
  %eraseblock_addr_shift.i.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %eraseblock_addr_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %eraseblock_addr_shift.i.i, align 4
  %shl2.i.i = shl i32 %23, %25
  %or.i.i = or i32 %shl2.i.i, %shl.i.i
  %page.i.i = getelementptr inbounds %struct.nand_pos, ptr %pos, i32 0, i32 4
  %26 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %page.i.i, align 4
  %or3.i.i = or i32 %or.i.i, %27
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i28) #11
  %28 = call ptr @memset(ptr %op.i28, i32 255, i32 48)
  %29 = ptrtoint ptr %op.i28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %op.i28, align 8
  %buswidth.i = getelementptr inbounds %struct.anon.73, ptr %op.i28, i32 0, i32 1
  %30 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %buswidth.i, align 1
  %dtr.i = getelementptr inbounds %struct.anon.73, ptr %op.i28, i32 0, i32 2
  %31 = ptrtoint ptr %dtr.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 127, ptr %dtr.i, align 2
  %opcode.i = getelementptr inbounds %struct.anon.73, ptr %op.i28, i32 0, i32 3
  %32 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 216, ptr %opcode.i, align 4
  %addr.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i28, i32 0, i32 1
  %33 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %addr.i, align 8
  %buswidth3.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i28, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %buswidth3.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %buswidth3.i, align 1
  %dtr4.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i28, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %dtr4.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 127, ptr %dtr4.i, align 2
  %val.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i28, i32 0, i32 1, i32 3
  %conv.i = zext i32 %or3.i.i to i64
  %36 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv.i, ptr %val.i, align 8
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i28, i32 0, i32 2
  %37 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %dummy.i, align 8
  %buswidth9.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i28, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %buswidth9.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %buswidth9.i, align 1
  %dtr10.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i28, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %dtr10.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 127, ptr %dtr10.i, align 2
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i28, i32 0, i32 3
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %data.i, align 4
  %dtr15.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i28, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %dtr15.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 127, ptr %dtr15.i, align 1
  %dir.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i28, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %dir.i, align 8
  %nbytes19.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i28, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %nbytes19.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %nbytes19.i, align 4
  %buf.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i28, i32 0, i32 3, i32 4
  %44 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %buf.i, align 8
  %45 = ptrtoint ptr %spimem.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %spimem.i, align 8
  %call20.i = call i32 @spi_mem_exec_op(ptr noundef %46, ptr noundef nonnull %op.i28) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool7.not = icmp eq i32 %call20.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = call fastcc i32 @spinand_wait(ptr noundef %nand, i32 noundef 250, i32 noundef 50, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %status, align 1
  %49 = and i8 %48, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool12.not = icmp eq i8 %49, 0
  %spec.select = select i1 %tobool12.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end30.i.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ %call.i, %if.end.cleanup_crit_edge ], [ %call20.i, %if.end5.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %spec.select, %land.lhs.true ], [ -22, %do.end.i ], [ %call31.i, %if.end30.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spinand_markbad(ptr noundef %nand, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  %op.i = alloca %struct.spi_mem_op, align 8
  %marker = alloca [2 x i8], align 2
  %req = alloca %struct.nand_page_io_req, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %marker) #11
  %0 = ptrtoint ptr %marker to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %marker, align 2
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %req) #11
  %1 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %req, align 4
  %pos1 = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %pos1, ptr %pos, i32 20)
  %dataoffs = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 2
  %ooblen = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 6
  %3 = call ptr @memset(ptr %dataoffs, i32 0, i32 16)
  %4 = ptrtoint ptr %ooblen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %ooblen, align 4
  %oobbuf = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 7
  %5 = ptrtoint ptr %oobbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %marker, ptr %oobbuf, align 4
  %mode = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 8
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %mode, align 4
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pos, align 4
  %ntargets.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ntargets.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i = icmp ugt i32 %10, %8
  br i1 %cmp.not.i, label %if.end21.i, label %do.end.i, !prof !74

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end21.i:                                       ; preds = %entry
  %cur_target.i = getelementptr inbounds %struct.spinand_device, ptr %nand, i32 0, i32 8
  %11 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur_target.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %8)
  %cmp22.i = icmp eq i32 %12, %8
  br i1 %cmp22.i, label %if.end21.i.if.end_crit_edge, label %if.end24.i

if.end21.i.if.end_crit_edge:                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end24.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp27.i = icmp eq i32 %10, 1
  br i1 %cmp27.i, label %if.end24.i.if.end.sink.split_crit_edge, label %if.end30.i

if.end24.i.if.end.sink.split_crit_edge:           ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.sink.split

if.end30.i:                                       ; preds = %if.end24.i
  %select_target.i = getelementptr inbounds %struct.spinand_device, ptr %nand, i32 0, i32 7
  %13 = ptrtoint ptr %select_target.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %select_target.i, align 4
  %call31.i = call i32 %14(ptr noundef %nand, i32 noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end30.i.if.end.sink.split_crit_edge, label %if.end30.i.cleanup_crit_edge

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30.i.if.end.sink.split_crit_edge:           ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end30.i.if.end.sink.split_crit_edge, %if.end24.i.if.end.sink.split_crit_edge
  %15 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %8, ptr %cur_target.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.end21.i.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i) #11
  %16 = call ptr @memset(ptr %op.i, i32 0, i32 48)
  %17 = ptrtoint ptr %op.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %op.i, align 8
  %18 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %op.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %18, align 1
  %20 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %op.i, i32 0, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 6, ptr %20, align 4
  %spimem.i = getelementptr inbounds %struct.spinand_device, ptr %nand, i32 0, i32 1
  %22 = ptrtoint ptr %spimem.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spimem.i, align 8
  %call.i = call i32 @spi_mem_exec_op(ptr noundef %23, ptr noundef nonnull %op.i) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = call fastcc i32 @spinand_write_page(ptr noundef %nand, ptr noundef nonnull %req)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.end30.i.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %call.i, %if.end.cleanup_crit_edge ], [ -22, %do.end.i ], [ %call31.i, %if.end30.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %req) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %marker) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @spinand_isbad(ptr noundef %nand, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  %marker = alloca [2 x i8], align 2
  %req = alloca %struct.nand_page_io_req, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %marker) #11
  %0 = ptrtoint ptr %marker to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %marker, align 2
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %req) #11
  %1 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %req, align 4
  %pos1 = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %pos1, ptr %pos, i32 20)
  %dataoffs = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 2
  %ooblen = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 6
  %3 = call ptr @memset(ptr %dataoffs, i32 0, i32 16)
  %4 = ptrtoint ptr %ooblen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %ooblen, align 4
  %oobbuf = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 7
  %5 = ptrtoint ptr %oobbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %marker, ptr %oobbuf, align 4
  %mode = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 8
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %mode, align 4
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pos, align 4
  %ntargets.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ntargets.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i = icmp ugt i32 %10, %8
  br i1 %cmp.not.i, label %if.end21.i, label %do.end.i, !prof !74

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef null) #11
  br label %spinand_select_target.exit

if.end21.i:                                       ; preds = %entry
  %cur_target.i = getelementptr inbounds %struct.spinand_device, ptr %nand, i32 0, i32 8
  %11 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur_target.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %8)
  %cmp22.i = icmp eq i32 %12, %8
  br i1 %cmp22.i, label %if.end21.i.spinand_select_target.exit_crit_edge, label %if.end24.i

if.end21.i.spinand_select_target.exit_crit_edge:  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_select_target.exit

if.end24.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp27.i = icmp eq i32 %10, 1
  br i1 %cmp27.i, label %if.then28.i, label %if.end30.i

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %cur_target.i, align 8
  br label %spinand_select_target.exit

if.end30.i:                                       ; preds = %if.end24.i
  %select_target.i = getelementptr inbounds %struct.spinand_device, ptr %nand, i32 0, i32 7
  %14 = ptrtoint ptr %select_target.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %select_target.i, align 4
  %call31.i = call i32 %15(ptr noundef %nand, i32 noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end30.i.spinand_select_target.exit_crit_edge

if.end30.i.spinand_select_target.exit_crit_edge:  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_select_target.exit

if.end34.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %cur_target.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %8, ptr %cur_target.i, align 8
  br label %spinand_select_target.exit

spinand_select_target.exit:                       ; preds = %if.end34.i, %if.end30.i.spinand_select_target.exit_crit_edge, %if.then28.i, %if.end21.i.spinand_select_target.exit_crit_edge, %do.end.i
  %call3 = call fastcc i32 @spinand_read_page(ptr noundef %nand, ptr noundef nonnull %req)
  %17 = ptrtoint ptr %marker to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %marker, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp.not = icmp eq i8 %18, -1
  br i1 %cmp.not, label %lor.lhs.false, label %spinand_select_target.exit.cleanup_crit_edge

spinand_select_target.exit.cleanup_crit_edge:     ; preds = %spinand_select_target.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %spinand_select_target.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5 = getelementptr inbounds [2 x i8], ptr %marker, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp7.not = icmp ne i8 %20, -1
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %spinand_select_target.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %spinand_select_target.exit.cleanup_crit_edge ], [ %cmp7.not, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %req) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %marker) #11
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spinand_write_page(ptr noundef %spinand, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  %op.i38 = alloca %struct.spi_mem_op, align 8
  %op.i = alloca %struct.spi_mem_op, align 8
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #11
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !77
  %call1 = tail call i32 @nand_ecc_prepare_io_req(ptr noundef %spinand, ptr noundef %req) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i) #11
  %1 = call ptr @memset(ptr %op.i, i32 0, i32 48)
  %2 = ptrtoint ptr %op.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %op.i, align 8
  %3 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %op.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %3, align 1
  %5 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %op.i, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 6, ptr %5, align 4
  %spimem.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 1
  %7 = ptrtoint ptr %spimem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spimem.i, align 8
  %call.i = call i32 @spi_mem_exec_op(ptr noundef %8, ptr noundef nonnull %op.i) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %databuf.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 11
  %9 = ptrtoint ptr %databuf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %databuf.i, align 8
  %pagesize.i.i = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %pagesize.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pagesize.i.i, align 4
  %oobsize.i.i = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %oobsize.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %oobsize.i.i, align 8
  %add.i = add i32 %14, %12
  %15 = call ptr @memset(ptr %10, i32 255, i32 %12)
  %datalen.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 3
  %16 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %datalen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end5.if.end.i_crit_edge, label %if.then.i

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %databuf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %databuf.i, align 8
  %dataoffs.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 2
  %20 = ptrtoint ptr %dataoffs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dataoffs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %21
  %databuf7.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 4
  %22 = ptrtoint ptr %databuf7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %databuf7.i, align 4
  %24 = call ptr @memcpy(ptr %add.ptr.i, ptr %23, i32 %17)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end5.if.end.i_crit_edge
  %ooblen.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 6
  %25 = ptrtoint ptr %ooblen.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ooblen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool9.not.i = icmp eq i32 %26, 0
  br i1 %tobool9.not.i, label %if.end.i.if.end21.i_crit_edge, label %if.then10.i

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then10.i:                                      ; preds = %if.end.i
  %mode.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 8
  %27 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i = icmp eq i32 %28, 1
  br i1 %cmp.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  %oobbuf.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 7
  %29 = ptrtoint ptr %oobbuf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %oobbuf.i, align 4
  %oobbuf12.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 12
  %31 = ptrtoint ptr %oobbuf12.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %oobbuf12.i, align 4
  %ooboffs.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 5
  %33 = ptrtoint ptr %ooboffs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ooboffs.i, align 4
  %call14.i = call i32 @mtd_ooblayout_set_databytes(ptr noundef %spinand, ptr noundef %30, ptr noundef %32, i32 noundef %34, i32 noundef %26) #11
  br label %if.end21.i

if.else.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  %oobbuf15.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 12
  %35 = ptrtoint ptr %oobbuf15.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %oobbuf15.i, align 4
  %ooboffs16.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 5
  %37 = ptrtoint ptr %ooboffs16.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ooboffs16.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %36, i32 %38
  %oobbuf18.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 7
  %39 = ptrtoint ptr %oobbuf18.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %oobbuf18.i, align 4
  %41 = call ptr @memcpy(ptr %add.ptr17.i, ptr %40, i32 %26)
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else.i, %if.then11.i, %if.end.i.if.end21.i_crit_edge
  %dirmaps.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 6
  %42 = ptrtoint ptr %dirmaps.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dirmaps.i, align 8
  %plane.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %plane.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %plane.i, align 4
  %arrayidx.i = getelementptr %struct.spinand_dirmap, ptr %43, i32 %45
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool23.not76.i = icmp eq i32 %add.i, 0
  br i1 %tobool23.not76.i, label %if.end21.i.if.end9_crit_edge, label %if.end21.i.while.body.i_crit_edge

if.end21.i.while.body.i_crit_edge:                ; preds = %if.end21.i
  br label %while.body.i

if.end21.i.if.end9_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

while.body.i:                                     ; preds = %if.end33.i.while.body.i_crit_edge, %if.end21.i.while.body.i_crit_edge
  %buf.079.i = phi ptr [ %add.ptr35.i, %if.end33.i.while.body.i_crit_edge ], [ %10, %if.end21.i.while.body.i_crit_edge ]
  %column.078.i = phi i32 [ %add34.i, %if.end33.i.while.body.i_crit_edge ], [ 0, %if.end21.i.while.body.i_crit_edge ]
  %nbytes.077.i = phi i32 [ %sub.i, %if.end33.i.while.body.i_crit_edge ], [ %add.i, %if.end21.i.while.body.i_crit_edge ]
  %conv.i = zext i32 %column.078.i to i64
  %call24.i = call i32 @spi_mem_dirmap_write(ptr noundef %47, i64 noundef %conv.i, i32 noundef %nbytes.077.i, ptr noundef %buf.079.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %while.body.i.cleanup_crit_edge, label %if.end28.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28.i:                                       ; preds = %while.body.i
  %48 = add nsw i32 %call24.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %nbytes.077.i)
  %.not.i = icmp ult i32 %48, %nbytes.077.i
  br i1 %.not.i, label %if.end33.i, label %if.end28.i.cleanup_crit_edge

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end33.i:                                       ; preds = %if.end28.i
  %sub.i = sub i32 %nbytes.077.i, %call24.i
  %add34.i = add i32 %call24.i, %column.078.i
  %add.ptr35.i = getelementptr i8, ptr %buf.079.i, i32 %call24.i
  %tobool23.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool23.not.i, label %if.end33.i.if.end9_crit_edge, label %if.end33.i.while.body.i_crit_edge

if.end33.i.while.body.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end33.i.if.end9_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end9:                                          ; preds = %if.end33.i.if.end9_crit_edge, %if.end21.i.if.end9_crit_edge
  %lun.i.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lun.i.i, align 4
  %rowconv.i.i = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 3
  %51 = ptrtoint ptr %rowconv.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rowconv.i.i, align 8
  %shl.i.i = shl i32 %50, %52
  %eraseblock.i.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 1, i32 3
  %53 = ptrtoint ptr %eraseblock.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %eraseblock.i.i, align 4
  %eraseblock_addr_shift.i.i = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %eraseblock_addr_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %eraseblock_addr_shift.i.i, align 4
  %shl2.i.i = shl i32 %54, %56
  %or.i.i = or i32 %shl2.i.i, %shl.i.i
  %page.i.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 1, i32 4
  %57 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %page.i.i, align 4
  %or3.i.i = or i32 %or.i.i, %58
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i38) #11
  %59 = call ptr @memset(ptr %op.i38, i32 255, i32 48)
  %60 = ptrtoint ptr %op.i38 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %op.i38, align 8
  %buswidth.i = getelementptr inbounds %struct.anon.73, ptr %op.i38, i32 0, i32 1
  %61 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %buswidth.i, align 1
  %dtr.i = getelementptr inbounds %struct.anon.73, ptr %op.i38, i32 0, i32 2
  %62 = ptrtoint ptr %dtr.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 127, ptr %dtr.i, align 2
  %opcode.i = getelementptr inbounds %struct.anon.73, ptr %op.i38, i32 0, i32 3
  %63 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 16, ptr %opcode.i, align 4
  %addr.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i38, i32 0, i32 1
  %64 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 3, ptr %addr.i, align 8
  %buswidth3.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i38, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %buswidth3.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %buswidth3.i, align 1
  %dtr4.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i38, i32 0, i32 1, i32 2
  %66 = ptrtoint ptr %dtr4.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 127, ptr %dtr4.i, align 2
  %val.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i38, i32 0, i32 1, i32 3
  %conv.i39 = zext i32 %or3.i.i to i64
  %67 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv.i39, ptr %val.i, align 8
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i38, i32 0, i32 2
  %68 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %dummy.i, align 8
  %buswidth9.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i38, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %buswidth9.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %buswidth9.i, align 1
  %dtr10.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i38, i32 0, i32 2, i32 2
  %70 = ptrtoint ptr %dtr10.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 127, ptr %dtr10.i, align 2
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i38, i32 0, i32 3
  %71 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %data.i, align 4
  %dtr15.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i38, i32 0, i32 3, i32 1
  %72 = ptrtoint ptr %dtr15.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 127, ptr %dtr15.i, align 1
  %dir.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i38, i32 0, i32 3, i32 2
  %73 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %dir.i, align 8
  %nbytes19.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i38, i32 0, i32 3, i32 3
  %74 = ptrtoint ptr %nbytes19.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %nbytes19.i, align 4
  %buf.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i38, i32 0, i32 3, i32 4
  %75 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %buf.i, align 8
  %76 = ptrtoint ptr %spimem.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %spimem.i, align 8
  %call20.i = call i32 @spi_mem_exec_op(ptr noundef %77, ptr noundef nonnull %op.i38) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool11.not = icmp eq i32 %call20.i, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = call fastcc i32 @spinand_wait(ptr noundef %spinand, i32 noundef 75, i32 noundef 15, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end13
  %78 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %status, align 1
  %80 = and i8 %79, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool16.not = icmp eq i8 %80, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end18_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end13.if.end18_crit_edge
  %call19 = call i32 @nand_ecc_finish_io_req(ptr noundef %spinand, ptr noundef %req) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %land.lhs.true.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end28.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end18 ], [ %call1, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call20.i, %if.end9.cleanup_crit_edge ], [ -5, %land.lhs.true.cleanup_crit_edge ], [ %call24.i, %while.body.i.cleanup_crit_edge ], [ -5, %if.end28.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_ecc_prepare_io_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_ecc_finish_io_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_set_databytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_dirmap_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spinand_read_page(ptr noundef %spinand, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  %op.i = alloca %struct.spi_mem_op, align 8
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #11
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !77
  %call1 = tail call i32 @nand_ecc_prepare_io_req(ptr noundef %spinand, ptr noundef %req) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %lun.i.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lun.i.i, align 4
  %rowconv.i.i = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 3
  %3 = ptrtoint ptr %rowconv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rowconv.i.i, align 8
  %shl.i.i = shl i32 %2, %4
  %eraseblock.i.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %eraseblock.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eraseblock.i.i, align 4
  %eraseblock_addr_shift.i.i = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %eraseblock_addr_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eraseblock_addr_shift.i.i, align 4
  %shl2.i.i = shl i32 %6, %8
  %or.i.i = or i32 %shl2.i.i, %shl.i.i
  %page.i.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %page.i.i, align 4
  %or3.i.i = or i32 %or.i.i, %10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op.i) #11
  %11 = call ptr @memset(ptr %op.i, i32 255, i32 48)
  %12 = ptrtoint ptr %op.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %op.i, align 8
  %buswidth.i = getelementptr inbounds %struct.anon.73, ptr %op.i, i32 0, i32 1
  %13 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %buswidth.i, align 1
  %dtr.i = getelementptr inbounds %struct.anon.73, ptr %op.i, i32 0, i32 2
  %14 = ptrtoint ptr %dtr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 127, ptr %dtr.i, align 2
  %opcode.i = getelementptr inbounds %struct.anon.73, ptr %op.i, i32 0, i32 3
  %15 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 19, ptr %opcode.i, align 4
  %addr.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 1
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %addr.i, align 8
  %buswidth3.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %buswidth3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %buswidth3.i, align 1
  %dtr4.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %dtr4.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 127, ptr %dtr4.i, align 2
  %val.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 1, i32 3
  %conv.i = zext i32 %or3.i.i to i64
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv.i, ptr %val.i, align 8
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 2
  %20 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %dummy.i, align 8
  %buswidth9.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %buswidth9.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %buswidth9.i, align 1
  %dtr10.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %dtr10.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 127, ptr %dtr10.i, align 2
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %data.i, align 4
  %dtr15.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %dtr15.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 127, ptr %dtr15.i, align 1
  %dir.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %dir.i, align 8
  %nbytes19.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %nbytes19.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %nbytes19.i, align 4
  %buf.i = getelementptr inbounds %struct.spi_mem_op, ptr %op.i, i32 0, i32 3, i32 4
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %buf.i, align 8
  %spimem.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 1
  %28 = ptrtoint ptr %spimem.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spimem.i, align 8
  %call20.i = call i32 @spi_mem_exec_op(ptr noundef %29, ptr noundef nonnull %op.i) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool3.not = icmp eq i32 %call20.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @spinand_wait(ptr noundef %spinand, i32 noundef 6, i32 noundef 5, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %ctx.i = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 2, i32 3
  %priv.i = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 2, i32 3, i32 3
  %30 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv.i, align 4
  %32 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp.i = icmp ne i32 %33, 4
  %tobool.not.i = icmp eq ptr %31, null
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.end8.spinand_ondie_ecc_save_status.exit_crit_edge, label %if.then.i

if.end8.spinand_ondie_ecc_save_status.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %spinand_ondie_ecc_save_status.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %status, align 1
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %31, align 1
  br label %spinand_ondie_ecc_save_status.exit

spinand_ondie_ecc_save_status.exit:               ; preds = %if.then.i, %if.end8.spinand_ondie_ecc_save_status.exit_crit_edge
  %datalen.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 3
  %37 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %datalen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i31 = icmp eq i32 %38, 0
  br i1 %tobool.not.i31, label %if.end.thread.i, label %if.end.i

if.end.i:                                         ; preds = %spinand_ondie_ecc_save_status.exit
  %databuf.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 11
  %39 = ptrtoint ptr %databuf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %databuf.i, align 8
  %pagesize.i.i = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %pagesize.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pagesize.i.i, align 4
  %ooblen.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 6
  %43 = ptrtoint ptr %ooblen.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ooblen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool3.not.i = icmp eq i32 %44, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then4.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.end.thread.i:                                  ; preds = %spinand_ondie_ecc_save_status.exit
  %ooblen97.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 6
  %45 = ptrtoint ptr %ooblen97.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ooblen97.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool3.not98.i = icmp eq i32 %46, 0
  br i1 %tobool3.not98.i, label %if.end.thread.i.while.end.i_crit_edge, label %if.then4.thread.i

if.end.thread.i.while.end.i_crit_edge:            ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

if.then4.thread.i:                                ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  %oobsize.i106.i = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %oobsize.i106.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %oobsize.i106.i, align 8
  br label %if.then7.i

if.then4.i:                                       ; preds = %if.end.i
  %oobsize.i.i = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %oobsize.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %oobsize.i.i, align 8
  %add.i = add i32 %50, %42
  %tobool6.not.i = icmp eq ptr %40, null
  br i1 %tobool6.not.i, label %if.then4.i.if.then7.i_crit_edge, label %if.then4.i.if.end10.i_crit_edge

if.then4.i.if.end10.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then4.i.if.then7.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.then4.i.if.then7.i_crit_edge, %if.then4.thread.i
  %add110.i = phi i32 [ %48, %if.then4.thread.i ], [ %add.i, %if.then4.i.if.then7.i_crit_edge ]
  %ooblen101109.i = phi ptr [ %ooblen97.i, %if.then4.thread.i ], [ %ooblen.i, %if.then4.i.if.then7.i_crit_edge ]
  %oobbuf.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 12
  %51 = ptrtoint ptr %oobbuf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %oobbuf.i, align 4
  %pagesize.i94.i = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %pagesize.i94.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pagesize.i94.i, align 4
  %conv.i32 = trunc i32 %54 to i16
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.then4.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %ooblen102.i = phi ptr [ %ooblen.i, %if.then4.i.if.end10.i_crit_edge ], [ %ooblen101109.i, %if.then7.i ], [ %ooblen.i, %if.end.i.if.end10.i_crit_edge ]
  %nbytes.1.i = phi i32 [ %add.i, %if.then4.i.if.end10.i_crit_edge ], [ %add110.i, %if.then7.i ], [ %42, %if.end.i.if.end10.i_crit_edge ]
  %buf.1.i = phi ptr [ %40, %if.then4.i.if.end10.i_crit_edge ], [ %52, %if.then7.i ], [ %40, %if.end.i.if.end10.i_crit_edge ]
  %column.1.i = phi i16 [ 0, %if.then4.i.if.end10.i_crit_edge ], [ %conv.i32, %if.then7.i ], [ 0, %if.end.i.if.end10.i_crit_edge ]
  %dirmaps.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 6
  %55 = ptrtoint ptr %dirmaps.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dirmaps.i, align 8
  %plane.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 1, i32 2
  %57 = ptrtoint ptr %plane.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %plane.i, align 4
  %rdesc11.i = getelementptr %struct.spinand_dirmap, ptr %56, i32 %58, i32 1
  %59 = ptrtoint ptr %rdesc11.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rdesc11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.1.i)
  %tobool12.not111.i = icmp eq i32 %nbytes.1.i, 0
  br i1 %tobool12.not111.i, label %if.end10.i.while.end.i_crit_edge, label %if.end10.i.while.body.i_crit_edge

if.end10.i.while.body.i_crit_edge:                ; preds = %if.end10.i
  br label %while.body.i

if.end10.i.while.end.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i:                                     ; preds = %if.end22.i.while.body.i_crit_edge, %if.end10.i.while.body.i_crit_edge
  %column.2114.i = phi i16 [ %conv25.i, %if.end22.i.while.body.i_crit_edge ], [ %column.1.i, %if.end10.i.while.body.i_crit_edge ]
  %buf.2113.i = phi ptr [ %add.ptr.i, %if.end22.i.while.body.i_crit_edge ], [ %buf.1.i, %if.end10.i.while.body.i_crit_edge ]
  %nbytes.2112.i = phi i32 [ %sub.i, %if.end22.i.while.body.i_crit_edge ], [ %nbytes.1.i, %if.end10.i.while.body.i_crit_edge ]
  %conv13.i = zext i16 %column.2114.i to i64
  %call14.i = call i32 @spi_mem_dirmap_read(ptr noundef %60, i64 noundef %conv13.i, i32 noundef %nbytes.2112.i, ptr noundef %buf.2113.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp.i33 = icmp slt i32 %call14.i, 0
  br i1 %cmp.i33, label %while.body.i.cleanup_crit_edge, label %if.end17.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17.i:                                       ; preds = %while.body.i
  %61 = add nsw i32 %call14.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %nbytes.2112.i)
  %.not.i = icmp ult i32 %61, %nbytes.2112.i
  br i1 %.not.i, label %if.end22.i, label %if.end17.i.cleanup_crit_edge

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22.i:                                       ; preds = %if.end17.i
  %sub.i = sub i32 %nbytes.2112.i, %call14.i
  %62 = trunc i32 %call14.i to i16
  %conv25.i = add i16 %column.2114.i, %62
  %add.ptr.i = getelementptr i8, ptr %buf.2113.i, i32 %call14.i
  %tobool12.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool12.not.i, label %if.end22.i.while.end.i_crit_edge, label %if.end22.i.while.body.i_crit_edge

if.end22.i.while.body.i_crit_edge:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end22.i.while.end.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %if.end22.i.while.end.i_crit_edge, %if.end10.i.while.end.i_crit_edge, %if.end.thread.i.while.end.i_crit_edge
  %ooblen102123.i = phi ptr [ %ooblen102.i, %if.end10.i.while.end.i_crit_edge ], [ %ooblen97.i, %if.end.thread.i.while.end.i_crit_edge ], [ %ooblen102.i, %if.end22.i.while.end.i_crit_edge ]
  %63 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %datalen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool27.not.i = icmp eq i32 %64, 0
  br i1 %tobool27.not.i, label %while.end.i.if.end33.i_crit_edge, label %if.then28.i

while.end.i.if.end33.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.then28.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %databuf29.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 4
  %65 = ptrtoint ptr %databuf29.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %databuf29.i, align 4
  %databuf30.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 11
  %67 = ptrtoint ptr %databuf30.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %databuf30.i, align 8
  %dataoffs.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 2
  %69 = ptrtoint ptr %dataoffs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dataoffs.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %68, i32 %70
  %71 = call ptr @memcpy(ptr %66, ptr %add.ptr31.i, i32 %64)
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then28.i, %while.end.i.if.end33.i_crit_edge
  %72 = ptrtoint ptr %ooblen102123.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ooblen102123.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool35.not.i = icmp eq i32 %73, 0
  br i1 %tobool35.not.i, label %if.end33.i.if.end12_crit_edge, label %if.then36.i

if.end33.i.if.end12_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then36.i:                                      ; preds = %if.end33.i
  %mode.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 8
  %74 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp37.i = icmp eq i32 %75, 1
  %oobbuf40.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 7
  %76 = ptrtoint ptr %oobbuf40.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %oobbuf40.i, align 4
  %oobbuf41.i = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 12
  %78 = ptrtoint ptr %oobbuf41.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %oobbuf41.i, align 4
  %ooboffs.i = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 5
  %80 = ptrtoint ptr %ooboffs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ooboffs.i, align 4
  br i1 %cmp37.i, label %if.then39.i, label %if.else.i

if.then39.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #13
  %call43.i = call i32 @mtd_ooblayout_get_databytes(ptr noundef %spinand, ptr noundef %77, ptr noundef %79, i32 noundef %81, i32 noundef %73) #11
  br label %if.end12

if.else.i:                                        ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr47.i = getelementptr i8, ptr %79, i32 %81
  %82 = call ptr @memcpy(ptr %77, ptr %add.ptr47.i, i32 %73)
  br label %if.end12

if.end12:                                         ; preds = %if.else.i, %if.then39.i, %if.end33.i.if.end12_crit_edge
  %call13 = call i32 @nand_ecc_finish_io_req(ptr noundef %spinand, ptr noundef %req) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end17.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ %call1, %entry.cleanup_crit_edge ], [ %call20.i, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call14.i, %while.body.i.cleanup_crit_edge ], [ -5, %if.end17.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_dirmap_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_get_databytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spinand_ondie_ecc_init_ctx(ptr nocapture noundef %nand) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %ctx, align 4
  %step_size = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 1, i32 4
  %1 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %step_size, align 4
  %step_size6 = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 0, i32 4
  %3 = ptrtoint ptr %step_size6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %step_size6, align 4
  %strength = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 1, i32 3
  %4 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %strength, align 4
  %strength12 = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 0, i32 3
  %6 = ptrtoint ptr %strength12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %strength12, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 1) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %priv = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 3
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %priv, align 4
  %ooblayout = getelementptr inbounds %struct.spinand_device, ptr %nand, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %ooblayout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ooblayout, align 4
  %tobool16.not = icmp eq ptr %10, null
  %ooblayout1.i33 = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 15
  %spinand_noecc_ooblayout. = select i1 %tobool16.not, ptr @spinand_noecc_ooblayout, ptr %10
  %11 = ptrtoint ptr %ooblayout1.i33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spinand_noecc_ooblayout., ptr %ooblayout1.i33, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spinand_ondie_ecc_cleanup_ctx(ptr nocapture noundef readonly %nand) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spinand_ondie_ecc_prepare_io_req(ptr nocapture noundef readonly %nand, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  %oobbuf = getelementptr inbounds %struct.spinand_device, ptr %nand, i32 0, i32 12
  %2 = ptrtoint ptr %oobbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oobbuf, align 4
  %oobsize.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oobsize.i, align 8
  %6 = call ptr @memset(ptr %3, i32 255, i32 %5)
  %conv.i = select i1 %cmp.not, i8 0, i8 16
  %call.i = tail call i32 @spinand_upd_cfg(ptr noundef %nand, i8 noundef zeroext 16, i8 noundef zeroext %conv.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spinand_ondie_ecc_finish_io_req(ptr noundef %nand, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mode = getelementptr inbounds %struct.nand_page_io_req, ptr %req, i32 0, i32 8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  %eccinfo.i = getelementptr inbounds %struct.spinand_device, ptr %nand, i32 0, i32 9
  %8 = ptrtoint ptr %eccinfo.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eccinfo.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 %9(ptr noundef %nand, i8 noundef zeroext %7) #11
  br label %spinand_check_ecc_status.exit

if.end.i:                                         ; preds = %if.end4
  %10 = and i8 %7, 48
  %and.i = zext i8 %10 to i32
  %11 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %sw.epilog.i [
    i32 0, label %if.end.i.cleanup_crit_edge
    i32 16, label %sw.bb4.i
    i32 32, label %if.end.i.if.then7_crit_edge
  ]

if.end.i.if.then7_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %strength.i = getelementptr inbounds %struct.nand_device, ptr %nand, i32 0, i32 2, i32 3, i32 0, i32 3
  %12 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %strength.i, align 4
  br label %spinand_check_ecc_status.exit

sw.epilog.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

spinand_check_ecc_status.exit:                    ; preds = %sw.bb4.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.then.i ], [ %13, %sw.bb4.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %retval.0.i)
  %cmp6 = icmp eq i32 %retval.0.i, -74
  br i1 %cmp6, label %spinand_check_ecc_status.exit.if.then7_crit_edge, label %if.else

spinand_check_ecc_status.exit.if.then7_crit_edge: ; preds = %spinand_check_ecc_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.then7:                                         ; preds = %spinand_check_ecc_status.exit.if.then7_crit_edge, %if.end.i.if.then7_crit_edge
  %failed = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 52, i32 1
  %14 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %failed, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %failed, align 4
  br label %cleanup

if.else:                                          ; preds = %spinand_check_ecc_status.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp8 = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp8, label %if.then9, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %ecc_stats10 = getelementptr inbounds %struct.mtd_info, ptr %nand, i32 0, i32 52
  %16 = ptrtoint ptr %ecc_stats10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ecc_stats10, align 4
  %add = add i32 %17, %retval.0.i
  store i32 %add, ptr %ecc_stats10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.else.cleanup_crit_edge, %if.then7, %sw.epilog.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.i, %if.else.cleanup_crit_edge ], [ %retval.0.i, %if.then9 ], [ -74, %if.then7 ], [ %and.i, %if.end.i.cleanup_crit_edge ], [ -22, %sw.epilog.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @spinand_noecc_ooblayout_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef readnone %region) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -34
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @spinand_noecc_ooblayout_free(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %region) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %region, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %region, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 62, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nanddev_isbad(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nanddev_markbad(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nanddev_isreserved(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nanddev_mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !25, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/spi/core.c", i32 122, i32 6}
!2 = !{ptr @__initcall__kmod_spinand__242_1357_spinand_drv_init6, !3, !"__initcall__kmod_spinand__242_1357_spinand_drv_init6", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/spi/core.c", i32 1357, i32 1}
!4 = !{ptr @__exitcall_spinand_drv_exit, !3, !"__exitcall_spinand_drv_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description243, !6, !"__UNIQUE_ID_description243", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/spi/core.c", i32 1359, i32 1}
!7 = !{ptr @__UNIQUE_ID_author244, !8, !"__UNIQUE_ID_author244", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/spi/core.c", i32 1360, i32 1}
!9 = !{ptr @__UNIQUE_ID_file245, !10, !"__UNIQUE_ID_file245", i1 false, i1 false}
!10 = !{!"../drivers/mtd/nand/spi/core.c", i32 1361, i32 1}
!11 = !{ptr @__UNIQUE_ID_license246, !10, !"__UNIQUE_ID_license246", i1 false, i1 false}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/spi/core.c", i32 1350, i32 12}
!14 = !{ptr @spinand_drv, !15, !"spinand_drv", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/spi/core.c", i32 1346, i32 30}
!16 = !{ptr @spinand_ids, !17, !"spinand_ids", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/spi/core.c", i32 1332, i32 35}
!18 = !{ptr @spinand_of_ids, !19, !"spinand_of_ids", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/spi/core.c", i32 1339, i32 34}
!20 = !{ptr @spinand_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/spi/core.c", i32 1294, i32 2}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/nand/spi/core.c", i32 1213, i32 3}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @spinand_init._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @spinand_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/spi/core.c", i32 1089, i32 3}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @spinand_detect._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @spinand_detect._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/nand/spi/core.c", i32 1095, i32 3}
!39 = !{ptr @spinand_detect._entry.10, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @spinand_detect._entry_ptr.12, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/nand/spi/core.c", i32 1100, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @spinand_detect._entry.13, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @spinand_detect._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nand/spi/core.c", i32 1102, i32 2}
!48 = !{ptr @spinand_detect._entry.17, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @spinand_detect._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = distinct !{null, !51, !"spinand_manufacturers", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/spi/core.c", i32 898, i32 43}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/nand/spi/core.c", i32 1130, i32 3}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @spinand_init_flash._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @spinand_init_flash._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @spinand_ops, !58, !"spinand_ops", i1 false, i1 false}
!58 = !{!"../drivers/mtd/nand/spi/core.c", i32 892, i32 30}
!59 = !{ptr @spinand_ondie_ecc_engine, !60, !"spinand_ondie_ecc_engine", i1 false, i1 false}
!60 = !{!"../drivers/mtd/nand/spi/core.c", i32 329, i32 31}
!61 = !{ptr @spinand_ondie_ecc_engine_ops, !62, !"spinand_ondie_ecc_engine_ops", i1 false, i1 false}
!62 = !{!"../drivers/mtd/nand/spi/core.c", i32 322, i32 35}
!63 = !{ptr @spinand_noecc_ooblayout, !64, !"spinand_noecc_ooblayout", i1 false, i1 false}
!64 = !{!"../drivers/mtd/nand/spi/core.c", i32 251, i32 39}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i32 0, i32 33}
!76 = !{i64 2148333127, i64 2148333407, i64 2148333741, i64 2148334075}
!77 = !{!"auto-init"}
