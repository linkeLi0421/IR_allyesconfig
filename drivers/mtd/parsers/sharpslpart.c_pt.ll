; ModuleID = '/llk/IR_all_yes/drivers/mtd/parsers/sharpslpart.c_pt.bc'
source_filename = "../drivers/mtd/parsers/sharpslpart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_part_parser = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.mtd_oob_region = type { i32, i32 }
%struct.sharpsl_ftl = type { i32, ptr }
%struct.sharpsl_nand_partinfo = type { i32, i32, i32, i32 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }

@__initcall__kmod_sharpslpart__185_395_sharpsl_mtd_parser_init6 = internal global ptr @sharpsl_mtd_parser_init, section ".initcall6.init", align 4
@sharpsl_mtd_parser = internal global { %struct.mtd_part_parser, [36 x i8] } { %struct.mtd_part_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str, ptr null, ptr @sharpsl_parse_mtd_partitions, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sharpsl_mtd_parser_exit = internal global ptr @sharpsl_mtd_parser_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file186 = internal constant [49 x i8] c"sharpslpart.file=drivers/mtd/parsers/sharpslpart\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [24 x i8] c"sharpslpart.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author188 = internal constant [57 x i8] c"sharpslpart.author=Andrea Adami <andrea.adami@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [75 x i8] c"sharpslpart.description=MTD partitioning for NAND flash on Sharp SL Series\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sharpslpart\00", [20 x i8] zeroinitializer }, align 32
@sharpsl_parse_mtd_partitions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016sharpslpart: try reading first partition table\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sharpsl_parse_mtd_partitions\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mtd/parsers/sharpslpart.c\00", [62 x i8] zeroinitializer }, align 32
@sharpsl_parse_mtd_partitions._entry_ptr = internal global ptr @sharpsl_parse_mtd_partitions._entry, section ".printk_index", align 4
@sharpsl_parse_mtd_partitions._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014sharpslpart: first partition table is invalid, retry using the second\0A\00", [55 x i8] zeroinitializer }, align 32
@sharpsl_parse_mtd_partitions._entry_ptr.6 = internal global ptr @sharpsl_parse_mtd_partitions._entry.4, section ".printk_index", align 4
@sharpsl_parse_mtd_partitions._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013sharpslpart: both partition tables are invalid\0A\00", [46 x i8] zeroinitializer }, align 32
@sharpsl_parse_mtd_partitions._entry_ptr.9 = internal global ptr @sharpsl_parse_mtd_partitions._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"smf\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"root\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"home\00", [27 x i8] zeroinitializer }, align 32
@sharpsl_nand_init_ftl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016Sharp SL FTL: %d blocks used (%d logical, %d reserved)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sharpsl_nand_init_ftl\00", [42 x i8] zeroinitializer }, align 32
@sharpsl_nand_init_ftl._entry_ptr = internal global ptr @sharpsl_nand_init_ftl._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sharpsl_nand_read_partinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013sharpslpart: magic values mismatch\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sharpsl_nand_read_partinfo\00", [37 x i8] zeroinitializer }, align 32
@sharpsl_nand_read_partinfo._entry_ptr = internal global ptr @sharpsl_nand_read_partinfo._entry, section ".printk_index", align 4
@sharpsl_nand_read_partinfo._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013sharpslpart: partition sizes mismatch\0A\00", [55 x i8] zeroinitializer }, align 32
@sharpsl_nand_read_partinfo._entry_ptr.19 = internal global ptr @sharpsl_nand_read_partinfo._entry.17, section ".printk_index", align 4
@sharpsl_nand_read_laddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013sharpslpart: error, read failed at %#llx\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sharpsl_nand_read_laddr\00", [40 x i8] zeroinitializer }, align 32
@sharpsl_nand_read_laddr._entry_ptr = internal global ptr @sharpsl_nand_read_laddr._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"sharpsl_mtd_parser\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 391, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 393, i32 10 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 345, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 351, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 361, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 372, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 377, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 382, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 213, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 305, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 318, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [37 x i8] c"../drivers/mtd/parsers/sharpslpart.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 259, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_sharpsl_mtd_parser_exit, ptr @__initcall__kmod_sharpslpart__185_395_sharpsl_mtd_parser_init6, ptr @sharpsl_mtd_parser_exit, ptr @sharpsl_nand_init_ftl._entry, ptr @sharpsl_nand_init_ftl._entry_ptr, ptr @sharpsl_nand_read_laddr._entry, ptr @sharpsl_nand_read_laddr._entry_ptr, ptr @sharpsl_nand_read_partinfo._entry, ptr @sharpsl_nand_read_partinfo._entry.17, ptr @sharpsl_nand_read_partinfo._entry_ptr, ptr @sharpsl_nand_read_partinfo._entry_ptr.19, ptr @sharpsl_parse_mtd_partitions._entry, ptr @sharpsl_parse_mtd_partitions._entry.4, ptr @sharpsl_parse_mtd_partitions._entry.7, ptr @sharpsl_parse_mtd_partitions._entry_ptr, ptr @sharpsl_parse_mtd_partitions._entry_ptr.6, ptr @sharpsl_parse_mtd_partitions._entry_ptr.9, ptr @sharpsl_mtd_parser, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharpsl_mtd_parser to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharpsl_parse_mtd_partitions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharpsl_parse_mtd_partitions._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharpsl_parse_mtd_partitions._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharpsl_nand_init_ftl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharpsl_nand_read_partinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharpsl_nand_read_partinfo._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharpsl_nand_read_laddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sharpsl_mtd_parser_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_mtd_parser(ptr noundef nonnull @sharpsl_mtd_parser, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sharpsl_mtd_parser_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @deregister_mtd_parser(ptr noundef nonnull @sharpsl_mtd_parser) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_mtd_parser(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_mtd_parser(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sharpsl_parse_mtd_partitions(ptr noundef %master, ptr nocapture noundef writeonly %pparts, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  %ops.i.i = alloca %struct.mtd_oob_ops, align 4
  %oobfree.i = alloca %struct.mtd_oob_region, align 8
  %ftl = alloca %struct.sharpsl_ftl, align 4
  %buf = alloca [3 x %struct.sharpsl_nand_partinfo], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ftl) #8
  %0 = getelementptr inbounds %struct.sharpsl_ftl, ptr %ftl, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %buf) #8
  %1 = call ptr @memset(ptr %buf, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oobfree.i) #8
  %2 = ptrtoint ptr %oobfree.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %oobfree.i, align 8
  %call43.i = call i32 @mtd_ooblayout_free(ptr noundef %master, i32 noundef 0, ptr noundef nonnull %oobfree.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool.not44.i = icmp eq i32 %call43.i, 0
  br i1 %tobool.not44.i, label %if.end.lr.ph.i, label %entry.sharpsl_nand_check_ooblayout.exit_crit_edge

entry.sharpsl_nand_check_ooblayout.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sharpsl_nand_check_ooblayout.exit

if.end.lr.ph.i:                                   ; preds = %entry
  %length.i = getelementptr inbounds %struct.mtd_oob_region, ptr %oobfree.i, i32 0, i32 1
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %inc46.i = phi i32 [ 1, %if.end.lr.ph.i ], [ %inc.i, %cleanup.i.if.end.i_crit_edge ]
  %freebytes.045.i = phi i8 [ 0, %if.end.lr.ph.i ], [ %freebytes.2.i, %cleanup.i.if.end.i_crit_edge ]
  %3 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not.i = icmp eq i32 %4, 0
  br i1 %tobool1.not.i, label %if.end.i.cleanup.i_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %5 = ptrtoint ptr %oobfree.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %oobfree.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %6)
  %cmp.i = icmp ugt i32 %6, 15
  %add.i = add i32 %6, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %add.i)
  %cmp5.i = icmp ult i32 %add.i, 8
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp5.i
  br i1 %or.cond.i, label %lor.lhs.false.i.cleanup.i_crit_edge, label %if.end7.i

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end7.i:                                        ; preds = %lor.lhs.false.i
  %7 = call i32 @llvm.umax.i32(i32 %6, i32 8) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add.i)
  %cmp1438.i = icmp ult i32 %7, %add.i
  br i1 %cmp1438.i, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.for.end.i_crit_edge

