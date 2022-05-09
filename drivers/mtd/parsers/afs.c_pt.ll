; ModuleID = '/llk/IR_all_yes/drivers/mtd/parsers/afs.c_pt.bc'
source_filename = "../drivers/mtd/parsers/afs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_part_parser = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.footer_v1 = type { i32, i32, i32, i32, i32 }
%struct.image_info_v1 = type { i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@__initcall__kmod_afs__192_391_afs_parser_init6 = internal global ptr @afs_parser_init, section ".initcall6.init", align 4
@afs_parser = internal global { %struct.mtd_part_parser, [36 x i8] } { %struct.mtd_part_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str, ptr @mtd_parser_afs_of_match_table, ptr @parse_afs_partitions, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_afs_parser_exit = internal global ptr @afs_parser_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author193 = internal constant [19 x i8] c"afs.author=ARM Ltd\00", section ".modinfo", align 1
@__UNIQUE_ID_description194 = internal constant [52 x i8] c"afs.description=ARM Firmware Suite partition parser\00", section ".modinfo", align 1
@__UNIQUE_ID_file195 = internal constant [33 x i8] c"afs.file=drivers/mtd/parsers/afs\00", section ".modinfo", align 1
@__UNIQUE_ID_license196 = internal constant [16 x i8] c"afs.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"afs\00", [28 x i8] zeroinitializer }, align 32
@mtd_parser_afs_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,arm-firmware-suite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@afs_is_v1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013AFS: mtd read failed at 0x%x: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"afs_is_v1\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mtd/parsers/afs.c\00", [38 x i8] zeroinitializer }, align 32
@afs_is_v1._entry_ptr = internal global ptr @afs_is_v1._entry, section ".printk_index", align 4
@afs_is_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.4, ptr @.str.3, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"afs_is_v2\00", [22 x i8] zeroinitializer }, align 32
@afs_is_v2._entry_ptr = internal global ptr @afs_is_v2._entry, section ".printk_index", align 4
@afs_parse_v1_partition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.5, ptr @.str.3, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"afs_parse_v1_partition\00", [41 x i8] zeroinitializer }, align 32
@afs_parse_v1_partition._entry_ptr = internal global ptr @afs_parse_v1_partition._entry, section ".printk_index", align 4
@afs_parse_v1_partition._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.5, ptr @.str.3, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_parse_v1_partition._entry_ptr.7 = internal global ptr @afs_parse_v1_partition._entry.6, section ".printk_index", align 4
@afs_parse_v1_partition._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.3, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"  mtd: at 0x%08x, %5lluKiB, %8u, %s\0A\00", [59 x i8] zeroinitializer }, align 32
@afs_parse_v1_partition._entry_ptr.10 = internal global ptr @afs_parse_v1_partition._entry.8, section ".printk_index", align 4
@afs_parse_v2_partition.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"afs_parse_v2_partition\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Parsing v2 partition @%08x-%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@afs_parse_v2_partition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.11, ptr @.str.3, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_parse_v2_partition._entry_ptr = internal global ptr @afs_parse_v2_partition._entry, section ".printk_index", align 4
@afs_parse_v2_partition.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.3, ptr @.str.13, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"found image \22%s\22, version %08x, info @%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@afs_parse_v2_partition._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.11, ptr @.str.3, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@afs_parse_v2_partition._entry_ptr.15 = internal global ptr @afs_parse_v2_partition._entry.14, section ".printk_index", align 4
@afs_parse_v2_partition.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.3, ptr @.str.16, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Padding 1 word (4 bytes)\0A\00", [38 x i8] zeroinitializer }, align 32
@afs_parse_v2_partition.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.3, ptr @.str.17, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Padding 2 words (8 bytes)\0A\00", [37 x i8] zeroinitializer }, align 32
@afs_parse_v2_partition._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.3, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013AFS: bad checksum on v2 image info: %08x\0A\00", [52 x i8] zeroinitializer }, align 32
@afs_parse_v2_partition._entry_ptr.20 = internal global ptr @afs_parse_v2_partition._entry.18, section ".printk_index", align 4
@afs_parse_v2_partition.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.3, ptr @.str.21, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"image entry=%08x, attr=%08x, regions=%08x, bs=%08x, be=%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@afs_parse_v2_partition.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.3, ptr @.str.22, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"  region %d: address: %08x, size: %08x, offset: %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@afs_parse_v2_partition.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.3, ptr @.str.23, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"   partition start = %08x, partition end = %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"afs_parser\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 386, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 388, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant [30 x i8] c"mtd_parser_afs_of_match_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 380, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 88, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 108, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 147, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 184, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 209, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 235, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 242, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 250, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 256, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 264, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 270, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 275, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 284, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 296, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [29 x i8] c"../drivers/mtd/parsers/afs.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 308, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author193, ptr @__UNIQUE_ID_description194, ptr @__UNIQUE_ID_file195, ptr @__UNIQUE_ID_license196, ptr @__exitcall_afs_parser_exit, ptr @__initcall__kmod_afs__192_391_afs_parser_init6, ptr @afs_is_v1._entry, ptr @afs_is_v1._entry_ptr, ptr @afs_is_v2._entry, ptr @afs_is_v2._entry_ptr, ptr @afs_parse_v1_partition._entry, ptr @afs_parse_v1_partition._entry.6, ptr @afs_parse_v1_partition._entry.8, ptr @afs_parse_v1_partition._entry_ptr, ptr @afs_parse_v1_partition._entry_ptr.10, ptr @afs_parse_v1_partition._entry_ptr.7, ptr @afs_parse_v2_partition._entry, ptr @afs_parse_v2_partition._entry.14, ptr @afs_parse_v2_partition._entry.18, ptr @afs_parse_v2_partition._entry_ptr, ptr @afs_parse_v2_partition._entry_ptr.15, ptr @afs_parse_v2_partition._entry_ptr.20, ptr @afs_parser_exit, ptr @afs_parser, ptr @.str, ptr @mtd_parser_afs_of_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parser to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_parser_afs_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_is_v1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_is_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_v1_partition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_v1_partition._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_v1_partition._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_v2_partition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_v2_partition._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afs_parse_v2_partition._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @afs_parser_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_mtd_parser(ptr noundef nonnull @afs_parser, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @afs_parser_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @deregister_mtd_parser(ptr noundef nonnull @afs_parser) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_mtd_parser(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_mtd_parser(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_afs_partitions(ptr noundef %mtd, ptr nocapture noundef writeonly %pparts, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  %foot.i124 = alloca [2 x i32], align 4
  %sz.i125 = alloca i32, align 4
  %fs.i = alloca %struct.footer_v1, align 4
  %iis.i = alloca %struct.image_info_v1, align 4
  %sz.i115 = alloca i32, align 4
  %magic.i99 = alloca i32, align 4
  %sz.i100 = alloca i32, align 4
  %foot.i = alloca [2 x i32], align 4
  %sz.i85 = alloca i32, align 4
  %magic.i = alloca i32, align 4
  %sz.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp169.not = icmp eq i64 %1, 0
  br i1 %cmp169.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %2 = getelementptr inbounds [2 x i32], ptr %foot.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0172 = phi i32 [ 0, %for.body.lr.ph ], [ %26, %for.cond.for.body_crit_edge ]
  %sz.0171 = phi i32 [ 0, %for.body.lr.ph ], [ %25, %for.cond.for.body_crit_edge ]
  %off.0170 = phi i32 [ 0, %for.body.lr.ph ], [ %add8, %for.cond.for.body_crit_edge ]
  %3 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %erasesize.i, align 8
  %add.i = add i32 %off.0170, -12
  %sub.i = add i32 %add.i, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %magic.i) #6
  %5 = ptrtoint ptr %magic.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %magic.i, align 4, !annotation !78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz.i) #6
  %6 = ptrtoint ptr %sz.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %sz.i, align 4, !annotation !78
  %conv.i = zext i32 %sub.i to i64
  %call.i = call i32 @mtd_read(ptr noundef %mtd, i64 noundef %conv.i, i32 noundef 4, ptr noundef nonnull %sz.i, ptr noundef nonnull %magic.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %land.lhs.true.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %sub.i, i32 noundef %call.i) #9
  br label %afs_is_v1.exit.thread

land.lhs.true.i:                                  ; preds = %for.body
  %7 = ptrtoint ptr %sz.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp5.not.i = icmp eq i32 %8, 4
  br i1 %cmp5.not.i, label %afs_is_v1.exit, label %land.lhs.true.i.afs_is_v1.exit.thread_crit_edge

land.lhs.true.i.afs_is_v1.exit.thread_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %afs_is_v1.exit.thread

afs_is_v1.exit.thread:                            ; preds = %land.lhs.true.i.afs_is_v1.exit.thread_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %magic.i) #6
  br label %.thread

afs_is_v1.exit:                                   ; preds = %land.lhs.true.i
  %9 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1593835617, i32 %10)
  %cmp9.i = icmp eq i32 %10, -1593835617
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %magic.i) #6
  %add = add i32 %sz.0171, 40
  %add2 = add i32 %i.0172, 1
  br i1 %cmp9.i, label %afs_is_v1.exit._crit_edge, label %afs_is_v1.exit..thread_crit_edge

