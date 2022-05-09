; ModuleID = '/llk/IR_all_yes/drivers/mtd/parsers/ofpart_core.c_pt.bc'
source_filename = "../drivers/mtd/parsers/ofpart_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_part_parser = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fixed_partitions_quirks = type { ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.anon.45 = type { i32, i32 }

@ofpart_parser = internal global { %struct.mtd_part_parser, [36 x i8] } { %struct.mtd_part_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str, ptr @parse_ofpart_match_table, ptr @parse_fixed_partitions, ptr null }, [36 x i8] zeroinitializer }, align 32
@ofoldpart_parser = internal global { %struct.mtd_part_parser, [36 x i8] } { %struct.mtd_part_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str.16, ptr null, ptr @parse_ofoldpart_partitions, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_ofpart__188_261_ofpart_parser_init6 = internal global ptr @ofpart_parser_init, section ".initcall6.init", align 4
@__exitcall_ofpart_parser_exit = internal global ptr @ofpart_parser_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file189 = internal constant [39 x i8] c"ofpart.file=drivers/mtd/parsers/ofpart\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [19 x i8] c"ofpart.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [74 x i8] c"ofpart.description=Parser for MTD partitioning information in device tree\00", section ".modinfo", align 1
@__UNIQUE_ID_author192 = internal constant [40 x i8] c"ofpart.author=Vitaly Wool, David Gibson\00", section ".modinfo", align 1
@__UNIQUE_ID_alias193 = internal constant [30 x i8] c"ofpart.alias=fixed-partitions\00", section ".modinfo", align 1
@__UNIQUE_ID_alias194 = internal constant [23 x i8] c"ofpart.alias=ofoldpart\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fixed-partitions\00", [47 x i8] zeroinitializer }, align 32
@parse_ofpart_match_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-partitions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4908-partitions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm4908_partitions_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"linksys,ns-partitions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @linksys_ns_partitions_quirks }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@bcm4908_partitions_quirks = internal global { %struct.fixed_partitions_quirks, [28 x i8] } { %struct.fixed_partitions_quirks { ptr @bcm4908_partitions_post_parse }, [28 x i8] zeroinitializer }, align 32
@linksys_ns_partitions_quirks = internal global { %struct.fixed_partitions_quirks, [28 x i8] } { %struct.fixed_partitions_quirks { ptr @linksys_ns_partitions_post_parse }, [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"partitions\00", [21 x i8] zeroinitializer }, align 32
@parse_fixed_partitions.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ofpart\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"parse_fixed_partitions\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mtd/parsers/ofpart_core.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"%s: 'partitions' subnode not found on %pOF. Trying to parse direct subnodes as partitions.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@parse_fixed_partitions.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: ofpart partition %pOF (%pOF) missing reg property.\0A\00", [40 x i8] zeroinitializer }, align 32
@parse_fixed_partitions.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: ofpart partition %pOF (%pOF) error parsing reg property.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read-only\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slc-mode\00", [23 x i8] zeroinitializer }, align 32
@parse_fixed_partitions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s: error parsing ofpart partition %pOF (%pOF)\0A\00", [46 x i8] zeroinitializer }, align 32
@parse_fixed_partitions._entry_ptr = internal global ptr @parse_fixed_partitions._entry, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ofoldpart\00", [22 x i8] zeroinitializer }, align 32
@parse_ofoldpart_partitions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014Device tree uses obsolete partition map binding: %pOF\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"parse_ofoldpart_partitions\00", [37 x i8] zeroinitializer }, align 32
@parse_ofoldpart_partitions._entry_ptr = internal global ptr @parse_ofoldpart_partitions._entry, section ".printk_index", align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"partition-names\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unnamed\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"ofpart_parser\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 182, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"ofoldpart_parser\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 243, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 184, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant [25 x i8] c"parse_ofpart_match_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 172, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [26 x i8] c"bcm4908_partitions_quirks\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 26, i32 39 }
@___asan_gen_.36 = private unnamed_addr constant [29 x i8] c"linksys_ns_partitions_quirks\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 30, i32 39 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 61, i32 48 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 68, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 110, i32 29 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 113, i32 5 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 126, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 136, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 138, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 141, i32 27 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 144, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 147, i32 33 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 163, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 38, i32 29 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 245, i32 10 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 209, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 217, i32 30 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [37 x i8] c"../drivers/mtd/parsers/ofpart_core.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 233, i32 20 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_alias193, ptr @__UNIQUE_ID_alias194, ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__exitcall_ofpart_parser_exit, ptr @__initcall__kmod_ofpart__188_261_ofpart_parser_init6, ptr @ofpart_parser_exit, ptr @parse_fixed_partitions._entry, ptr @parse_fixed_partitions._entry_ptr, ptr @parse_ofoldpart_partitions._entry, ptr @parse_ofoldpart_partitions._entry_ptr, ptr @ofpart_parser, ptr @ofoldpart_parser, ptr @.str, ptr @parse_ofpart_match_table, ptr @bcm4908_partitions_quirks, ptr @linksys_ns_partitions_quirks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofpart_parser to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofoldpart_parser to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_ofpart_match_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm4908_partitions_quirks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linksys_ns_partitions_quirks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_fixed_partitions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_ofoldpart_partitions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ofpart_parser_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @deregister_mtd_parser(ptr noundef nonnull @ofpart_parser) #8
  tail call void @deregister_mtd_parser(ptr noundef nonnull @ofoldpart_parser) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_mtd_parser(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ofpart_parser_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_mtd_parser(ptr noundef nonnull @ofpart_parser, ptr noundef null) #8
  %call1 = tail call i32 @__register_mtd_parser(ptr noundef nonnull @ofoldpart_parser, ptr noundef null) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_fixed_partitions(ptr noundef %master, ptr nocapture noundef writeonly %pparts, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node.i.i = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 56, i32 27
  %0 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup141_crit_edge, label %if.end

entry.cleanup141_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup141

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 62
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.body, label %if.then2.if.end13_crit_edge

if.then2.if.end13_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.body:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_fixed_partitions.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_fixed_partitions, %if.end13.thread)) #8
          to label %if.end13 [label %if.end13.thread], !srcloc !79