if.end7.i.for.end.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7.i.for.body.i_crit_edge
  %i.042.i = phi i32 [ %inc17.i, %for.body.i.for.body.i_crit_edge ], [ %7, %if.end7.i.for.body.i_crit_edge ]
  %freebytes.141.i = phi i8 [ %conv16.i, %for.body.i.for.body.i_crit_edge ], [ %freebytes.045.i, %if.end7.i.for.body.i_crit_edge ]
  %sub.i = add i32 %i.042.i, -8
  %shl.i = shl nuw nsw i32 1, %sub.i
  %8 = trunc i32 %shl.i to i8
  %conv16.i = or i8 %freebytes.141.i, %8
  %inc17.i = add nuw nsw i32 %i.042.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc17.i, i32 %add.i)
  %cmp14.i = icmp ult i32 %inc17.i, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.042.i)
  %cmp15.i = icmp slt i32 %i.042.i, 15
  %or.cond32.i = and i1 %cmp15.i, %cmp14.i
  br i1 %or.cond32.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end7.i.for.end.i_crit_edge
  %freebytes.1.lcssa.i = phi i8 [ %freebytes.045.i, %if.end7.i.for.end.i_crit_edge ], [ %conv16.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %freebytes.1.lcssa.i)
  %cmp19.i = icmp eq i8 %freebytes.1.lcssa.i, -1
  br i1 %cmp19.i, label %if.end, label %for.end.i.cleanup.i_crit_edge

for.end.i.cleanup.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.end.i.cleanup.i_crit_edge, %lor.lhs.false.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge
  %freebytes.2.i = phi i8 [ %freebytes.045.i, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %freebytes.045.i, %if.end.i.cleanup.i_crit_edge ], [ %freebytes.1.lcssa.i, %for.end.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oobfree.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oobfree.i) #8
  %9 = ptrtoint ptr %oobfree.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %oobfree.i, align 8
  %inc.i = add i32 %inc46.i, 1
  %call.i = call i32 @mtd_ooblayout_free(ptr noundef %master, i32 noundef %inc46.i, ptr noundef nonnull %oobfree.i) #8
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cleanup.i.if.end.i_crit_edge, label %cleanup.i.sharpsl_nand_check_ooblayout.exit_crit_edge

cleanup.i.sharpsl_nand_check_ooblayout.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sharpsl_nand_check_ooblayout.exit

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

