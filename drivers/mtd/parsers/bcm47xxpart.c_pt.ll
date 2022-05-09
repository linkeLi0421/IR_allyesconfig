; ModuleID = '/llk/IR_all_yes/drivers/mtd/parsers/bcm47xxpart.c_pt.bc'
source_filename = "../drivers/mtd/parsers/bcm47xxpart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_part_parser = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.trx_header = type { i32, i32, i32, i16, i16, [3 x i32] }
%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }

@__initcall__kmod_bcm47xxpart__191_314_bcm47xxpart_mtd_parser_init6 = internal global ptr @bcm47xxpart_mtd_parser_init, section ".initcall6.init", align 4
@bcm47xxpart_mtd_parser = internal global { %struct.mtd_part_parser, [36 x i8] } { %struct.mtd_part_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str, ptr @bcm47xxpart_of_match_table, ptr @bcm47xxpart_parse, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_bcm47xxpart_mtd_parser_exit = internal global ptr @bcm47xxpart_mtd_parser_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file192 = internal constant [49 x i8] c"bcm47xxpart.file=drivers/mtd/parsers/bcm47xxpart\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [24 x i8] c"bcm47xxpart.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description194 = internal constant [68 x i8] c"bcm47xxpart.description=MTD partitioning for BCM47XX flash memories\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm47xxpart\00", [20 x i8] zeroinitializer }, align 32
@bcm47xxpart_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm947xx-cfe-partitions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm47xxpart_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014Reached maximum number of partitions, scanning stopped!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm47xxpart_parse\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mtd/parsers/bcm47xxpart.c\00", [62 x i8] zeroinitializer }, align 32
@bcm47xxpart_parse._entry_ptr = internal global ptr @bcm47xxpart_parse._entry, section ".printk_index", align 4
@bcm47xxpart_parse._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013mtd_read error while parsing (offset: 0x%X): %d\0A\00", [45 x i8] zeroinitializer }, align 32
@bcm47xxpart_parse._entry_ptr.6 = internal global ptr @bcm47xxpart_parse._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"boot\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"board_data\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"factory\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"POT\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ML\00", [29 x i8] zeroinitializer }, align 32
@bcm47xxpart_parse._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014No enough space to store another TRX found at 0x%X\0A\00", [42 x i8] zeroinitializer }, align 32
@bcm47xxpart_parse._entry_ptr.14 = internal global ptr @bcm47xxpart_parse._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firmware\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rootfs\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nvram\00", [26 x i8] zeroinitializer }, align 32
@bcm47xxpart_parse._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bcm47xxpart_parse._entry_ptr.19 = internal global ptr @bcm47xxpart_parse._entry.18, section ".printk_index", align 4
@bcm47xxpart_parse._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bcm47xxpart_parse._entry_ptr.21 = internal global ptr @bcm47xxpart_parse._entry.20, section ".printk_index", align 4
@bcm47xxpart_parse._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013mtd_read error while reading (offset 0x%X): %d\0A\00", [46 x i8] zeroinitializer }, align 32
@bcm47xxpart_parse._entry_ptr.24 = internal global ptr @bcm47xxpart_parse._entry.22, section ".printk_index", align 4
@trx_types = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.27, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"failsafe\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bootpartition\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"trx\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1414811472, i64 1498694470]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 810697800, i64 1752396147, i64 1903388787]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"bcm47xxpart_mtd_parser\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 309, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 311, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant [27 x i8] c"bcm47xxpart_of_match_table\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 303, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 128, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 136, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 144, i32 46 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 154, i32 46 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 161, i32 46 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 169, i32 46 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 177, i32 46 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 189, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 193, i32 46 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 219, i32 46 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 230, i32 46 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 239, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 255, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 263, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [10 x i8] c"trx_types\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 43, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 296, i32 16 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 78, i32 27 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [37 x i8] c"../drivers/mtd/parsers/bcm47xxpart.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 43, i32 43 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_description194, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__exitcall_bcm47xxpart_mtd_parser_exit, ptr @__initcall__kmod_bcm47xxpart__191_314_bcm47xxpart_mtd_parser_init6, ptr @bcm47xxpart_mtd_parser_exit, ptr @bcm47xxpart_parse._entry, ptr @bcm47xxpart_parse._entry.12, ptr @bcm47xxpart_parse._entry.18, ptr @bcm47xxpart_parse._entry.20, ptr @bcm47xxpart_parse._entry.22, ptr @bcm47xxpart_parse._entry.4, ptr @bcm47xxpart_parse._entry_ptr, ptr @bcm47xxpart_parse._entry_ptr.14, ptr @bcm47xxpart_parse._entry_ptr.19, ptr @bcm47xxpart_parse._entry_ptr.21, ptr @bcm47xxpart_parse._entry_ptr.24, ptr @bcm47xxpart_parse._entry_ptr.6, ptr @bcm47xxpart_mtd_parser, ptr @.str, ptr @bcm47xxpart_of_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.23, ptr @trx_types, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxpart_mtd_parser to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxpart_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxpart_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxpart_parse._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxpart_parse._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxpart_parse._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxpart_parse._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xxpart_parse._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trx_types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xxpart_mtd_parser_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_mtd_parser(ptr noundef nonnull @bcm47xxpart_mtd_parser, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm47xxpart_mtd_parser_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @deregister_mtd_parser(ptr noundef nonnull @bcm47xxpart_mtd_parser) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_mtd_parser(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_mtd_parser(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm47xxpart_parse(ptr noundef %master, ptr nocapture noundef writeonly %pparts, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  %buf.i = alloca [4 x i8], align 4
  %bootpartition.i = alloca i32, align 4
  %bytes_read = alloca i32, align 4
  %trx_parts = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_read) #7
  %0 = ptrtoint ptr %bytes_read to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bytes_read, align 4, !annotation !71
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 3
  %1 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %erasesize, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %trx_parts) #7
  %3 = ptrtoint ptr %trx_parts to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %trx_parts, align 4, !annotation !71
  %4 = getelementptr inbounds [2 x i32], ptr %trx_parts, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !71
  %6 = tail call i32 @llvm.umax.i32(i32 %2, i32 4096)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 800) #10
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1256) #10
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.then5, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end2
  %size = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 2
  %conv7 = zext i32 %6 to i64
  %arrayidx = getelementptr i32, ptr %call7.i.i, i32 312
  %arrayidx31 = getelementptr i32, ptr %call7.i.i, i32 313
  %arrayidx34 = getelementptr i32, ptr %call7.i.i, i32 256
  %arrayidx41 = getelementptr i32, ptr %call7.i.i, i32 64
  %arrayidx63 = getelementptr i32, ptr %call7.i.i, i32 1
  %arrayidx72 = getelementptr i32, ptr %call7.i.i, i32 4
  %arrayidx76 = getelementptr i32, ptr %call7.i.i, i32 5
  %arrayidx113 = getelementptr %struct.trx_header, ptr %call7.i.i, i32 0, i32 5, i32 2
  %sub129 = add i32 %6, -1
  br label %for.body

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %conv461 = phi i64 [ 0, %for.cond.preheader ], [ %conv, %for.inc.for.body_crit_edge ]
  %curr_part.0459 = phi i8 [ 0, %for.cond.preheader ], [ %curr_part.1, %for.inc.for.body_crit_edge ]
  %offset.0457 = phi i32 [ 0, %for.cond.preheader ], [ %add186, %for.inc.for.body_crit_edge ]
  %trx_num.0455 = phi i32 [ 0, %for.cond.preheader ], [ %trx_num.2, %for.inc.for.body_crit_edge ]
  %conv10 = zext i8 %curr_part.0459 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %curr_part.0459)
  %cmp11 = icmp ugt i8 %curr_part.0459, 19
  br i1 %cmp11, label %for.end.thread, label %if.end15

