; ModuleID = '/llk/IR_all_yes/drivers/mtd/parsers/cmdlinepart.c_pt.bc'
source_filename = "../drivers/mtd/parsers/cmdlinepart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.mtd_part_parser = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
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
%struct.cmdline_mtd_partition = type { ptr, ptr, i32, ptr }
%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }

@__setup_str_mtdpart_setup = internal constant [10 x i8] c"mtdparts=\00", section ".init.rodata", align 1
@__setup_mtdpart_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_mtdpart_setup, ptr @mtdpart_setup, i32 0 }, section ".init.setup", align 4
@cmdline_parser = internal global { %struct.mtd_part_parser, [36 x i8] } { %struct.mtd_part_parser { %struct.list_head zeroinitializer, ptr null, ptr @.str, ptr null, ptr @parse_cmdline_partitions, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_cmdlinepart__185_429_cmdline_parser_init6 = internal global ptr @cmdline_parser_init, section ".initcall6.init", align 4
@__exitcall_cmdline_parser_exit = internal global ptr @cmdline_parser_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_mtdparts186 = internal constant [53 x i8] c"cmdlinepart.parm=mtdparts:Partitioning specification\00", section ".modinfo", align 1
@__param_str_mtdparts = internal constant [21 x i8] c"cmdlinepart.mtdparts\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mtdparts = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_mtdparts = internal constant %struct.kernel_param { ptr @__param_str_mtdparts, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @mtdparts } }, section "__param", align 4
@__UNIQUE_ID_mtdpartstype187 = internal constant [36 x i8] c"cmdlinepart.parmtype=mtdparts:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_file188 = internal constant [49 x i8] c"cmdlinepart.file=drivers/mtd/parsers/cmdlinepart\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [24 x i8] c"cmdlinepart.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [49 x i8] c"cmdlinepart.author=Marius Groeger <mag@sysgo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [69 x i8] c"cmdlinepart.description=Command line configuration of MTD partitions\00", section ".modinfo", align 1
@cmdline = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cmdlinepart\00", [20 x i8] zeroinitializer }, align 32
@cmdline_parsed = internal global { i1, [31 x i8] } zeroinitializer, align 32
@partitions = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@parse_cmdline_partitions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014mtd: %s: partitioning exceeds flash size, truncating\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"parse_cmdline_partitions\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mtd/parsers/cmdlinepart.c\00", [62 x i8] zeroinitializer }, align 32
@parse_cmdline_partitions._entry_ptr = internal global ptr @parse_cmdline_partitions._entry, section ".printk_index", align 4
@parse_cmdline_partitions._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014mtd: %s: skipping zero sized partition\0A\00", [54 x i8] zeroinitializer }, align 32
@parse_cmdline_partitions._entry_ptr.6 = internal global ptr @parse_cmdline_partitions._entry.4, section ".printk_index", align 4
@mtdpart_setup_real._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013mtd: no mtd-id\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtdpart_setup_real\00", [45 x i8] zeroinitializer }, align 32
@mtdpart_setup_real._entry_ptr = internal global ptr @mtdpart_setup_real._entry, section ".printk_index", align 4
@mtdpart_setup_real._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013mtd: bad character after partition (%c)\0A\00", [53 x i8] zeroinitializer }, align 32
@mtdpart_setup_real._entry_ptr.11 = internal global ptr @mtdpart_setup_real._entry.9, section ".printk_index", align 4
@newpart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013mtd: partition has size 0\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"newpart\00", [24 x i8] zeroinitializer }, align 32
@newpart._entry_ptr = internal global ptr @newpart._entry, section ".printk_index", align 4
@newpart._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013mtd: no closing %c found in partition name\0A\00", [50 x i8] zeroinitializer }, align 32
@newpart._entry_ptr.16 = internal global ptr @newpart._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ro\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"lk\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"slc\00", [28 x i8] zeroinitializer }, align 32
@newpart._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.3, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013mtd: no partitions allowed after a fill-up partition\0A\00", [40 x i8] zeroinitializer }, align 32
@newpart._entry_ptr.22 = internal global ptr @newpart._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Partition_%03d\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 59]
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"cmdline_parser\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 411, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"mtdparts\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 70, i32 14 }
@___asan_gen_.30 = private unnamed_addr constant [8 x i8] c"cmdline\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 71, i32 14 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 413, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"cmdline_parsed\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 67, i32 38 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 371, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 378, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 265, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 317, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 105, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 131, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 145, i32 17 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 151, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 157, i32 18 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 165, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [37 x i8] c"../drivers/mtd/parsers/cmdlinepart.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 198, i32 22 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__UNIQUE_ID_mtdparts186, ptr @__UNIQUE_ID_mtdpartstype187, ptr @__exitcall_cmdline_parser_exit, ptr @__initcall__kmod_cmdlinepart__185_429_cmdline_parser_init6, ptr @__param_mtdparts, ptr @__setup_mtdpart_setup, ptr @cmdline_parser_exit, ptr @mtdpart_setup_real._entry, ptr @mtdpart_setup_real._entry.9, ptr @mtdpart_setup_real._entry_ptr, ptr @mtdpart_setup_real._entry_ptr.11, ptr @newpart._entry, ptr @newpart._entry.14, ptr @newpart._entry.20, ptr @newpart._entry_ptr, ptr @newpart._entry_ptr.16, ptr @newpart._entry_ptr.22, ptr @parse_cmdline_partitions._entry, ptr @parse_cmdline_partitions._entry.4, ptr @parse_cmdline_partitions._entry_ptr, ptr @parse_cmdline_partitions._entry_ptr.6, ptr @cmdline_parser, ptr @mtdparts, ptr @cmdline, ptr @.str, ptr @cmdline_parsed, ptr @partitions, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdline_parser to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdparts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdline to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdline_parsed to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @partitions to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_cmdline_partitions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_cmdline_partitions._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdpart_setup_real._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdpart_setup_real._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @newpart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @newpart._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @newpart._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mtdpart_setup(ptr noundef %s) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %s, ptr @cmdline, align 4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cmdline_parser_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @deregister_mtd_parser(ptr noundef nonnull @cmdline_parser) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_mtd_parser(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cmdline_parser_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mtdparts, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %0, ptr @cmdline, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call i32 @__register_mtd_parser(ptr noundef nonnull @cmdline_parser, ptr noundef null) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_cmdline_partitions(ptr nocapture noundef readonly %master, ptr nocapture noundef writeonly %pparts, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  %s.addr.i = alloca ptr, align 4
  %this_mtd.i = alloca ptr, align 4
  %num_parts.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 13
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  %.b = load i1, ptr @cmdline_parsed, align 4
  br i1 %.b, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @cmdline, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.addr.i)
  %3 = ptrtoint ptr %s.addr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %s.addr.i, align 4
  store i1 true, ptr @cmdline_parsed, align 4
  %cmp.not76.i = icmp eq ptr %2, null
  br i1 %cmp.not76.i, label %if.then.mtdpart_setup_real.exit.thread_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.mtdpart_setup_real.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdpart_setup_real.exit.thread