sharpsl_nand_check_ooblayout.exit:                ; preds = %cleanup.i.sharpsl_nand_check_ooblayout.exit_crit_edge, %entry.sharpsl_nand_check_ooblayout.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oobfree.i) #8
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oobfree.i) #8
  %oobsize.i = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 6
  %10 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oobsize.i, align 4
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #11
  %tobool.not.i88 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i88, label %if.end.cleanup_crit_edge, label %if.end.i89

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i89:                                       ; preds = %if.end
  %erasesize_shift.i.i = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 8
  %12 = ptrtoint ptr %erasesize_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %erasesize_shift.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %if.else170.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i.i = zext i32 %13 to i64
  %shr.i.i = lshr i64 7340032, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %mtd_div_by_eb.exit.i

if.else170.i.i:                                   ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #10
  %erasesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 3
  %14 = ptrtoint ptr %erasesize.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %erasesize.i.i, align 8
  %div180.i.i = udiv i32 7340032, %15
  br label %mtd_div_by_eb.exit.i

mtd_div_by_eb.exit.i:                             ; preds = %if.else170.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ %div180.i.i, %if.else170.i.i ]
  %mul.i = mul nsw i32 %retval.0.i.i, 95
  %div.i = udiv i32 %mul.i, 100
  %sub.i90 = add nsw i32 %div.i, -1
  %16 = ptrtoint ptr %ftl to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.i90, ptr %ftl, align 4
  %17 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub.i90, i32 4) #8
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !62

kmalloc_array.exit.thread.i:                      ; preds = %mtd_div_by_eb.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %0, align 4
  br label %sharpsl_nand_init_ftl.exit.thread101

if.end7.i.i:                                      ; preds = %mtd_div_by_eb.exit.i
  %20 = extractvalue { i32, i1 } %17, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3264) #11
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i, ptr %0, align 4
  %tobool5.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool5.not.i, label %if.end7.i.i.sharpsl_nand_init_ftl.exit.thread101_crit_edge, label %for.cond.preheader.i

if.end7.i.i.sharpsl_nand_init_ftl.exit.thread101_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sharpsl_nand_init_ftl.exit.thread101

for.cond.preheader.i:                             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i90)
  %cmp133.not.i = icmp eq i32 %sub.i90, 0
  br i1 %cmp133.not.i, label %for.cond.preheader.i.for.cond10.preheader.i_crit_edge, label %for.body.i93.preheader

for.cond.preheader.i.for.cond10.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond10.preheader.i

for.body.i93.preheader:                           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %0, align 4
  %24 = shl nuw nsw i32 %div.i, 2
  %25 = add nsw i32 %24, -4
  %26 = call ptr @memset(ptr %23, i32 255, i32 %25)
  br label %for.cond10.preheader.i

for.cond10.preheader.i:                           ; preds = %for.body.i93.preheader, %for.cond.preheader.i.for.cond10.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp11135.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp11135.not.i, label %for.cond10.preheader.i.do.end_crit_edge, label %for.body12.lr.ph.i

for.cond10.preheader.i.do.end_crit_edge:          ; preds = %for.cond10.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body12.lr.ph.i:                               ; preds = %for.cond10.preheader.i
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 3
  %ooblen.i.i = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i.i, i32 0, i32 3
  %oobbuf.i.i = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i.i, i32 0, i32 7
  %oobretlen.i.i = getelementptr inbounds %struct.mtd_oob_ops, ptr %ops.i.i, i32 0, i32 4
  %arrayidx.i.i = getelementptr i8, ptr %call9.i.i.i, i32 8
  %arrayidx1.i.i = getelementptr i8, ptr %call9.i.i.i, i32 10
  %arrayidx4.i.i = getelementptr i8, ptr %call9.i.i.i, i32 9
  %arrayidx6.i.i = getelementptr i8, ptr %call9.i.i.i, i32 11
  %arrayidx12.i.i = getelementptr i8, ptr %call9.i.i.i, i32 12
  %arrayidx19.i.i = getelementptr i8, ptr %call9.i.i.i, i32 13
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc39.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %block_num.0136.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc40.i, %for.inc39.i.for.body12.i_crit_edge ]
  %conv.i = zext i32 %block_num.0136.i to i64
  %27 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %erasesize.i, align 8
  %conv13.i = zext i32 %28 to i64
  %mul14.i = mul nuw i64 %conv13.i, %conv.i
  %call15.i = call i32 @mtd_block_isbad(ptr noundef %master, i64 noundef %mul14.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %for.body12.i.for.inc39.i_crit_edge

for.body12.i.for.inc39.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.i

if.end18.i:                                       ; preds = %for.body12.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ops.i.i) #8
  %29 = call ptr @memset(ptr %ops.i.i, i32 0, i32 28)
  %30 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %oobsize.i, align 4
  %32 = ptrtoint ptr %ooblen.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %ooblen.i.i, align 4
  %33 = ptrtoint ptr %oobbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call9.i.i.i, ptr %oobbuf.i.i, align 4
  %call.i.i = call i32 @mtd_read_oob(ptr noundef %master, i64 noundef %mul14.i, ptr noundef nonnull %ops.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %sharpsl_nand_read_oob.exit.i, label %sharpsl_nand_read_oob.exit.thread.i

sharpsl_nand_read_oob.exit.thread.i:              ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i.i) #8
  br label %for.inc39.i