afs_is_v1.exit..thread_crit_edge:                 ; preds = %afs_is_v1.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %.thread

afs_is_v1.exit._crit_edge:                        ; preds = %afs_is_v1.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %11

.thread:                                          ; preds = %afs_is_v1.exit..thread_crit_edge, %afs_is_v1.exit.thread
  br label %11

11:                                               ; preds = %.thread, %afs_is_v1.exit._crit_edge
  %12 = phi i32 [ %sz.0171, %.thread ], [ %add, %afs_is_v1.exit._crit_edge ]
  %13 = phi i32 [ %i.0172, %.thread ], [ %add2, %afs_is_v1.exit._crit_edge ]
  %14 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %erasesize.i, align 8
  %add.i87 = add i32 %off.0170, -8
  %sub.i88 = add i32 %add.i87, %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %foot.i) #6
  %16 = ptrtoint ptr %foot.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %foot.i, align 4, !annotation !78
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %2, align 4, !annotation !78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz.i85) #6
  %18 = ptrtoint ptr %sz.i85 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %sz.i85, align 4, !annotation !78
  %conv.i89 = zext i32 %sub.i88 to i64
  %call.i90 = call i32 @mtd_read(ptr noundef %mtd, i64 noundef %conv.i89, i32 noundef 8, ptr noundef nonnull %sz.i85, ptr noundef nonnull %foot.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp.i91 = icmp slt i32 %call.i90, 0
  br i1 %cmp.i91, label %do.end.i93, label %land.lhs.true.i95

do.end.i93:                                       ; preds = %11
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %sub.i88, i32 noundef %call.i90) #9
  br label %afs_is_v2.exit.thread

land.lhs.true.i95:                                ; preds = %11
  %19 = ptrtoint ptr %sz.i85 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sz.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %20)
  %cmp5.not.i94 = icmp eq i32 %20, 8
  br i1 %cmp5.not.i94, label %if.end8.i97, label %land.lhs.true.i95.afs_is_v2.exit.thread_crit_edge

land.lhs.true.i95.afs_is_v2.exit.thread_crit_edge: ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %afs_is_v2.exit.thread

if.end8.i97:                                      ; preds = %land.lhs.true.i95
  %21 = ptrtoint ptr %foot.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %foot.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179407176, i32 %22)
  %cmp9.i96 = icmp eq i32 %22, 1179407176
  br i1 %cmp9.i96, label %afs_is_v2.exit, label %if.end8.i97.afs_is_v2.exit.thread_crit_edge

if.end8.i97.afs_is_v2.exit.thread_crit_edge:      ; preds = %if.end8.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %afs_is_v2.exit.thread

afs_is_v2.exit.thread:                            ; preds = %if.end8.i97.afs_is_v2.exit.thread_crit_edge, %land.lhs.true.i95.afs_is_v2.exit.thread_crit_edge, %do.end.i93
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.i85) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %foot.i) #6
  br label %.thread155