for.end.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %do.end198

if.end15:                                         ; preds = %for.body
  %call17 = call i32 @mtd_read(ptr noundef %master, i64 noundef %conv461, i32 noundef 1256, ptr noundef nonnull %bytes_read, ptr noundef nonnull %call7.i.i) #7
  %9 = zext i32 %call17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call17, label %do.end24 [
    i32 0, label %if.end15.if.end27_crit_edge
    i32 -117, label %if.end15.if.end27_crit_edge495
  ]

if.end15.if.end27_crit_edge495:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %offset.0457, i32 noundef %call17) #11
  br label %for.inc

if.end27:                                         ; preds = %if.end15.if.end27_crit_edge, %if.end15.if.end27_crit_edge495
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1128678705, i32 %11)
  %cmp28 = icmp eq i32 %11, 1128678705
  br i1 %cmp28, label %land.lhs.true30, label %if.end27.lor.lhs.false_crit_edge

if.end27.lor.lhs.false_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true30:                                  ; preds = %if.end27
  %12 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1128678705, i32 %13)
  %cmp32 = icmp eq i32 %13, 1128678705
  br i1 %cmp32, label %land.lhs.true30.if.then37_crit_edge, label %land.lhs.true30.lor.lhs.false_crit_edge

land.lhs.true30.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true30.if.then37_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37

