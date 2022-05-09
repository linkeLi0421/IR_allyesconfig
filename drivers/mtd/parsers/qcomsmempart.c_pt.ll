; ModuleID = '/llk/IR_all_yes/drivers/mtd/parsers/qcomsmempart.c_pt.bc'
source_filename = "../drivers/mtd/parsers/qcomsmempart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtd_part_parser = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.smem_flash_ptable = type { i32, i32, i32, i32, [48 x %struct.smem_flash_pentry] }
%struct.smem_flash_pentry = type { [16 x i8], i32, i32, i8 }
%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }

@__initcall__kmod_qcomsmempart__188_193_mtd_parser_qcomsmem_init6 = internal global ptr @mtd_parser_qcomsmem_init, section ".initcall6.init", align 4
@mtd_parser_qcomsmem = internal global { %struct.mtd_part_parser, [36 x i8] } { %struct.mtd_part_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str, ptr @qcomsmem_of_match_table, ptr @parse_qcomsmem_part, ptr @parse_qcomsmem_cleanup }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mtd_parser_qcomsmem_exit = internal global ptr @mtd_parser_qcomsmem_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file189 = internal constant [51 x i8] c"qcomsmempart.file=drivers/mtd/parsers/qcomsmempart\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [28 x i8] c"qcomsmempart.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author191 = internal constant [77 x i8] c"qcomsmempart.author=Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description192 = internal constant [67 x i8] c"qcomsmempart.description=Qualcomm SMEM NAND flash partition parser\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcomsmem\00", [23 x i8] zeroinitializer }, align 32
@qcomsmem_of_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,smem-part\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@parse_qcomsmem_part._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s: SMEM partition parser is incompatible with 4K sectors\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"parse_qcomsmem_part\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/mtd/parsers/qcomsmempart.c\00", [61 x i8] zeroinitializer }, align 32
@parse_qcomsmem_part._entry_ptr = internal global ptr @parse_qcomsmem_part._entry, section ".printk_index", align 4
@parse_qcomsmem_part.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcomsmempart\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Parsing partition table info from SMEM\0A\00", [56 x i8] zeroinitializer }, align 32
@parse_qcomsmem_part._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Error reading partition table header\0A\00", [56 x i8] zeroinitializer }, align 32
@parse_qcomsmem_part._entry_ptr.8 = internal global ptr @parse_qcomsmem_part._entry.6, section ".printk_index", align 4
@parse_qcomsmem_part._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Partition table magic verification failed\0A\00", [51 x i8] zeroinitializer }, align 32
@parse_qcomsmem_part._entry_ptr.11 = internal global ptr @parse_qcomsmem_part._entry.9, section ".printk_index", align 4
@parse_qcomsmem_part._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Partition numbers exceed the max limit\0A\00", [54 x i8] zeroinitializer }, align 32
@parse_qcomsmem_part._entry_ptr.14 = internal global ptr @parse_qcomsmem_part._entry.12, section ".printk_index", align 4
@parse_qcomsmem_part._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Unknown ptable version (%d)\00", [34 x i8] zeroinitializer }, align 32
@parse_qcomsmem_part._entry_ptr.17 = internal global ptr @parse_qcomsmem_part._entry.15, section ".printk_index", align 4
@parse_qcomsmem_part._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Error reading partition table\0A\00", [63 x i8] zeroinitializer }, align 32
@parse_qcomsmem_part._entry_ptr.20 = internal global ptr @parse_qcomsmem_part._entry.18, section ".printk_index", align 4
@parse_qcomsmem_part.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.21, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%d: %s offs=0x%08x size=0x%08x attr:0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@parse_qcomsmem_part.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.22, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SMEM partition table found: ver: %d len: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@___asan_gen_.23 = private unnamed_addr constant [20 x i8] c"mtd_parser_qcomsmem\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 187, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 190, i32 10 }
@___asan_gen_.29 = private unnamed_addr constant [24 x i8] c"qcomsmem_of_match_table\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 181, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 70, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 75, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 79, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 86, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 93, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 105, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 116, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 149, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [38 x i8] c"../drivers/mtd/parsers/qcomsmempart.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 155, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author191, ptr @__UNIQUE_ID_description192, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__exitcall_mtd_parser_qcomsmem_exit, ptr @__initcall__kmod_qcomsmempart__188_193_mtd_parser_qcomsmem_init6, ptr @mtd_parser_qcomsmem_exit, ptr @parse_qcomsmem_part._entry, ptr @parse_qcomsmem_part._entry.12, ptr @parse_qcomsmem_part._entry.15, ptr @parse_qcomsmem_part._entry.18, ptr @parse_qcomsmem_part._entry.6, ptr @parse_qcomsmem_part._entry.9, ptr @parse_qcomsmem_part._entry_ptr, ptr @parse_qcomsmem_part._entry_ptr.11, ptr @parse_qcomsmem_part._entry_ptr.14, ptr @parse_qcomsmem_part._entry_ptr.17, ptr @parse_qcomsmem_part._entry_ptr.20, ptr @parse_qcomsmem_part._entry_ptr.8, ptr @mtd_parser_qcomsmem, ptr @.str, ptr @qcomsmem_of_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_parser_qcomsmem to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcomsmem_of_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_qcomsmem_part._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_qcomsmem_part._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_qcomsmem_part._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_qcomsmem_part._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_qcomsmem_part._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_qcomsmem_part._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtd_parser_qcomsmem_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_mtd_parser(ptr noundef nonnull @mtd_parser_qcomsmem, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtd_parser_qcomsmem_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @deregister_mtd_parser(ptr noundef nonnull @mtd_parser_qcomsmem) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_mtd_parser(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_mtd_parser(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_qcomsmem_part(ptr nocapture noundef readonly %mtd, ptr nocapture noundef writeonly %pparts, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %len, align 4
  %1 = ptrtoint ptr %mtd to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mtd, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp = icmp eq i8 %2, 3
  br i1 %cmp, label %do.end, label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name2 = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 13
  %3 = ptrtoint ptr %name2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name2, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %4) #10
  br label %cleanup

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_qcomsmem_part.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_qcomsmem_part, %if.then8)) #7
          to label %do.end11 [label %if.then8], !srcloc !61

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_qcomsmem_part.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.5) #7
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body3
  %call12 = call ptr @qcom_smem_get(i32 noundef 0, i32 noundef 9, ptr noundef nonnull %len) #7
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end26