if.end13.thread:                                  ; preds = %do.body
  %name = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 13
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_fixed_partitions.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.5, ptr noundef %5, ptr noundef nonnull %1) #8
  %call14250 = tail call ptr @of_match_node(ptr noundef nonnull @parse_ofpart_match_table, ptr noundef nonnull %1) #8
  %tobool16.not251 = icmp eq ptr %call14250, null
  br i1 %tobool16.not251, label %if.end13.thread.cond.end_crit_edge, label %if.end13.thread.cond.true_crit_edge

if.end13.thread.cond.true_crit_edge:              ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.true

if.end13.thread.cond.end_crit_edge:               ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end13:                                         ; preds = %do.body, %if.then2.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %dedicated.0.off0 = phi i1 [ true, %if.then2.if.end13_crit_edge ], [ true, %if.end.if.end13_crit_edge ], [ false, %do.body ]
  %ofpart_node.0 = phi ptr [ %call3, %if.then2.if.end13_crit_edge ], [ %1, %if.end.if.end13_crit_edge ], [ %1, %do.body ]
  %call14 = tail call ptr @of_match_node(ptr noundef nonnull @parse_ofpart_match_table, ptr noundef nonnull %ofpart_node.0) #8
  %tobool16.not = icmp eq ptr %call14, null
  %or.cond = select i1 %dedicated.0.off0, i1 %tobool16.not, i1 false
  br i1 %or.cond, label %if.end13.cleanup141_crit_edge, label %if.end18

if.end13.cleanup141_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup141

if.end18:                                         ; preds = %if.end13
  br i1 %tobool16.not, label %if.end18.cond.end_crit_edge, label %if.end18.cond.true_crit_edge

if.end18.cond.true_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.true