lor.lhs.false:                                    ; preds = %land.lhs.true30.lor.lhs.false_crit_edge, %if.end27.lor.lhs.false_crit_edge
  %14 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213418566, i32 %15)
  %cmp35 = icmp eq i32 %15, 1213418566
  br i1 %cmp35, label %lor.lhs.false.if.then37_crit_edge, label %if.end40

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false.if.then37_crit_edge, %land.lhs.true30.if.then37_crit_edge
  %inc = add nuw nsw i8 %curr_part.0459, 1
  %arrayidx38 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10
  %16 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.7, ptr %arrayidx38, align 8
  %offset2.i = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10, i32 3
  %17 = ptrtoint ptr %offset2.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv461, ptr %offset2.i, align 8
  %mask_flags3.i = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10, i32 4
  %18 = ptrtoint ptr %mask_flags3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1024, ptr %mask_flags3.i, align 8
  br label %for.inc

if.end40:                                         ; preds = %lor.lhs.false
  %19 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1380339789, i32 %20)
  %cmp42 = icmp eq i32 %20, 1380339789
  br i1 %cmp42, label %if.then44, label %if.end49

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %inc45 = add nuw nsw i8 %curr_part.0459, 1
  %arrayidx47 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10
  %21 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.8, ptr %arrayidx47, align 8
  %offset2.i420 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10, i32 3
  %22 = ptrtoint ptr %offset2.i420 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv461, ptr %offset2.i420, align 8
  %mask_flags3.i421 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10, i32 4
  %23 = ptrtoint ptr %mask_flags3.i421 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1024, ptr %mask_flags3.i421, align 8
  br label %for.inc

if.end49:                                         ; preds = %if.end40
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call7.i.i, align 8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %25, label %if.end49.if.end71_crit_edge [
    i32 1498694470, label %if.then53
    i32 1414811472, label %land.lhs.true62
  ]

if.end49.if.end71_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %inc54 = add nuw nsw i8 %curr_part.0459, 1
  %arrayidx56 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10
  %27 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.9, ptr %arrayidx56, align 8
  %offset2.i422 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10, i32 3
  %28 = ptrtoint ptr %offset2.i422 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv461, ptr %offset2.i422, align 8
  %mask_flags3.i423 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10, i32 4
  %29 = ptrtoint ptr %mask_flags3.i423 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1024, ptr %mask_flags3.i423, align 8
  br label %for.inc

land.lhs.true62:                                  ; preds = %if.end49
  %30 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx63, align 4
  %and = and i32 %31, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 20559, i32 %and)
  %cmp64 = icmp eq i32 %and, 20559
  br i1 %cmp64, label %if.then66, label %land.lhs.true62.if.end71_crit_edge

land.lhs.true62.if.end71_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then66:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  %inc67 = add nuw nsw i8 %curr_part.0459, 1
  %arrayidx69 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10
  %32 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.10, ptr %arrayidx69, align 8
  %offset2.i424 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10, i32 3
  %33 = ptrtoint ptr %offset2.i424 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv461, ptr %offset2.i424, align 8
  %mask_flags3.i425 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10, i32 4
  %34 = ptrtoint ptr %mask_flags3.i425 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1024, ptr %mask_flags3.i425, align 8
  br label %for.inc

if.end71:                                         ; preds = %land.lhs.true62.if.end71_crit_edge, %if.end49.if.end71_crit_edge
  %35 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx72, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 963140162, i32 %36)
  %cmp73 = icmp eq i32 %36, 963140162
  br i1 %cmp73, label %land.lhs.true75, label %if.end71.if.end84_crit_edge

if.end71.if.end84_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

land.lhs.true75:                                  ; preds = %if.end71
  %37 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 643383601, i32 %38)
  %cmp77 = icmp eq i32 %38, 643383601
  br i1 %cmp77, label %if.then79, label %land.lhs.true75.if.end84_crit_edge

land.lhs.true75.if.end84_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then79:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #9
  %inc80 = add nuw nsw i8 %curr_part.0459, 1
  %arrayidx82 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10
  %39 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.11, ptr %arrayidx82, align 8
  %offset2.i426 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10, i32 3
  %40 = ptrtoint ptr %offset2.i426 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv461, ptr %offset2.i426, align 8
  %mask_flags3.i427 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10, i32 4
  %41 = ptrtoint ptr %mask_flags3.i427 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1024, ptr %mask_flags3.i427, align 8
  br label %for.inc

if.end84:                                         ; preds = %land.lhs.true75.if.end84_crit_edge, %if.end71.if.end84_crit_edge
  %42 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %25, label %if.end146 [
    i32 810697800, label %if.then88
    i32 1752396147, label %if.end84.if.then141_crit_edge
    i32 1903388787, label %if.end84.if.then141_crit_edge496
  ]

if.end84.if.then141_crit_edge496:                 ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then141

if.end84.if.then141_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then141