if.then14:                                        ; preds = %do.end11
  %cmp16.not = icmp eq ptr %call12, inttoptr (i32 -517 to ptr)
  br i1 %cmp16.not, label %if.then14.cleanup_crit_edge, label %do.end21

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end21:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call12 to i32
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end26:                                         ; preds = %do.end11
  %6 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1435242923, i32 %7)
  %cmp27.not = icmp eq i32 %7, -1435242923
  br i1 %cmp27.not, label %lor.lhs.false, label %if.end26.do.end34_crit_edge

if.end26.do.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

lor.lhs.false:                                    ; preds = %if.end26
  %magic2 = getelementptr inbounds %struct.smem_flash_ptable, ptr %call12, i32 0, i32 1
  %8 = ptrtoint ptr %magic2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %magic2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -608346397, i32 %9)
  %cmp29.not = icmp eq i32 %9, -608346397
  br i1 %cmp29.not, label %if.end37, label %lor.lhs.false.do.end34_crit_edge

lor.lhs.false.do.end34_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

do.end34:                                         ; preds = %lor.lhs.false.do.end34_crit_edge, %if.end26.do.end34_crit_edge
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end37:                                         ; preds = %lor.lhs.false
  %numparts38 = getelementptr inbounds %struct.smem_flash_ptable, ptr %call12, i32 0, i32 3
  %10 = ptrtoint ptr %numparts38 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %numparts38, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %12)
  %cmp39 = icmp sgt i32 %12, 48
  br i1 %cmp39, label %do.end44, label %if.end47

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %version = getelementptr inbounds %struct.smem_flash_ptable, ptr %call12, i32 0, i32 2
  %13 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %version, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp48 = icmp ult i32 %15, 4
  br i1 %cmp48, label %if.end47.if.end63_crit_edge, label %if.else

if.end47.if.end63_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.else:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %14)
  %cmp52 = icmp eq i32 %14, 67108864
  br i1 %cmp52, label %if.else.if.end63_crit_edge, label %do.end58

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

do.end58:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %15) #10
  br label %cleanup