if.end18.cond.end_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end18.cond.true_crit_edge, %if.end13.thread.cond.true_crit_edge
  %dedicated.0.off0253260 = phi i1 [ false, %if.end13.thread.cond.true_crit_edge ], [ %dedicated.0.off0, %if.end18.cond.true_crit_edge ]
  %ofpart_node.0254258 = phi ptr [ %1, %if.end13.thread.cond.true_crit_edge ], [ %ofpart_node.0, %if.end18.cond.true_crit_edge ]
  %call14255257 = phi ptr [ %call14250, %if.end13.thread.cond.true_crit_edge ], [ %call14, %if.end18.cond.true_crit_edge ]
  %data20 = getelementptr inbounds %struct.of_device_id, ptr %call14255257, i32 0, i32 3
  %6 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data20, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end18.cond.end_crit_edge, %if.end13.thread.cond.end_crit_edge
  %dedicated.0.off0253261 = phi i1 [ %dedicated.0.off0253260, %cond.true ], [ %dedicated.0.off0, %if.end18.cond.end_crit_edge ], [ false, %if.end13.thread.cond.end_crit_edge ]
  %ofpart_node.0254259 = phi ptr [ %ofpart_node.0254258, %cond.true ], [ %ofpart_node.0, %if.end18.cond.end_crit_edge ], [ %1, %if.end13.thread.cond.end_crit_edge ]
  %cond = phi ptr [ %7, %cond.true ], [ null, %if.end18.cond.end_crit_edge ], [ null, %if.end13.thread.cond.end_crit_edge ]
  %call21 = tail call ptr @of_get_next_child(ptr noundef nonnull %ofpart_node.0254259, ptr noundef null) #8
  %cmp.not285 = icmp eq ptr %call21, null
  br i1 %cmp.not285, label %cond.end.cleanup141_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

cond.end.cleanup141_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup141

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end.for.body_crit_edge
  %nr_parts.0289 = phi i32 [ %nr_parts.1, %for.inc.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %pp.0286 = phi ptr [ %call27, %for.inc.for.body_crit_edge ], [ %call21, %cond.end.for.body_crit_edge ]
  br i1 %dedicated.0.off0253261, label %for.body.if.end26_crit_edge, label %land.lhs.true23

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true23:                                  ; preds = %for.body
  %call.i = tail call ptr @of_get_property(ptr noundef nonnull %pp.0286, ptr noundef nonnull @.str.15, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %land.lhs.true23.if.end26_crit_edge, label %land.lhs.true23.for.inc_crit_edge

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true23.if.end26_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true23.if.end26_crit_edge, %for.body.if.end26_crit_edge
  %inc = add i32 %nr_parts.0289, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %land.lhs.true23.for.inc_crit_edge
  %nr_parts.1 = phi i32 [ %inc, %if.end26 ], [ %nr_parts.0289, %land.lhs.true23.for.inc_crit_edge ]
  %call27 = tail call ptr @of_get_next_child(ptr noundef %ofpart_node.0254259, ptr noundef nonnull %pp.0286) #8
  %cmp.not = icmp eq ptr %call27, null
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_parts.1)
  %cmp28 = icmp eq i32 %nr_parts.1, 0
  br i1 %cmp28, label %for.end.cleanup141_crit_edge, label %if.end30

for.end.cleanup141_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup141

if.end30:                                         ; preds = %for.end
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_parts.1, i32 40) #8
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %if.end30.cleanup141_crit_edge, label %if.end7.i.i, !prof !80

if.end30.cleanup141_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup141

if.end7.i.i:                                      ; preds = %if.end30
  %10 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #11
  %tobool32.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool32.not, label %if.end7.i.i.cleanup141_crit_edge, label %if.end34

if.end7.i.i.cleanup141_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup141

if.end34:                                         ; preds = %if.end7.i.i
  %call35 = tail call ptr @of_get_next_child(ptr noundef %ofpart_node.0254259, ptr noundef null) #8
  %cmp37.not291 = icmp eq ptr %call35, null
  br i1 %cmp37.not291, label %if.end34.if.end127_crit_edge, label %if.end34.for.body38_crit_edge

if.end34.for.body38_crit_edge:                    ; preds = %if.end34
  br label %for.body38

if.end34.if.end127_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