if.then88:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %trx_num.0455)
  %cmp89 = icmp ugt i32 %trx_num.0455, 1
  br i1 %cmp89, label %do.end94, label %if.else

do.end94:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %offset.0457) #11
  br label %if.end100

if.else:                                          ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  %inc98 = add nuw nsw i32 %trx_num.0455, 1
  %arrayidx99 = getelementptr [2 x i32], ptr %trx_parts, i32 0, i32 %trx_num.0455
  %43 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv10, ptr %arrayidx99, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.else, %do.end94
  %trx_num.1 = phi i32 [ %trx_num.0455, %do.end94 ], [ %inc98, %if.else ]
  %inc101 = add nuw nsw i8 %curr_part.0459, 1
  %arrayidx103 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10
  %44 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.15, ptr %arrayidx103, align 8
  %offset2.i428 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10, i32 3
  %45 = ptrtoint ptr %offset2.i428 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv461, ptr %offset2.i428, align 8
  %mask_flags3.i429 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10, i32 4
  %46 = ptrtoint ptr %mask_flags3.i429 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %mask_flags3.i429, align 8
  %47 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx72, align 8
  %49 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx76, align 4
  %51 = call i32 @llvm.umax.i32(i32 %48, i32 %50)
  %52 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx113, align 8
  %54 = call i32 @llvm.umax.i32(i32 %51, i32 %53)
  %55 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx63, align 4
  %add = add i32 %54, %6
  %57 = call i32 @llvm.umax.i32(i32 %56, i32 %add)
  %add130 = add i32 %sub129, %57
  %58 = urem i32 %add130, %6
  %59 = add i32 %6, %58
  %sub131 = sub i32 %offset.0457, %59
  %add132 = add i32 %sub131, %add130
  br label %for.inc

if.then141:                                       ; preds = %if.end84.if.then141_crit_edge, %if.end84.if.then141_crit_edge496
  %inc142 = add nuw nsw i8 %curr_part.0459, 1
  %arrayidx144 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10
  %60 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.16, ptr %arrayidx144, align 8
  %offset2.i430 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10, i32 3
  %61 = ptrtoint ptr %offset2.i430 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv461, ptr %offset2.i430, align 8
  %mask_flags3.i431 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10, i32 4
  %62 = ptrtoint ptr %mask_flags3.i431 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %mask_flags3.i431, align 8
  br label %for.inc

if.end146:                                        ; preds = %if.end84
  %63 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %size, align 8
  %sub150 = sub i64 %64, %conv7
  call void @__sanitizer_cov_trace_cmp8(i64 %sub150, i64 %conv461)
  %cmp151.not = icmp ne i64 %sub150, %conv461
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213418566, i32 %25)
  %cmp155 = icmp eq i32 %25, 1213418566
  %or.cond = select i1 %cmp151.not, i1 %cmp155, i1 false
  br i1 %or.cond, label %if.then157, label %if.end162

if.then157:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  %inc158 = add nuw nsw i8 %curr_part.0459, 1
  %arrayidx160 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10
  %65 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.17, ptr %arrayidx160, align 8
  %offset2.i432 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10, i32 3
  %66 = ptrtoint ptr %offset2.i432 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv461, ptr %offset2.i432, align 8
  %mask_flags3.i433 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10, i32 4
  %67 = ptrtoint ptr %mask_flags3.i433 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %mask_flags3.i433, align 8
  br label %for.inc

if.end162:                                        ; preds = %if.end146
  %add163 = add i32 %offset.0457, 32768
  %conv164 = zext i32 %add163 to i64
  %call165 = call i32 @mtd_read(ptr noundef %master, i64 noundef %conv164, i32 noundef 4, ptr noundef nonnull %bytes_read, ptr noundef nonnull %call7.i.i) #7
  %68 = zext i32 %call165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call165, label %do.end173 [
    i32 0, label %if.end162.if.end176_crit_edge
    i32 -117, label %if.end162.if.end176_crit_edge497
  ]

if.end162.if.end176_crit_edge497:                 ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176

if.end162.if.end176_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176

do.end173:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  %call175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %offset.0457, i32 noundef %call165) #11
  br label %for.inc

if.end176:                                        ; preds = %if.end162.if.end176_crit_edge, %if.end162.if.end176_crit_edge497
  %69 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1123218499, i32 %70)
  %cmp178 = icmp eq i32 %70, -1123218499
  br i1 %cmp178, label %if.then180, label %if.end176.for.inc_crit_edge