afs_is_v2.exit:                                   ; preds = %if.end8.i97
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179602772, i32 %24)
  %cmp12.i = icmp eq i32 %24, 1179602772
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.i85) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %foot.i) #6
  %add5 = add i32 %12, 40
  %add6 = add i32 %13, 1
  br i1 %cmp12.i, label %afs_is_v2.exit.for.cond_crit_edge, label %afs_is_v2.exit..thread155_crit_edge

afs_is_v2.exit..thread155_crit_edge:              ; preds = %afs_is_v2.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %.thread155

afs_is_v2.exit.for.cond_crit_edge:                ; preds = %afs_is_v2.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

.thread155:                                       ; preds = %afs_is_v2.exit..thread155_crit_edge, %afs_is_v2.exit.thread
  br label %for.cond

for.cond:                                         ; preds = %.thread155, %afs_is_v2.exit.for.cond_crit_edge
  %25 = phi i32 [ %12, %.thread155 ], [ %add5, %afs_is_v2.exit.for.cond_crit_edge ]
  %26 = phi i32 [ %13, %.thread155 ], [ %add6, %afs_is_v2.exit.for.cond_crit_edge ]
  %27 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %erasesize.i, align 8
  %add8 = add i32 %28, %off.0170
  %conv = zext i32 %add8 to i64
  %29 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %size, align 8
  %cmp = icmp ugt i64 %30, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end8.i.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.i.i:                                      ; preds = %for.end
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #10
  %tobool12.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool12.not, label %if.end8.i.i.cleanup_crit_edge, label %for.cond15.preheader

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond15.preheader:                             ; preds = %if.end8.i.i
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %cmp18175.not = icmp eq i64 %32, 0
  br i1 %cmp18175.not, label %for.cond15.preheader.cleanup.sink.split_crit_edge, label %for.body20.lr.ph

for.cond15.preheader.cleanup.sink.split_crit_edge: ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.body20.lr.ph:                                 ; preds = %for.cond15.preheader
  %erasesize.i101 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %33 = getelementptr inbounds %struct.footer_v1, ptr %fs.i, i32 0, i32 1
  %34 = getelementptr inbounds %struct.footer_v1, ptr %fs.i, i32 0, i32 2
  %35 = getelementptr inbounds %struct.footer_v1, ptr %fs.i, i32 0, i32 3
  %36 = getelementptr inbounds %struct.footer_v1, ptr %fs.i, i32 0, i32 4
  %arrayidx.i = getelementptr inbounds %struct.image_info_v1, ptr %iis.i, i32 0, i32 5, i32 0
  %length.i = getelementptr inbounds %struct.image_info_v1, ptr %iis.i, i32 0, i32 3
  %imageNumber.i = getelementptr inbounds %struct.image_info_v1, ptr %iis.i, i32 0, i32 1
  %37 = getelementptr inbounds [2 x i32], ptr %foot.i124, i32 0, i32 1
  br label %for.body20

for.body20:                                       ; preds = %for.inc37.for.body20_crit_edge, %for.body20.lr.ph
  %i.3177 = phi i32 [ 0, %for.body20.lr.ph ], [ %i.5, %for.inc37.for.body20_crit_edge ]
  %off.1176 = phi i32 [ 0, %for.body20.lr.ph ], [ %add39, %for.inc37.for.body20_crit_edge ]
  %38 = ptrtoint ptr %erasesize.i101 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %erasesize.i101, align 8
  %add.i102 = add i32 %off.1176, -12
  %sub.i103 = add i32 %add.i102, %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %magic.i99) #6
  %40 = ptrtoint ptr %magic.i99 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %magic.i99, align 4, !annotation !78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz.i100) #6
  %41 = ptrtoint ptr %sz.i100 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %sz.i100, align 4, !annotation !78
  %conv.i104 = zext i32 %sub.i103 to i64
  %call.i105 = call i32 @mtd_read(ptr noundef %mtd, i64 noundef %conv.i104, i32 noundef 4, ptr noundef nonnull %sz.i100, ptr noundef nonnull %magic.i99) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %cmp.i106 = icmp slt i32 %call.i105, 0
  br i1 %cmp.i106, label %do.end.i108, label %land.lhs.true.i110

do.end.i108:                                      ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %sub.i103, i32 noundef %call.i105) #9
  br label %afs_is_v1.exit114.thread

land.lhs.true.i110:                               ; preds = %for.body20
  %42 = ptrtoint ptr %sz.i100 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sz.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp5.not.i109 = icmp eq i32 %43, 4
  br i1 %cmp5.not.i109, label %afs_is_v1.exit114, label %land.lhs.true.i110.afs_is_v1.exit114.thread_crit_edge

land.lhs.true.i110.afs_is_v1.exit114.thread_crit_edge: ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %afs_is_v1.exit114.thread

afs_is_v1.exit114.thread:                         ; preds = %land.lhs.true.i110.afs_is_v1.exit114.thread_crit_edge, %do.end.i108
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.i100) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %magic.i99) #6
  br label %if.end27

afs_is_v1.exit114:                                ; preds = %land.lhs.true.i110
  %44 = ptrtoint ptr %magic.i99 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %magic.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1593835617, i32 %45)
  %cmp9.i111 = icmp eq i32 %45, -1593835617
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.i100) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %magic.i99) #6
  br i1 %cmp9.i111, label %if.then22, label %afs_is_v1.exit114.if.end27_crit_edge