for.body38:                                       ; preds = %for.inc122.for.body38_crit_edge, %if.end34.for.body38_crit_edge
  %i.0295 = phi i32 [ %i.1.ph, %for.inc122.for.body38_crit_edge ], [ 0, %if.end34.for.body38_crit_edge ]
  %nr_parts.2294 = phi i32 [ %nr_parts.3.ph, %for.inc122.for.body38_crit_edge ], [ %nr_parts.1, %if.end34.for.body38_crit_edge ]
  %pp.1292 = phi ptr [ %call123, %for.inc122.for.body38_crit_edge ], [ %call35, %if.end34.for.body38_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #8
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %len, align 4, !annotation !81
  br i1 %dedicated.0.off0253261, label %if.end43, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %for.body38
  %call.i230 = call ptr @of_get_property(ptr noundef nonnull %pp.1292, ptr noundef nonnull @.str.15, ptr noundef null) #8
  %tobool.i231.not = icmp eq ptr %call.i230, null
  br i1 %tobool.i231.not, label %if.end43.thread, label %land.lhs.true40.for.inc122_crit_edge

land.lhs.true40.for.inc122_crit_edge:             ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc122

if.end43:                                         ; preds = %for.body38
  %call44 = call ptr @of_get_property(ptr noundef nonnull %pp.1292, ptr noundef nonnull @.str.6, ptr noundef nonnull %len) #8
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %do.body49, label %if.end43.if.end67_crit_edge

if.end43.if.end67_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.end43.thread:                                  ; preds = %land.lhs.true40
  %call44269 = call ptr @of_get_property(ptr noundef nonnull %pp.1292, ptr noundef nonnull @.str.6, ptr noundef nonnull %len) #8
  %tobool45.not270 = icmp eq ptr %call44269, null
  br i1 %tobool45.not270, label %if.else66, label %if.end43.thread.if.end67_crit_edge

if.end43.thread.if.end67_crit_edge:               ; preds = %if.end43.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

do.body49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_fixed_partitions.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_fixed_partitions, %if.then61)) #8
          to label %do.end137 [label %if.then61], !srcloc !79

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  %name62 = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 13
  %12 = ptrtoint ptr %name62 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name62, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_fixed_partitions.__UNIQUE_ID_ddebug186, ptr noundef nonnull @.str.7, ptr noundef %13, ptr noundef nonnull %pp.1292, ptr noundef nonnull %1) #8
  br label %do.end137

if.else66:                                        ; preds = %if.end43.thread
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %nr_parts.2294, -1
  br label %for.inc122

if.end67:                                         ; preds = %if.end43.thread.if.end67_crit_edge, %if.end43.if.end67_crit_edge
  %call44271 = phi ptr [ %call44269, %if.end43.thread.if.end67_crit_edge ], [ %call44, %if.end43.if.end67_crit_edge ]
  %call68 = call i32 @of_n_addr_cells(ptr noundef nonnull %pp.1292) #8
  %call69 = call i32 @of_n_size_cells(ptr noundef nonnull %pp.1292) #8
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %div = sdiv i32 %15, 4
  %add = add i32 %call69, %call68
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %add)
  %cmp70.not = icmp eq i32 %div, %add
  br i1 %cmp70.not, label %if.end89, label %do.body72

do.body72:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_fixed_partitions.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_fixed_partitions, %if.then84)) #8
          to label %do.end137 [label %if.then84], !srcloc !79

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  %name85 = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 13
  %16 = ptrtoint ptr %name85 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name85, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_fixed_partitions.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.8, ptr noundef %17, ptr noundef nonnull %pp.1292, ptr noundef nonnull %1) #8
  br label %do.end137

if.end89:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool.not3.i = icmp eq i32 %call68, 0
  br i1 %tobool.not3.i, label %if.end89.of_read_number.exit_crit_edge, label %if.end89.for.body.i_crit_edge

if.end89.for.body.i_crit_edge:                    ; preds = %if.end89
  br label %for.body.i

if.end89.of_read_number.exit_crit_edge:           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_read_number.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end89.for.body.i_crit_edge
  %r.06.i = phi i64 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end89.for.body.i_crit_edge ]
  %size.addr.05.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %call68, %if.end89.for.body.i_crit_edge ]
  %cell.addr.04.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call44271, %if.end89.for.body.i_crit_edge ]
  %dec.i = add i32 %size.addr.05.i, -1
  %shl.i = shl i64 %r.06.i, 32
  %18 = ptrtoint ptr %cell.addr.04.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cell.addr.04.i, align 4
  %conv.i = zext i32 %19 to i64
  %or.i = or i64 %shl.i, %conv.i
  %incdec.ptr.i = getelementptr i32, ptr %cell.addr.04.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.body.i.of_read_number.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.of_read_number.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_read_number.exit

