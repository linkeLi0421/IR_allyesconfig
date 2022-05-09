; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/spi/winbond.c_pt.bc'
source_filename = "../drivers/mtd/nand/spi/winbond.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinand_info = type { ptr, %struct.spinand_devid, i32, %struct.nand_memory_organization, %struct.nand_ecc_props, %struct.spinand_ecc_info, %struct.anon.71, ptr }
%struct.spinand_devid = type { ptr, i8, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.spinand_ecc_info = type { ptr, ptr }
%struct.anon.71 = type { ptr, ptr, ptr }
%struct.spinand_manufacturer_ops = type { ptr, ptr }
%struct.spinand_manufacturer = type { i8, ptr, ptr, i32, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.spinand_op_variants = type { ptr, i32 }
%struct.spi_mem_op = type { %struct.anon.72, %struct.anon.73, %struct.anon.74, %struct.anon.75 }
%struct.anon.72 = type { i8, i8, i8, i16 }
%struct.anon.73 = type { i8, i8, i8, i64 }
%struct.anon.74 = type { i8, i8, i8 }
%struct.anon.75 = type { i8, i8, i32, i32, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.spinand_device = type { %struct.nand_device, ptr, %struct.mutex, %struct.spinand_id, i32, %struct.anon.79, ptr, ptr, i32, %struct.spinand_ecc_info, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinand_id = type { [4 x i8], i32 }
%struct.anon.79 = type { ptr, ptr, ptr }
%struct.mtd_oob_region = type { i32, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Winbond\00", [24 x i8] zeroinitializer }, align 32
@winbond_spinand_table = internal constant { [2 x %struct.spinand_info], [48 x i8] } { [2 x %struct.spinand_info] [%struct.spinand_info { ptr @.str.1, %struct.spinand_devid { ptr @.compoundliteral, i8 1, i32 2 }, i32 0, %struct.nand_memory_organization { i32 1, i32 2048, i32 64, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 2 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 1, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr null, ptr @w25m02gv_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr @w25m02gv_select_target }, %struct.spinand_info { ptr @.str.2, %struct.spinand_devid { ptr @.compoundliteral.3, i8 1, i32 2 }, i32 0, %struct.nand_memory_organization { i32 1, i32 2048, i32 64, i32 64, i32 1024, i32 20, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 1, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr null, ptr @w25m02gv_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }], [48 x i8] zeroinitializer }, align 32
@winbond_spinand_manuf_ops = internal constant { %struct.spinand_manufacturer_ops, [24 x i8] } { %struct.spinand_manufacturer_ops { ptr @winbond_spinand_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@winbond_spinand_manufacturer = dso_local constant { %struct.spinand_manufacturer, [44 x i8] } { %struct.spinand_manufacturer { i8 -17, ptr @.str, ptr @winbond_spinand_table, i32 2, ptr @winbond_spinand_manuf_ops }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"W25M02GV\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\AB", [31 x i8] zeroinitializer }, align 32
@w25m02gv_ooblayout = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @w25m02gv_ooblayout_ecc, ptr @w25m02gv_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@read_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.4, i32 6 }, [24 x i8] zeroinitializer }, align 32
@write_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.5, i32 2 }, [24 x i8] zeroinitializer }, align 32
@update_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.6, i32 2 }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"W25N01GV\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\AA", [31 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { [6 x %struct.spi_mem_op], [64 x i8] } { [6 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 235 }, %struct.anon.73 { i8 2, i8 4, i8 0, i64 0 }, %struct.anon.74 { i8 2, i8 4, i8 0 }, %struct.anon.75 { i8 4, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 107 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 4, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 187 }, %struct.anon.73 { i8 2, i8 2, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 2, i8 0 }, %struct.anon.75 { i8 2, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 59 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 2, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 11 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 1, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 3 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 1, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }], [64 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { [2 x %struct.spi_mem_op], [32 x i8] } { [2 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 50 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 4, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 2 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 1, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { [2 x %struct.spi_mem_op], [32 x i8] } { [2 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 52 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 4, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 132 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 1, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 123, i32 10 }
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"winbond_spinand_table\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 77, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant [26 x i8] c"winbond_spinand_manuf_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 117, i32 46 }
@___asan_gen_.16 = private unnamed_addr constant [29 x i8] c"winbond_spinand_manufacturer\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 121, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 78, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"w25m02gv_ooblayout\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 58, i32 39 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"read_cache_variants\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 18, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant [21 x i8] c"write_cache_variants\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 26, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant [22 x i8] c"update_cache_variants\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 30, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [34 x i8] c"../drivers/mtd/nand/spi/winbond.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 88, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @winbond_spinand_table, ptr @winbond_spinand_manuf_ops, ptr @winbond_spinand_manufacturer, ptr @.str.1, ptr @.compoundliteral, ptr @w25m02gv_ooblayout, ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants, ptr @.str.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @winbond_spinand_table to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @winbond_spinand_manuf_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @winbond_spinand_manufacturer to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w25m02gv_ooblayout to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w25m02gv_select_target(ptr nocapture noundef readonly %spinand, i32 noundef %target) #0 align 64 {
entry:
  %op = alloca %struct.spi_mem_op, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %op) #4
  %0 = call ptr @memset(ptr %op, i32 255, i32 48)
  %1 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %op, align 8
  %buswidth = getelementptr inbounds %struct.anon.72, ptr %op, i32 0, i32 1
  %2 = ptrtoint ptr %buswidth to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %buswidth, align 1
  %dtr = getelementptr inbounds %struct.anon.72, ptr %op, i32 0, i32 2
  %3 = ptrtoint ptr %dtr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 127, ptr %dtr, align 2
  %opcode = getelementptr inbounds %struct.anon.72, ptr %op, i32 0, i32 3
  %4 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 194, ptr %opcode, align 4
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %addr, align 8
  %buswidth2 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %buswidth2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %buswidth2, align 1
  %dtr3 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %dtr3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 127, ptr %dtr3, align 2
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %val, align 8
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
  store i32 2, ptr %dir, align 8
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
  %conv = trunc i32 %target to i8
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %17, align 1
  %spimem = getelementptr inbounds %struct.spinand_device, ptr %spinand, i32 0, i32 1
  %20 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spimem, align 8
  %call = call i32 @spi_mem_exec_op(ptr noundef %21, ptr noundef nonnull %op) #4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %op) #4
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @w25m02gv_ooblayout_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %region) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %section)
  %cmp = icmp sgt i32 %section, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mul = shl i32 %section, 4
  %add = or i32 %mul, 8
  %0 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %region, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %region, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @w25m02gv_ooblayout_free(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %region) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %section)
  %cmp = icmp sgt i32 %section, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mul = shl i32 %section, 4
  %add = or i32 %mul, 2
  %0 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %region, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %region, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 6, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_exec_op(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @winbond_spinand_init(ptr noundef %spinand) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ntargets = getelementptr inbounds %struct.nand_device, ptr %spinand, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %ntargets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ntargets, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call1 = tail call i32 @spinand_select_target(ptr noundef %spinand, i32 noundef %i.08) #4
  %call2 = tail call i32 @spinand_upd_cfg(ptr noundef %spinand, i8 noundef zeroext 8, i8 noundef zeroext 8) #4
  %inc = add nuw i32 %i.08, 1
  %2 = ptrtoint ptr %ntargets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ntargets, align 8
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spinand_select_target(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spinand_upd_cfg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/spi/winbond.c", i32 123, i32 10}
!2 = !{ptr @winbond_spinand_manufacturer, !3, !"winbond_spinand_manufacturer", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/spi/winbond.c", i32 121, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mtd/nand/spi/winbond.c", i32 78, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/spi/winbond.c", i32 88, i32 2}
!8 = !{ptr @winbond_spinand_table, !9, !"winbond_spinand_table", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/spi/winbond.c", i32 77, i32 34}
!10 = !{ptr @w25m02gv_ooblayout, !11, !"w25m02gv_ooblayout", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/spi/winbond.c", i32 58, i32 39}
!12 = !{ptr @read_cache_variants, !13, !"read_cache_variants", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/spi/winbond.c", i32 18, i32 8}
!14 = !{ptr @write_cache_variants, !15, !"write_cache_variants", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/spi/winbond.c", i32 26, i32 8}
!16 = !{ptr @update_cache_variants, !17, !"update_cache_variants", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/spi/winbond.c", i32 30, i32 8}
!18 = !{ptr @winbond_spinand_manuf_ops, !19, !"winbond_spinand_manuf_ops", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/spi/winbond.c", i32 117, i32 46}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