afs_is_v1.exit114.if.end27_crit_edge:             ; preds = %afs_is_v1.exit114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then22:                                        ; preds = %afs_is_v1.exit114
  %arrayidx = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %i.3177
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fs.i) #6
  %46 = call ptr @memset(ptr %fs.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %iis.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz.i115) #6
  %47 = ptrtoint ptr %sz.i115 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %sz.i115, align 4, !annotation !78
  %48 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %size, align 8
  %50 = trunc i64 %49 to i32
  %conv.i116 = add i32 %50, -1
  %51 = ptrtoint ptr %erasesize.i101 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %erasesize.i101, align 8
  %add.i118 = add i32 %off.1176, -20
  %sub1.i = add i32 %add.i118, %52
  %conv2.i = zext i32 %sub1.i to i64
  %call.i119 = call i32 @mtd_read(ptr noundef %mtd, i64 noundef %conv2.i, i32 noundef 20, ptr noundef nonnull %sz.i115, ptr noundef nonnull %fs.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i119)
  %cmp.i120 = icmp sgt i32 %call.i119, -1
  br i1 %cmp.i120, label %land.lhs.true.i121, label %if.then22.do.end.i122_crit_edge

if.then22.do.end.i122_crit_edge:                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i122

land.lhs.true.i121:                               ; preds = %if.then22
  %53 = ptrtoint ptr %sz.i115 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sz.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %54)
  %cmp4.not.i = icmp eq i32 %54, 20
  br i1 %cmp4.not.i, label %if.end10.i, label %land.lhs.true.i121.do.end.i122_crit_edge

land.lhs.true.i121.do.end.i122_crit_edge:         ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i122

do.end.i122:                                      ; preds = %land.lhs.true.i121.do.end.i122_crit_edge, %if.then22.do.end.i122_crit_edge
  %ret.0.ph.i = phi i32 [ -22, %land.lhs.true.i121.do.end.i122_crit_edge ], [ %call.i119, %if.then22.do.end.i122_crit_edge ]
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %sub1.i, i32 noundef %ret.0.ph.i) #9
  br label %afs_parse_v1_partition.exit.thread

if.end10.i:                                       ; preds = %land.lhs.true.i121
  %55 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fs.i, align 4
  %57 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %33, align 4
  %add.1.i.i = add i32 %58, %56
  %59 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %34, align 4
  %add.2.i.i = add i32 %add.1.i.i, %60
  %61 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %35, align 4
  %add.3.i.i = add i32 %add.2.i.i, %62
  %63 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %36, align 4
  %add.4.i.i = add i32 %add.3.i.i, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.4.i.i)
  %cmp12.not.i = icmp eq i32 %add.4.i.i, -1
  br i1 %cmp12.not.i, label %if.end15.i, label %if.end10.i.afs_parse_v1_partition.exit.thread_crit_edge

if.end10.i.afs_parse_v1_partition.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %afs_parse_v1_partition.exit.thread

if.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp16.i = icmp eq i32 %62, 2
  br i1 %cmp16.i, label %if.end15.i.if.end26_crit_edge, label %if.end19.i

if.end15.i.if.end26_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end19.i:                                       ; preds = %if.end15.i
  %and.i = and i32 %56, %conv.i116
  %and20.i = and i32 %58, %conv.i116
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %sub1.i)
  %cmp21.not.i = icmp uge i32 %and.i, %sub1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and20.i, i32 %off.1176)
  %cmp25.i = icmp ugt i32 %and20.i, %off.1176
  %or.cond.i = select i1 %cmp21.not.i, i1 true, i1 %cmp25.i
  br i1 %or.cond.i, label %if.end19.i.if.end26_crit_edge, label %if.end28.i

if.end19.i.if.end26_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end28.i:                                       ; preds = %if.end19.i
  %65 = call ptr @memset(ptr %iis.i, i32 0, i32 52)
  %conv29.i = zext i32 %and.i to i64
  %call30.i = call i32 @mtd_read(ptr noundef %mtd, i64 noundef %conv29.i, i32 noundef 52, ptr noundef nonnull %sz.i115, ptr noundef nonnull %iis.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %do.end36.i, label %if.end39.i

do.end36.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %and.i, i32 noundef %call30.i) #9
  br label %afs_parse_v1_partition.exit.thread

if.end39.i:                                       ; preds = %if.end28.i
  %66 = ptrtoint ptr %sz.i115 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sz.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %67)
  %cmp40.not.i = icmp eq i32 %67, 52
  br i1 %cmp40.not.i, label %for.body.preheader.i, label %if.end39.i.afs_parse_v1_partition.exit.thread_crit_edge

if.end39.i.afs_parse_v1_partition.exit.thread_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %afs_parse_v1_partition.exit.thread

for.body.preheader.i:                             ; preds = %if.end39.i
  %call56.i = call noalias ptr @kstrdup(ptr noundef %arrayidx.i, i32 noundef 3264) #6
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call56.i, ptr %arrayidx, align 8
  %tobool.not.i = icmp eq ptr %call56.i, null
  br i1 %tobool.not.i, label %for.body.preheader.i.afs_parse_v1_partition.exit.thread_crit_edge, label %if.end60.i

for.body.preheader.i.afs_parse_v1_partition.exit.thread_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %afs_parse_v1_partition.exit.thread

if.end60.i:                                       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %length.i, align 4
  %71 = ptrtoint ptr %erasesize.i101 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %erasesize.i101, align 8
  %add62.i = add i32 %70, -1
  %sub63.i = add i32 %add62.i, %72
  %neg.i = sub i32 0, %72
  %and66.i = and i32 %sub63.i, %neg.i
  %conv67.i = zext i32 %and66.i to i64
  %size68.i = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %i.3177, i32 2
  %73 = ptrtoint ptr %size68.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv67.i, ptr %size68.i, align 8
  %conv69.i = zext i32 %and20.i to i64
  %offset.i = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %i.3177, i32 3
  %74 = ptrtoint ptr %offset.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv69.i, ptr %offset.i, align 8
  %mask_flags.i = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %i.3177, i32 4
  %75 = ptrtoint ptr %mask_flags.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %mask_flags.i, align 8
  %div112.i = lshr i64 %conv67.i, 10
  %76 = ptrtoint ptr %imageNumber.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %imageNumber.i, align 4
  %call76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %and20.i, i64 noundef %div112.i, i32 noundef %77, ptr noundef nonnull %call56.i) #9
  br label %if.end26