of_read_number.exit:                              ; preds = %for.body.i.of_read_number.exit_crit_edge, %if.end89.of_read_number.exit_crit_edge
  %r.0.lcssa.i = phi i64 [ 0, %if.end89.of_read_number.exit_crit_edge ], [ %or.i, %for.body.i.of_read_number.exit_crit_edge ]
  %arrayidx = getelementptr %struct.mtd_partition, ptr %call8.i.i, i32 %i.0295
  %offset = getelementptr %struct.mtd_partition, ptr %call8.i.i, i32 %i.0295, i32 3
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %r.0.lcssa.i, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool.not3.i232 = icmp eq i32 %call69, 0
  br i1 %tobool.not3.i232, label %of_read_number.exit.of_read_number.exit244_crit_edge, label %for.body.i242.preheader

of_read_number.exit.of_read_number.exit244_crit_edge: ; preds = %of_read_number.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_read_number.exit244

for.body.i242.preheader:                          ; preds = %of_read_number.exit
  %add.ptr = getelementptr i32, ptr %call44271, i32 %call68
  br label %for.body.i242

for.body.i242:                                    ; preds = %for.body.i242.for.body.i242_crit_edge, %for.body.i242.preheader
  %r.06.i233 = phi i64 [ %or.i239, %for.body.i242.for.body.i242_crit_edge ], [ 0, %for.body.i242.preheader ]
  %size.addr.05.i234 = phi i32 [ %dec.i236, %for.body.i242.for.body.i242_crit_edge ], [ %call69, %for.body.i242.preheader ]
  %cell.addr.04.i235 = phi ptr [ %incdec.ptr.i240, %for.body.i242.for.body.i242_crit_edge ], [ %add.ptr, %for.body.i242.preheader ]
  %dec.i236 = add i32 %size.addr.05.i234, -1
  %shl.i237 = shl i64 %r.06.i233, 32
  %21 = ptrtoint ptr %cell.addr.04.i235 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cell.addr.04.i235, align 4
  %conv.i238 = zext i32 %22 to i64
  %or.i239 = or i64 %shl.i237, %conv.i238
  %incdec.ptr.i240 = getelementptr i32, ptr %cell.addr.04.i235, i32 1
  %tobool.not.i241 = icmp eq i32 %dec.i236, 0
  br i1 %tobool.not.i241, label %for.body.i242.of_read_number.exit244_crit_edge, label %for.body.i242.for.body.i242_crit_edge

for.body.i242.for.body.i242_crit_edge:            ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i242

for.body.i242.of_read_number.exit244_crit_edge:   ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_read_number.exit244

of_read_number.exit244:                           ; preds = %for.body.i242.of_read_number.exit244_crit_edge, %of_read_number.exit.of_read_number.exit244_crit_edge
  %r.0.lcssa.i243 = phi i64 [ 0, %of_read_number.exit.of_read_number.exit244_crit_edge ], [ %or.i239, %for.body.i242.of_read_number.exit244_crit_edge ]
  %size = getelementptr %struct.mtd_partition, ptr %call8.i.i, i32 %i.0295, i32 2
  %23 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %r.0.lcssa.i243, ptr %size, align 8
  %of_node = getelementptr %struct.mtd_partition, ptr %call8.i.i, i32 %i.0295, i32 6
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %pp.1292, ptr %of_node, align 8
  %call94 = call ptr @of_get_property(ptr noundef nonnull %pp.1292, ptr noundef nonnull @.str.9, ptr noundef nonnull %len) #8
  %tobool95.not = icmp eq ptr %call94, null
  br i1 %tobool95.not, label %if.then96, label %of_read_number.exit244.if.end98_crit_edge

of_read_number.exit244.if.end98_crit_edge:        ; preds = %of_read_number.exit244
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then96:                                        ; preds = %of_read_number.exit244
  call void @__sanitizer_cov_trace_pc() #10
  %call97 = call ptr @of_get_property(ptr noundef nonnull %pp.1292, ptr noundef nonnull @.str.10, ptr noundef nonnull %len) #8
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %of_read_number.exit244.if.end98_crit_edge
  %partname.0 = phi ptr [ %call94, %of_read_number.exit244.if.end98_crit_edge ], [ %call97, %if.then96 ]
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %partname.0, ptr %arrayidx, align 8
  %call101 = call ptr @of_get_property(ptr noundef nonnull %pp.1292, ptr noundef nonnull @.str.11, ptr noundef nonnull %len) #8
  %tobool102.not = icmp eq ptr %call101, null
  br i1 %tobool102.not, label %if.end98.if.end105_crit_edge, label %if.then103