if.end176.for.inc_crit_edge:                      ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then180:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  %inc181 = add nuw nsw i8 %curr_part.0459, 1
  %arrayidx183 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10
  %71 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.8, ptr %arrayidx183, align 8
  %offset2.i436 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10, i32 3
  %72 = ptrtoint ptr %offset2.i436 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv461, ptr %offset2.i436, align 8
  %mask_flags3.i437 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv10, i32 4
  %73 = ptrtoint ptr %mask_flags3.i437 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1024, ptr %mask_flags3.i437, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then180, %if.end176.for.inc_crit_edge, %do.end173, %if.then157, %if.then141, %if.end100, %if.then79, %if.then66, %if.then53, %if.then44, %if.then37, %do.end24
  %trx_num.2 = phi i32 [ %trx_num.0455, %if.then37 ], [ %trx_num.0455, %if.then44 ], [ %trx_num.0455, %if.then53 ], [ %trx_num.0455, %if.then66 ], [ %trx_num.0455, %if.then79 ], [ %trx_num.1, %if.end100 ], [ %trx_num.0455, %if.then141 ], [ %trx_num.0455, %if.then157 ], [ %trx_num.0455, %if.then180 ], [ %trx_num.0455, %if.end176.for.inc_crit_edge ], [ %trx_num.0455, %do.end173 ], [ %trx_num.0455, %do.end24 ]
  %offset.1 = phi i32 [ %offset.0457, %if.then37 ], [ %offset.0457, %if.then44 ], [ %offset.0457, %if.then53 ], [ %offset.0457, %if.then66 ], [ %offset.0457, %if.then79 ], [ %add132, %if.end100 ], [ %offset.0457, %if.then141 ], [ %offset.0457, %if.then157 ], [ %offset.0457, %if.then180 ], [ %offset.0457, %if.end176.for.inc_crit_edge ], [ %offset.0457, %do.end173 ], [ %offset.0457, %do.end24 ]
  %curr_part.1 = phi i8 [ %inc, %if.then37 ], [ %inc45, %if.then44 ], [ %inc54, %if.then53 ], [ %inc67, %if.then66 ], [ %inc80, %if.then79 ], [ %inc101, %if.end100 ], [ %inc142, %if.then141 ], [ %inc158, %if.then157 ], [ %inc181, %if.then180 ], [ %curr_part.0459, %if.end176.for.inc_crit_edge ], [ %curr_part.0459, %do.end173 ], [ %curr_part.0459, %do.end24 ]
  %add186 = add i32 %offset.1, %6
  %conv = zext i32 %add186 to i64
  %74 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %size, align 8
  %sub = sub i64 %75, %conv7
  %cmp8.not = icmp ult i64 %sub, %conv
  br i1 %cmp8.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %curr_part.1)
  %cmp193 = icmp ugt i8 %curr_part.1, 19
  br i1 %cmp193, label %for.end.do.end198_crit_edge, label %for.body191.preheader

for.end.do.end198_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end198

for.body191.preheader:                            ; preds = %for.end
  %76 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %size, align 8
  %78 = trunc i64 %77 to i32
  %conv207 = add i32 %78, -32768
  %conv208 = zext i32 %conv207 to i64
  %call209 = call i32 @mtd_read(ptr noundef %master, i64 noundef %conv208, i32 noundef 4, ptr noundef nonnull %bytes_read, ptr noundef nonnull %call7.i.i) #7
  %79 = zext i32 %call209 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call209, label %do.end217 [
    i32 0, label %for.body191.preheader.if.end220_crit_edge
    i32 -117, label %for.body191.preheader.if.end220_crit_edge498
  ]

for.body191.preheader.if.end220_crit_edge498:     ; preds = %for.body191.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end220

for.body191.preheader.if.end220_crit_edge:        ; preds = %for.body191.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end220

do.end198:                                        ; preds = %for.end.do.end198_crit_edge, %for.end.thread
  %curr_part.0451477 = phi i8 [ %curr_part.0459, %for.end.thread ], [ 20, %for.end.do.end198_crit_edge ]
  %trx_num.0453476 = phi i32 [ %trx_num.0455, %for.end.thread ], [ %trx_num.2, %for.end.do.end198_crit_edge ]
  %call200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %for.end234.thread

do.end217:                                        ; preds = %for.body191.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %call219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %conv207, i32 noundef %call209) #11
  br label %for.inc232

if.end220:                                        ; preds = %for.body191.preheader.if.end220_crit_edge, %for.body191.preheader.if.end220_crit_edge498
  %80 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213418566, i32 %81)
  %cmp222 = icmp eq i32 %81, 1213418566
  br i1 %cmp222, label %if.end220.if.then224_crit_edge, label %if.end220.for.inc232_crit_edge

if.end220.for.inc232_crit_edge:                   ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc232

if.end220.if.then224_crit_edge:                   ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then224