afs_parse_v1_partition.exit.thread:               ; preds = %for.body.preheader.i.afs_parse_v1_partition.exit.thread_crit_edge, %if.end39.i.afs_parse_v1_partition.exit.thread_crit_edge, %do.end36.i, %if.end10.i.afs_parse_v1_partition.exit.thread_crit_edge, %do.end.i122
  %retval.0.i123.ph = phi i32 [ -22, %do.end36.i ], [ %ret.0.ph.i, %do.end.i122 ], [ -12, %for.body.preheader.i.afs_parse_v1_partition.exit.thread_crit_edge ], [ -22, %if.end39.i.afs_parse_v1_partition.exit.thread_crit_edge ], [ -22, %if.end10.i.afs_parse_v1_partition.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.i115) #6
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %iis.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fs.i) #6
  br label %out_free_parts

if.end26:                                         ; preds = %if.end60.i, %if.end19.i.if.end26_crit_edge, %if.end15.i.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.i115) #6
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %iis.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fs.i) #6
  %inc = add i32 %i.3177, 1
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %afs_is_v1.exit114.if.end27_crit_edge, %afs_is_v1.exit114.thread
  %i.4 = phi i32 [ %inc, %if.end26 ], [ %i.3177, %afs_is_v1.exit114.if.end27_crit_edge ], [ %i.3177, %afs_is_v1.exit114.thread ]
  %78 = ptrtoint ptr %erasesize.i101 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %erasesize.i101, align 8
  %add.i127 = add i32 %off.1176, -8
  %sub.i128 = add i32 %add.i127, %79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %foot.i124) #6
  %80 = ptrtoint ptr %foot.i124 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %foot.i124, align 4, !annotation !78
  %81 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %37, align 4, !annotation !78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz.i125) #6
  %82 = ptrtoint ptr %sz.i125 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %sz.i125, align 4, !annotation !78
  %conv.i129 = zext i32 %sub.i128 to i64
  %call.i130 = call i32 @mtd_read(ptr noundef %mtd, i64 noundef %conv.i129, i32 noundef 8, ptr noundef nonnull %sz.i125, ptr noundef nonnull %foot.i124) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp.i131 = icmp slt i32 %call.i130, 0
  br i1 %cmp.i131, label %do.end.i133, label %land.lhs.true.i135

do.end.i133:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %sub.i128, i32 noundef %call.i130) #9
  br label %afs_is_v2.exit141.thread

land.lhs.true.i135:                               ; preds = %if.end27
  %83 = ptrtoint ptr %sz.i125 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sz.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %84)
  %cmp5.not.i134 = icmp eq i32 %84, 8
  br i1 %cmp5.not.i134, label %if.end8.i137, label %land.lhs.true.i135.afs_is_v2.exit141.thread_crit_edge

land.lhs.true.i135.afs_is_v2.exit141.thread_crit_edge: ; preds = %land.lhs.true.i135
  call void @__sanitizer_cov_trace_pc() #8
  br label %afs_is_v2.exit141.thread

if.end8.i137:                                     ; preds = %land.lhs.true.i135
  %85 = ptrtoint ptr %foot.i124 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %foot.i124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179407176, i32 %86)
  %cmp9.i136 = icmp eq i32 %86, 1179407176
  br i1 %cmp9.i136, label %afs_is_v2.exit141, label %if.end8.i137.afs_is_v2.exit141.thread_crit_edge

if.end8.i137.afs_is_v2.exit141.thread_crit_edge:  ; preds = %if.end8.i137
  call void @__sanitizer_cov_trace_pc() #8
  br label %afs_is_v2.exit141.thread

afs_is_v2.exit141.thread:                         ; preds = %if.end8.i137.afs_is_v2.exit141.thread_crit_edge, %land.lhs.true.i135.afs_is_v2.exit141.thread_crit_edge, %do.end.i133
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.i125) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %foot.i124) #6
  br label %for.inc37

afs_is_v2.exit141:                                ; preds = %if.end8.i137
  %87 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179602772, i32 %88)
  %cmp12.i138 = icmp eq i32 %88, 1179602772
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.i125) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %foot.i124) #6
  br i1 %cmp12.i138, label %if.then29, label %afs_is_v2.exit141.for.inc37_crit_edge

afs_is_v2.exit141.for.inc37_crit_edge:            ; preds = %afs_is_v2.exit141
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37

if.then29:                                        ; preds = %afs_is_v2.exit141
  %arrayidx30 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %i.4
  %call31 = call fastcc i32 @afs_parse_v2_partition(ptr noundef %mtd, i32 noundef %off.1176, ptr noundef %arrayidx30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then29.out_free_parts_crit_edge

if.then29.out_free_parts_crit_edge:               ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_parts

if.end34:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %inc35 = add i32 %i.4, 1
  br label %for.inc37

for.inc37:                                        ; preds = %if.end34, %afs_is_v2.exit141.for.inc37_crit_edge, %afs_is_v2.exit141.thread
  %i.5 = phi i32 [ %inc35, %if.end34 ], [ %i.4, %afs_is_v2.exit141.for.inc37_crit_edge ], [ %i.4, %afs_is_v2.exit141.thread ]
  %89 = ptrtoint ptr %erasesize.i101 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %erasesize.i101, align 8
  %add39 = add i32 %90, %off.1176
  %conv16 = zext i32 %add39 to i64
  %91 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %size, align 8
  %cmp18 = icmp ugt i64 %92, %conv16
  br i1 %cmp18, label %for.inc37.for.body20_crit_edge, label %for.inc37.cleanup.sink.split_crit_edge

for.inc37.cleanup.sink.split_crit_edge:           ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.inc37.for.body20_crit_edge:                   ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body20

out_free_parts:                                   ; preds = %if.then29.out_free_parts_crit_edge, %afs_parse_v1_partition.exit.thread
  %ret.0 = phi i32 [ %retval.0.i123.ph, %afs_parse_v1_partition.exit.thread ], [ %call31, %if.then29.out_free_parts_crit_edge ]
  %i.6 = phi i32 [ %i.3177, %afs_parse_v1_partition.exit.thread ], [ %i.4, %if.then29.out_free_parts_crit_edge ]
  %dec181 = add i32 %i.6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec181)
  %cmp41182 = icmp sgt i32 %dec181, -1
  br i1 %cmp41182, label %out_free_parts.while.body_crit_edge, label %out_free_parts.while.end_crit_edge