for.condthread-pre-split.i:                       ; preds = %if.end22.i
  %incdec.ptr.i = getelementptr i8, ptr %27, i32 1
  %4 = ptrtoint ptr %s.addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %incdec.ptr.i, ptr %s.addr.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_parts.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %this_mtd.i) #10
  %cmp.not.i = icmp eq ptr %incdec.ptr.i, null
  br i1 %cmp.not.i, label %for.condthread-pre-split.i.mtdpart_setup_real.exit.thread_crit_edge, label %for.condthread-pre-split.i.for.body.i_crit_edge

for.condthread-pre-split.i.for.body.i_crit_edge:  ; preds = %for.condthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.condthread-pre-split.i.mtdpart_setup_real.exit.thread_crit_edge: ; preds = %for.condthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mtdpart_setup_real.exit.thread

for.body.i:                                       ; preds = %for.condthread-pre-split.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %5 = phi ptr [ %incdec.ptr.i, %for.condthread-pre-split.i.for.body.i_crit_edge ], [ %2, %if.then.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %this_mtd.i) #10
  %6 = ptrtoint ptr %this_mtd.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %this_mtd.i, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_parts.i) #10
  %7 = ptrtoint ptr %num_parts.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %num_parts.i, align 4, !annotation !81
  %call.i = call ptr @strchr(ptr noundef nonnull %5, i32 noundef 59) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %call.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %call1.i = call ptr @strchr(ptr noundef nonnull %5, i32 noundef 40) #10
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end4.thread.i, label %if.then7.i