if.end63:                                         ; preds = %if.else.if.end63_crit_edge, %if.end47.if.end63_crit_edge
  %storemerge = phi i32 [ 464, %if.end47.if.end63_crit_edge ], [ 1360, %if.else.if.end63_crit_edge ]
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %len, align 4
  %call64 = call ptr @qcom_smem_get(i32 noundef 0, i32 noundef 9, ptr noundef nonnull %len) #7
  %cmp.i245 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245, label %do.end69, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp74252 = icmp sgt i32 %12, 0
  br i1 %cmp74252, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end69:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  %17 = ptrtoint ptr %call64 to i32
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0254 = phi i32 [ %inc84, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %numparts.0253 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.smem_flash_ptable, ptr %call64, i32 0, i32 4, i32 %i.0254
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp80.not = icmp ne i8 %19, 0
  %inc = zext i1 %cmp80.not to i32
  %spec.select = add i32 %numparts.0253, %inc
  %inc84 = add nuw nsw i32 %i.0254, 1
  %exitcond.not = icmp eq i32 %inc84, %12
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %numparts.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %20 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %numparts.0.lcssa, i32 40) #7
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %for.end.cleanup_crit_edge, label %if.end7.i.i, !prof !62

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i.i:                                      ; preds = %for.end
  %22 = extractvalue { i32, i1 } %20, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #11
  %tobool86.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool86.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond89.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond89.preheader:                             ; preds = %if.end7.i.i
  br i1 %cmp74252, label %for.body92.lr.ph, label %for.cond89.preheader.do.body152_crit_edge

for.cond89.preheader.do.body152_crit_edge:        ; preds = %for.cond89.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body152

for.body92.lr.ph:                                 ; preds = %for.cond89.preheader
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  br label %for.body92

for.body92:                                       ; preds = %for.inc149.for.body92_crit_edge, %for.body92.lr.ph
  %i.1259 = phi i32 [ 0, %for.body92.lr.ph ], [ %inc150, %for.inc149.for.body92_crit_edge ]
  %j.0258 = phi i32 [ 0, %for.body92.lr.ph ], [ %j.1, %for.inc149.for.body92_crit_edge ]
  %arrayidx94 = getelementptr %struct.smem_flash_ptable, ptr %call64, i32 0, i32 4, i32 %i.1259
  %23 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx94, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp98 = icmp eq i8 %24, 0
  br i1 %cmp98, label %for.body92.for.inc149_crit_edge, label %if.end101

for.body92.for.inc149_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc149

if.end101:                                        ; preds = %for.body92
  %call103 = call noalias ptr @kstrdup(ptr noundef %arrayidx94, i32 noundef 3264) #7
  %tobool104.not = icmp eq ptr %call103, null
  br i1 %tobool104.not, label %while.cond.preheader, label %for.cond107.preheader

for.cond107.preheader:                            ; preds = %if.end101
  %25 = ptrtoint ptr %call103 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %call103, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp109.not255 = icmp eq i8 %26, 0
  br i1 %cmp109.not255, label %for.cond107.preheader.for.end114_crit_edge, label %for.cond107.preheader.for.body111_crit_edge

for.cond107.preheader.for.body111_crit_edge:      ; preds = %for.cond107.preheader
  br label %for.body111

for.cond107.preheader.for.end114_crit_edge:       ; preds = %for.cond107.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end114

while.cond.preheader:                             ; preds = %if.end101
  %dec261 = add i32 %j.0258, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec261)
  %cmp169262 = icmp sgt i32 %dec261, -1
  br i1 %cmp169262, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

for.body111:                                      ; preds = %for.body111.for.body111_crit_edge, %for.cond107.preheader.for.body111_crit_edge
  %27 = phi i8 [ %33, %for.body111.for.body111_crit_edge ], [ %26, %for.cond107.preheader.for.body111_crit_edge ]
  %c.0256 = phi ptr [ %incdec.ptr, %for.body111.for.body111_crit_edge ], [ %call103, %for.cond107.preheader.for.body111_crit_edge ]
  %conv.i = zext i8 %27 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp.not.i = icmp eq i8 %30, 0
  %sub.i = add i8 %27, 32
  %spec.select.i = select i1 %cmp.not.i, i8 %27, i8 %sub.i
  %31 = ptrtoint ptr %c.0256 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %spec.select.i, ptr %c.0256, align 1
  %incdec.ptr = getelementptr i8, ptr %c.0256, i32 1
  %32 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr, align 1
  %cmp109.not = icmp eq i8 %33, 0
  br i1 %cmp109.not, label %for.body111.for.end114_crit_edge, label %for.body111.for.body111_crit_edge