sharpsl_nand_read_oob.exit.i:                     ; preds = %if.end18.i
  %34 = ptrtoint ptr %oobsize.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %oobsize.i, align 4
  %36 = ptrtoint ptr %oobretlen.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %oobretlen.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp2.not.i.not.i = icmp eq i32 %35, %37
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ops.i.i) #8
  br i1 %cmp2.not.i.not.i, label %if.end22.i, label %sharpsl_nand_read_oob.exit.i.for.inc39.i_crit_edge

sharpsl_nand_read_oob.exit.i.for.inc39.i_crit_edge: ; preds = %sharpsl_nand_read_oob.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.i

if.end22.i:                                       ; preds = %sharpsl_nand_read_oob.exit.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.i, align 8
  %40 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx1.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp.i111.i = icmp eq i8 %39, %41
  br i1 %cmp.i111.i, label %land.lhs.true.i112.i, label %if.end22.i.if.else.i.i_crit_edge

if.end22.i.if.else.i.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

land.lhs.true.i112.i:                             ; preds = %if.end22.i
  %42 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx4.i.i, align 1
  %44 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx6.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp8.i.i = icmp eq i8 %43, %45
  br i1 %cmp8.i.i, label %land.lhs.true.i112.i.if.end41.i.i_crit_edge, label %land.lhs.true.i112.i.if.else.i.i_crit_edge

land.lhs.true.i112.i.if.else.i.i_crit_edge:       ; preds = %land.lhs.true.i112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

land.lhs.true.i112.i.if.end41.i.i_crit_edge:      ; preds = %land.lhs.true.i112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i112.i.if.else.i.i_crit_edge, %if.end22.i.if.else.i.i_crit_edge
  %46 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %47)
  %cmp14.i.i = icmp eq i8 %41, %47
  br i1 %cmp14.i.i, label %land.lhs.true16.i.i, label %if.else.i.i.if.else24.i.i_crit_edge

if.else.i.i.if.else24.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else24.i.i

land.lhs.true16.i.i:                              ; preds = %if.else.i.i
  %48 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx6.i.i, align 1
  %50 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx19.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp21.i.i = icmp eq i8 %49, %51
  br i1 %cmp21.i.i, label %land.lhs.true16.i.i.if.end41.i.i_crit_edge, label %land.lhs.true16.i.i.if.else24.i.i_crit_edge

land.lhs.true16.i.i.if.else24.i.i_crit_edge:      ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else24.i.i

land.lhs.true16.i.i.if.end41.i.i_crit_edge:       ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i.i

if.else24.i.i:                                    ; preds = %land.lhs.true16.i.i.if.else24.i.i_crit_edge, %if.else.i.i.if.else24.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %39)
  %cmp29.i.i = icmp eq i8 %47, %39
  br i1 %cmp29.i.i, label %land.lhs.true31.i.i, label %if.else24.i.i.for.inc39.i_crit_edge

if.else24.i.i.for.inc39.i_crit_edge:              ; preds = %if.else24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.i

land.lhs.true31.i.i:                              ; preds = %if.else24.i.i
  %52 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx19.i.i, align 1
  %54 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx4.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp36.i.i = icmp eq i8 %53, %55
  br i1 %cmp36.i.i, label %land.lhs.true31.i.i.if.end41.i.i_crit_edge, label %land.lhs.true31.i.i.for.inc39.i_crit_edge

land.lhs.true31.i.i.for.inc39.i_crit_edge:        ; preds = %land.lhs.true31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.i

land.lhs.true31.i.i.if.end41.i.i_crit_edge:       ; preds = %land.lhs.true31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %land.lhs.true31.i.i.if.end41.i.i_crit_edge, %land.lhs.true16.i.i.if.end41.i.i_crit_edge, %land.lhs.true.i112.i.if.end41.i.i_crit_edge
  %good0.0.i.i = phi i32 [ 8, %land.lhs.true.i112.i.if.end41.i.i_crit_edge ], [ 10, %land.lhs.true16.i.i.if.end41.i.i_crit_edge ], [ 12, %land.lhs.true31.i.i.if.end41.i.i_crit_edge ]
  %good1.0.i.i = phi i32 [ 9, %land.lhs.true.i112.i.if.end41.i.i_crit_edge ], [ 11, %land.lhs.true16.i.i.if.end41.i.i_crit_edge ], [ 13, %land.lhs.true31.i.i.if.end41.i.i_crit_edge ]
  %arrayidx42.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %good0.0.i.i
  %56 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx42.i.i, align 2
  %conv43.i.i = zext i8 %57 to i16
  %arrayidx44.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %good1.0.i.i
  %58 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx44.i.i, align 1
  %conv45.i.i = zext i8 %59 to i16
  %shl.i113.i = shl nuw i16 %conv45.i.i, 8
  %or.i.i = or i16 %shl.i113.i, %conv43.i.i
  %conv183.i.i = zext i16 %or.i.i to i32
  %call.i.i.i = call i32 @__sw_hweight16(i32 noundef %conv183.i.i) #8
  %and184.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184.i.i)
  %tobool185.not.i.i = icmp eq i32 %and184.i.i, 0
  br i1 %tobool185.not.i.i, label %if.end187.i.i, label %if.end41.i.i.for.inc39.i_crit_edge