if.end4.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call565.i = call ptr @strrchr(ptr noundef nonnull %5, i32 noundef 58) #10
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %call1.i, align 1
  %call5.i = call ptr @strrchr(ptr noundef nonnull %5, i32 noundef 58) #10
  %10 = ptrtoint ptr %call1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 40, ptr %call1.i, align 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end4.thread.i
  %call566.i = phi ptr [ %call565.i, %if.end4.thread.i ], [ %call5.i, %if.then7.i ]
  br i1 %tobool.not.i, label %if.end8.i.if.end11.i_crit_edge, label %if.then10.i

if.end8.i.if.end11.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 59, ptr %call.i, align 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end11.i_crit_edge
  %tobool12.not.i = icmp eq ptr %call566.i, null
  br i1 %tobool12.not.i, label %do.end.i, label %if.end15.i

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %mtdpart_setup_real.exit.thread139

if.end15.i:                                       ; preds = %if.end11.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call566.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.ptr.i = getelementptr i8, ptr %call566.i, i32 1
  %sub.i = add i32 %sub.ptr.sub.i, 20
  %call18.i = call fastcc ptr @newpart(ptr noundef %add.ptr.i, ptr noundef nonnull %s.addr.i, ptr noundef nonnull %num_parts.i, i32 noundef 0, ptr noundef nonnull %this_mtd.i, i32 noundef %sub.i) #10
  %cmp.i.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mtdpart_setup_real.exit, label %if.end22.i

if.end22.i:                                       ; preds = %if.end15.i
  %add.i = add i32 %sub.ptr.sub.i, 1
  %12 = ptrtoint ptr %this_mtd.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %this_mtd.i, align 4
  %14 = ptrtoint ptr %13 to i32
  %add23.i = add i32 %14, 3
  %and.i = and i32 %add23.i, -4
  %15 = inttoptr i32 %and.i to ptr
  store ptr %15, ptr %this_mtd.i, align 4
  %parts24.i = getelementptr inbounds %struct.cmdline_mtd_partition, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %parts24.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call18.i, ptr %parts24.i, align 4
  %17 = ptrtoint ptr %num_parts.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_parts.i, align 4
  %num_parts25.i = getelementptr inbounds %struct.cmdline_mtd_partition, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %num_parts25.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %num_parts25.i, align 4
  %add.ptr26.i = getelementptr %struct.cmdline_mtd_partition, ptr %15, i32 1
  %mtd_id27.i = getelementptr inbounds %struct.cmdline_mtd_partition, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %mtd_id27.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr26.i, ptr %mtd_id27.i, align 4
  %call30.i = call i32 @strlcpy(ptr noundef %add.ptr26.i, ptr noundef nonnull %5, i32 noundef %add.i) #10
  %21 = load ptr, ptr @partitions, align 4
  %22 = ptrtoint ptr %this_mtd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %this_mtd.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %23, align 4
  %25 = load ptr, ptr %this_mtd.i, align 4
  store ptr %25, ptr @partitions, align 4
  %26 = ptrtoint ptr %s.addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s.addr.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i8 %29, label %do.end41.i [
    i8 0, label %cleanup.i
    i8 59, label %for.condthread-pre-split.i
  ]

do.end41.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %29 to i32
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv.i) #13
  br label %mtdpart_setup_real.exit.thread139

cleanup.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_parts.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %this_mtd.i) #10
  br label %mtdpart_setup_real.exit.thread

mtdpart_setup_real.exit.thread:                   ; preds = %cleanup.i, %for.condthread-pre-split.i.mtdpart_setup_real.exit.thread_crit_edge, %if.then.mtdpart_setup_real.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.addr.i)
  br label %if.end3

mtdpart_setup_real.exit.thread139:                ; preds = %do.end41.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_parts.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %this_mtd.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.addr.i)
  br label %cleanup

mtdpart_setup_real.exit:                          ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %call18.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_parts.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %this_mtd.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.addr.i)
  br label %cleanup

if.end3:                                          ; preds = %mtdpart_setup_real.exit.thread, %entry.if.end3_crit_edge
  %tobool5.not = icmp eq ptr %1, null
  br label %for.cond