out_free_parts.while.end_crit_edge:               ; preds = %out_free_parts
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

out_free_parts.while.body_crit_edge:              ; preds = %out_free_parts
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %out_free_parts.while.body_crit_edge
  %dec183 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec181, %out_free_parts.while.body_crit_edge ]
  %arrayidx43 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %dec183
  %93 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx43, align 8
  call void @kfree(ptr noundef %94) #6
  %dec = add nsw i32 %dec183, -1
  %cmp41 = icmp sgt i32 %dec183, 0
  br i1 %cmp41, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %out_free_parts.while.end_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.end, %for.inc37.cleanup.sink.split_crit_edge, %for.cond15.preheader.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ null, %while.end ], [ %call9.i.i, %for.cond15.preheader.cleanup.sink.split_crit_edge ], [ %call9.i.i, %for.inc37.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.0, %while.end ], [ 0, %for.cond15.preheader.cleanup.sink.split_crit_edge ], [ %i.5, %for.inc37.cleanup.sink.split_crit_edge ]
  %95 = ptrtoint ptr %pparts to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %.sink, ptr %pparts, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.i.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @afs_parse_v2_partition(ptr noundef %mtd, i32 noundef %off, ptr nocapture noundef writeonly %part) unnamed_addr #2 align 64 {
entry:
  %footer = alloca [12 x i32], align 4
  %imginfo = alloca [36 x i32], align 4
  %sz = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %footer) #6
  %0 = call ptr @memset(ptr %footer, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %imginfo) #6
  %1 = call ptr @memset(ptr %imginfo, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz) #6
  %2 = ptrtoint ptr %sz to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sz, align 4, !annotation !78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afs_parse_v2_partition.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afs_parse_v2_partition, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !79

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %3 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %erasesize, align 8
  %add = add i32 %4, %off
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @afs_parse_v2_partition.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.12, i32 noundef %off, i32 noundef %add) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %erasesize3 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %5 = ptrtoint ptr %erasesize3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %erasesize3, align 8
  %add4 = add i32 %off, -48
  %sub = add i32 %add4, %6
  %conv = zext i32 %sub to i64
  %call5 = call i32 @mtd_read(ptr noundef %mtd, i64 noundef %conv, i32 noundef 48, ptr noundef nonnull %sz, ptr noundef nonnull %footer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end.do.end14_crit_edge, label %land.lhs.true

do.end.do.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

land.lhs.true:                                    ; preds = %do.end
  %7 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %8)
  %cmp9.not = icmp eq i32 %8, 48
  br i1 %cmp9.not, label %if.end17, label %land.lhs.true.do.end14_crit_edge

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.end14:                                         ; preds = %land.lhs.true.do.end14_crit_edge, %do.end.do.end14_crit_edge
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %sub, i32 noundef %call5) #9
  br label %cleanup196

if.end17:                                         ; preds = %land.lhs.true
  %arrayidx18 = getelementptr inbounds [12 x i32], ptr %footer, i32 0, i32 9
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx18, align 4
  %11 = ptrtoint ptr %erasesize3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %erasesize3, align 8
  %arrayidx22 = getelementptr inbounds [12 x i32], ptr %footer, i32 0, i32 8
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx22, align 4
  %sub21 = add i32 %add4, %12
  %sub23 = sub i32 %sub21, %14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afs_parse_v2_partition.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afs_parse_v2_partition, %if.then36)) #6
          to label %do.end39 [label %if.then36], !srcloc !79

if.then36:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @afs_parse_v2_partition.__UNIQUE_ID_ddebug186, ptr noundef nonnull @.str.13, ptr noundef nonnull %footer, i32 noundef %10, i32 noundef %sub23) #6
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %if.end17
  %conv40 = zext i32 %sub23 to i64
  %call42 = call i32 @mtd_read(ptr noundef %mtd, i64 noundef %conv40, i32 noundef 144, ptr noundef nonnull %sz, ptr noundef nonnull %imginfo) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %do.end39.do.end54_crit_edge, label %land.lhs.true48

do.end39.do.end54_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54

land.lhs.true48:                                  ; preds = %do.end39
  %15 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %16)
  %cmp49.not = icmp eq i32 %16, 144
  br i1 %cmp49.not, label %if.end57, label %land.lhs.true48.do.end54_crit_edge

land.lhs.true48.do.end54_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54

do.end54:                                         ; preds = %land.lhs.true48.do.end54_crit_edge, %do.end39.do.end54_crit_edge
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %sub23, i32 noundef %call42) #9
  br label %cleanup196

if.end57:                                         ; preds = %land.lhs.true48
  %arrayidx58 = getelementptr inbounds [36 x i32], ptr %imginfo, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end57
  %i.02.i = phi i32 [ 0, %if.end57 ], [ %inc2.i, %for.body.i.for.body.i_crit_edge ]
  %sum.01.i = phi i32 [ 0, %if.end57 ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %arrayidx58, i32 %i.02.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %neg.i = xor i32 %sum.01.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %neg.i)
  %cmp1.i = icmp ugt i32 %18, %neg.i
  %inc.i = zext i1 %cmp1.i to i32
  %spec.select.i = add i32 %18, %sum.01.i
  %add.i = add i32 %spec.select.i, %inc.i
  %inc2.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc2.i, 34
  br i1 %exitcond.not.i, label %word_sum_v2.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

word_sum_v2.exit:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i)
  %tobool60.not = icmp eq i32 %add.i, -1
  br i1 %tobool60.not, label %do.body62, label %if.else

do.body62:                                        ; preds = %word_sum_v2.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afs_parse_v2_partition.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afs_parse_v2_partition, %if.then74)) #6
          to label %if.end107 [label %if.then74], !srcloc !79

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @afs_parse_v2_partition.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.16) #6
  br label %if.end107