if.then224:                                       ; preds = %if.end220.2.if.then224_crit_edge, %if.end220.1.if.then224_crit_edge, %if.end220.if.then224_crit_edge
  %conv192.le = zext i8 %curr_part.1 to i32
  %inc225 = add nuw nsw i8 %curr_part.1, 1
  %arrayidx227 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv192.le
  %82 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %size, align 8
  %sub230 = sub i64 %83, %conv7
  %84 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @.str.17, ptr %arrayidx227, align 8
  %offset2.i440 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv192.le, i32 3
  %85 = ptrtoint ptr %offset2.i440 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %sub230, ptr %offset2.i440, align 8
  %mask_flags3.i441 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %conv192.le, i32 4
  %86 = ptrtoint ptr %mask_flags3.i441 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %mask_flags3.i441, align 8
  br label %for.end234.thread

for.inc232:                                       ; preds = %if.end220.for.inc232_crit_edge, %do.end217
  %87 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %size, align 8
  %89 = trunc i64 %88 to i32
  %conv207.1 = add i32 %89, -61440
  %conv208.1 = zext i32 %conv207.1 to i64
  %call209.1 = call i32 @mtd_read(ptr noundef %master, i64 noundef %conv208.1, i32 noundef 4, ptr noundef nonnull %bytes_read, ptr noundef nonnull %call7.i.i) #7
  %90 = zext i32 %call209.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call209.1, label %do.end217.1 [
    i32 0, label %for.inc232.if.end220.1_crit_edge
    i32 -117, label %for.inc232.if.end220.1_crit_edge499
  ]

for.inc232.if.end220.1_crit_edge499:              ; preds = %for.inc232
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end220.1

for.inc232.if.end220.1_crit_edge:                 ; preds = %for.inc232
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end220.1

if.end220.1:                                      ; preds = %for.inc232.if.end220.1_crit_edge, %for.inc232.if.end220.1_crit_edge499
  %91 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213418566, i32 %92)
  %cmp222.1 = icmp eq i32 %92, 1213418566
  br i1 %cmp222.1, label %if.end220.1.if.then224_crit_edge, label %if.end220.1.for.inc232.1_crit_edge

if.end220.1.for.inc232.1_crit_edge:               ; preds = %if.end220.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc232.1

if.end220.1.if.then224_crit_edge:                 ; preds = %if.end220.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then224

do.end217.1:                                      ; preds = %for.inc232
  call void @__sanitizer_cov_trace_pc() #9
  %call219.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %conv207.1, i32 noundef %call209.1) #11
  br label %for.inc232.1

for.inc232.1:                                     ; preds = %do.end217.1, %if.end220.1.for.inc232.1_crit_edge
  %93 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %size, align 8
  %95 = trunc i64 %94 to i32
  %conv207.2 = add i32 %95, -65536
  %conv208.2 = zext i32 %conv207.2 to i64
  %call209.2 = call i32 @mtd_read(ptr noundef %master, i64 noundef %conv208.2, i32 noundef 4, ptr noundef nonnull %bytes_read, ptr noundef nonnull %call7.i.i) #7
  %96 = zext i32 %call209.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call209.2, label %do.end217.2 [
    i32 0, label %for.inc232.1.if.end220.2_crit_edge
    i32 -117, label %for.inc232.1.if.end220.2_crit_edge500
  ]

for.inc232.1.if.end220.2_crit_edge500:            ; preds = %for.inc232.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end220.2

for.inc232.1.if.end220.2_crit_edge:               ; preds = %for.inc232.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end220.2

if.end220.2:                                      ; preds = %for.inc232.1.if.end220.2_crit_edge, %for.inc232.1.if.end220.2_crit_edge500
  %97 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213418566, i32 %98)
  %cmp222.2 = icmp eq i32 %98, 1213418566
  br i1 %cmp222.2, label %if.end220.2.if.then224_crit_edge, label %if.end220.2.for.end234_crit_edge

if.end220.2.for.end234_crit_edge:                 ; preds = %if.end220.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end234

if.end220.2.if.then224_crit_edge:                 ; preds = %if.end220.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then224

do.end217.2:                                      ; preds = %for.inc232.1
  call void @__sanitizer_cov_trace_pc() #9
  %call219.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %conv207.2, i32 noundef %call209.2) #11
  br label %for.end234

for.end234.thread:                                ; preds = %if.then224, %do.end198
  %trx_num.0453475.ph = phi i32 [ %trx_num.2, %if.then224 ], [ %trx_num.0453476, %do.end198 ]
  %curr_part.2.ph = phi i8 [ %inc225, %if.then224 ], [ %curr_part.0451477, %do.end198 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %for.body240.lr.ph

for.end234:                                       ; preds = %do.end217.2, %if.end220.2.for.end234_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %curr_part.1)
  %cmp238465.not = icmp eq i8 %curr_part.1, 0
  br i1 %cmp238465.not, label %for.end234.for.cond265.preheader_crit_edge, label %for.end234.for.body240.lr.ph_crit_edge