for.cond:                                         ; preds = %lor.lhs.false.for.cond_crit_edge, %if.end3
  %part.0.in = phi ptr [ @partitions, %if.end3 ], [ %part.0, %lor.lhs.false.for.cond_crit_edge ]
  %32 = ptrtoint ptr %part.0.in to i32
  call void @__asan_load4_noabort(i32 %32)
  %part.0 = load ptr, ptr %part.0.in, align 4
  %tobool4.not = icmp eq ptr %part.0, null
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %for.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %mtd_id6 = getelementptr inbounds %struct.cmdline_mtd_partition, ptr %part.0, i32 0, i32 1
  %33 = ptrtoint ptr %mtd_id6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mtd_id6, align 4
  %call7 = call i32 @strcmp(ptr noundef %34, ptr noundef nonnull %1) #14
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false.for.cond14.preheader_crit_edge, label %lor.lhs.false.for.cond_crit_edge

lor.lhs.false.for.cond_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

lor.lhs.false.for.cond14.preheader_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond14.preheader

for.end:                                          ; preds = %for.cond
  br i1 %tobool4.not, label %for.end.cleanup_crit_edge, label %for.end.for.cond14.preheader_crit_edge

for.end.for.cond14.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond14.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond14.preheader:                             ; preds = %for.end.for.cond14.preheader_crit_edge, %lor.lhs.false.for.cond14.preheader_crit_edge
  %num_parts = getelementptr inbounds %struct.cmdline_mtd_partition, ptr %part.0, i32 0, i32 2
  %35 = ptrtoint ptr %num_parts to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_parts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp148 = icmp sgt i32 %36, 0
  br i1 %cmp148, label %for.body15.lr.ph, label %for.cond14.preheader.for.end75_crit_edge

for.cond14.preheader.for.end75_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end75

for.body15.lr.ph:                                 ; preds = %for.cond14.preheader
  %parts = getelementptr inbounds %struct.cmdline_mtd_partition, ptr %part.0, i32 0, i32 3
  %size30 = getelementptr inbounds %struct.mtd_info, ptr %master, i32 0, i32 2
  %mtd_id41 = getelementptr inbounds %struct.cmdline_mtd_partition, ptr %part.0, i32 0, i32 1
  br label %for.body15

for.body15:                                       ; preds = %for.inc74.for.body15_crit_edge, %for.body15.lr.ph
  %offset.0151 = phi i64 [ 0, %for.body15.lr.ph ], [ %add52, %for.inc74.for.body15_crit_edge ]
  %i.0149 = phi i32 [ 0, %for.body15.lr.ph ], [ %inc, %for.inc74.for.body15_crit_edge ]
  %37 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parts, align 4
  %offset16 = getelementptr %struct.mtd_partition, ptr %38, i32 %i.0149, i32 3
  %39 = ptrtoint ptr %offset16 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %offset16, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %40)
  %cmp17 = icmp eq i64 %40, -1
  br i1 %cmp17, label %if.then18, label %for.body15.if.end25_crit_edge

for.body15.if.end25_crit_edge:                    ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then18:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %offset16 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %offset.0151, ptr %offset16, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %for.body15.if.end25_crit_edge
  %offset.1 = phi i64 [ %offset.0151, %if.then18 ], [ %40, %for.body15.if.end25_crit_edge ]
  %42 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parts, align 4
  %size = getelementptr %struct.mtd_partition, ptr %43, i32 %i.0149, i32 2
  %44 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %45)
  %cmp28 = icmp eq i64 %45, -1
  br i1 %cmp28, label %if.then29, label %if.end25.if.end34_crit_edge

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %size30 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %size30, align 8
  %sub = sub i64 %47, %offset.1
  %48 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %sub, ptr %size, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end25.if.end34_crit_edge
  %49 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %parts, align 4
  %size37 = getelementptr %struct.mtd_partition, ptr %50, i32 %i.0149, i32 2
  %51 = ptrtoint ptr %size37 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %size37, align 8
  %add = add i64 %52, %offset.1
  %53 = ptrtoint ptr %size30 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %size30, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %54)
  %cmp39 = icmp ugt i64 %add, %54
  br i1 %cmp39, label %do.end, label %if.end34.if.end48_crit_edge

if.end34.if.end48_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