for.body111.for.body111_crit_edge:                ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body111

for.body111.for.end114_crit_edge:                 ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end114

for.end114:                                       ; preds = %for.body111.for.end114_crit_edge, %for.cond107.preheader.for.end114_crit_edge
  %arrayidx115 = getelementptr %struct.mtd_partition, ptr %call8.i.i, i32 %j.0258
  %34 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call103, ptr %arrayidx115, align 8
  %offset = getelementptr %struct.smem_flash_ptable, ptr %call64, i32 0, i32 4, i32 %i.1259, i32 1
  %35 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %erasesize, align 8
  %mul = mul i32 %37, %39
  %conv117 = zext i32 %mul to i64
  %offset119 = getelementptr %struct.mtd_partition, ptr %call8.i.i, i32 %j.0258, i32 3
  %40 = ptrtoint ptr %offset119 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv117, ptr %offset119, align 8
  %attr = getelementptr %struct.smem_flash_ptable, ptr %call64, i32 0, i32 4, i32 %i.1259, i32 3
  %41 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %attr, align 4
  %conv120 = zext i8 %42 to i32
  %mask_flags = getelementptr %struct.mtd_partition, ptr %call8.i.i, i32 %j.0258, i32 4
  %43 = ptrtoint ptr %mask_flags to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv120, ptr %mask_flags, align 8
  %length = getelementptr %struct.smem_flash_ptable, ptr %call64, i32 0, i32 4, i32 %i.1259, i32 2
  %44 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %erasesize, align 8
  %mul123 = mul i32 %46, %48
  %conv124 = zext i32 %mul123 to i64
  %size = getelementptr %struct.mtd_partition, ptr %call8.i.i, i32 %j.0258, i32 2
  %49 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv124, ptr %size, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_qcomsmem_part.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_qcomsmem_part, %if.then138)) #7
          to label %do.end147 [label %if.then138], !srcloc !61

if.then138:                                       ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %51)
  %53 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %length, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %54)
  %56 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %attr, align 4
  %conv144 = zext i8 %57 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_qcomsmem_part.__UNIQUE_ID_ddebug186, ptr noundef nonnull @.str.21, i32 noundef %i.1259, ptr noundef %arrayidx94, i32 noundef %52, i32 noundef %55, i32 noundef %conv144) #7
  br label %do.end147

do.end147:                                        ; preds = %if.then138, %for.end114
  %inc148 = add i32 %j.0258, 1
  br label %for.inc149

for.inc149:                                       ; preds = %do.end147, %for.body92.for.inc149_crit_edge
  %j.1 = phi i32 [ %j.0258, %for.body92.for.inc149_crit_edge ], [ %inc148, %do.end147 ]
  %inc150 = add nuw nsw i32 %i.1259, 1
  %exitcond265.not = icmp eq i32 %inc150, %12
  br i1 %exitcond265.not, label %for.inc149.do.body152_crit_edge, label %for.inc149.for.body92_crit_edge

for.inc149.for.body92_crit_edge:                  ; preds = %for.inc149
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body92

for.inc149.do.body152_crit_edge:                  ; preds = %for.inc149
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body152

do.body152:                                       ; preds = %for.inc149.do.body152_crit_edge, %for.cond89.preheader.do.body152_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_qcomsmem_part.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_qcomsmem_part, %if.then164)) #7
          to label %do.end168 [label %if.then164], !srcloc !61

if.then164:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #9
  %version165 = getelementptr inbounds %struct.smem_flash_ptable, ptr %call64, i32 0, i32 2
  %58 = ptrtoint ptr %version165 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %version165, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_qcomsmem_part.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.22, i32 noundef %60, i32 noundef %12) #7
  br label %do.end168