if.else:                                          ; preds = %word_sum_v2.exit
  %arrayidx78 = getelementptr inbounds [36 x i32], ptr %imginfo, i32 0, i32 2
  br label %for.body.i285

for.body.i285:                                    ; preds = %for.body.i285.for.body.i285_crit_edge, %if.else
  %i.02.i275 = phi i32 [ 0, %if.else ], [ %inc2.i283, %for.body.i285.for.body.i285_crit_edge ]
  %sum.01.i276 = phi i32 [ 0, %if.else ], [ %add.i282, %for.body.i285.for.body.i285_crit_edge ]
  %arrayidx.i277 = getelementptr i32, ptr %arrayidx78, i32 %i.02.i275
  %19 = ptrtoint ptr %arrayidx.i277 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i277, align 4
  %neg.i278 = xor i32 %sum.01.i276, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %neg.i278)
  %cmp1.i279 = icmp ugt i32 %20, %neg.i278
  %inc.i280 = zext i1 %cmp1.i279 to i32
  %spec.select.i281 = add i32 %20, %sum.01.i276
  %add.i282 = add i32 %spec.select.i281, %inc.i280
  %inc2.i283 = add nuw nsw i32 %i.02.i275, 1
  %exitcond.not.i284 = icmp eq i32 %inc2.i283, 34
  br i1 %exitcond.not.i284, label %word_sum_v2.exit287, label %for.body.i285.for.body.i285_crit_edge

for.body.i285.for.body.i285_crit_edge:            ; preds = %for.body.i285
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i285

word_sum_v2.exit287:                              ; preds = %for.body.i285
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i282)
  %tobool80.not = icmp eq i32 %add.i282, -1
  br i1 %tobool80.not, label %do.body82, label %do.end104

do.body82:                                        ; preds = %word_sum_v2.exit287
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afs_parse_v2_partition.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afs_parse_v2_partition, %if.then94)) #6
          to label %if.end107 [label %if.then94], !srcloc !79

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @afs_parse_v2_partition.__UNIQUE_ID_ddebug188, ptr noundef nonnull @.str.17) #6
  br label %if.end107

do.end104:                                        ; preds = %word_sum_v2.exit287
  call void @__sanitizer_cov_trace_pc() #8
  %neg3.i286 = xor i32 %add.i282, -1
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %neg3.i286) #9
  br label %cleanup196

if.end107:                                        ; preds = %if.then94, %do.body82, %if.then74, %do.body62
  %pad.0295 = phi i32 [ 1, %do.body62 ], [ 2, %do.body82 ], [ 2, %if.then94 ], [ 1, %if.then74 ]
  %arrayidx108 = getelementptr [36 x i32], ptr %imginfo, i32 0, i32 %pad.0295
  %21 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx108, align 4
  %add109 = add nuw nsw i32 %pad.0295, 1
  %arrayidx110 = getelementptr [36 x i32], ptr %imginfo, i32 0, i32 %add109
  %23 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx110, align 4
  %add111 = add nuw nsw i32 %pad.0295, 2
  %arrayidx112 = getelementptr [36 x i32], ptr %imginfo, i32 0, i32 %add111
  %25 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx112, align 4
  %arrayidx113 = getelementptr inbounds [36 x i32], ptr %imginfo, i32 0, i32 20
  %27 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx113, align 4
  %arrayidx114 = getelementptr inbounds [36 x i32], ptr %imginfo, i32 0, i32 21
  %29 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx114, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afs_parse_v2_partition.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afs_parse_v2_partition, %if.then127)) #6
          to label %do.end130 [label %if.then127], !srcloc !79

if.then127:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @afs_parse_v2_partition.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.21, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30) #6
  br label %do.end130

do.end130:                                        ; preds = %if.then127, %if.end107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp131304.not = icmp eq i32 %26, 0
  br i1 %cmp131304.not, label %do.end130.cleanup196_crit_edge, label %for.body.lr.ph

do.end130.cleanup196_crit_edge:                   ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup196

for.body.lr.ph:                                   ; preds = %do.end130
  %offset = getelementptr inbounds %struct.mtd_partition, ptr %part, i32 0, i32 3
  %size = getelementptr inbounds %struct.mtd_partition, ptr %part, i32 0, i32 2
  %mask_flags = getelementptr inbounds %struct.mtd_partition, ptr %part, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end188.for.body_crit_edge, %for.body.lr.ph
  %i.0305 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end188.for.body_crit_edge ]
  %mul = shl i32 %i.0305, 2
  %add133 = or i32 %mul, %pad.0295
  %add134 = add i32 %add133, 3
  %arrayidx135 = getelementptr [36 x i32], ptr %imginfo, i32 0, i32 %add134
  %31 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx135, align 4
  %add138 = add i32 %add133, 4
  %arrayidx139 = getelementptr [36 x i32], ptr %imginfo, i32 0, i32 %add138
  %33 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx139, align 4
  %add142 = add i32 %add133, 5
  %arrayidx143 = getelementptr [36 x i32], ptr %imginfo, i32 0, i32 %add142
  %35 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx143, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afs_parse_v2_partition.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afs_parse_v2_partition, %if.then156)) #6
          to label %do.end159 [label %if.then156], !srcloc !79

if.then156:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @afs_parse_v2_partition.__UNIQUE_ID_ddebug190, ptr noundef nonnull @.str.22, i32 noundef %i.0305, i32 noundef %32, i32 noundef %34, i32 noundef %36) #6
  br label %do.end159

do.end159:                                        ; preds = %if.then156, %for.body
  %add160 = add i32 %36, %off
  %37 = ptrtoint ptr %erasesize3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %erasesize3, align 8
  %sub163 = add i32 %34, -1
  %add161 = add i32 %sub163, %add160
  %add164 = add i32 %add161, %38
  %neg = sub i32 0, %38
  %and = and i32 %add164, %neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afs_parse_v2_partition.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afs_parse_v2_partition, %if.then179)) #6
          to label %do.end182 [label %if.then179], !srcloc !79