do.end:                                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %mtd_id41 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mtd_id41, align 4
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %56) #13
  %57 = ptrtoint ptr %size30 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %size30, align 8
  %sub44 = sub i64 %58, %offset.1
  %59 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %parts, align 4
  %size47 = getelementptr %struct.mtd_partition, ptr %60, i32 %i.0149, i32 2
  %61 = ptrtoint ptr %size47 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %sub44, ptr %size47, align 8
  br label %if.end48

if.end48:                                         ; preds = %do.end, %if.end34.if.end48_crit_edge
  %62 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parts, align 4
  %size51 = getelementptr %struct.mtd_partition, ptr %63, i32 %i.0149, i32 2
  %64 = ptrtoint ptr %size51 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %size51, align 8
  %add52 = add i64 %65, %offset.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %65)
  %cmp56 = icmp eq i64 %65, 0
  br i1 %cmp56, label %do.end60, label %if.end48.for.inc74_crit_edge

if.end48.for.inc74_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc74

do.end60:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %mtd_id41 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mtd_id41, align 4
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %67) #13
  %68 = ptrtoint ptr %num_parts to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_parts, align 4
  %dec = add i32 %69, -1
  store i32 %dec, ptr %num_parts, align 4
  %70 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %parts, align 4
  %arrayidx66 = getelementptr %struct.mtd_partition, ptr %71, i32 %i.0149
  %add68 = add nsw i32 %i.0149, 1
  %arrayidx69 = getelementptr %struct.mtd_partition, ptr %71, i32 %add68
  %sub71 = sub i32 %dec, %i.0149
  %mul = mul i32 %sub71, 40
  %72 = call ptr @memmove(ptr %arrayidx66, ptr %arrayidx69, i32 %mul)
  %dec72 = add i32 %i.0149, -1
  br label %for.inc74

for.inc74:                                        ; preds = %do.end60, %if.end48.for.inc74_crit_edge
  %i.1 = phi i32 [ %dec72, %do.end60 ], [ %i.0149, %if.end48.for.inc74_crit_edge ]
  %inc = add i32 %i.1, 1
  %73 = ptrtoint ptr %num_parts to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_parts, align 4
  %cmp = icmp slt i32 %inc, %74
  br i1 %cmp, label %for.inc74.for.body15_crit_edge, label %for.inc74.for.end75_crit_edge

for.inc74.for.end75_crit_edge:                    ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end75

for.inc74.for.body15_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body15

for.end75:                                        ; preds = %for.inc74.for.end75_crit_edge, %for.cond14.preheader.for.end75_crit_edge
  %.lcssa = phi i32 [ %36, %for.cond14.preheader.for.end75_crit_edge ], [ %74, %for.inc74.for.end75_crit_edge ]
  %parts76 = getelementptr inbounds %struct.cmdline_mtd_partition, ptr %part.0, i32 0, i32 3
  %75 = ptrtoint ptr %parts76 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %parts76, align 4
  %mul78 = mul i32 %.lcssa, 40
  %call79 = call ptr @kmemdup(ptr noundef %76, i32 noundef %mul78, i32 noundef 3264) #10
  %77 = ptrtoint ptr %pparts to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call79, ptr %pparts, align 4
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %for.end75.cleanup_crit_edge, label %if.end82

for.end75.cleanup_crit_edge:                      ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end82:                                         ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %num_parts to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_parts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %for.end75.cleanup_crit_edge, %for.end.cleanup_crit_edge, %mtdpart_setup_real.exit, %mtdpart_setup_real.exit.thread139
  %retval.0 = phi i32 [ %79, %if.end82 ], [ %31, %mtdpart_setup_real.exit ], [ 0, %for.end.cleanup_crit_edge ], [ -12, %for.end75.cleanup_crit_edge ], [ -22, %mtdpart_setup_real.exit.thread139 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @newpart(ptr noundef %s, ptr nocapture noundef writeonly %retptr, ptr nocapture noundef %num_parts, i32 noundef %this_part, ptr noundef writeonly %extra_mem_ptr, i32 noundef %extra_mem_size) unnamed_addr #3 align 64 {
entry:
  %s.addr = alloca ptr, align 4
  %extra_mem = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %s, ptr %s.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extra_mem) #10
  %1 = ptrtoint ptr %extra_mem to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %extra_mem, align 4, !annotation !81
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %3)
  %cmp = icmp eq i8 %3, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr = getelementptr i8, ptr %s, i32 1
  %4 = ptrtoint ptr %s.addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %incdec.ptr, ptr %s.addr, align 4
  br label %if.end5