if.end41.i.i.for.inc39.i_crit_edge:               ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.i

if.end187.i.i:                                    ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %or.i.i)
  %cmp189.i.i = icmp eq i16 %or.i.i, -1
  br i1 %cmp189.i.i, label %if.end187.i.i.land.lhs.true.i_crit_edge, label %sharpsl_nand_get_logical_num.exit.i

if.end187.i.i.land.lhs.true.i_crit_edge:          ; preds = %if.end187.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

sharpsl_nand_get_logical_num.exit.i:              ; preds = %if.end187.i.i
  %60 = lshr i16 %or.i.i, 1
  %61 = and i16 %60, 1023
  %and195.i.i = zext i16 %61 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp24.not.i = icmp eq i16 %61, 0
  br i1 %cmp24.not.i, label %sharpsl_nand_get_logical_num.exit.i.for.inc39.i_crit_edge, label %sharpsl_nand_get_logical_num.exit.i.land.lhs.true.i_crit_edge

sharpsl_nand_get_logical_num.exit.i.land.lhs.true.i_crit_edge: ; preds = %sharpsl_nand_get_logical_num.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

sharpsl_nand_get_logical_num.exit.i.for.inc39.i_crit_edge: ; preds = %sharpsl_nand_get_logical_num.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.i

land.lhs.true.i:                                  ; preds = %sharpsl_nand_get_logical_num.exit.i.land.lhs.true.i_crit_edge, %if.end187.i.i.land.lhs.true.i_crit_edge
  %retval.0.i117131.i = phi i32 [ %and195.i.i, %sharpsl_nand_get_logical_num.exit.i.land.lhs.true.i_crit_edge ], [ 65535, %if.end187.i.i.land.lhs.true.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i117131.i, i32 %sub.i90)
  %cmp27.i = icmp ult i32 %retval.0.i117131.i, %sub.i90
  br i1 %cmp27.i, label %if.then29.i, label %land.lhs.true.i.for.inc39.i_crit_edge

land.lhs.true.i.for.inc39.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.i

if.then29.i:                                      ; preds = %land.lhs.true.i
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %0, align 4
  %arrayidx31.i = getelementptr i32, ptr %63, i32 %retval.0.i117131.i
  %64 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %cmp32.i = icmp eq i32 %65, -1
  br i1 %cmp32.i, label %if.then34.i, label %if.then29.i.for.inc39.i_crit_edge

if.then29.i.for.inc39.i_crit_edge:                ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.i

if.then34.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %block_num.0136.i, ptr %arrayidx31.i, align 4
  br label %for.inc39.i

for.inc39.i:                                      ; preds = %if.then34.i, %if.then29.i.for.inc39.i_crit_edge, %land.lhs.true.i.for.inc39.i_crit_edge, %sharpsl_nand_get_logical_num.exit.i.for.inc39.i_crit_edge, %if.end41.i.i.for.inc39.i_crit_edge, %land.lhs.true31.i.i.for.inc39.i_crit_edge, %if.else24.i.i.for.inc39.i_crit_edge, %sharpsl_nand_read_oob.exit.i.for.inc39.i_crit_edge, %sharpsl_nand_read_oob.exit.thread.i, %for.body12.i.for.inc39.i_crit_edge
  %inc40.i = add nuw i32 %block_num.0136.i, 1
  %exitcond.not.i = icmp eq i32 %inc40.i, %retval.0.i.i
  br i1 %exitcond.not.i, label %for.inc39.i.do.end_crit_edge, label %for.inc39.i.for.body12.i_crit_edge

for.inc39.i.for.body12.i_crit_edge:               ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12.i

for.inc39.i.do.end_crit_edge:                     ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sharpsl_nand_init_ftl.exit.thread101:             ; preds = %if.end7.i.i.sharpsl_nand_init_ftl.exit.thread101_crit_edge, %kmalloc_array.exit.thread.i
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #8
  br label %cleanup