do.end168:                                        ; preds = %if.then164, %do.body152
  %61 = ptrtoint ptr %pparts to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call8.i.i, ptr %pparts, align 4
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec263 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec261, %while.cond.preheader.while.body_crit_edge ]
  %arrayidx171 = getelementptr %struct.mtd_partition, ptr %call8.i.i, i32 %dec263
  %62 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx171, align 8
  call void @kfree(ptr noundef %63) #7
  %dec = add nsw i32 %dec263, -1
  %cmp169 = icmp sgt i32 %dec263, 0
  br i1 %cmp169, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #7
  %64 = ptrtoint ptr %pparts to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %pparts, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end168, %if.end7.i.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end69, %do.end58, %do.end44, %do.end34, %do.end21, %if.then14.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end34 ], [ -22, %do.end44 ], [ %17, %do.end69 ], [ -12, %while.end ], [ %numparts.0.lcssa, %do.end168 ], [ -22, %do.end58 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ %5, %do.end21 ], [ -517, %if.then14.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parse_qcomsmem_cleanup(ptr noundef %pparts, i32 noundef %nr_parts) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_parts)
  %cmp4 = icmp sgt i32 %nr_parts, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtd_partition, ptr %pparts, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  tail call void @kfree(ptr noundef %1) #7
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %nr_parts
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %pparts) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_smem_get(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_qcomsmempart__188_193_mtd_parser_qcomsmem_init6, !1, !"__initcall__kmod_qcomsmempart__188_193_mtd_parser_qcomsmem_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/parsers/qcomsmempart.c", i32 193, i32 1}
!2 = !{ptr @__exitcall_mtd_parser_qcomsmem_exit, !1, !"__exitcall_mtd_parser_qcomsmem_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file189, !4, !"__UNIQUE_ID_file189", i1 false, i1 false}
!4 = !{!"../drivers/mtd/parsers/qcomsmempart.c", i32 195, i32 1}
!5 = !{ptr @__UNIQUE_ID_license190, !4, !"__UNIQUE_ID_license190", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author191, !7, !"__UNIQUE_ID_author191", i1 false, i1 false}
!7 = !{!"../drivers/mtd/parsers/qcomsmempart.c", i32 196, i32 1}
!8 = !{ptr @__UNIQUE_ID_description192, !9, !"__UNIQUE_ID_description192", i1 false, i1 false}
!9 = !{!"../drivers/mtd/parsers/qcomsmempart.c", i32 197, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/parsers/qcomsmempart.c", i32 190, i32 10}
!12 = !{ptr @mtd_parser_qcomsmem, !13, !"mtd_parser_qcomsmem", i1 false, i1 false}
!13 = !{!"../drivers/mtd/parsers/qcomsmempart.c", i32 187, i32 31}
!14 = !{ptr @qcomsmem_of_match_table, !15, !"qcomsmem_of_match_table", i1 false, i1 false}
!15 = !{!"../drivers/mtd/parsers/qcomsmempart.c", i32 181, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/parsers/qcomsmempart.c", i32 70, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @parse_qcomsmem_part._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @parse_qcomsmem_part._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/parsers/qcomsmempart.c", i32 75, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @parse_qcomsmem_part.__UNIQUE_ID_ddebug185, !23, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/parsers/qcomsmempart.c", i32 79, i32 4}
!28 = !{ptr @parse_qcomsmem_part._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @parse_qcomsmem_part._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/parsers/qcomsmempart.c", i32 86, i32 3}
!32 = !{ptr @parse_qcomsmem_part._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @parse_qcomsmem_part._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/parsers/qcomsmempart.c", i32 93, i32 3}
!36 = !{ptr @parse_qcomsmem_part._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @parse_qcomsmem_part._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/parsers/qcomsmempart.c", i32 105, i32 3}
!40 = !{ptr @parse_qcomsmem_part._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @parse_qcomsmem_part._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/parsers/qcomsmempart.c", i32 116, i32 3}
!44 = !{ptr @parse_qcomsmem_part._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @parse_qcomsmem_part._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/parsers/qcomsmempart.c", i32 149, i32 3}
!48 = !{ptr @parse_qcomsmem_part.__UNIQUE_ID_ddebug186, !47, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mtd/parsers/qcomsmempart.c", i32 155, i32 2}
!51 = !{ptr @parse_qcomsmem_part.__UNIQUE_ID_ddebug187, !50, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i64 2148959878, i64 2148959883, i64 2148959896, i64 2148959940, i64 2148959974, i64 2148959995}
!62 = !{!"branch_weights", i32 1, i32 2000}