if.else:                                          ; preds = %entry
  %call = call i64 @memparse(ptr noundef %s, ptr noundef nonnull %s.addr) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %tobool.not = icmp eq i64 %call, 0
  br i1 %tobool.not, label %do.end, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %cleanup109

if.end5:                                          ; preds = %if.else.if.end5_crit_edge, %if.then
  %size.0 = phi i64 [ -1, %if.then ], [ %call, %if.else.if.end5_crit_edge ]
  %5 = ptrtoint ptr %s.addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s.addr, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %8)
  %cmp7 = icmp eq i8 %8, 64
  br i1 %cmp7, label %if.then9, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr10 = getelementptr i8, ptr %6, i32 1
  %9 = ptrtoint ptr %s.addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %incdec.ptr10, ptr %s.addr, align 4
  %call11 = call i64 @memparse(ptr noundef %incdec.ptr10, ptr noundef nonnull %s.addr) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end5.if.end12_crit_edge
  %offset.0 = phi i64 [ %call11, %if.then9 ], [ -1, %if.end5.if.end12_crit_edge ]
  %10 = ptrtoint ptr %s.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s.addr, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %13)
  %cmp14 = icmp eq i8 %13, 40
  %spec.select = select i1 %cmp14, i32 41, i32 0
  br i1 %cmp14, label %if.then19, label %if.end12.if.end34_crit_edge

if.end12.if.end34_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then19:                                        ; preds = %if.end12
  %incdec.ptr20 = getelementptr i8, ptr %11, i32 1
  %14 = ptrtoint ptr %s.addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %incdec.ptr20, ptr %s.addr, align 4
  %call22 = call ptr @strchr(ptr noundef %incdec.ptr20, i32 noundef %spec.select)
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %spec.select) #13
  br label %cleanup109

cleanup:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast = ptrtoint ptr %call22 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %incdec.ptr20 to i32
  %add.ptr = getelementptr i8, ptr %call22, i32 1
  %15 = ptrtoint ptr %s.addr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %s.addr, align 4
  %sub.ptr.sub = sub i32 1, %sub.ptr.rhs.cast
  %phi.bo = add i32 %sub.ptr.sub, %sub.ptr.lhs.cast
  br label %if.end34

if.end34:                                         ; preds = %cleanup, %if.end12.if.end34_crit_edge
  %name.0 = phi ptr [ %incdec.ptr20, %cleanup ], [ null, %if.end12.if.end34_crit_edge ]
  %name_len.1 = phi i32 [ %phi.bo, %cleanup ], [ 14, %if.end12.if.end34_crit_edge ]
  %add35 = add i32 %name_len.1, %extra_mem_size
  %16 = ptrtoint ptr %s.addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s.addr, align 4
  %call36 = call i32 @strncmp(ptr noundef %17, ptr noundef nonnull dereferenceable(3) @.str.17, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then39, label %if.end34.if.end41_crit_edge

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr40 = getelementptr i8, ptr %17, i32 2
  %18 = ptrtoint ptr %s.addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr40, ptr %s.addr, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end34.if.end41_crit_edge
  %mask_flags.0 = phi i32 [ 1024, %if.then39 ], [ 0, %if.end34.if.end41_crit_edge ]
  %19 = ptrtoint ptr %s.addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s.addr, align 4
  %call42 = call i32 @strncmp(ptr noundef %20, ptr noundef nonnull dereferenceable(3) @.str.18, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then45, label %if.end41.if.end48_crit_edge

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %or46 = or i32 %mask_flags.0, 8192
  %add.ptr47 = getelementptr i8, ptr %20, i32 2
  %21 = ptrtoint ptr %s.addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr47, ptr %s.addr, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end41.if.end48_crit_edge
  %mask_flags.1 = phi i32 [ %or46, %if.then45 ], [ %mask_flags.0, %if.end41.if.end48_crit_edge ]
  %22 = ptrtoint ptr %s.addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s.addr, align 4
  %call49 = call i32 @strncmp(ptr noundef %23, ptr noundef nonnull dereferenceable(4) @.str.19, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end48.if.end54_crit_edge

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr53 = getelementptr i8, ptr %23, i32 3
  %24 = ptrtoint ptr %s.addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr53, ptr %s.addr, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end48.if.end54_crit_edge
  %add_flags.0 = phi i32 [ 0, %if.end48.if.end54_crit_edge ], [ 16384, %if.then51 ]
  %25 = ptrtoint ptr %s.addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s.addr, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %28)
  %cmp56 = icmp eq i8 %28, 44
  br i1 %cmp56, label %if.then58, label %if.else75

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %size.0)
  %cmp59 = icmp eq i64 %size.0, -1
  br i1 %cmp59, label %do.end64, label %if.end68

do.end64:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #13
  br label %cleanup109

if.end68:                                         ; preds = %if.then58
  %add.ptr69 = getelementptr i8, ptr %26, i32 1
  %add70 = add i32 %this_part, 1
  %call71 = call fastcc ptr @newpart(ptr noundef %add.ptr69, ptr noundef nonnull %s.addr, ptr noundef %num_parts, i32 noundef %add70, ptr noundef nonnull %extra_mem, i32 noundef %add35)
  %cmp.i = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end68.cleanup109_crit_edge, label %if.end68.if.end87_crit_edge

if.end68.if.end87_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.end68.cleanup109_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

if.else75:                                        ; preds = %if.end54
  %add76 = add i32 %this_part, 1
  %29 = ptrtoint ptr %num_parts to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add76, ptr %num_parts, align 4
  %mul = mul i32 %add76, 40
  %add77 = add i32 %add35, %mul
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add77, i32 noundef 3520) #15
  %tobool79.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool79.not, label %if.else75.cleanup109_crit_edge, label %cleanup84