do.end:                                           ; preds = %for.inc39.i.do.end_crit_edge, %for.cond10.preheader.i.do.end_crit_edge
  %sub44.i = sub nsw i32 %retval.0.i.i, %sub.i90
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %retval.0.i.i, i32 noundef %sub.i90, i32 noundef %sub44.i) #12
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #8
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  %call6 = call fastcc i32 @sharpsl_nand_read_partinfo(ptr noundef %master, i64 noundef 393216, ptr noundef nonnull %buf, ptr noundef nonnull %ftl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end16.thread, label %if.end16

if.end16.thread:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %0, align 4
  call void @kfree(ptr noundef %68) #8
  br label %if.end24

if.end16:                                         ; preds = %do.end
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  %call15 = call fastcc i32 @sharpsl_nand_read_partinfo(ptr noundef %master, i64 noundef 409600, ptr noundef nonnull %buf, ptr noundef nonnull %ftl)
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %0, align 4
  call void @kfree(ptr noundef %70) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool17.not = icmp eq i32 %call15, 0
  br i1 %tobool17.not, label %if.end16.if.end24_crit_edge, label %do.end21

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end24:                                         ; preds = %if.end16.if.end24_crit_edge, %if.end16.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %71 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i96 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 3520, i32 noundef 120) #13
  %tobool26.not = icmp eq ptr %call7.i.i.i96, null
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %call7.i.i.i96 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.10, ptr %call7.i.i.i96, align 8
  %73 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buf, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  %conv = zext i32 %75 to i64
  %offset = getelementptr inbounds %struct.mtd_partition, ptr %call7.i.i.i96, i32 0, i32 3
  %76 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv, ptr %offset, align 8
  %end = getelementptr inbounds %struct.sharpsl_nand_partinfo, ptr %buf, i32 0, i32 1
  %77 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %end, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78)
  %sub = sub i32 %79, %75
  %conv34 = zext i32 %sub to i64
  %size = getelementptr inbounds %struct.mtd_partition, ptr %call7.i.i.i96, i32 0, i32 2
  %80 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %conv34, ptr %size, align 8
  %arrayidx36 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i96, i32 1
  %81 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.11, ptr %arrayidx36, align 8
  %arrayidx38 = getelementptr inbounds [3 x %struct.sharpsl_nand_partinfo], ptr %buf, i32 0, i32 1
  %82 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx38, align 4
  %84 = call i32 @llvm.bswap.i32(i32 %83)
  %conv40 = zext i32 %84 to i64
  %offset42 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i96, i32 1, i32 3
  %85 = ptrtoint ptr %offset42 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv40, ptr %offset42, align 8
  %end44 = getelementptr inbounds [3 x %struct.sharpsl_nand_partinfo], ptr %buf, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %end44 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %end44, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87)
  %sub47 = sub i32 %88, %84
  %conv48 = zext i32 %sub47 to i64
  %size50 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i96, i32 1, i32 2
  %89 = ptrtoint ptr %size50 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %conv48, ptr %size50, align 8
  %arrayidx51 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i96, i32 2
  %90 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.12, ptr %arrayidx51, align 8
  %arrayidx53 = getelementptr inbounds [3 x %struct.sharpsl_nand_partinfo], ptr %buf, i32 0, i32 2
  %91 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx53, align 4
  %93 = call i32 @llvm.bswap.i32(i32 %92)
  %conv55 = zext i32 %93 to i64
  %offset57 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i96, i32 2, i32 3
  %94 = ptrtoint ptr %offset57 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %conv55, ptr %offset57, align 8
  %end59 = getelementptr inbounds [3 x %struct.sharpsl_nand_partinfo], ptr %buf, i32 0, i32 2, i32 1
  %95 = ptrtoint ptr %end59 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %end59, align 4
  %97 = call i32 @llvm.bswap.i32(i32 %96)
  %sub62 = sub i32 %97, %93
  %conv63 = zext i32 %sub62 to i64
  %size65 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i96, i32 2, i32 2
  %98 = ptrtoint ptr %size65 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %conv63, ptr %size65, align 8
  %99 = ptrtoint ptr %pparts to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call7.i.i.i96, ptr %pparts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end24.cleanup_crit_edge, %do.end21, %sharpsl_nand_init_ftl.exit.thread101, %if.end.cleanup_crit_edge, %sharpsl_nand_check_ooblayout.exit
  %retval.0 = phi i32 [ %call15, %do.end21 ], [ 3, %if.end28 ], [ -524, %sharpsl_nand_check_ooblayout.exit ], [ -12, %if.end24.cleanup_crit_edge ], [ -12, %sharpsl_nand_init_ftl.exit.thread101 ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ftl) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sharpsl_nand_read_partinfo(ptr noundef %master, i64 noundef %from, ptr noundef %buf, ptr nocapture noundef readonly %ftl) unnamed_addr #2 align 64 {
entry:
  %retlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i) #8
  %0 = ptrtoint ptr %retlen.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %retlen.i, align 4, !annotation !63
  %conv.i = trunc i64 %from to i32
  %erasesize_shift.i.i = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 8
  %1 = ptrtoint ptr %erasesize_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %erasesize_shift.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %if.else170.i118.i, label %if.then.i7.i

if.then.i7.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i = and i64 %from, 4294967295
  %sh_prom.i.i = zext i32 %2 to i64
  %shr.i.i = lshr i64 %conv1.i, %sh_prom.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %sub.i = add i32 %conv.i, 47
  %conv3.i = zext i32 %sub.i to i64
  %shr.i5.i = lshr i64 %conv3.i, %sh_prom.i.i
  %conv.i6.i = trunc i64 %shr.i5.i to i32
  br label %mtd_div_by_eb.exit121.i

if.else170.i118.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %erasesize.i.i = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 3
  %3 = ptrtoint ptr %erasesize.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %erasesize.i.i, align 8
  %div180.i.i = udiv i32 %conv.i, %4
  %sub167.i = add i32 %conv.i, 47
  %div180.i119.i = udiv i32 %sub167.i, %4
  br label %mtd_div_by_eb.exit121.i

mtd_div_by_eb.exit121.i:                          ; preds = %if.else170.i118.i, %if.then.i7.i
  %retval.0.i169.i = phi i32 [ %conv.i.i, %if.then.i7.i ], [ %div180.i.i, %if.else170.i118.i ]
  %retval.0.i120.i = phi i32 [ %conv.i6.i, %if.then.i7.i ], [ %div180.i119.i, %if.else170.i118.i ]
  %5 = ptrtoint ptr %ftl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ftl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i169.i, i32 %6)
  %cmp6.not.i = icmp uge i32 %retval.0.i169.i, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i120.i, i32 %retval.0.i169.i)
  %cmp9.i = icmp ugt i32 %retval.0.i120.i, %retval.0.i169.i
  %or.cond.i = select i1 %cmp6.not.i, i1 true, i1 %cmp9.i
  br i1 %or.cond.i, label %mtd_div_by_eb.exit121.i.sharpsl_nand_read_laddr.exit.thread_crit_edge, label %if.end.i