if.end98.if.end105_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then103:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %mask_flags = getelementptr %struct.mtd_partition, ptr %call8.i.i, i32 %i.0295, i32 4
  %26 = ptrtoint ptr %mask_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mask_flags, align 8
  %or = or i32 %27, 1024
  store i32 %or, ptr %mask_flags, align 8
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %if.end98.if.end105_crit_edge
  %call106 = call ptr @of_get_property(ptr noundef nonnull %pp.1292, ptr noundef nonnull @.str.12, ptr noundef nonnull %len) #8
  %tobool107.not = icmp eq ptr %call106, null
  br i1 %tobool107.not, label %if.end105.if.end112_crit_edge, label %if.then108

if.end105.if.end112_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  %mask_flags110 = getelementptr %struct.mtd_partition, ptr %call8.i.i, i32 %i.0295, i32 4
  %28 = ptrtoint ptr %mask_flags110 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mask_flags110, align 8
  %or111 = or i32 %29, 8192
  store i32 %or111, ptr %mask_flags110, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then108, %if.end105.if.end112_crit_edge
  %call.i245 = call ptr @of_find_property(ptr noundef nonnull %pp.1292, ptr noundef nonnull @.str.13, ptr noundef null) #8
  %tobool.i246.not = icmp eq ptr %call.i245, null
  br i1 %tobool.i246.not, label %if.end112.if.end117_crit_edge, label %if.then114

if.end112.if.end117_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.then114:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  %add_flags = getelementptr %struct.mtd_partition, ptr %call8.i.i, i32 %i.0295, i32 5
  %30 = ptrtoint ptr %add_flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add_flags, align 4
  %or116 = or i32 %31, 16384
  store i32 %or116, ptr %add_flags, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %if.end112.if.end117_crit_edge
  %inc118 = add i32 %i.0295, 1
  br label %for.inc122

for.inc122:                                       ; preds = %if.end117, %if.else66, %land.lhs.true40.for.inc122_crit_edge
  %nr_parts.3.ph = phi i32 [ %nr_parts.2294, %land.lhs.true40.for.inc122_crit_edge ], [ %dec, %if.else66 ], [ %nr_parts.2294, %if.end117 ]
  %i.1.ph = phi i32 [ %i.0295, %land.lhs.true40.for.inc122_crit_edge ], [ %i.0295, %if.else66 ], [ %inc118, %if.end117 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  %call123 = call ptr @of_get_next_child(ptr noundef %ofpart_node.0254259, ptr noundef nonnull %pp.1292) #8
  %cmp37.not = icmp eq ptr %call123, null
  br i1 %cmp37.not, label %for.end124, label %for.inc122.for.body38_crit_edge

for.inc122.for.body38_crit_edge:                  ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body38

for.end124:                                       ; preds = %for.inc122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_parts.3.ph)
  %tobool125.not = icmp eq i32 %nr_parts.3.ph, 0
  br i1 %tobool125.not, label %for.end124.ofpart_none_crit_edge, label %for.end124.if.end127_crit_edge

for.end124.if.end127_crit_edge:                   ; preds = %for.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

for.end124.ofpart_none_crit_edge:                 ; preds = %for.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %ofpart_none

if.end127:                                        ; preds = %for.end124.if.end127_crit_edge, %if.end34.if.end127_crit_edge
  %nr_parts.2.lcssa309 = phi i32 [ %nr_parts.3.ph, %for.end124.if.end127_crit_edge ], [ %nr_parts.1, %if.end34.if.end127_crit_edge ]
  %tobool128.not = icmp eq ptr %cond, null
  br i1 %tobool128.not, label %if.end127.if.end134_crit_edge, label %land.lhs.true129

if.end127.if.end134_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

land.lhs.true129:                                 ; preds = %if.end127
  %32 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cond, align 4
  %tobool130.not = icmp eq ptr %33, null
  br i1 %tobool130.not, label %land.lhs.true129.if.end134_crit_edge, label %if.then131

land.lhs.true129.if.end134_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then131:                                       ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #10
  %call133 = call i32 %33(ptr noundef %master, ptr noundef nonnull %call8.i.i, i32 noundef %nr_parts.2.lcssa309) #8
  br label %if.end134