if.else75.cleanup109_crit_edge:                   ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup109

cleanup84:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %num_parts to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_parts, align 4
  %add.ptr83 = getelementptr %struct.mtd_partition, ptr %call9.i.i, i32 %31
  %32 = ptrtoint ptr %extra_mem to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr83, ptr %extra_mem, align 4
  br label %if.end87

if.end87:                                         ; preds = %cleanup84, %if.end68.if.end87_crit_edge
  %parts.0 = phi ptr [ %call71, %if.end68.if.end87_crit_edge ], [ %call9.i.i, %cleanup84 ]
  %arrayidx = getelementptr %struct.mtd_partition, ptr %parts.0, i32 %this_part
  %size88 = getelementptr %struct.mtd_partition, ptr %parts.0, i32 %this_part, i32 2
  %33 = ptrtoint ptr %size88 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %size.0, ptr %size88, align 8
  %offset90 = getelementptr %struct.mtd_partition, ptr %parts.0, i32 %this_part, i32 3
  %34 = ptrtoint ptr %offset90 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %offset.0, ptr %offset90, align 8
  %mask_flags92 = getelementptr %struct.mtd_partition, ptr %parts.0, i32 %this_part, i32 4
  %35 = ptrtoint ptr %mask_flags92 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mask_flags.1, ptr %mask_flags92, align 8
  %add_flags94 = getelementptr %struct.mtd_partition, ptr %parts.0, i32 %this_part, i32 5
  %36 = ptrtoint ptr %add_flags94 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add_flags.0, ptr %add_flags94, align 4
  %tobool95.not = icmp eq ptr %name.0, null
  %37 = ptrtoint ptr %extra_mem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %extra_mem, align 4
  br i1 %tobool95.not, label %if.else99, label %if.then96

if.then96:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %call98 = call i32 @strlcpy(ptr noundef %38, ptr noundef nonnull %name.0, i32 noundef %name_len.1) #10
  br label %if.end101

if.else99:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %call100 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %38, ptr noundef nonnull @.str.23, i32 noundef %this_part)
  br label %if.end101

if.end101:                                        ; preds = %if.else99, %if.then96
  %39 = ptrtoint ptr %extra_mem to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %extra_mem, align 4
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %arrayidx, align 8
  %42 = load ptr, ptr %extra_mem, align 4
  %add.ptr105 = getelementptr i8, ptr %42, i32 %name_len.1
  store ptr %add.ptr105, ptr %extra_mem, align 4
  %tobool106.not = icmp eq ptr %extra_mem_ptr, null
  br i1 %tobool106.not, label %if.end101.if.end108_crit_edge, label %if.then107