mtd_div_by_eb.exit121.i.sharpsl_nand_read_laddr.exit.thread_crit_edge: ; preds = %mtd_div_by_eb.exit121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sharpsl_nand_read_laddr.exit.thread

if.end.i:                                         ; preds = %mtd_div_by_eb.exit121.i
  %log2phy.i = getelementptr inbounds %struct.sharpsl_ftl, ptr %ftl, i32 0, i32 1
  %7 = ptrtoint ptr %log2phy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log2phy.i, align 4
  %arrayidx.i = getelementptr i32, ptr %8, i32 %retval.0.i169.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %conv11.i = zext i32 %10 to i64
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 3
  %11 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %erasesize.i, align 8
  %conv12.i = zext i32 %12 to i64
  %mul.i = mul nuw i64 %conv12.i, %conv11.i
  br i1 %tobool.not.i.i, label %if.else169.i.i, label %if.then.i124.i

if.then.i124.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %erasesize_mask.i.i = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 10
  %13 = ptrtoint ptr %erasesize_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %erasesize_mask.i.i, align 4
  %conv1.i.i = and i32 %14, %conv.i
  br label %mtd_mod_by_eb.exit.i

if.else169.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %rem177.i.i = urem i32 %conv.i, %12
  br label %mtd_mod_by_eb.exit.i

mtd_mod_by_eb.exit.i:                             ; preds = %if.else169.i.i, %if.then.i124.i
  %retval.0.i163.i = phi i32 [ %conv1.i.i, %if.then.i124.i ], [ %rem177.i.i, %if.else169.i.i ]
  %conv16.i = zext i32 %retval.0.i163.i to i64
  %add17.i = add nuw i64 %mul.i, %conv16.i
  %call18.i = call i32 @mtd_read(ptr noundef %master, i64 noundef %add17.i, i32 noundef 48, ptr noundef nonnull %retlen.i, ptr noundef %buf) #8
  %15 = zext i32 %call18.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call18.i, label %mtd_mod_by_eb.exit.i.do.end.i_crit_edge [
    i32 -117, label %mtd_mod_by_eb.exit.i.land.lhs.true.i_crit_edge
    i32 0, label %mtd_mod_by_eb.exit.i.land.lhs.true.i_crit_edge14
  ]

mtd_mod_by_eb.exit.i.land.lhs.true.i_crit_edge14: ; preds = %mtd_mod_by_eb.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

mtd_mod_by_eb.exit.i.land.lhs.true.i_crit_edge:   ; preds = %mtd_mod_by_eb.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

mtd_mod_by_eb.exit.i.do.end.i_crit_edge:          ; preds = %mtd_mod_by_eb.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %mtd_mod_by_eb.exit.i.land.lhs.true.i_crit_edge, %mtd_mod_by_eb.exit.i.land.lhs.true.i_crit_edge14
  %16 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %17)
  %cmp23.not.i = icmp eq i32 %17, 48
  br i1 %cmp23.not.i, label %if.end, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %mtd_mod_by_eb.exit.i.do.end.i_crit_edge
  %err.1.ph.i = phi i32 [ -5, %land.lhs.true.i.do.end.i_crit_edge ], [ %call18.i, %mtd_mod_by_eb.exit.i.do.end.i_crit_edge ]
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i64 noundef %add17.i) #12
  br label %sharpsl_nand_read_laddr.exit.thread

sharpsl_nand_read_laddr.exit.thread:              ; preds = %do.end.i, %mtd_div_by_eb.exit121.i.sharpsl_nand_read_laddr.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %err.1.ph.i, %do.end.i ], [ -22, %mtd_div_by_eb.exit121.i.sharpsl_nand_read_laddr.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #8
  %magic = getelementptr inbounds %struct.sharpsl_nand_partinfo, ptr %buf, i32 0, i32 2
  %18 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1112493908, i32 %19)
  %cmp.not = icmp eq i32 %19, 1112493908
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx1 = getelementptr %struct.sharpsl_nand_partinfo, ptr %buf, i32 1
  %magic2 = getelementptr %struct.sharpsl_nand_partinfo, ptr %buf, i32 1, i32 2
  %20 = ptrtoint ptr %magic2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %magic2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179865679, i32 %21)
  %cmp3.not = icmp eq i32 %21, 1179865679
  br i1 %cmp3.not, label %lor.lhs.false4, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %arrayidx5 = getelementptr %struct.sharpsl_nand_partinfo, ptr %buf, i32 2
  %magic6 = getelementptr %struct.sharpsl_nand_partinfo, ptr %buf, i32 2, i32 2
  %22 = ptrtoint ptr %magic6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %magic6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179865687, i32 %23)
  %cmp7.not = icmp eq i32 %23, 1179865687
  br i1 %cmp7.not, label %if.end10, label %lor.lhs.false4.do.end_crit_edge

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false4.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false4
  %size = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 2
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %size, align 8
  %conv = trunc i64 %25 to i32
  %26 = call i32 @llvm.bswap.i32(i32 %conv)
  %end = getelementptr %struct.sharpsl_nand_partinfo, ptr %buf, i32 2, i32 1
  %27 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %end, align 4
  %end13 = getelementptr inbounds %struct.sharpsl_nand_partinfo, ptr %buf, i32 0, i32 1
  %28 = ptrtoint ptr %end13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end13, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %33)
  %cmp15.not = icmp ugt i32 %30, %33
  br i1 %cmp15.not, label %lor.lhs.false17, label %if.end10.do.end48_crit_edge