for.end234.for.body240.lr.ph_crit_edge:           ; preds = %for.end234
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body240.lr.ph

for.end234.for.cond265.preheader_crit_edge:       ; preds = %for.end234
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond265.preheader

for.body240.lr.ph:                                ; preds = %for.end234.for.body240.lr.ph_crit_edge, %for.end234.thread
  %conv237485.in = phi i8 [ %curr_part.2.ph, %for.end234.thread ], [ %curr_part.1, %for.end234.for.body240.lr.ph_crit_edge ]
  %trx_num.0453475483 = phi i32 [ %trx_num.0453475.ph, %for.end234.thread ], [ %trx_num.2, %for.end234.for.body240.lr.ph_crit_edge ]
  %conv237485 = zext i8 %conv237485.in to i32
  %sub243 = add nsw i32 %conv237485, -1
  br label %for.body240

for.cond265.preheader:                            ; preds = %for.body240.for.cond265.preheader_crit_edge, %for.end234.for.cond265.preheader_crit_edge
  %conv237486 = phi i32 [ 0, %for.end234.for.cond265.preheader_crit_edge ], [ %conv237485, %for.body240.for.cond265.preheader_crit_edge ]
  %trx_num.0453475484 = phi i32 [ %trx_num.2, %for.end234.for.cond265.preheader_crit_edge ], [ %trx_num.0453475483, %for.body240.for.cond265.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trx_num.0453475484)
  %cmp267467 = icmp sgt i32 %trx_num.0453475484, 0
  br i1 %cmp267467, label %for.cond265.preheader.for.body269_crit_edge, label %for.cond265.preheader.for.end283_crit_edge

for.cond265.preheader.for.end283_crit_edge:       ; preds = %for.cond265.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end283

for.cond265.preheader.for.body269_crit_edge:      ; preds = %for.cond265.preheader
  br label %for.body269

for.body240:                                      ; preds = %for.body240.for.body240_crit_edge, %for.body240.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body240.lr.ph ], [ %add248, %for.body240.for.body240_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub243, i32 %indvars.iv)
  %cmp244 = icmp sgt i32 %sub243, %indvars.iv
  %add248 = add nuw nsw i32 %indvars.iv, 1
  %offset250 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %add248, i32 3
  %cond254.in = select i1 %cmp244, ptr %offset250, ptr %size
  %99 = ptrtoint ptr %cond254.in to i32
  call void @__asan_load8_noabort(i32 %99)
  %cond254 = load i64, ptr %cond254.in, align 8
  %offset257 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %indvars.iv, i32 3
  %100 = ptrtoint ptr %offset257 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %offset257, align 8
  %sub258 = sub i64 %cond254, %101
  %size261 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %indvars.iv, i32 2
  %102 = ptrtoint ptr %size261 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %sub258, ptr %size261, align 8
  %exitcond.not = icmp eq i32 %add248, %conv237485
  br i1 %exitcond.not, label %for.body240.for.cond265.preheader_crit_edge, label %for.body240.for.body240_crit_edge

for.body240.for.body240_crit_edge:                ; preds = %for.body240
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body240

for.body240.for.cond265.preheader_crit_edge:      ; preds = %for.body240
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond265.preheader

for.body269:                                      ; preds = %if.end280.for.body269_crit_edge, %for.cond265.preheader.for.body269_crit_edge
  %conv266469 = phi i32 [ %conv266, %if.end280.for.body269_crit_edge ], [ 0, %for.cond265.preheader.for.body269_crit_edge ]
  %i.2468 = phi i8 [ %inc282, %if.end280.for.body269_crit_edge ], [ 0, %for.cond265.preheader.for.body269_crit_edge ]
  %arrayidx272 = getelementptr [2 x i32], ptr %trx_parts, i32 0, i32 %conv266469
  %103 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx272, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %105 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %buf.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bootpartition.i) #7
  %106 = ptrtoint ptr %bootpartition.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %bootpartition.i, align 4, !annotation !71
  %call.i = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull @.str.26, ptr noundef nonnull %buf.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i442 = icmp sgt i32 %call.i, 0
  br i1 %cmp.i442, label %if.then.i, label %for.body269.bcm47xxpart_bootpartition.exit_crit_edge

for.body269.bcm47xxpart_bootpartition.exit_crit_edge: ; preds = %for.body269
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm47xxpart_bootpartition.exit