if.end101.if.end108_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then107:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %extra_mem_ptr to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr105, ptr %extra_mem_ptr, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.end101.if.end108_crit_edge
  %44 = ptrtoint ptr %s.addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s.addr, align 4
  %46 = ptrtoint ptr %retptr to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %retptr, align 4
  br label %cleanup109

cleanup109:                                       ; preds = %if.end108, %if.else75.cleanup109_crit_edge, %if.end68.cleanup109_crit_edge, %do.end64, %cleanup.thread, %do.end
  %retval.3 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end64 ], [ %parts.0, %if.end108 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %call71, %if.end68.cleanup109_crit_edge ], [ inttoptr (i32 -22 to ptr), %cleanup.thread ], [ inttoptr (i32 -12 to ptr), %if.else75.cleanup109_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extra_mem) #10
  ret ptr %retval.3
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_mtd_parser(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !18, !20, !21, !23, !25, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !66, !67, !69, !71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__setup_mtdpart_setup, !1, !"__setup_mtdpart_setup", i1 false, i1 false}
!1 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 409, i32 1}
!2 = !{ptr @__initcall__kmod_cmdlinepart__185_429_cmdline_parser_init6, !3, !"__initcall__kmod_cmdlinepart__185_429_cmdline_parser_init6", i1 false, i1 false}
!3 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 429, i32 1}
!4 = !{ptr @__exitcall_cmdline_parser_exit, !5, !"__exitcall_cmdline_parser_exit", i1 false, i1 false}
!5 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 430, i32 1}
!6 = !{ptr @__UNIQUE_ID_mtdparts186, !7, !"__UNIQUE_ID_mtdparts186", i1 false, i1 false}
!7 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 432, i32 1}
!8 = !{ptr @__param_mtdparts, !9, !"__param_mtdparts", i1 false, i1 false}
!9 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 433, i32 1}
!10 = !{ptr @__UNIQUE_ID_mtdpartstype187, !9, !"__UNIQUE_ID_mtdpartstype187", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_file188, !12, !"__UNIQUE_ID_file188", i1 false, i1 false}
!12 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 435, i32 1}
!13 = !{ptr @__UNIQUE_ID_license189, !12, !"__UNIQUE_ID_license189", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_author190, !15, !"__UNIQUE_ID_author190", i1 false, i1 false}
!15 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 436, i32 1}
!16 = !{ptr @__UNIQUE_ID_description191, !17, !"__UNIQUE_ID_description191", i1 false, i1 false}
!17 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 437, i32 1}
!18 = !{ptr @mtdparts, !19, !"mtdparts", i1 false, i1 false}
!19 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 70, i32 14}
!20 = !{ptr @__setup_str_mtdpart_setup, !1, !"__setup_str_mtdpart_setup", i1 false, i1 false}
!21 = !{ptr @cmdline, !22, !"cmdline", i1 false, i1 false}
!22 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 71, i32 14}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 413, i32 10}
!25 = !{ptr @cmdline_parser, !26, !"cmdline_parser", i1 false, i1 false}
!26 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 411, i32 31}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 371, i32 4}
!29 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @parse_cmdline_partitions._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @parse_cmdline_partitions._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 378, i32 4}
!35 = !{ptr @parse_cmdline_partitions._entry.4, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @parse_cmdline_partitions._entry_ptr.6, !34, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"cmdline_parsed", i1 false, i1 false}
!38 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 72, i32 12}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 265, i32 4}
!41 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mtdpart_setup_real._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mtdpart_setup_real._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 317, i32 4}
!46 = !{ptr @mtdpart_setup_real._entry.9, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mtdpart_setup_real._entry_ptr.11, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 105, i32 4}
!50 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @newpart._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @newpart._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 131, i32 4}
!55 = !{ptr @newpart._entry.14, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @newpart._entry_ptr.16, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 145, i32 17}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 151, i32 17}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 157, i32 18}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 165, i32 4}
!65 = !{ptr @newpart._entry.20, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @newpart._entry_ptr.22, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 198, i32 22}
!69 = !{ptr @partitions, !70, !"partitions", i1 false, i1 false}
!70 = !{!"../drivers/mtd/parsers/cmdlinepart.c", i32 67, i32 38}
!71 = !{ptr @__param_str_mtdparts, !9, !"__param_str_mtdparts", i1 false, i1 false}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