if.end10.do.end48_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

lor.lhs.false17:                                  ; preds = %if.end10
  %34 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx1, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %30)
  %cmp22 = icmp ult i32 %36, %30
  br i1 %cmp22, label %lor.lhs.false17.do.end48_crit_edge, label %lor.lhs.false24

lor.lhs.false17.do.end48_crit_edge:               ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

lor.lhs.false24:                                  ; preds = %lor.lhs.false17
  %end26 = getelementptr %struct.sharpsl_nand_partinfo, ptr %buf, i32 1, i32 1
  %37 = ptrtoint ptr %end26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %end26, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %36)
  %cmp29.not = icmp ugt i32 %39, %36
  br i1 %cmp29.not, label %lor.lhs.false31, label %lor.lhs.false24.do.end48_crit_edge

lor.lhs.false24.do.end48_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

lor.lhs.false31:                                  ; preds = %lor.lhs.false24
  %40 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx5, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %39)
  %cmp36 = icmp uge i32 %42, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv)
  %cmp43.not = icmp ult i32 %42, %conv
  %or.cond = select i1 %cmp36, i1 %cmp43.not, i1 false
  br i1 %or.cond, label %lor.lhs.false31.cleanup_crit_edge, label %lor.lhs.false31.do.end48_crit_edge

lor.lhs.false31.do.end48_crit_edge:               ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

lor.lhs.false31.cleanup_crit_edge:                ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end48:                                         ; preds = %lor.lhs.false31.do.end48_crit_edge, %lor.lhs.false24.do.end48_crit_edge, %lor.lhs.false17.do.end48_crit_edge, %if.end10.do.end48_crit_edge
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %lor.lhs.false31.cleanup_crit_edge, %do.end, %sharpsl_nand_read_laddr.exit.thread
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end48 ], [ 0, %lor.lhs.false31.cleanup_crit_edge ], [ %retval.0.i.ph, %sharpsl_nand_read_laddr.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_free(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isbad(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read_oob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_sharpslpart__185_395_sharpsl_mtd_parser_init6, !1, !"__initcall__kmod_sharpslpart__185_395_sharpsl_mtd_parser_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/parsers/sharpslpart.c", i32 395, i32 1}
!2 = !{ptr @__exitcall_sharpsl_mtd_parser_exit, !1, !"__exitcall_sharpsl_mtd_parser_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file186, !4, !"__UNIQUE_ID_file186", i1 false, i1 false}
!4 = !{!"../drivers/mtd/parsers/sharpslpart.c", i32 397, i32 1}
!5 = !{ptr @__UNIQUE_ID_license187, !4, !"__UNIQUE_ID_license187", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author188, !7, !"__UNIQUE_ID_author188", i1 false, i1 false}
!7 = !{!"../drivers/mtd/parsers/sharpslpart.c", i32 398, i32 1}
!8 = !{ptr @__UNIQUE_ID_description189, !9, !"__UNIQUE_ID_description189", i1 false, i1 false}
!9 = !{!"../drivers/mtd/parsers/sharpslpart.c", i32 399, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/parsers/sharpslpart.c", i32 393, i32 10}
!12 = !{ptr @sharpsl_mtd_parser, !13, !"sharpsl_mtd_parser", i1 false, i1 false}
!13 = !{!"../drivers/mtd/parsers/sharpslpart.c", i32 391, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/parsers/sharpslpart.c", i32 345, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @sharpsl_parse_mtd_partitions._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @sharpsl_parse_mtd_partitions._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/parsers/sharpslpart.c", i32 351, i32 3}
!22 = !{ptr @sharpsl_parse_mtd_partitions._entry.4, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @sharpsl_parse_mtd_partitions._entry_ptr.6, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/parsers/sharpslpart.c", i32 361, i32 3}
!26 = !{ptr @sharpsl_parse_mtd_partitions._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sharpsl_parse_mtd_partitions._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/parsers/sharpslpart.c", i32 372, i32 31}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/parsers/sharpslpart.c", i32 377, i32 31}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/parsers/sharpslpart.c", i32 382, i32 31}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/parsers/sharpslpart.c", i32 213, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sharpsl_nand_init_ftl._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @sharpsl_nand_init_ftl._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/parsers/sharpslpart.c", i32 305, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sharpsl_nand_read_partinfo._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @sharpsl_nand_read_partinfo._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/parsers/sharpslpart.c", i32 318, i32 3}
!46 = !{ptr @sharpsl_nand_read_partinfo._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sharpsl_nand_read_partinfo._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/parsers/sharpslpart.c", i32 259, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @sharpsl_nand_read_laddr._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @sharpsl_nand_read_laddr._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{!"auto-init"}