if.then179:                                       ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @afs_parse_v2_partition.__UNIQUE_ID_ddebug191, ptr noundef nonnull @.str.23, i32 noundef %add160, i32 noundef %and) #6
  br label %do.end182

do.end182:                                        ; preds = %if.then179, %do.end159
  %call183 = call noalias ptr @kstrdup(ptr noundef nonnull %footer, i32 noundef 3264) #6
  %39 = ptrtoint ptr %part to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call183, ptr %part, align 8
  %tobool186.not = icmp eq ptr %call183, null
  br i1 %tobool186.not, label %do.end182.cleanup196_crit_edge, label %if.end188

do.end182.cleanup196_crit_edge:                   ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup196

if.end188:                                        ; preds = %do.end182
  %conv189 = zext i32 %add160 to i64
  %40 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv189, ptr %offset, align 8
  %sub190 = sub i32 %and, %add160
  %conv191 = zext i32 %sub190 to i64
  %41 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv191, ptr %size, align 8
  %42 = ptrtoint ptr %mask_flags to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %mask_flags, align 8
  %inc = add nuw i32 %i.0305, 1
  %exitcond.not = icmp eq i32 %inc, %26
  br i1 %exitcond.not, label %if.end188.cleanup196_crit_edge, label %if.end188.for.body_crit_edge

if.end188.for.body_crit_edge:                     ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end188.cleanup196_crit_edge:                   ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup196

cleanup196:                                       ; preds = %if.end188.cleanup196_crit_edge, %do.end182.cleanup196_crit_edge, %do.end130.cleanup196_crit_edge, %do.end104, %do.end54, %do.end14
  %retval.2 = phi i32 [ -5, %do.end14 ], [ -5, %do.end54 ], [ -22, %do.end104 ], [ 0, %do.end130.cleanup196_crit_edge ], [ 0, %if.end188.cleanup196_crit_edge ], [ -12, %do.end182.cleanup196_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz) #6
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %imginfo) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %footer) #6
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_afs__192_391_afs_parser_init6, !1, !"__initcall__kmod_afs__192_391_afs_parser_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/parsers/afs.c", i32 391, i32 1}
!2 = !{ptr @__exitcall_afs_parser_exit, !1, !"__exitcall_afs_parser_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author193, !4, !"__UNIQUE_ID_author193", i1 false, i1 false}
!4 = !{!"../drivers/mtd/parsers/afs.c", i32 393, i32 1}
!5 = !{ptr @__UNIQUE_ID_description194, !6, !"__UNIQUE_ID_description194", i1 false, i1 false}
!6 = !{!"../drivers/mtd/parsers/afs.c", i32 394, i32 1}
!7 = !{ptr @__UNIQUE_ID_file195, !8, !"__UNIQUE_ID_file195", i1 false, i1 false}
!8 = !{!"../drivers/mtd/parsers/afs.c", i32 395, i32 1}
!9 = !{ptr @__UNIQUE_ID_license196, !8, !"__UNIQUE_ID_license196", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/parsers/afs.c", i32 388, i32 10}
!12 = !{ptr @afs_parser, !13, !"afs_parser", i1 false, i1 false}
!13 = !{!"../drivers/mtd/parsers/afs.c", i32 386, i32 31}
!14 = !{ptr @mtd_parser_afs_of_match_table, !15, !"mtd_parser_afs_of_match_table", i1 false, i1 false}
!15 = !{!"../drivers/mtd/parsers/afs.c", i32 380, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/parsers/afs.c", i32 88, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @afs_is_v1._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @afs_is_v1._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/parsers/afs.c", i32 108, i32 3}
!24 = !{ptr @afs_is_v2._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @afs_is_v2._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/parsers/afs.c", i32 147, i32 3}
!28 = !{ptr @afs_parse_v1_partition._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @afs_parse_v1_partition._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @afs_parse_v1_partition._entry.6, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/mtd/parsers/afs.c", i32 184, i32 3}
!32 = !{ptr @afs_parse_v1_partition._entry_ptr.7, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/parsers/afs.c", i32 209, i32 2}
!35 = !{ptr @afs_parse_v1_partition._entry.8, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @afs_parse_v1_partition._entry_ptr.10, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/parsers/afs.c", i32 235, i32 2}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @afs_parse_v2_partition.__UNIQUE_ID_ddebug185, !38, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!41 = !{ptr @afs_parse_v2_partition._entry, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/mtd/parsers/afs.c", i32 242, i32 3}
!43 = !{ptr @afs_parse_v2_partition._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/parsers/afs.c", i32 250, i32 2}
!46 = !{ptr @afs_parse_v2_partition.__UNIQUE_ID_ddebug186, !45, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!47 = !{ptr @afs_parse_v2_partition._entry.14, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/mtd/parsers/afs.c", i32 256, i32 3}
!49 = !{ptr @afs_parse_v2_partition._entry_ptr.15, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/parsers/afs.c", i32 264, i32 3}
!52 = !{ptr @afs_parse_v2_partition.__UNIQUE_ID_ddebug187, !51, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mtd/parsers/afs.c", i32 270, i32 4}
!55 = !{ptr @afs_parse_v2_partition.__UNIQUE_ID_ddebug188, !54, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/parsers/afs.c", i32 275, i32 3}
!58 = !{ptr @afs_parse_v2_partition._entry.18, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @afs_parse_v2_partition._entry_ptr.20, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/parsers/afs.c", i32 284, i32 2}
!62 = !{ptr @afs_parse_v2_partition.__UNIQUE_ID_ddebug189, !61, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/parsers/afs.c", i32 296, i32 3}
!65 = !{ptr @afs_parse_v2_partition.__UNIQUE_ID_ddebug190, !64, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/parsers/afs.c", i32 308, i32 3}
!68 = !{ptr @afs_parse_v2_partition.__UNIQUE_ID_ddebug191, !67, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"auto-init"}
!79 = !{i64 2148960780, i64 2148960785, i64 2148960798, i64 2148960842, i64 2148960876, i64 2148960897}