if.end134:                                        ; preds = %if.then131, %land.lhs.true129.if.end134_crit_edge, %if.end127.if.end134_crit_edge
  %34 = ptrtoint ptr %pparts to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call8.i.i, ptr %pparts, align 4
  br label %cleanup141

do.end137:                                        ; preds = %if.then84, %do.body72, %if.then61, %do.body49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  %name139 = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 13
  %35 = ptrtoint ptr %name139 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name139, align 8
  %call140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %36, ptr noundef nonnull %pp.1292, ptr noundef nonnull %1) #12
  br label %ofpart_none

ofpart_none:                                      ; preds = %do.end137, %for.end124.ofpart_none_crit_edge
  %pp.1284 = phi ptr [ %pp.1292, %do.end137 ], [ null, %for.end124.ofpart_none_crit_edge ]
  %ret.0 = phi i32 [ -22, %do.end137 ], [ 0, %for.end124.ofpart_none_crit_edge ]
  call void @of_node_put(ptr noundef %pp.1284) #8
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %cleanup141

cleanup141:                                       ; preds = %ofpart_none, %if.end134, %if.end7.i.i.cleanup141_crit_edge, %if.end30.cleanup141_crit_edge, %for.end.cleanup141_crit_edge, %cond.end.cleanup141_crit_edge, %if.end13.cleanup141_crit_edge, %entry.cleanup141_crit_edge
  %retval.0 = phi i32 [ %ret.0, %ofpart_none ], [ %nr_parts.2.lcssa309, %if.end134 ], [ 0, %entry.cleanup141_crit_edge ], [ 0, %if.end13.cleanup141_crit_edge ], [ 0, %for.end.cleanup141_crit_edge ], [ -12, %if.end7.i.i.cleanup141_crit_edge ], [ -12, %if.end30.cleanup141_crit_edge ], [ 0, %cond.end.cleanup141_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm4908_partitions_post_parse(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @linksys_ns_partitions_post_parse(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_addr_cells(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_n_size_cells(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_ofoldpart_partitions(ptr nocapture noundef readonly %master, ptr nocapture noundef writeonly %pparts, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  %plen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plen) #8
  %0 = ptrtoint ptr %plen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %plen, align 4, !annotation !81
  %of_node.i.i = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 56, i32 27
  %1 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i.i, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call ptr @of_get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %plen) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %2) #12
  %3 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %plen, align 4
  %div61 = lshr i32 %4, 3
  %5 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div61, i32 40) #8
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %do.end.cleanup_crit_edge, label %if.end7.i.i, !prof !80

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %do.end
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #11
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end9

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end7.i.i
  %call10 = call ptr @of_get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.19, ptr noundef nonnull %plen) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp68.not = icmp ult i32 %4, 8
  br i1 %cmp68.not, label %if.end9.for.end_crit_edge, label %for.body.preheader

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %if.end9
  %umax = call i32 @llvm.umax.i32(i32 %div61, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %for.body.preheader
  %names.072 = phi ptr [ %names.1, %if.end29.for.body_crit_edge ], [ %call10, %for.body.preheader ]
  %part.071 = phi ptr [ %incdec.ptr, %if.end29.for.body_crit_edge ], [ %call1, %for.body.preheader ]
  %i.069 = phi i32 [ %inc, %if.end29.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %8 = ptrtoint ptr %part.071 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %part.071, align 4
  %conv = zext i32 %9 to i64
  %arrayidx = getelementptr %struct.mtd_partition, ptr %call8.i.i, i32 %i.069
  %offset11 = getelementptr %struct.mtd_partition, ptr %call8.i.i, i32 %i.069, i32 3
  %10 = ptrtoint ptr %offset11 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %offset11, align 8
  %len = getelementptr inbounds %struct.anon.45, ptr %part.071, i32 0, i32 1
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %and = and i32 %12, -2
  %conv12 = zext i32 %and to i64
  %size = getelementptr %struct.mtd_partition, ptr %call8.i.i, i32 %i.069, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv12, ptr %size, align 8
  %14 = load i32, ptr %len, align 4
  %and15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %for.body.if.end19_crit_edge, label %if.then17

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %mask_flags = getelementptr %struct.mtd_partition, ptr %call8.i.i, i32 %i.069, i32 4
  %15 = ptrtoint ptr %mask_flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1024, ptr %mask_flags, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.body.if.end19_crit_edge
  %tobool20.not = icmp eq ptr %names.072, null
  br i1 %tobool20.not, label %if.end19.if.else_crit_edge, label %land.lhs.true

if.end19.if.else_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end19
  %16 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %plen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp21 = icmp sgt i32 %17, 0
  br i1 %cmp21, label %if.then23, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = call i32 @strlen(ptr noundef nonnull %names.072) #13
  %add = add i32 %call25, 1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %names.072, ptr %arrayidx, align 8
  %sub = sub i32 %17, %add
  %19 = ptrtoint ptr %plen to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %plen, align 4
  %add.ptr = getelementptr i8, ptr %names.072, i32 %add
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end19.if.else_crit_edge
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.20, ptr %arrayidx, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then23
  %names.1 = phi ptr [ %add.ptr, %if.then23 ], [ %names.072, %if.else ]
  %incdec.ptr = getelementptr %struct.anon.45, ptr %part.071, i32 1
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end29.for.end_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end29.for.end_crit_edge, %if.end9.for.end_crit_edge
  %21 = ptrtoint ptr %pparts to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i, ptr %pparts, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7.i.i.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div61, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plen) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_mtd_parser(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !35, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !54, !55, !57, !59, !61, !63, !64, !65, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_ofpart__188_261_ofpart_parser_init6, !1, !"__initcall__kmod_ofpart__188_261_ofpart_parser_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 261, i32 1}
!2 = !{ptr @__exitcall_ofpart_parser_exit, !3, !"__exitcall_ofpart_parser_exit", i1 false, i1 false}
!3 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 262, i32 1}
!4 = !{ptr @__UNIQUE_ID_file189, !5, !"__UNIQUE_ID_file189", i1 false, i1 false}
!5 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 264, i32 1}
!6 = !{ptr @__UNIQUE_ID_license190, !5, !"__UNIQUE_ID_license190", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description191, !8, !"__UNIQUE_ID_description191", i1 false, i1 false}
!8 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 265, i32 1}
!9 = !{ptr @__UNIQUE_ID_author192, !10, !"__UNIQUE_ID_author192", i1 false, i1 false}
!10 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 266, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias193, !12, !"__UNIQUE_ID_alias193", i1 false, i1 false}
!12 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 272, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias194, !14, !"__UNIQUE_ID_alias194", i1 false, i1 false}
!14 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 273, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 184, i32 10}
!17 = !{ptr @ofpart_parser, !18, !"ofpart_parser", i1 false, i1 false}
!18 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 182, i32 31}
!19 = !{ptr @parse_ofpart_match_table, !20, !"parse_ofpart_match_table", i1 false, i1 false}
!20 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 172, i32 34}
!21 = !{ptr @bcm4908_partitions_quirks, !22, !"bcm4908_partitions_quirks", i1 false, i1 false}
!22 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 26, i32 39}
!23 = !{ptr @linksys_ns_partitions_quirks, !24, !"linksys_ns_partitions_quirks", i1 false, i1 false}
!24 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 30, i32 39}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 61, i32 48}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 68, i32 4}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @parse_fixed_partitions.__UNIQUE_ID_ddebug185, !28, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 110, i32 29}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 113, i32 5}
!37 = !{ptr @parse_fixed_partitions.__UNIQUE_ID_ddebug186, !36, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 126, i32 4}
!40 = !{ptr @parse_fixed_partitions.__UNIQUE_ID_ddebug187, !39, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 136, i32 34}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 138, i32 35}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 141, i32 27}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 144, i32 27}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 147, i32 33}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 163, i32 2}
!53 = !{ptr @parse_fixed_partitions._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @parse_fixed_partitions._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 38, i32 29}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 245, i32 10}
!59 = !{ptr @ofoldpart_parser, !60, !"ofoldpart_parser", i1 false, i1 false}
!60 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 243, i32 31}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 209, i32 2}
!63 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @parse_ofoldpart_partitions._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @parse_ofoldpart_partitions._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 217, i32 30}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/parsers/ofpart_core.c", i32 233, i32 20}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2148958297, i64 2148958302, i64 2148958315, i64 2148958359, i64 2148958393, i64 2148958414}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{!"auto-init"}