if.then.i:                                        ; preds = %for.body269
  %call2.i = call i32 @kstrtoint(ptr noundef nonnull %buf.i, i32 noundef 0, ptr noundef nonnull %bootpartition.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.then.i.bcm47xxpart_bootpartition.exit_crit_edge

if.then.i.bcm47xxpart_bootpartition.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm47xxpart_bootpartition.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %bootpartition.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bootpartition.i, align 4
  br label %bcm47xxpart_bootpartition.exit

bcm47xxpart_bootpartition.exit:                   ; preds = %if.then3.i, %if.then.i.bcm47xxpart_bootpartition.exit_crit_edge, %for.body269.bcm47xxpart_bootpartition.exit_crit_edge
  %retval.0.i = phi i32 [ %108, %if.then3.i ], [ 0, %if.then.i.bcm47xxpart_bootpartition.exit_crit_edge ], [ 0, %for.body269.bcm47xxpart_bootpartition.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bootpartition.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv266469)
  %cmp276 = icmp eq i32 %retval.0.i, %conv266469
  br i1 %cmp276, label %if.then278, label %if.else279

if.then278:                                       ; preds = %bcm47xxpart_bootpartition.exit
  call void @__sanitizer_cov_trace_pc() #9
  %types = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %104, i32 1
  %109 = ptrtoint ptr %types to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @trx_types, ptr %types, align 4
  br label %if.end280

if.else279:                                       ; preds = %bcm47xxpart_bootpartition.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx273 = getelementptr %struct.mtd_partition, ptr %call7.i.i.i, i32 %104
  %110 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @.str.25, ptr %arrayidx273, align 8
  br label %if.end280

if.end280:                                        ; preds = %if.else279, %if.then278
  %inc282 = add i8 %i.2468, 1
  %conv266 = zext i8 %inc282 to i32
  %cmp267 = icmp sgt i32 %trx_num.0453475484, %conv266
  br i1 %cmp267, label %if.end280.for.body269_crit_edge, label %if.end280.for.end283_crit_edge

if.end280.for.end283_crit_edge:                   ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end283

if.end280.for.body269_crit_edge:                  ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body269

for.end283:                                       ; preds = %if.end280.for.end283_crit_edge, %for.cond265.preheader.for.end283_crit_edge
  %111 = ptrtoint ptr %pparts to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call7.i.i.i, ptr %pparts, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end283, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv237486, %for.end283 ], [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trx_parts) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_read) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm47xx_nvram_getenv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !37, !38, !40, !42, !44, !46, !47, !49, !50, !52, !53, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_bcm47xxpart__191_314_bcm47xxpart_mtd_parser_init6, !1, !"__initcall__kmod_bcm47xxpart__191_314_bcm47xxpart_mtd_parser_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 314, i32 1}
!2 = !{ptr @__exitcall_bcm47xxpart_mtd_parser_exit, !1, !"__exitcall_bcm47xxpart_mtd_parser_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file192, !4, !"__UNIQUE_ID_file192", i1 false, i1 false}
!4 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 316, i32 1}
!5 = !{ptr @__UNIQUE_ID_license193, !4, !"__UNIQUE_ID_license193", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description194, !7, !"__UNIQUE_ID_description194", i1 false, i1 false}
!7 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 317, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 311, i32 10}
!10 = !{ptr @bcm47xxpart_mtd_parser, !11, !"bcm47xxpart_mtd_parser", i1 false, i1 false}
!11 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 309, i32 31}
!12 = !{ptr @bcm47xxpart_of_match_table, !13, !"bcm47xxpart_of_match_table", i1 false, i1 false}
!13 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 303, i32 34}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 128, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @bcm47xxpart_parse._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @bcm47xxpart_parse._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 136, i32 4}
!22 = !{ptr @bcm47xxpart_parse._entry.4, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @bcm47xxpart_parse._entry_ptr.6, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 144, i32 46}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 154, i32 46}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 161, i32 46}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 169, i32 46}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 177, i32 46}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 189, i32 5}
!36 = !{ptr @bcm47xxpart_parse._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @bcm47xxpart_parse._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 193, i32 46}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 219, i32 46}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 230, i32 46}
!44 = !{ptr @bcm47xxpart_parse._entry.18, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 239, i32 4}
!46 = !{ptr @bcm47xxpart_parse._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @bcm47xxpart_parse._entry.20, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 255, i32 4}
!49 = !{ptr @bcm47xxpart_parse._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 263, i32 4}
!52 = !{ptr @bcm47xxpart_parse._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @bcm47xxpart_parse._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 296, i32 16}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 78, i32 27}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 43, i32 43}
!60 = !{ptr @trx_types, !61, !"trx_types", i1 false, i1 false}
!61 = !{!"../drivers/mtd/parsers/bcm47xxpart.c", i32 43, i32 27}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"auto-init"}
